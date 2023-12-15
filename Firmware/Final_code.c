

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "ps7_init.h"
#include <xil_io.h>
#include "xscugic.h"
#include "xparameters.h"
#include "xbasic_types.h"
#include "xgpio.h"
#include "xil_cache.h"
#include "xil_cache_l.h"
#include "xil_io.h"
#include "xpseudo_asm.h"
#include "xparameters.h"
#include "xreg_cortexa9.h"
#include "xl2cc.h"
#include "xil_errata.h"
#include "xil_exception.h"

#define NUM_OF_WORDS 64
#define FRAME_COUNT_MAX 5

#define OFFSET_MEM_WRITE 0xa000000 // Memory write offset
#define OFFSET_S2MM_DMACR 0x30 // S2MM DMA control register
#define OFFSET_MM2S_DMACR 0x00
#define OFFSET_S2MM_DMASR 0x34 // S2MM DMA status register
#define OFFSET_MM2S_DMASR 0x04
#define OFFSET_MM2S_SA_MSB 0x18
#define OFFSET_MM2S_LENGTH 0x28
#define OFFSET_S2MMDA 0x48 // S2MM destination address
#define OFFSET_S2MM_LENGTH 0x58 // S2MM buffer length
#define DDR_BASE_ADDR 0x00A00000//0x00000000//DDR base address
//#define DDR_BASE_ADDR_2 0x0000300//DDR base address
#define DDR_BASE_ADDR_DEST 0x00B00000//ddr base address for dest
#define DATA_SIZE 2048

#define ELEMENT_COUNT 16


XScuGic InterruptController;
static XScuGic_Config *GicConfig;
unsigned int frame_count = 0;
unsigned int mat_count = 0;

u32 *SourceBuffer = (u32 *)DDR_BASE_ADDR;
u32 *DestinationBuffer = (u32 *)DDR_BASE_ADDR_DEST;
XGpio start_cal, reset, done;
int write_count;
size_t a_rows1,b_cols1;
void InterruptHandler(void)
{
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_DMASR, Xil_In32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_DMASR) | 0x1000);

	if (write_count <1){
		write_count += 1;

	}

	else{
		xil_printf("Interrupt triggered for Data Receiving Completion\n");
//		for (int i =0; i<256; i++)
//		{
//				xil_printf("%d ", DestinationBuffer[i]);
//
//		}
//		xil_printf("\n ");
		for (size_t i=0;i<a_rows1;i++){
			for (size_t j = 0; j<b_cols1; j++){
				xil_printf("%d, ", DestinationBuffer[ELEMENT_COUNT*i+15-j]);
			}
			xil_printf("\n ");
		}
		return ;
	}
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MMDA, DDR_BASE_ADDR_DEST);
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_LENGTH, 4*256);

}


void InterruptHandler_2(void)
{

	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_MM2S_DMASR, Xil_In32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_MM2S_DMASR) | 0x1000);
	XGpio_DiscreteWrite(&reset ,1 ,1);
	XGpio_DiscreteWrite(&start_cal ,1 ,1);
	xil_printf("Interrupt triggered for Data sending Completion\n\r");
	xil_printf("Waiting for calculation Completion\n\r");
	while ( XGpio_DiscreteRead(&done,1)==0){

	}

	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MMDA, DDR_BASE_ADDR_DEST);
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_LENGTH, 4*256);

	return;
}


int SetupInterruptSystem(XScuGic *xScuGicInstancePtr)
{
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, xScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

int main()
{
    	init_platform();
    	ps7_post_config();


		XGpio_Initialize(&start_cal, XPAR_AXI_GPIO_0_DEVICE_ID);
		XGpio_Initialize(&reset, XPAR_AXI_GPIO_1_DEVICE_ID);
		XGpio_Initialize(&done, XPAR_AXI_GPIO_2_DEVICE_ID);
		XGpio_SetDataDirection(&start_cal, 1,0);
		XGpio_SetDataDirection(&reset, 1,0);
		XGpio_SetDataDirection(&done, 1,1);
		xil_printf("Init Done!!\n");
		int counter=0;


    	// Initialize DMA (Set bits 0 and 12 of the DMA control register)

    	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR + OFFSET_S2MM_DMACR, Xil_In32(XPAR_AXI_DMA_0_BASEADDR + OFFSET_S2MM_DMACR) | 0x1001);
    	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR + OFFSET_MM2S_DMACR, Xil_In32(XPAR_AXI_DMA_0_BASEADDR + OFFSET_MM2S_DMACR) | 0x1001);

    	//Interrupt system and interrupt handling
    	GicConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    	if (NULL == GicConfig)
    	{
    		return XST_FAILURE;
    	}
    	int status = XScuGic_CfgInitialize(&InterruptController, GicConfig, GicConfig -> CpuBaseAddress);
    	if (status != XST_SUCCESS)
    	{
    		return XST_FAILURE;
    	}
    	status = SetupInterruptSystem(&InterruptController);
    	if (status != XST_SUCCESS)
    	{
    		return XST_FAILURE;
    	}
    	status = XScuGic_Connect(&InterruptController, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR, (Xil_ExceptionHandler)InterruptHandler, NULL);
    	if (status != XST_SUCCESS)
    	{
    		return XST_FAILURE;
    	}

    	status = XScuGic_Connect(&InterruptController, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR, (Xil_ExceptionHandler)InterruptHandler_2, NULL);
    	if (status != XST_SUCCESS)
    	{
    		return XST_FAILURE;
    	}
