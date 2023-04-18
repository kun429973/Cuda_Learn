#include <stdio.h>



__global__ void kernel() {
    printf("hello from GPU !!!\n");
}

int main() {

    kernel<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}