#include <stdio.h>

#define NUM	0x12345678

int main(void)
{
	size_t n = NUM;
	size_t rot_left;
	size_t rot_right;

	__asm__ (
	/* TODO: Use rol instruction to shift n by 8 bits left.
	 * Place result in rot_left variable.
	 */
	 "xor eax, eax\n\t" /* collect the sum in eax */
 	/* use ecx to go through items, start from n */
 	"mov ecx, %2\n\t"
	"mov edx, %2\n\t"
	"ror ecx, 8\n\t"
	"rol edx, 8\n\t"

	/* TODO: Use ror instruction to shift n by 8 bits right.
	 * Place result in rot_right variable.
	 */
	 	//"mov %0, eax\n\t"
		: "=r"(rot_left), "=r"(rot_right) /* output variable */
		//: "=r" (rot_right)
		: "r"(n) /* input variable */
		: "eax", "ebx", "ecx","edx" ); /* registers used in the assembly code */

	printf("init: 0x%08x, rot_left: 0x%08x, rot_right: 0x%08x\n",
			n, rot_left, rot_right);

	return 0;
}
