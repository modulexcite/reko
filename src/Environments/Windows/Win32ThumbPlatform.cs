﻿#region License
/* 
 * Copyright (C) 1999-2015 John Källén.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; see the file COPYING.  If not, write to
 * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
 */
#endregion

using Reko.Core;
using Reko.Core.Lib;
using Reko.Core.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reko.Environments.Windows
{
    public class Win32ThumbPlatform : Win32Platform
    {
        private Dictionary<int, SystemService> systemServices;

        public Win32ThumbPlatform(IServiceProvider services, IProcessorArchitecture arch) : 
            base(services, arch)
        {
            this.systemServices = new Dictionary<int, SystemService>
            {
                {
                    0x00FE,
                    new SystemService {
                        SyscallInfo = new SyscallInfo {
                            Vector = 0x00FE,
                            RegisterValues = new RegValue[0]
                        },
                        Name = "__debugbreak",  // Breaks into the debugger. Used by ntdll!DbgUserBreakPoint(). 
                    }
                },
                { 
                    0x00FC,
                    new SystemService { 
                        SyscallInfo = new SyscallInfo
                        {
                            Vector = 0x00FC,
                            RegisterValues = new RegValue[0],
                        },
                        Name = "__assertfail",  // Used to indicate critical assertion failures in the kernel debugger. Used by KeAccumulateTicks() 
                    }
                },
                 {
                     0x00FB,
                    new SystemService {
                        SyscallInfo = new SyscallInfo
                        {
                            Vector = 0x00FB,
                            RegisterValues = new RegValue[0],
                        },
                        Name = "__fastfail",    // Indicates fast fail conditions resulting in KeBugCheckEx(KERNEL_SECURITY_CHECK_FAILURE). Called by functions like InsertTailList() upon detecting a corrupted list, as described in [9]. 
                        Characteristics = new ProcedureCharacteristics {
                            Terminates = true,
                        }
                    }
                },
                {
                    0x00FA,
                    new SystemService {
                        SyscallInfo = new SyscallInfo {
                            Vector = 0x00FA,
                            RegisterValues = new RegValue[0]
                        },
                        Name = "__rdpmccntr64", // Reads the 64-bit performance counter co-processor register and returns the value in R0+R1. Used by ReadTimeStampCounter(), KiCacheFlushTrial() etc. 
                    }
                },
                { 
                    0x00FD,
                    new SystemService {
                        SyscallInfo = new SyscallInfo {
                            Vector = 0x00FD,
                            RegisterValues = new RegValue[0],
                        },
                        Name = "__debugservice", // Invoke debugger breakpoint. Used by DbgBreakPointWithStatusEnd(), DebugPrompt() etc. 
                    }
                },
                {
                    0x00F9,
                    new SystemService
                    {
                        SyscallInfo = new SyscallInfo {
                            Vector = 0x00F9,
                            RegisterValues = new RegValue[0],
                        },
                        Name = "__brkdiv0", //  Divide By Zero Exception, used by functions like nt!_rt_udiv and nt!_rt_udiv. Also generated by the compiler to check the divisor before division operations. 
                        Characteristics = new ProcedureCharacteristics {
                            Terminates = true,
                        }
                    }
                }
            };
        }

        public override string DefaultCallingConvention
        {
            get { throw new NotImplementedException(); }
        }

        public override Address AdjustProcedureAddress(Address addr)
        {
            return Address.Ptr32((uint)addr.ToLinear() & ~1u);
        }

        public override BitSet CreateImplicitArgumentRegisters()
        {
            throw new NotImplementedException();
        }

        public override SystemService FindService(int vector, ProcessorState state)
        {
            SystemService svc;
            systemServices.TryGetValue(vector, out svc);
            return svc;
        }

        public override ProcedureBase GetTrampolineDestination(ImageReader imageReader, IRewriterHost host)
        {
            return null;
        }

        public override ExternalProcedure LookupProcedureByName(string moduleName, string procName)
        {
            throw new NotImplementedException();
        }

        // http://codemachine.com/article_armasm.html

//0xDEFE __debugbreak Breaks into the debugger. Used by ntdll!DbgUserBreakPoint(). 
//0xDEFC __assertfail Used to indicate critical assertion failures in the kernel debugger. Used by KeAccumulateTicks() 
//0xDEFB __fastfail Indicates fast fail conditions resulting in KeBugCheckEx(KERNEL_SECURITY_CHECK_FAILURE). Called by functions like InsertTailList() upon detecting a corrupted list, as described in [9]. 
//0xDEFA __rdpmccntr64 Reads the 64-bit performance counter co-processor register and returns the value in R0+R1. Used by ReadTimeStampCounter(), KiCacheFlushTrial() etc. 
//0xDEFD __debugservice Invoke debugger breakpoint. Used by DbgBreakPointWithStatusEnd(), DebugPrompt() etc. 
//0xDEF9 __brkdiv0 Divide By Zero Exception, used by functions like nt!_rt_udiv and nt!_rt_udiv. Also generated by the compiler to check the divisor before division operations. 

    }
}