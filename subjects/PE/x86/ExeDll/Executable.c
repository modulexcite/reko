// Executable.c
// Generated by decompiling Executable.exe
// using Reko decompiler version 0.8.0.0.

#include "Executable.h"

// 00401000: Register word32 fn00401000()
word32 fn00401000()
{
	InitializeCriticalSection(&exported_critical_section);
	fn00401060(0x00402108);
	slow_and_safe_increment(0x01);
	fn00401060(0x00402108);
	fn00401060(0x00402108);
	return 0x00;
}

// 00401050: void fn00401050()
void fn00401050()
{
}

// 00401060: void fn00401060(Stack word32 dwArg04)
void fn00401060(word32 dwArg04)
{
	word32 esp_13;
	word32 ebp_14;
	word32 esi_15;
	byte SCZO_16;
	word32 ecx_17;
	word32 eax_18;
	_acrt_iob_func();
	fn00401050();
	word32 esp_37;
	word32 ebp_38;
	word32 esi_39;
	byte SCZO_40;
	word32 ecx_41;
	word32 eax_42;
	_stdio_common_vfprintf();
}

// 004012CE: Register Eq_45 Win32CrtStartup()
DWORD Win32CrtStartup()
{
	fn00401663();
	struct Eq_49 * ebp_10 = fn00401980(ebx, esi, edi, dwLoc0C, 0x004024D8, 0x14);
	word32 * esp_16 = fp - 0x08;
	if (fn00401474(edx, 0x01) == 0x00)
	{
l00401177:
		esp_16 -= 0x04;
		*esp_16 = 0x07;
		fn00401774(0x14, dwArg00);
	}
	*(ebp_10 - 0x19) = 0x00;
	*(ebp_10 - 0x04) &= 0x00;
	*(ebp_10 - 0x24) = fn0040143F();
	ebx = DPB(ebx, 0x00, 0);
	word32 eax_35 = globals->dw403334;
	if (eax_35 != 0x01)
	{
		Eq_45 eax_186;
		if (eax_35 == 0x00)
		{
			globals->dw403334 = 0x01;
			PVFV ** esp_273 = esp_16 - 0x04;
			*esp_273 = (PVFV **) &globals->t4020EC;
			*(esp_273 - 0x04) = 0x004020E0;
			if (_initterm_e(*(esp_273 - 0x04), *esp_273) != 0x00)
			{
				*(ebp_10 - 0x04) = ~0x01;
				eax_186 = 0xFF;
				goto l004012C8;
			}
			*esp_273 = (PVFV **) &globals->t4020DC;
			*(esp_273 - 0x04) = 0x004020D4;
			_initterm(*(esp_273 - 0x04), *esp_273);
			globals->dw403334 = 0x02;
		}
		else
		{
			*(ebp_10 - 0x19) = 0x01;
			ebx = DPB(ebx, 0x01, 0);
		}
		ptr32 * esp_72 = esp_16 - 0x04;
		*esp_72 = *(ebp_10 - 0x24);
		fn004015CE(bArg00);
		fn00401768();
		ptr32 esp_245 = esp_72 + 0x01;
		ptr32 edi_241 = 0x00;
		if (globals->dw403388 != 0x00)
		{
			*esp_72 = 0x00403388;
			word32 ebp_239;
			<anonymous> ** esi_240;
			word32 eax_242 = fn00401544(ebx, 0x00403388, 0x00, out ebx, out ebp_239, out esi_240, out edi_241);
			byte al_243 = (byte) eax_242;
			esp_245 = esp_72 + 0x01;
			if (al_243 != 0x00)
			{
				*esp_72 = edi_241;
				*(esp_72 - 0x04) = 0x02;
				*(esp_72 - 0x08) = edi_241;
				<anonymous> * esi_255 = *esi_240;
				fn00401976();
				word32 ecx_258;
				byte al_259;
				byte SZO_260;
				bool C_261;
				bool Z_262;
				byte bl_263;
				word32 ebp_264;
				word32 eax_265;
				byte SCZO_266;
				byte cl_267;
				word32 esi_268;
				word32 edx_271;
				esi_255();
			}
		}
		word32 eax_91 = fn0040176E();
		if (globals->ptr403384 != edi_241)
		{
			ptr32 * esp_203 = esp_245 - 0x04;
			*esp_203 = 0x00403384;
			word32 ebx_205;
			word32 ebp_206;
			ptr32 * esi_207;
			word32 edi_208;
			word32 eax_209 = fn00401544(ebx, 0x00403384, edi_241, out ebx_205, out ebp_206, out esi_207, out edi_208);
			byte al_210 = (byte) eax_209;
			if (al_210 != 0x00)
			{
				*esp_203 = *esi_207;
				word32 esp_219;
				word32 ecx_220;
				byte al_221;
				byte SZO_222;
				bool C_223;
				bool Z_224;
				byte bl_225;
				word32 ebp_226;
				word32 eax_227;
				byte SCZO_228;
				byte cl_229;
				word32 esi_230;
				word32 edi_231;
				word32 ebx_232;
				word32 edx_233;
				register_thread_local_exe_atexit_callback();
			}
		}
		word32 esp_96;
		word32 ecx_97;
		byte al_98;
		byte SZO_99;
		bool C_100;
		bool Z_101;
		byte bl_102;
		word32 ebp_103;
		word32 eax_104;
		byte SCZO_105;
		byte cl_106;
		word32 esi_107;
		word32 edi_108;
		word32 ebx_109;
		word32 edx_110;
		_p___argv();
		word32 esp_112;
		word32 ecx_113;
		byte al_114;
		byte SZO_115;
		bool C_116;
		bool Z_117;
		byte bl_118;
		word32 ebp_119;
		word32 eax_120;
		byte SCZO_121;
		byte cl_122;
		word32 esi_123;
		word32 edi_124;
		word32 ebx_125;
		word32 edx_126;
		_p___argc();
		ptr32 esp_128;
		word32 ecx_129;
		byte al_130;
		byte SZO_131;
		bool C_132;
		bool Z_133;
		byte bl_134;
		word32 eax_136;
		byte SCZO_137;
		byte cl_138;
		word32 * esi_139;
		word32 * edi_140;
		word32 ebx_141;
		word32 edx_142;
		get_initial_narrow_environment();
		*(esp_128 - 0x04) = eax_136;
		*(esp_128 - 0x08) = *edi_140;
		*(esp_128 - 0x0C) = *esi_139;
		Eq_45 eax_151 = fn00401000();
		ptr32 esp_152 = esp_128;
		Eq_45 esi_154 = eax_151;
		byte al_155 = fn0040188F();
		if (al_155 == 0x00)
		{
			*(esp_128 - 0x04) = (uint32) eax_151;
			exit(*(esp_128 - 0x04));
		}
		if (bl_134 == 0x00)
		{
			word32 ecx_189;
			byte al_190;
			byte SZO_191;
			bool C_192;
			bool Z_193;
			byte bl_194;
			word32 eax_196;
			byte SCZO_197;
			byte cl_198;
			word32 edi_200;
			word32 ebx_201;
			word32 edx_202;
			cexit();
		}
		word32 * esp_176 = esp_152 - 0x04;
		*esp_176 = 0x00;
		*(esp_176 - 0x04) = 0x01;
		fn004015EB(dwArg00, bArg04);
		*(ebp_10 - 0x04) = ~0x01;
		eax_186 = esi_154;
l004012C8:
		word32 ebp_61;
		word32 esi_62;
		word32 edi_63;
		fn004019C6(ebp_10, 0x14, dwArg00, dwArg04, dwArg08, dwArg0C, out ebp_61, out esi_62, out edi_63);
		return eax_186;
	}
	goto l00401177;
}

