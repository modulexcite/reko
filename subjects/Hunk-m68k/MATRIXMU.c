// MATRIXMU.c
// Generated by decompiling MATRIXMU
// using Reko decompiler version 0.8.0.0.

#include "MATRIXMU.h"

// 00001000: void fn00001000(Register int32 d0, Register (ptr32 byte) a0)
void fn00001000(int32 d0, byte * a0)
{
	struct Eq_4 * a6_8 = *(struct Eq_4 **) 0x04;
	int32 d2_187 = d0;
	byte * a2_199 = a0;
	if (a6_8->w0014 < 0x24)
	{
		word32 * a0_455 = &globals->ptr1494;
		word32 d0_458 = 0x0C;
		for (; d0_458 != 0x00; d0_458 = d0_458 - 0x01)
		{
			*a0_455 = 0x00;
			a0_455 = a0_455 + 0x01;
		}
	}
	globals->ptr1494 = fp;
	globals->ptr1498 = a6_8;
	struct Eq_25 * d0_19 = FindTask(0x00);
	struct Eq_31 * d0_23 = OpenLibrary(0x12BC, 0x00);
	if (d0_23 != null)
	{
		int32 d4_410;
		globals->ptr149C = d0_23;
		if (d0_19->ptr00AC == null)
		{
			d4_410 = 0x02;
			d2_187 = 0x08;
		}
		else
		{
			byte * a0_413 = a0;
			d4_410 = 0x03;
			do
			{
				if (*a0_467 == 0x20)
					d4_410 = DPB(d4_410, (word16) d4_410 + 0x01, 0);
				a0_413 = a0_467 + 0x01;
				byte * a0_467 = a0_413;
			} while (*a0_467 != 0x00);
		}
		int32 d0_91 = d4_410 << 0x02;
		ui32 d0_93 = d0_91 + d2_187;
		int32 d1_200 = 0x00010001;
		d0_23 = AllocMem(d0_93 + 0x11, 0x00010001);
		if (d0_23 != null)
		{
			struct Eq_67 * dwLoc0C_127;
			word32 a0_132;
			d0_23->dw0000 = d0_93 + 0x11;
			d0_23->dw000C = d4_410 - 0x01;
			d0_23->ptr0008 = (byte *) (&d0_23->ptr0010 + d0_91 / 0x0014);
			null = null;
			struct Eq_67 * d0_119 = d0_19->ptr00AC;
			if (d0_119 == null)
			{
				fn00001214(d0_19);
				globals->ptr14A0 = d0_119;
				globals->ptr14A4 = d0_119;
				null = null;
				dwLoc0C_127 = d0_119;
				ui32 d0_357 = d0_119->dw0024;
				if (d0_357 != 0x00)
					Enable();
				Supervisor(d0_23);
				d0_23->dw0004 = d0_357;
				if (d0_357 == 0x00)
				{
					fn0000127C();
					return;
				}
				globals->dw14A8 = d0_357;
				*(ui32 *) 5292 = d0_357;
				*(ui32 *) 0x14B0 = d0_357;
				d0_19->dw009C = d0_357;
				d0_19->dw00A0 = d0_357;
				word32 d0_382 = ((word32[]) 0x08)[d0_357];
				if (d0_382 != 0x00)
					d0_19->dw00A4 = d0_382;
l000011F8:
				a0_132 = d0_19->dw003A;
				goto l00001202;
			}
			ui32 d0_169 = ((ui32[]) 0x0010)[d0_119];
			byte * a1_172 = d0_23->ptr0008;
			Eq_172 a0_177[] = (d0_169 << 0x02) + 0x01;
			int32 d0_178 = (int32) null[d0_169].b0000;
			(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&a0_177[d0_178].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00] = (Eq_172) 0x00;
			d0_23->ptr0010 = a0_177;
			word32 * a6_182 = (char *) &d0_23->ptr0010 + 0x04;
			int32 d3_183 = 0x01;
			struct Eq_183 * a0_185 = a0 + d2_187;
			for (; d2_187 != ~0x00; d2_187 = d2_187 - 0x01)
			{
				a0_185 = a0_185 - 0x01;
				if (a0_185->b0000 > 0x20)
					break;
			}
			a0_185[0x01] = (struct Eq_183) 0x00;
			do
			{
l000010E6:
				byte v37_208 = *a2_199;
				a2_199 = a2_199 + 0x01;
				d1_200 = DPB(d1_200, v37_208, 0);
				if (v37_208 == 0x00)
					goto l00001148;
			} while (v37_208 == 0x20 || v37_208 == 0x09);
			if (d3_183 - d0_23->dw000C != 0x00)
			{
				*a6_182 = a1_172;
				a6_182 = a6_182 + 0x01;
				d3_183 = DPB(d3_183, (word16) d3_183 + 0x01, 0);
				if (v37_208 != 0x22)
				{
					*a1_172 = v37_208;
					a1_172 = a1_172 + 0x01;
					while (true)
					{
						byte v45_291 = *a2_199;
						a2_199 = a2_199 + 0x01;
						d1_200 = DPB(d1_200, v45_291, 0);
						if (v45_291 == 0x00)
							break;
						if (v45_291 == 0x20)
							goto l00001116;
						*a1_172 = v45_291;
						a1_172 = a1_172 + 0x01;
					}
				}
				else
				{
					while (true)
					{
						byte v64_307 = *a2_199;
						a2_199 = a2_199 + 0x01;
						d1_200 = DPB(d1_200, v64_307, 0);
						if (v64_307 == 0x00)
							break;
						if (v64_307 == 0x22)
						{
l00001116:
							*a1_172 = 0x00;
							a1_172 = a1_172 + 0x01;
							goto l000010E6;
						}
						if (v64_307 == 0x2A)
						{
							byte v67_326 = *a2_199;
							a2_199 = a2_199 + 0x01;
							d1_200 = DPB(d1_200, v67_326, 0);
							if ((v67_326 & 223) == 0x4E)
								d1_200 = 0x0A;
							else if ((v67_326 & 223) == 0x45)
								d1_200 = 0x001B;
						}
						*a1_172 = (byte) d1_200;
						a1_172 = a1_172 + 0x01;
					}
				}
			}
l00001148:
			*a1_172 = 0x00;
			*a6_182 = 0x00;
			execPrivate4();
			globals->dw14A8 = d0_178;
			execPrivate5();
			*(int32 *) 5292 = d0_178;
			dwLoc0C_127 = (struct Eq_67 *) &d0_23->ptr0010;
			dwLoc10 = d3_183;
			if (globals->ptr1498->w0014 >= 0x24)
			{
				word32 v81_251 = d0_19->dw00E0;
				*(word32 *) 0x14B0 = v81_251;
				if (v81_251 != 0x00)
				{
l0000117E:
					if (d0_19->b0008 == 0x0D)
					{
						word32 * a0_241 = d0_19->ptr00B0;
						a0_132 = a0_241 + 0x01 - *a0_241;
l00001202:
						*(word32 *) 0x14BC = a0_132;
						*(ptr32 *) 0x14C0 = fp - 0x0010;
						fn00001354(dwLoc10, dwLoc0C_127);
						fn0000127C();
						return;
					}
					goto l000011F8;
				}
			}
			*(int32 *) 0x14B0 = d0_178;
			goto l0000117E;
		}
		CloseLibrary(globals->ptr149C);
		Alert(0x00010000);
	}
	else
		Alert(0x00038007);
	if (d0_19->ptr00AC == null)
	{
		fn00001214(d0_19);
		fn0000126C(d0_23);
	}
}

