#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include "gpudriver.h"

size_t a_rows = 9;
size_t a_cols = 11;
int A_vals[9][11] = {
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

size_t b_rows = 11;
size_t b_cols = 13;
int B_vals[11][13] = {
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


int main(){
	// creating the pointer to the A matrix
	int **A = gen_mat(a_rows, a_cols);
	for(size_t i=0; i<a_rows; i++)
		for(size_t j=0; j<a_cols; j++)
			A[i][j] = A_vals[i][j];

	// creating the pointer to the B matrix
	int **B = gen_mat(b_rows, b_cols);
	for(size_t i=0; i<b_rows; i++)
		for(size_t j=0; j<b_cols; j++)
			B[i][j] = B_vals[i][j];

	// creating an array for store the temporarry sending matrix
	int send_mat[ELEMENT_COUNT*ELEMENT_COUNT] = {0};

	int a_sub_mat_arr_rows = (int)ceil((double)a_rows / ELEMENT_COUNT);
	int a_sub_mat_arr_cols = (int)ceil((double)a_cols / ELEMENT_COUNT);

	int b_sub_mat_arr_rows = (int)ceil((double)b_rows / ELEMENT_COUNT);
	int b_sub_mat_arr_cols = (int)ceil((double)b_cols / ELEMENT_COUNT);
	
	int ****a_sub_matrix = gen_sub_mat((int **)A, a_rows, a_cols, a_sub_mat_arr_rows, a_sub_mat_arr_cols);
	int ****b_sub_matrix = gen_sub_mat((int **)B, b_rows, b_cols, b_sub_mat_arr_rows, b_sub_mat_arr_cols);

	// for(int i = 0; i < ELEMENT_COUNT; i++){
	// 	for(int j = 0; j <ELEMENT_COUNT; j++){
	// 		printf("%d, ", a_sub_matrix[0][0][i][j]);
	// 	}
	// 	printf("\n");
	// }
	// printf("\n\n");
	// arange_mat(send_mat, a_sub_matrix[0][0], 1);
	// for(size_t i = 0; i < ELEMENT_COUNT * ELEMENT_COUNT; i++){
	// 	printf("%d, ", send_mat[i]);
	// }


	// The algorithm to mutiply any given matrix
	for(size_t k = 0; k < b_sub_mat_arr_cols; k++){
		for(size_t i = 0; i < a_sub_mat_arr_rows; i++){
			for(size_t j = 0; j < a_sub_mat_arr_cols; j++){

				//send the matrix ---> a_sub_matrix[i][j];
				arange_mat(send_mat, a_sub_matrix[i][j], 0);
				//send the matrix ---> b_sub_matrix[j][k];
				arange_mat(send_mat, b_sub_matrix[j][k], 1);

				// get the resultant matrix and store it 
			}
			// add all the stored matrixes together and get the answer
			// store this answer in the final resultant matrix
		}
	}



	// Free the dynamically allocated memory
	free_mem_4D(a_sub_matrix, a_sub_mat_arr_rows, a_sub_mat_arr_cols);
    free_mem_2D(A, a_rows);
	free_mem_4D(b_sub_matrix, b_sub_mat_arr_rows, b_sub_mat_arr_cols);
    free_mem_2D(B, b_rows);

	return 0;
} // end of the main funciton