// 004012D8: void fn004012D8(Stack (ptr32 Eq_499) dwArg04)
void fn004012D8(_EXCEPTION_POINTERS * dwArg04)
{
	SetUnhandledExceptionFilter(null);
	UnhandledExceptionFilter(dwArg04);
	TerminateProcess(GetCurrentProcess(), 0xC0000409);
}

// 004013FB: Register (ptr32 Eq_518) fn004013FB(Stack (ptr32 Eq_519) dwArg04, Stack uint32 dwArg08)
Eq_518 * fn004013FB(Eq_519 * dwArg04, uint32 dwArg08)
{
	struct Eq_518 * eax_26;
	struct Eq_522 * ecx_13 = dwArg04 + dwArg04->dw003C / 0x0040;
	struct Eq_518 * edx_16 = &ecx_13->w0014 + 0x02 + (word32) ecx_13->w0014 / 22;
	struct Eq_518 * esi_19 = edx_16 + (word32) ecx_13->w0006;
	for (; edx_16 != esi_19; ++edx_16)
	{
		if (dwArg08 >= edx_16->dw000C && dwArg08 < edx_16->dw0008 + edx_16->dw000C)
		{
			eax_26 = edx_16;
			return eax_26;
		}
	}
	eax_26 = null;
	return eax_26;
}

