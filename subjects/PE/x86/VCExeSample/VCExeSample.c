// VCExeSample.c
// Generated by decompiling VCExeSample.exe
// using Reko decompiler version 0.8.0.0.

#include "VCExeSample.h"

// 00401000: Register int32 main(Stack int32 argc, Stack (ptr32 (ptr32 char)) argv)
int32 main(int32 argc, char * * argv)
{
	test1(*argv, argc, "test123", 1.0F);
	return 0x00;
}

// 00401030: void test1(Stack (ptr32 char) arg1, Stack int32 arg2, Stack (ptr32 char) arg3, Stack real32 arg4)
void test1(char * arg1, int32 arg2, char * arg3, real32 arg4)
{
	printf("%s %d %s %f", arg1, arg2, arg3, (real64) arg4);
}

// 00401060: void test2(Stack word32 dwArg04)
void test2(word32 dwArg04)
{
	test1("1", 0x02, "3", globals->r4020E8);
	if (dwArg04 == 0x00)
		test1("5", 0x06, "7", globals->r4020E4);
}

// 004010B0: void indirect_call_test3(Stack (ptr32 Eq_51) c)
void indirect_call_test3(cdecl_class * c)
{
	c->vtbl->method04(c, 1000);
}

// 004010D0: void test4()
void test4()
{
	globals->gbl_c->vtbl->method00(globals->gbl_c);
}

// 004010F0: void test5()
void test5()
{
	globals->gbl_c->vtbl->method04(globals->gbl_c, 999, globals->r4020EC);
}

// 00401120: void test6(Stack Eq_62 c, Stack int32 a, Stack int32 b)
void test6(Eq_62 c, int32 a, int32 b)
{
	c->vtbl->method04(c, c->vtbl->sum(c, a, b));
}

// 00401160: void test7(Stack real64 rArg04)
void test7(real64 rArg04)
{
	if (1.0 < rArg04)
		globals->gbl_thiscall->vtbl->set_double(globals->gbl_thiscall, rArg04);
	globals->gbl_thiscall->vtbl->modify_double(globals->gbl_thiscall, 0x0D, rArg04);
}

// 004011B0: void nested_if_blocks_test8(Stack real64 rArg04, FpuStack real64 rArg0)
void nested_if_blocks_test8(real64 rArg04, real64 rArg0)
{
	globals->gbl_thiscall->vtbl->modify_double(globals->gbl_thiscall, ~0x00, rArg04);
	if (globals->r4020F8 != rArg04 && globals->r4020F0 > rArg04)
		globals->gbl_thiscall->vtbl->set_double(globals->gbl_thiscall, rArg04);
	test6(globals->gbl_c, 0x06, 0x07);
}

// 00401230: void loop_test9(Stack real32 rArg04, FpuStack real64 rArg0)
void loop_test9(real32 rArg04, real64 rArg0)
{
	int32 dwLoc08_10 = 0x00;
	while (globals->gbl_thiscall->vtbl->modify_double(globals->gbl_thiscall, dwLoc08_10, (real64) rArg04) > (real64) dwLoc08_10)
	{
		globals->gbl_thiscall->vtbl->set_double(globals->gbl_thiscall, (real64) rArg04);
		dwLoc08_10 = dwLoc08_10 + 0x01;
	}
}

// 004012A0: void const_div_test10(Stack word32 dwArg04)
void const_div_test10(word32 dwArg04)
{
	uint32 eax_16 = 0x0A;
	uint32 ecx_19 = 0x03;
	if (dwArg04 != 0x00)
	{
		eax_16 = 0x03;
		ecx_19 = 0x01;
	}
	globals->dw40301C = ecx_19;
	globals->dw403020 = eax_16;
}

// 004012D0: void loop_test11(Stack real64 rArg04)
void loop_test11(real64 rArg04)
{
	int32 dwLoc08_28 = 0x05;
	for (; dwLoc08_28 > 0x00; dwLoc08_28 = dwLoc08_28 - 0x01)
	{
		int32 eax_32 = dwLoc08_28 & 0x80000001;
		if (eax_32 < 0x00)
			eax_32 = (eax_32 - 0x01 | ~0x01) + 0x01;
		if (eax_32 == 0x00)
			loop_test9((real32) rArg04, rArg0);
		else
			nested_if_blocks_test8(rArg04, rArg0);
	}
}

// 00401330: void nested_structs_test12(Stack (ptr32 Eq_243) dwArg04)
void nested_structs_test12(nested_structs_type * dwArg04)
{
	dwArg04->a = 0x01;
	dwArg04->str.b = 0x02;
	dwArg04->str.c = 0x03;
	dwArg04->d = 0x04;
}

// 00401360: void nested_structs_test13(Stack (ptr32 Eq_260) str)
void nested_structs_test13(nested_structs_type * str)
{
	nested_structs_test12(str);
}