//    	XScuGic_Disable(&InterruptController, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR);
//    	XScuGic_Disable(&InterruptController, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);
    	XScuGic_Enable(&InterruptController, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR);
    	XScuGic_Enable(&InterruptController, XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR);


    	//// DDR to PL
    	//(3A+2B)B-BA
        Xuint32 ins[256] ={67109120, 252183296, 253231872, 202376192, 67109376, 252708096, 67110144, 253231360, 67109376, 201851136, 67109888, 260572160, 16777216};//, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};


        //A*B
        //Xuint32 ins[256] = {67109376, 201851904, 0, 16777216};//

        Xuint32 A[16][16] = {{64,13,5,42,74,77,97,56,28,56,0,45,57,73,91,53},
        		{83,90,45,69,55,48,0,78,41,53,93,20,19,54,3,22},
        		{76,62,85,93,21,6,62,79,48,47,46,37,86,29,60,82},
        		{74,16,56,27,23,29,29,49,19,87,40,28,98,84,7,16},
        		{38,32,29,87,98,4,26,93,85,95,54,15,92,93,15,1},
        		{67,37,25,15,32,45,80,63,20,73,87,46,98,93,67,79},
        		{33,54,38,40,41,93,52,3,32,29,76,67,14,42,22,28},
        		{69,46,83,94,53,52,6,21,6,30,61,98,6,89,32,35},
        		{53,13,55,33,47,57,72,98,46,66,33,9,46,11,62,21},
        		{93,9,89,15,42,11,85,39,91,84,64,74,86,50,59,66},
        		{53,71,6,58,33,1,47,13,92,78,55,56,65,73,3,12},
        		{27,52,2,96,18,38,89,69,14,46,38,35,9,88,36,16},
        		{10,98,7,23,38,6,10,29,70,82,35,28,29,1,6,50},
        		{87,17,99,49,32,92,22,33,20,73,58,62,87,2,16,91},
        		{27,19,44,91,13,12,66,1,41,27,57,16,62,15,40,11},
        		{66,44,34,90,42,47,2,10,99,35,46,59,92,73,21,45}};

        Xuint32 B[16][16] = {{69,80,57,32,39,8,49,14,24,95,50,29,5,35,12,71},
        		{74,89,51,57,96,44,29,58,93,77,36,35,44,18,22,60},
        		{78,21,1,20,96,37,4,59,70,14,65,94,95,88,39,2},
        		{81,13,30,87,17,12,59,62,43,39,21,13,49,63,92,11},
        		{8,75,60,48,69,95,28,9,70,98,26,49,10,19,8,38},
        		{81,88,57,3,69,50,56,36,97,45,2,76,52,51,72,51},
        		{98,80,37,83,65,4,83,39,99,83,55,40,74,88,40,27},
        		{71,70,64,41,46,0,38,97,52,64,61,22,60,13,29,23},
        		{87,44,1,47,73,80,10,68,65,17,76,11,94,36,70,15},
        		{58,1,99,15,77,25,62,44,73,88,3,54,0,39,21,18},
        		{96,47,64,70,31,97,7,69,42,48,84,71,35,63,80,54},
        		{64,33,58,35,4,81,3,8,39,34,85,78,12,0,20,66},
        		{45,86,26,66,64,85,81,38,55,18,78,1,38,63,93,45},
        		{30,83,31,68,93,76,54,50,7,65,34,42,37,19,27,34},
        		{31,22,60,94,69,40,88,86,44,99,81,46,76,99,83,39},
        		{75,86,29,19,60,39,1,61,8,11,12,17,46,13,29,82}};
        Xil_DCacheFlush();

    	Xil_DCacheDisable();

    		size_t a_rows = sizeof(A) / sizeof(A[0]);
    	    size_t a_cols = sizeof(A[0]) / sizeof(A[0][0]);
    	    size_t b_rows = sizeof(B) / sizeof(B[0]);
    	    size_t b_cols = sizeof(B[0]) / sizeof(B[0][0]);
    	    a_rows1 = a_rows;
    	    b_cols1 = b_cols;

    	    int A_arranged[ELEMENT_COUNT*ELEMENT_COUNT] = {0};
    	    int B_arranged[ELEMENT_COUNT*ELEMENT_COUNT] = {0};
    	    //////////// Matrixes below size of 256
    	    for (size_t i = 0; i < ELEMENT_COUNT; i++){
    	        for(size_t j = 0; j < ELEMENT_COUNT; j++){
    	            if(i < a_rows && (ELEMENT_COUNT-j-1) < a_cols){
    	                A_arranged[ELEMENT_COUNT*i+j] = A[i][ELEMENT_COUNT-j-1];
    	            }else{
    	                A_arranged[ELEMENT_COUNT*i+j] = 0;
    	            }
    	            if(i < b_rows && (ELEMENT_COUNT-j-1) < b_cols){
    	                B_arranged[ELEMENT_COUNT*i+j] = B[i][ELEMENT_COUNT-j-1];
    	            }else{
    	                B_arranged[ELEMENT_COUNT*i+j] = 0;
    	            }
    	        }
    	    }


    	for (int i = 0; i < 256; i++) {
    	        SourceBuffer[i] = ins[i];
    	}
    	for (int i = 256; i < 512; i++) {
    	        SourceBuffer[i] = A_arranged[i-256];
    	}

    	for (int i = 512; i < 768; i++) {
    	        SourceBuffer[i] = B_arranged[i-512];
    	}

    	for (int i = 768; i < 2048; i++) {
    	        SourceBuffer[i] = 0;
    	}



    	XGpio_DiscreteWrite(&reset ,1 ,0);
    	XGpio_DiscreteWrite(&start_cal ,1 ,0);
    	write_count = 0;




		Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_MM2S_SA_MSB, DDR_BASE_ADDR);
		Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_MM2S_LENGTH, 4*2048);



    	cleanup_platform();



    	return 0;
}