// 0040143F: Register byte fn0040143F()
byte fn0040143F()
{
	if (fn00401B98() == 0x00)
		return 0x00;
	word32 edx_32 = fs->ptr0018->dw0004;
	do
	{
		__lock();
		word32 eax_37;
		__cmpxchg(globals->dw403338, edx_32, 0x00, out eax_37);
		if (eax_37 == 0x00)
			return 0x00;
	} while (edx_32 != eax_37);
	return 0x01;
}

// 00401474: Register byte fn00401474(Register word32 edx, Stack word32 dwArg04)
byte fn00401474(word32 edx, word32 dwArg04)
{
	if (dwArg04 == 0x00)
		globals->b403354 = 0x01;
	fn004019FE(edx);
	fn00401C48();
	if (false)
		return 0x00;
	fn00401C48();
	if (true)
		return 0x01;
	fn00401C48();
	return 0x00;
}

// 004014AD: void fn004014AD(Register ptr32 edi, Stack ptr32 dwArg04)
void fn004014AD(ptr32 edi, ptr32 dwArg04)
{
	if (dwArg04 == 0x00 || dwArg04 == 0x01)
	{
		word32 eax_35 = fn00401B98();
		if (eax_35 != 0x00 && dwArg04 == 0x00)
		{
			word32 esp_125;
			word32 ebp_126;
			byte SCZO_127;
			word32 esi_128;
			byte SZO_129;
			bool C_130;
			bool Z_131;
			word32 eax_132;
			word32 ecx_133;
			byte al_134;
			word32 edi_135;
			byte cl_136;
			word32 ebx_137;
			initialize_onexit_table();
			if (eax_132 == 0x00)
			{
				*(fp - 0x18) = 0x00403348;
				word32 esp_148;
				word32 ebp_149;
				byte SCZO_150;
				word32 esi_151;
				byte SZO_152;
				bool C_153;
				bool Z_154;
				word32 eax_155;
				word32 ecx_156;
				byte al_157;
				word32 edi_158;
				byte cl_159;
				word32 ebx_160;
				initialize_onexit_table();
			}
		}
		else
		{
			ui32 eax_62 = globals->dw403004;
			ui32 eax_78 = __ror(eax_62 & 0x1F | ~0x00, (byte) (0x20 - (eax_62 & 0x1F))) ^ globals->dw403004;
			globals->dw40333C = eax_78;
			globals->dw403340 = eax_78;
			globals->dw403344 = eax_78;
			globals->dw403348 = eax_78;
			globals->dw40334C = eax_78;
			globals->dw403350 = eax_78;
		}
	}
	else
	{
		fn00401774(dwLoc1C, 0x05);
		int3();
		word32 ebx_173;
		word32 ebp_174;
		word32 esi_175;
		word32 edi_176;
		fn00401544(ebx, dwArg04, edi, out ebx_173, out ebp_174, out esi_175, out edi_176);
	}
}

