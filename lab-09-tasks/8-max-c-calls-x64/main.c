#include <stdio.h>

unsigned int get_max(unsigned int *arr, unsigned int len,int *pos);

int main(void)
{
	unsigned int arr[] = { 19, 7, 129, 87, 54, 218, 67, 12, 19, 99 };
	unsigned int max;
  int pos;
	max = get_max(arr, 10, &pos);

	printf("max: %u poz: %u\n", max, pos);

	return 0;
}
