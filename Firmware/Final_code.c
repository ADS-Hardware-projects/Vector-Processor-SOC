

#include <stdio.h>
#include "platform.h"
#include "xtime_l.h"
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
#include "time.h"

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
#define DDR_BASE_ADDR_DEST 0x00B00000//ddr base address for dest
#define DATA_SIZE 2048

#define ELEMENT_COUNT 16


XScuGic InterruptController;
static XScuGic_Config *GicConfig;
unsigned int frame_count = 0;
unsigned int mat_count = 0;
//Defining DMA source and destination buffers
u32 *SourceBuffer = (u32 *)DDR_BASE_ADDR;
u32 *DestinationBuffer = (u32 *)DDR_BASE_ADDR_DEST;
XGpio start_cal, reset, done;
int write_count;
size_t a_rows1,b_cols1;

clock_t start, end;
double cpu_time_used;


void InterruptHandler(void)
{
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_DMASR, Xil_In32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_S2MM_DMASR) | 0x1000);

	if (write_count <1){
		write_count += 1;

	}

	else{
		xil_printf("Interrupt triggered for Data Receiving Completion\n");
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
        Xuint32 ins[256] ={0x04000100,0x0f080300,0x0f180300,0x0c100400,0x04000200,0x0f100500,0x04000500,0x0f180300,0x04000200,0x0c180300,0x04000400,0x0f980400,0x00000000,0x00000000,0x01000000};//{67109120, 252183296, 253231872, 202376192, 67109376, 252708096, 67110144, 253231360, 67109376, 201851136, 67109888, 260572160, 16777216};
        //A*B
        //Xuint32 ins[256] = {67109376, 201851904, 0, 16777216};//

        Xuint32 A[16][16] = {{52,70,21,58,24,60,55,29,84,40,78,20,2,27,34,88},
							{12,36,70,80,52,49,25,15,76,36,23,38,34,23,57,63},
							{40,78,53,66,13,15,29,2,41,40,19,11,89,35,8,24},
							{57,11,59,30,95,13,53,12,51,2,93,84,21,83,52,74},
							{49,43,92,48,64,35,35,35,8,61,30,65,68,16,35,29},
							{32,96,99,61,52,71,53,3,38,22,4,72,9,96,3,93},
							{24,42,95,18,48,51,38,86,66,94,11,48,49,9,34,50},
							{11,42,78,79,79,78,91,56,27,76,93,4,51,42,82,6},
							{70,86,98,26,68,43,28,37,70,16,64,41,55,85,70,37},
							{17,43,80,41,5,94,71,43,24,12,73,22,31,97,34,17},
							{97,8,17,22,38,51,75,39,83,41,50,88,99,74,65,31},
							{80,5,7,43,17,73,33,91,11,44,97,61,71,19,39,38},
							{96,62,29,81,62,91,7,16,94,77,72,33,91,16,24,13},
							{37,86,44,8,81,22,28,9,22,53,14,85,82,59,93,83},
							{31,58,93,87,46,16,76,72,41,24,33,48,41,9,67,54},
							{89,11,34,68,98,62,62,46,44,4,79,72,72,34,18,14}};

	   Xuint32 B[16][16] = {{79,88,94,63,94,39,54,3,80,11,70,53,55,27,35,49},
						   {23,83,76,42,4,44,3,92,44,54,38,4,10,39,97,48},
						   {60,29,77,31,74,7,2,39,94,63,16,66,40,69,76,42},
						   {94,43,53,19,37,39,86,82,6,39,73,23,23,98,99,64},
						   {15,29,56,75,11,6,67,76,31,86,34,40,72,80,16,29},
						   {85,16,64,2,45,79,17,15,87,87,65,75,14,63,77,93},
						   {88,8,68,23,83,70,93,16,55,44,93,66,7,78,87,94},
						   {89,18,79,29,45,3,30,41,26,3,48,74,65,49,45,46},
						   {99,99,22,96,22,86,14,96,49,75,58,21,68,74,10,74},
						   {44,53,55,53,93,62,47,36,1,61,99,8,77,76,54,44},
						   {51,39,79,56,25,35,41,56,10,38,26,97,71,59,30,34},
						   {75,32,38,8,0,66,94,16,52,96,97,33,80,31,86,48},
						   {83,72,91,61,56,26,73,45,83,89,40,34,34,56,54,5},
						   {11,75,0,15,64,73,58,16,78,5,39,18,37,45,31,35},
						   {64,6,95,69,3,97,62,25,32,22,61,44,5,88,53,10},
						   {77,15,28,71,91,67,79,33,27,2,80,67,98,15,16,64}};
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


    	// MemWRTdone and RESETPL signals are low
    	XGpio_DiscreteWrite(&reset ,1 ,0);
    	XGpio_DiscreteWrite(&start_cal ,1 ,0);
    	write_count = 0;


    	//Data sending through DMA

		Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_MM2S_SA_MSB, DDR_BASE_ADDR);
		Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+OFFSET_MM2S_LENGTH, 4*2048);



    	cleanup_platform();



    	return 0;
}

