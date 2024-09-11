#include <stdio.h>
#include <stdlib.h>

int main() {
    int n = 100000000;
    float *restrict array1, *restrict array2;
    int i;

    // Allocate memory for the arrays
    array1 = (float*) malloc(n * sizeof(float));
    array2 = (float*) malloc(n * sizeof(float));

    // Initialize arrays
    for (i = 0; i < n; i++) {
        array1[i] = 1.0f;
        array2[i] = 2.0f;
    }

    // Loop over arrays with restrict (compiler assumes no aliasing)
    for (i = 0; i < n; i++) {
        array1[i] = array1[i] + array2[i];  // No aliasing assumed
    }

    // Output some value to prevent optimization from removing the loop
    printf("%f\n", array1[n-1]);

    // Free allocated memory
    free(array1);
    free(array2);

    return 0;
}
