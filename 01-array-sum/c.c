#include <assert.h>

int array_sum(int n, int* arr) {
    int sum = 0;
    int i;
    for(i=0; i < n; i++) {
        sum += arr[i];
    }
    return sum;
}

int main() {
    int n = 6;
    int arr[] = {1, 2, 3, 4, 10, 11};
    int result = array_sum(n, arr);
    assert(result == 31);
    return 0;
}