// 00001214: void fn00001214(Register (ptr32 Eq_25) a3)
void fn00001214(Eq_25 * a3)
{
	WaitPort((char *) &a3->dw003A + 0x0022);
	GetMsg((char *) &a3->dw003A + 0x0022);
}

// 0000126C: void fn0000126C(Register (ptr32 Eq_31) a2)
void fn0000126C(Eq_31 * a2)
{
	Forbid();
	ReplyMsg(a2);
}

// 00001278: void fn00001278(Stack int32 dwArg04)
void fn00001278(int32 dwArg04)
{
	fn0000127C();
}

// 0000127C: void fn0000127C()
void fn0000127C()
{
	ptr32 a7_3 = globals->ptr1494;
	struct Eq_468 * v8_8 = *(a7_3 - 0x04);
	struct Eq_31 * v6_5 = *(a7_3 - 0x08);
	if (v8_8->dw0004 != 0x00)
		execPrivate1();
	CloseLibrary(globals->ptr149C);
	if (v6_5 != null)
		fn0000126C(v6_5);
	FreeMem(v8_8, v8_8->dw0000);
}

// 000012D0: void fn000012D0(Stack int32 dwArg04)
void fn000012D0(int32 dwArg04)
{
	Eq_539 a3_11[] = (Eq_539 (*)[]) 0x14D0;
	if (0x14D0 != 0x00)
	{
		int32 d2_38 = 0x01;
		if (*(word32 *) 0x14D4 != 0x00)
		{
			do
				d2_38 = d2_38 + 0x01;
			while (((word32[]) 0x14D0)[d2_38] != 0x00);
		}
		int32 d2_49 = d2_38 - 0x01;
		if (d2_49 != 0x00)
		{
			do
			{
				int32 d0_55 = d2_49 << 0x02;
				Eq_539 a2_57 = (&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&(&a3_11[d0_55].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00].a0000)[0x00];
				word32 a7_59;
				word32 a2_61;
				word32 d2_62;
				word32 d0_63;
				byte CVZN_64;
				bool Z_65;
				byte ZN_66;
				bool C_67;
				bool V_68;
				byte CVZNX_69;
				a2_57();
				d2_49 = d2_62 - 0x01;
			} while (d2_62 != 0x01);
		}
	}
	fn00001278(dwArg04);
}