// 00401544: Register (ptr32 Eq_717) fn00401544(Register word32 ebx, Register ptr32 esi, Register ptr32 edi, Register out ptr32 ebxOut, Register out ptr32 ebpOut, Register out ptr32 esiOut, Register out ptr32 ediOut)
Eq_717 * fn00401544(word32 ebx, ptr32 esi, ptr32 edi, ptr32 & ebxOut, ptr32 & ebpOut, ptr32 & esiOut, ptr32 & ediOut)
{
	struct Eq_717 * eax_34;
	struct Eq_49 * ebp_10 = fn00401980(ebx, esi, edi, dwLoc0C, 0x004024F8, 0x08);
	*(ebp_10 - 0x04) &= 0x00;
	struct Eq_737 * eax_15 = (struct Eq_737 *) 23117;
	if (globals->w400000 == 23117)
	{
		eax_15 = globals->ptr40003C;
		if (eax_15->dw400000 == 0x4550 && eax_15->w400018 == 0x010B)
		{
			ui32 eax_71 = ebp_10->dw0008;
			dwLoc0C = eax_71 - 0x00400000;
			eax_15 = fn004013FB(&globals->w400000, eax_71 - 0x00400000);
			if (eax_15 != null && eax_15->dw0024 >= 0x00)
			{
				*(ebp_10 - 0x04) = ~0x01;
				eax_34 = (struct Eq_717 *) DPB(eax_15, 0x01, 0);
l004015C8:
				word32 ebp_38;
				word32 esi_39;
				word32 edi_40;
				word32 ebx_41;
				*ebxOut = fn004019C6(ebp_10, dwLoc0C, 0x004024F8, 0x08, dwArg00, dwArg04, out ebp_38, out esi_39, out edi_40);
				return eax_34;
			}
		}
	}
	*(ebp_10 - 0x04) = ~0x01;
	eax_34 = (struct Eq_717 *) DPB(eax_15, 0x00, 0);
	goto l004015C8;
}

// 004015CE: void fn004015CE(Stack byte bArg04)
void fn004015CE(byte bArg04)
{
	if (fn00401B98() != 0x00 && bArg04 == 0x00)
		globals->dw403338 = 0x00;
}

// 004015EB: void fn004015EB(Stack word32 dwArg04, Stack byte bArg08)
void fn004015EB(word32 dwArg04, byte bArg08)
{
	if (globals->b403354 == 0x00 || bArg08 == 0x00)
	{
		fn00401C48();
		fn00401C48();
	}
}

// 00401613: Register ui32 fn00401613(Stack ui32 dwArg04)
ui32 fn00401613(ui32 dwArg04)
{
	word32 eax_24;
	ui32 eax_7 = globals->dw403004;
	byte cl_11 = (byte) (eax_7 & 0x1F);
	word32 eax_17 = __ror(eax_7 ^ globals->dw40333C, cl_11);
	if (eax_17 == ~0x00)
	{
		word32 esp_40;
		word32 ebp_41;
		word32 ecx_43;
		byte SZO_44;
		bool C_45;
		byte cl_46;
		byte SCZO_47;
		bool Z_48;
		crt_atexit();
	}
	else
	{
		word32 esp_51;
		word32 ebp_52;
		word32 ecx_54;
		byte SZO_55;
		bool C_56;
		byte cl_57;
		byte SCZO_58;
		bool Z_59;
		register_onexit_function();
	}
	return ~(0x00 - (-eax_24 == 0x00)) & dwArg04;
}

// 0040164E: void fn0040164E(Stack ui32 dwArg04)
void fn0040164E(ui32 dwArg04)
{
	fn00401613(dwArg04);
}

// 00401663: void fn00401663()
void fn00401663()
{
	ui32 eax_16 = globals->dw403004;
	if (eax_16 != 0xBB40E64E && (eax_16 & 0xFFFF0000) != 0x00)
		globals->dw403000 = ~eax_16;
	else
	{
		GetSystemTimeAsFileTime(fp - 0x10);
		ui32 v14_55 = dwLoc0C & 0x00 ^ dwLoc10 & 0x00 ^ GetCurrentThreadId() ^ GetCurrentProcessId();
		QueryPerformanceCounter(fp - 0x18);
		ui32 ecx_69 = dwLoc14 ^ dwLoc18 ^ v14_55 ^ fp - 0x08;
		if (ecx_69 == 0xBB40E64E)
			ecx_69 = ~0x44BF19B0;
		else if ((ecx_69 & 0xFFFF0000) == 0x00)
			ecx_69 |= (ecx_69 | 0x4711) << 0x10;
		globals->dw403004 = ecx_69;
		globals->dw403000 = ~ecx_69;
	}
}

// 004016FF: void fn004016FF()
void fn004016FF()
{
}

