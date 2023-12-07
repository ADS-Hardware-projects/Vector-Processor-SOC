/***
 * Date: 4th December 2023
 * Version: 1.0.0.0
 * Programmed: Yasiru Senarath
 * 
 * The Header file for the gpudriver firmware
 * The function definitions are in the source file
 * ***/

#include <stddef.h>
#include <stdlib.h>

#ifndef GPU_DRIVER
#define GPU_DRIVER

#define ELEMENT_COUNT 16
#define min(a, b) ((a) < (b) ? (a) : (b))

int ****gen_sub_mat(int **matrix, int rows, int cols, int sub_mat_arr_rows, int sub_mat_arr_cols);

void free_mem_4D(int**** sub_matrix, int sub_mat_arr_rows, int sub_mat_arr_cols);

void free_mem_2D(int** matrix, int mat_arr_rows);

int **gen_mat(size_t rows, size_t cols);

void arange_mat(int array[ELEMENT_COUNT*ELEMENT_COUNT], int **matrix, short tanspose);

#endif
