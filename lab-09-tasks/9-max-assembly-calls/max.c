#include <stdio.h>

unsigned int get_max(unsigned int *arr, unsigned int len,int *pos)
{
	unsigned int max = 0;
	size_t i;
  //int pos;
	for (i = 0; i < len; i++)
		if (max < arr[i]) {
		 	max = arr[i];
			*pos = i;
		}
	return max;
}