// 0000131C: void fn0000131C(Stack int32 dwArg04)
void fn0000131C(int32 dwArg04)
{
	if (*(word32 *) 0x14C4 == 0x00)
	{
		struct Eq_563 * a3_27 = *(struct Eq_563 **) 5336;
		*(int32 *) 0x14C4 = 0x01;
		if (a3_27 != null)
		{
			do
			{
				<anonymous> * a2_49 = a3_27->ptr0004;
				word32 a7_50;
				struct Eq_563 ** a3_51;
				word32 a2_52;
				byte ZN_53;
				bool C_54;
				bool V_55;
				bool Z_56;
				word32 d0_57;
				byte CVZN_58;
				a2_49();
				a3_27 = (struct Eq_563 *) *a3_51;
			} while (a3_27 != null);
		}
		fn000012D0(dwArg04);
	}
}

// 00001354: void fn00001354(Stack int32 dwArg04, Stack (ptr32 Eq_67) dwArg08)
void fn00001354(int32 dwArg04, Eq_67 * dwArg08)
{
	<anonymous> ** a3_45 = (<anonymous> **) 0x14CC;
	if (0x14C8 != 0x00 && *((word32 *) 0x14CC) != 0x00)
	{
		do
		{
			word32 a7_52;
			word32 a2_54;
			word32 d0_55;
			byte CVZN_56;
			bool Z_57;
			byte ZN_58;
			bool C_59;
			bool V_60;
			(*a3_45)();
		} while (*a3_45 != null);
	}
	fn00001468();
	fn0000131C(0x05);
}

// 00001390: void fn00001390(Stack ptr32 dwArg04, Stack ptr32 dwArg08, Stack ptr32 dwArg0C)
void fn00001390(ptr32 dwArg04, ptr32 dwArg08, ptr32 dwArg0C)
{
	Eq_633 d4_32 = 0x00;
	while (0x05 - d4_32 > 0x00)
	{
		int32 d3_67 = 0x00;
		while (0x04 - d3_67 > 0x00)
		{
			Eq_633 d2_171 = 0x00;
			while (0x04 - d2_171 > 0x00)
			{
				uint32 d1_109 = __swap(0x0014) * (word16) d2_171;
				union Eq_633 * a1_120 = dwArg08 + ((word16) d2_171 * 0x0014 + DPB(__swap(DPB(d1_109, (word16) (d1_109 + __swap(d2_171) * 0x14), 0)), 0x00, 0)) + (d3_67 << 0x02);
				Eq_633 d0_122 = (dwArg04 + (d4_32 << 0x04))[d2_171];
				Eq_633 d1_123 = *a1_120;
				uint32 d5_128 = __swap(d0_122) * (word16) d1_123;
				uint32 d0_135 = d0_122 * (word16) d1_123 + DPB(__swap(DPB(d5_128, (word16) (d5_128 + __swap(d1_123) * (word16) d0_122), 0)), 0x00, 0);
				uint32 d5_141 = __swap(0x0014) * (word16) d4_32;
				uint32 d0_152 = d0_135 + (dwArg0C + ((word32) ((word16) d4_32 * 0x0014) + DPB(__swap(DPB(d5_141, (word16) (d5_141 + __swap(d4_32) * 0x14), 0)), 0x00, 0)))[d3_67];
				uint32 d5_158 = __swap(0x0014) * (word16) d4_32;
				(dwArg0C + ((word32) ((word16) d4_32 * 0x0014) + DPB(__swap(DPB(d5_158, (word16) (d5_158 + __swap(d4_32) * 0x14), 0)), 0x00, 0)))[d3_67] = d0_152;
				d2_171 = (word32) d2_171.u0 + 0x01;
			}
			d3_67 = d3_67 + 0x01;
		}
		d4_32 = (word32) d4_32.u0 + 0x01;
	}
}

// 00001468: void fn00001468()
void fn00001468()
{
	fn00001390(fp + -0x00F0, fp + -0x00A0, fp + -0x0050);
}