// 00401703: void fn00401703()
void fn00401703()
{
}

// 00401709: void fn00401709()
void fn00401709()
{
}

// 0040170C: void fn0040170C()
void fn0040170C()
{
	InitializeSListHead(&globals->u403358);
}

// 00401718: void fn00401718(Register word32 eax)
void fn00401718(word32 eax)
{
	word32 esp_8;
	byte SCZO_9;
	word32 eax_10;
	byte SZO_11;
	bool C_12;
	bool Z_13;
	controlfp_s();
	if (eax_10 == 0x00)
		return;
	*(fp - 0x04) = 0x07;
	fn00401774(0x00030000, dwArg00);
	int3();
	fn00401739();
}

// 00401739: void fn00401739()
void fn00401739()
{
}

// 0040173F: void fn0040173F()
void fn0040173F()
{
	fn00401050();
	word32 ecx_3 = globals->dw40337C;
	globals->dw403378 |= 0x04;
	globals->dw40337C = ecx_3;
	fn00401739();
	word32 ecx_9 = globals->dw403364;
	globals->dw403360 |= 0x02;
	globals->dw403364 = ecx_9;
}

// 0040175C: void fn0040175C()
void fn0040175C()
{
}

// 00401768: void fn00401768()
void fn00401768()
{
}

// 0040176E: Register ptr32 fn0040176E()
ptr32 fn0040176E()
{
	return 0x00403384;
}

// 00401774: void fn00401774(Stack word32 dwArg00, Stack word32 dwArg04)
void fn00401774(word32 dwArg00, word32 dwArg04)
{
	if (IsProcessorFeaturePresent(0x17) == 0x00)
	{
		globals->dw403368 = 0x00;
		memset(fp - 808, 0x00, 0x02CC);
		memset(fp - 0x5C, 0x00, 0x50);
		byte bl_90 = 0x00 - (0x01 - IsDebuggerPresent() == 0x00);
		SetUnhandledExceptionFilter(null);
		if (UnhandledExceptionFilter(fp - 0x0C) == 0x00)
			globals->dw403368 &= 0x00 - (-((word32) (bl_90 + 0x01)) == 0x00);
	}
	else
		__fastfail(dwArg04);
}

// 0040188F: Register Eq_1059 fn0040188F()
Eq_1059 fn0040188F()
{
	Eq_1060 eax_4 = GetModuleHandleW(null);
	if (eax_4 == null || eax_4->unused != 23117)
		return 0x00;
	struct Eq_1074 * eax_42 = eax_4 + eax_4->dw003C / 0x0040;
	if (eax_42->dw0000 != 0x4550 || (eax_42->w0018 != 0x010B || eax_42->dw0074 <= 0x0E))
		return 0x00;
	return eax_42->dw00E8 != 0x00;
}

// 004018D3: void fn004018D3()
void fn004018D3()
{
	SetUnhandledExceptionFilter(&globals->t4018DF);
}

// 00401920: void fn00401920()
void fn00401920()
{
	word32 * esi_34 = &globals->dw4024C8;
	if (false)
	{
		do
		{
			word32 edi_37 = *esi_34;
			if (edi_37 != 0x00)
			{
				fn00401976();
				word32 esp_54;
				word32 ebx_55;
				byte SCZO_57;
				bool C_58;
				word32 edi_59;
				byte SZO_60;
				bool Z_61;
				word32 ecx_62;
				fn00000000();
			}
			++esi_34;
		} while (esi_34 < &globals->dw4024C8);
	}
}

// 00401976: void fn00401976()
void fn00401976()
{
	word32 esp_3;
	globals->ptr4020D0();
}

// 00401980: Register ptr32 fn00401980(Register word32 ebx, Register ptr32 esi, Register ptr32 edi, Stack ui32 dwArg00, Stack word32 dwArg04, Stack ui32 dwArg08)
ptr32 fn00401980(word32 ebx, ptr32 esi, ptr32 edi, ui32 dwArg00, word32 dwArg04, ui32 dwArg08)
{
	ptr32 esp_14 = fp - 0x08 - dwArg08;
	*(esp_14 - 0x04) = ebx;
	*(esp_14 - 0x08) = esi;
	*(esp_14 - 0x0C) = edi;
	*(esp_14 - 0x10) = globals->dw403004 ^ fp + 0x08;
	*(esp_14 - 0x14) = dwArg00;
	fs->ptr0000 = fp - 0x08;
	return fp + 0x08;
}

