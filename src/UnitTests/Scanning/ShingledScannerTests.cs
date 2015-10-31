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

using NUnit.Framework;
using Reko.Arch.Mips;
using Reko.Arch.X86;
using Reko.Core;
using Reko.Scanning;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Reko.UnitTests.Scanning
{
    [TestFixture]
    public class ShingledScannerTests
    {
        private Program program;

        private void Given_Mips_Image(params uint [] words)
        {
            var image = new LoadedImage(
                Address.Ptr32(0x10000),
                words.Select(w => new []
                {
                    (byte) w,
                    (byte) (w >> 8),
                    (byte) (w >> 16),
                    (byte) (w >> 24)
                })
                .SelectMany(w => w)
                .ToArray());
            var arch = new MipsLe32Architecture();
            CreateProgram(image, arch);
        }

        private void Given_x86_Image(params byte[] bytes)
        {
            var image = new LoadedImage(
                Address.Ptr32(0x10000),
                bytes);
            var arch = new X86ArchitectureFlat32();
            CreateProgram(image, arch);
        }

        private void CreateProgram(LoadedImage image, IProcessorArchitecture arch)
        {
            var imageMap = image.CreateImageMap();
            var seg = imageMap.AddSegment(image.BaseAddress, ".text", AccessMode.ReadExecute, (uint)image.Bytes.Length);
            seg.Access = AccessMode.ReadExecute;
            var platform = new DefaultPlatform(null, arch);
            program = new Program(
                image,
                imageMap,
                arch,
                platform);
        }

        private T[] TakeEach<T>(IEnumerable<T> items, int n)
        {
            return items.Where((item, i) => (i % n) == 0).ToArray();
        }

        [Test]
        public void Shsc_Invalid()
        {
            Given_Mips_Image(0x00001403);
            var sh = new ShingledScanner(program);
            var by = sh.ScanSegment(program.ImageMap.Segments.Values.First());
            Assert.AreEqual(new byte[] { 0 }, TakeEach(by, 4));
        }

        [Test]
        public void Shsc_Return()
        {
            Given_Mips_Image(0x03E00008, 0);
            var sh = new ShingledScanner(program);
            var by = sh.ScanSegment(program.ImageMap.Segments.Values.First());
            Assert.AreEqual(new byte[] { 1, 1 }, TakeEach(by, 4));
        }

        [Test]
        public void Shsc_CondJump()
        {
            Given_Mips_Image(0x1C60FFFF, 0, 0x03e00008, 0);
            var sh = new ShingledScanner(program);
            var by = sh.ScanSegment(program.ImageMap.Segments.Values.First());
            Assert.AreEqual(new byte[] { 1, 1, 1, 1, }, TakeEach(by, 4));
        }

        [Test]
        public void Shsc_Overlapping()
        {
            Given_x86_Image(0x33, 0xC0, 0xC0, 0x90, 0xc3);
            var sh = new ShingledScanner(program);
            var by = sh.ScanSegment(program.ImageMap.Segments.Values.First());
            Assert.AreEqual(new byte[] { 0, 1, 0, 1, 1 }, by);
        }
    }
}