// RussianText.c
// Generated by decompiling RussianText.exe
// using Reko decompiler version 0.7.0.0.

#include "RussianText.h"

// 00401071: void _GetExceptDLLinfo()
void _GetExceptDLLinfo()
{
	fn004011FC(dwArg04);
	return;
}

// 00401084: void fn00401084()
void fn00401084()
{
	return;
}

// 0040110B: void fn0040110B(Register word32 eax)
void fn0040110B(word32 eax)
{
	if (globals->t40208B >= null)
	{
		word32 esp_19;
		byte SCZO_20;
		byte C_21;
		Eq_9 eax_22;
		byte SZO_23;
		byte Z_24;
		__CRTL_TLS_GetValue();
		if (eax_22 != null)
		{
			fp->tFFFFFFF4 = eax_22;
			fp->tFFFFFFF0 = 0x08;
			fp->tFFFFFFEC = GetProcessHeap();
			Eq_36 eax_37 = HeapFree(fp->tFFFFFFEC, fp->tFFFFFFF0, fp->tFFFFFFF4);
			fp->tFFFFFFF4 = globals->t40208B;
			word32 esp_42;
			byte SCZO_43;
			byte C_44;
			word32 eax_45;
			byte SZO_46;
			byte Z_47;
			__CRTL_TLS_ExitThread();
		}
	}
	return;
}

// 00401158: Register word32 fn00401158()
word32 fn00401158()
{
	return fs->ptr002C[globals->t40208B];
}

// 00401168: Register int32 main(Stack int32 argc, Stack (ptr (ptr char)) argv)
int32 main(int32 argc, char * * argv)
{
	printf(&globals->b4020A4);
	return 0x00;
}

// 0040117C: void fn0040117C()
void fn0040117C()
{
	return;
}

// 00401180: void fn00401180()
void fn00401180()
{
	return;
}

// 004011B0: void fn004011B0(Stack word32 dwArg04)
void fn004011B0(word32 dwArg04)
{
	ptr32 esp_29 = fp + ~0x0F;
	word32 ebx_11 = dwArg04;
	if (dwArg04 == 0x00 && dwArg04 == 0x00)
	{
		fn004011FC(fp - 0x0C);
		esp_29 = fp + ~0x0B;
		ebx_11 = dwLoc08;
	}
	size_t * esp_30 = esp_29 - 0x04;
	*esp_30 = (uint32) 0x9C;
	*(esp_30 - 0x04) = ebx_11;
	*(esp_30 - 0x08) = fn00401158();
	memcpy(*(esp_30 - 0x08), *(esp_30 - 0x04), *esp_30);
	_InitTermAndUnexPtrs();
	return;
}

// 004011FC: void fn004011FC(Stack ptr32 dwArg04)
void fn004011FC(ptr32 dwArg04)
{
	globals->dw4020F8 = fn00401158() + 0x1C;
	dwArg04->dw0000 = 0x82727349;
	dwArg04->ptr0004 = 0x004020E4;
	return;
}