// 004019C6: Register word32 fn004019C6(Register (ptr32 Eq_49) ebp, Stack ui32 dwArg00, Stack word32 dwArg04, Stack word32 dwArg08, Stack word32 dwArg0C, Stack word32 dwArg10, Register out ptr32 ebpOut, Register out ptr32 esiOut, Register out ptr32 ediOut)
word32 fn004019C6(Eq_49 * ebp, ui32 dwArg00, word32 dwArg04, word32 dwArg08, word32 dwArg0C, word32 dwArg10, ptr32 & ebpOut, ptr32 & esiOut, ptr32 & ediOut)
{
	fs->dw0000 = *(ebp - 0x10);
	word32 ebp_22;
	*ebpOut = ebp->dw0000;
	ebp->dw0000 = dwArg00;
	word32 edi_14;
	*ediOut = dwArg08;
	word32 esi_17;
	*esiOut = dwArg0C;
	return dwArg10;
}

// 004019FE: void fn004019FE(Register word32 edx)
void fn004019FE(word32 edx)
{
	globals->dw40336C &= 0x00;
	globals->dw403010 |= 0x01;
	if (IsProcessorFeaturePresent(0x0A) != 0x00)
	{
		ui32 edi_135;
		globals->dw403010 |= 0x02;
		globals->dw40336C = 0x01;
		int32 eax_89;
		word32 ebx_90;
		word32 ecx_91;
		word32 edx_92;
		__cpuid(0x00, 0x00, &eax_89, &ebx_90, &ecx_91, &edx_92);
		ui32 eax_124;
		word32 ebx_125;
		ui32 ecx_126;
		word32 edx_127;
		__cpuid(0x01, 0x00, &eax_124, &ebx_125, &ecx_126, &edx_127);
		if ((edx_92 ^ 0x49656E69 | ecx_91 ^ 1818588270 | ebx_90 ^ 1970169159) == 0x00 && ((eax_124 & 0x0FFF3FF0) == 0x000106C0 || ((eax_124 & 0x0FFF3FF0) == 0x00020660 || ((eax_124 & 0x0FFF3FF0) == 0x00020670 || ((eax_124 & 0x0FFF3FF0) == 0x00030650 || ((eax_124 & 0x0FFF3FF0) == 0x00030660 || (eax_124 & 0x0FFF3FF0) == 0x00030670))))))
		{
			ui32 edi_245 = globals->dw403370;
			globals->dw403370 = edi_245 | 0x01;
			edi_135 = edi_245 | 0x01;
		}
		else
			edi_135 = globals->dw403370;
		if (eax_89 >= 0x07)
		{
			word32 eax_210;
			ui32 ebx_211;
			word32 ecx_212;
			word32 edx_213;
			__cpuid(0x07, 0x00, &eax_210, &ebx_211, &ecx_212, &edx_213);
			if ((ebx_211 & 0x0200) != 0x00)
				globals->dw403370 = edi_135 | 0x02;
		}
		if ((ecx_126 & 0x00100000) != 0x00)
		{
			globals->dw403010 |= 0x04;
			globals->dw40336C = 0x02;
			if ((ecx_126 & 0x08000000) != 0x00 && ((ecx_126 & 0x10000000) != 0x00 && (((word32) __xgetbv(0x00) & 0x06) == 0x06 && true)))
			{
				ui32 eax_189 = globals->dw403010;
				globals->dw40336C = 0x03;
				globals->dw403010 = eax_189 | 0x08;
				if ((bLoc14 & 0x20) != 0x00)
				{
					globals->dw40336C = 0x05;
					globals->dw403010 = eax_189 | 0x08 | 0x20;
				}
			}
		}
	}
}

// 00401B98: Register word32 fn00401B98()
word32 fn00401B98()
{
	return (word32) (globals->dw403014 != 0x00);
}

// 00401BA4: void fn00401BA4()
void fn00401BA4()
{
}

// 00401C48: void fn00401C48()
void fn00401C48()
{
}

