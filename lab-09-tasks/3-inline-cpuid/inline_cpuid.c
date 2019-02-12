#include <stdio.h>

int main(void)
{
	char cpuid_str[13];
  //int n = 0;
	__asm__ (
		"xor eax,eax\n\t"
		"mov eax,0\n\t"
		"cpuid\n\t"
		"mov [%0], ebx\n\t"
		"mov [%0 + 4], edx\n\t"
		"mov [%0 + 8], ecx\n\t"
		//"mov %0, eax\n\t"
		//: "=r"
		:
		: "r"(cpuid_str) /* output variable */
		//: "r" (n) /* input variable */
		: "eax","ebx","ecx","edx" /* registers used in the assembly code */
		//"mov [%cpuid_str+4],ebx\n\t"
		//"mov [%cpuid_str+8],ebx\n\t"
	/* TODO: Make cpuid call and copy string in cpuid_str.
	 * eax needs to be 0
	 * After cpuid call string is placed in (ebx, edx, ecx).
	 */
 );

	cpuid_str[12] = '\0';

	printf("CPUID string: %s\n", cpuid_str);

	return 0;
}
