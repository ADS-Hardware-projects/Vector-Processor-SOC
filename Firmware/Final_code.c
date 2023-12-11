

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
void InterruptHandler(void)
{
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_DMASR, Xil_In32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_DMASR) | 0x1000);

	if (write_count <1){
		write_count += 1;

	}

	else{
		xil_printf("Interrupt triggered for Data Receiving Completion\n");
		for (int i =0; i<256; i++)
		{
				xil_printf("%d ", DestinationBuffer[i]);

		}
		xil_printf("\n ");
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
//    	Xuint32 matA[256] = {86,25,75,11,85,25,97,50,85,98,49,53,2,88,51,10,55,50,82,56,31,22,17,24,71,67,79,62,22,26,19,75,31,94,72,25,62,76,31,31,89,75,72,60,68,5,80,14,33,69,21,34,78,41,94,62,50,23,42,83,18,45,11,85,36,52,79,49,65,57,72,39,25,40,74,8,57,48,34,52,75,12,59,13,47,7,27,6,23,84,78,16,0,8,83,10,80,10,47,17,65,51,72,44,41,91,79,26,76,28,5,43,74,51,49,76,92,82,25,19,1,38,0,30,21,76,43,93,26,8,88,15,35,51,64,3,66,85,49,14,68,10,89,75,9,87,14,65,95,25,6,48,37,23,0,13,67,25,67,86,62,38,80,16,30,98,56,54,21,2,32,57,31,27,25,85,97,36,6,54,77,33,10,79,35,36,91,45,97,41,93,88,31,19,22,26,33,46,69,46,91,87,5,52,55,45,86,8,4,1,67,93,48,41,22,60,4,83,10,48,57,97,37,39,21,58,88,24,87,96,38,27,75,34,37,62,75,24,57,32,17,0,45,55,74,70,42,48,93,77,16,36,63,69,40,89};
//        Xuint32 matB[256] = {79,20,82,82,66,92,32,89,90,15,86,34,9,89,73,2,80,46,84,91,43,52,15,29,89,44,40,40,97,58,64,24,80,56,32,21,67,5,70,36,86,74,56,52,12,10,57,3,36,1,12,28,60,69,12,21,81,52,73,97,91,99,53,41,80,8,70,54,13,26,87,92,87,76,72,57,65,9,89,81,79,10,3,12,25,77,36,15,60,50,0,18,65,68,34,2,95,56,45,47,92,99,63,21,22,82,79,77,20,11,76,78,86,15,54,90,29,78,11,1,9,44,79,87,48,73,59,95,70,77,67,28,78,47,91,15,68,93,0,81,67,63,26,20,45,47,58,73,27,52,91,58,5,64,23,39,98,42,15,25,96,2,18,34,18,25,25,78,4,56,16,0,10,62,7,33,33,33,11,99,44,51,76,11,33,26,13,68,0,65,79,70,29,39,23,4,99,37,24,78,72,7,51,30,50,77,95,13,3,89,18,76,77,57,6,37,5,40,63,38,37,46,96,42,45,41,72,90,63,95,48,71,17,41,31,87,6,64,24,41,34,59,57,54,19,91,88,3,67,19,0,45,72,35,86,51};
        Xuint32 ins[256] ={67109376, 201851904, 0, 16777216};//{67109120, 252183296, 253231872, 202376192, 67109376, 252708096, 67110144, 253231360, 67109376, 201851136, 67109888, 260572160, 16777216};//, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        Xuint32 A[9][11] = {
        		{97, 60, 56, 94, 95, 96, 70, 47, 18, 32,  1},
                {43, 89, 35, 77, 83, 79, 70, 87, 21, 98, 38},
                { 2,  0, 48, 46, 45, 18, 24,  7, 50,  7,  4},
                {30, 41, 78, 65, 67,  9, 22, 51, 69, 60, 43},
                {28,  1, 64, 19, 50, 53, 21, 85, 81, 68, 69},
                {26, 96, 20, 47, 63, 21, 98, 18,  8,  7,  7},
                {19, 37, 44, 43, 52, 24, 21, 57, 41, 37, 44},
                {36, 71, 15, 92, 36, 97, 54, 52, 83, 71, 70},
                {91, 20,  0, 40, 45, 82, 81, 46, 17, 70, 11}
        	};

        Xuint32 B[11][13] = {
        	{80, 72,  2, 17, 69, 68, 64, 15, 31, 87, 48, 90, 67},
        	{86, 21,  5, 44, 21, 70, 91, 45, 81, 99,  0, 52, 95},
        	{37,  2, 70, 92, 88, 35, 56, 37,  9, 90, 62, 19, 84},
        	{85, 98,  5, 87, 82, 77, 72, 27, 51, 69, 17, 17,  4},
        	{28,  3, 32, 12, 87,  2, 50, 63, 79, 61, 85,  2, 49},
        	{ 5, 45, 33, 32, 23, 73, 49, 59,  2, 43, 70, 54,  5},
        	{48, 16, 78, 73, 54, 62, 76, 49, 23, 52, 30, 79, 77},
        	{73, 76, 33, 63, 57, 91, 13, 41, 56, 54, 27, 12, 52},
        	{ 3,  5, 13, 38, 19, 84, 48, 73, 39, 96, 52, 37, 61},
        	{20,  7, 80, 38, 28, 10, 62, 29, 39, 25, 70, 47, 39},
        	{45, 29, 71, 82, 19,  2,  5, 75, 60,  7,  1, 16, 93}
        };
        Xil_DCacheFlush();

    	Xil_DCacheDisable();

    	size_t a_rows = sizeof(A) / sizeof(A[0]);
    	    size_t a_cols = sizeof(A[0]) / sizeof(A[0][0]);
    	    size_t b_rows = sizeof(B) / sizeof(B[0]);
    	    size_t b_cols = sizeof(B[0]) / sizeof(B[0][0]);

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

