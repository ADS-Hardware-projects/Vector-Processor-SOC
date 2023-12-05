/***
 * Date: 4th December 2023
 * Version: 1.0.0.0
 * Programmed: Yasiru Senarath
 * 
 * Source file for the gpu driver
 * ***/

#include "gpudriver.h"

int ****gen_sub_mat(int **matrix, int rows, int cols, int sub_mat_arr_rows, int sub_mat_arr_cols){
    /***
     * This function is to generate sub matrixes
     * Always should use this function to generate submatrixes even if the matrix size is tollarable
     * Will return a matrix of matrixes.
     * 
     * 
     * rows             -> number of rows in the original matrix
     * cols             -> number of columns in the original matrix
     * sub_mat_arr_rows -> No of rows of grouped matrix
     * sub_mat_arr_cols -> No of cols of grouped matrix
     * 
     * 
     * IMPORTANT: Make sure you delete the alocated memmory from the ram
     * ***/


    // Dynamically allocate memory for the 4D array
    int**** sub_matrix = (int****)malloc(sub_mat_arr_rows * sizeof(int***));
    for (int i = 0; i < sub_mat_arr_rows; i++) {
        sub_matrix[i] = (int***)malloc(sub_mat_arr_cols * sizeof(int**));
        for (int j = 0; j < sub_mat_arr_cols; j++) {
            sub_matrix[i][j] = (int**)malloc(ELEMENT_COUNT * sizeof(int*));
            for (int k = 0; k < ELEMENT_COUNT; k++) {
                sub_matrix[i][j][k] = (int*)malloc(ELEMENT_COUNT * sizeof(int));

                // Initialize elements to 0
                for (int l = 0; l < ELEMENT_COUNT; l++) {
                    for (int m = 0; m < ELEMENT_COUNT; m++) {
                        sub_matrix[i][j][k][l] = 0;
                    }
                }
            }
        }
    }

    // assigining values for the sub matrixes
	for (size_t i = 0; i < sub_mat_arr_rows; i++){
		for (size_t j = 0; j < sub_mat_arr_cols; j++){
			for(size_t i_sub = 0; i_sub < min(ELEMENT_COUNT, rows - i*ELEMENT_COUNT); i_sub++){
				for(size_t j_sub = 0; j_sub < min(ELEMENT_COUNT, cols - j*ELEMENT_COUNT); j_sub++){
					sub_matrix[i][j][i_sub][j_sub] = matrix[i*ELEMENT_COUNT + i_sub][j*ELEMENT_COUNT + j_sub];
				}
			}
		}
	}

    return sub_matrix;
} // end of the function

void free_mem_4D(int**** sub_matrix, int sub_mat_arr_rows, int sub_mat_arr_cols) {
    /***
     * This function will free up the allocated memmory of subarrays group
     * provide the dimensions and it will free the memmory
     * ***/
    for (int i = 0; i < sub_mat_arr_rows; i++) {
        for (int j = 0; j < sub_mat_arr_cols; j++) {
            for (int k = 0; k < ELEMENT_COUNT; k++) {
                free(sub_matrix[i][j][k]);
            }
            free(sub_matrix[i][j]);
        }
        free(sub_matrix[i]);
    }
    free(sub_matrix);
}// end of the function

void free_mem_2D(int** matrix, int mat_arr_rows){
    /***
     * This function will free up the allocated memmory of matrix
     * provide the dimensions and it will free the memmory
     * ***/
    for (size_t i = 0; i < mat_arr_rows; i++){
        free(matrix[i]);
    }
    free(matrix);
}

int **gen_mat(size_t rows, size_t cols) {
    /***
     * The original matrix values are given as a 2D array
     * But we need to convert this array to a 2D pointers.
     * This function will convert the given values to 2D pointer matrix
     * ***/

    // Allocate memory for an array of row pointers
    int **matrix = (int **)malloc(rows * sizeof(int *));
    if (matrix == NULL) {
        return NULL;
    }

    // Allocate memory for each row
    for (size_t i = 0; i < rows; i++) {
        matrix[i] = (int *)malloc(cols * sizeof(int));
        if (matrix[i] == NULL) {
            // Free previously allocated memory
            for (size_t j = 0; j < i; j++) {
                free(matrix[j]);
            }
            free(matrix);

            return NULL;
        }
    }

    return matrix;
}

void arange_mat(int array[ELEMENT_COUNT*ELEMENT_COUNT], int **matrix, short transpose){
    /***
     * The matrix must be rearranged before sending to the Processing Unit
     * This function wil rearrange the 2D matrix and save it in the Block Ram
     * ***/
    for(size_t i = 0; i < ELEMENT_COUNT; i++){
        for(size_t j = 0; j < ELEMENT_COUNT; j++){
            if(transpose == 0){
                // if not transpose, stack row by row in the reversed order
                array[ELEMENT_COUNT*i + j] = matrix[i][ELEMENT_COUNT - j - 1];
            }else{
                // if transposed, stack column by column in the reversed order
                array[ELEMENT_COUNT*i + j] = matrix[ELEMENT_COUNT - j - 1][i];
            }
        }
    }
}