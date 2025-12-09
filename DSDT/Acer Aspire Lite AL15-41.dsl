/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000FF11 (65297)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x45
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "DSDT", 1, "ACRSYS", "ACRPRDCT", 0x00000002)
{
    /*
     * iASL Warning: There were 11 external control methods found during
     * disassembly, but only 0 were resolved (11 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.APTS, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (_SB_.AWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.TPM2.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AFN4, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (AFN7, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (ALIB, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (IOB2, UnknownObj)
    External (M009, UnknownObj)
    External (M017, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (M019, MethodObj)    // Warning: Unknown method, guessing 3 arguments
    External (M020, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (MPTS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (MWAK, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    OperationRegion (DBG0, SystemIO, 0x80, One)
    Field (DBG0, ByteAcc, NoLock, Preserve)
    {
        IO80,   8
    }

    OperationRegion (DBG1, SystemIO, 0x80, 0x02)
    Field (DBG1, WordAcc, NoLock, Preserve)
    {
        P80H,   16
    }

    OperationRegion (ACMS, SystemIO, 0x72, 0x02)
    Field (ACMS, ByteAcc, NoLock, Preserve)
    {
        ACMX,   8, 
        ACMA,   8
    }

    IndexField (ACMX, ACMA, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB9), 
        IMEN,   8
    }

    OperationRegion (PSMI, SystemIO, 0xB0, 0x02)
    Field (PSMI, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (PMRG, SystemMemory, 0xFED80300, 0x0100)
    Field (PMRG, AnyAcc, NoLock, Preserve)
    {
            ,   6, 
        HPEN,   1, 
        Offset (0x60), 
        P1EB,   16, 
        Offset (0xF0), 
            ,   3, 
        RSTU,   1
    }

    OperationRegion (GSMG, SystemMemory, 0xFED81500, 0x03FF)
    Field (GSMG, AnyAcc, NoLock, Preserve)
    {
        Offset (0x5C), 
        Offset (0x5E), 
        GS23,   1, 
            ,   5, 
        GV23,   1, 
        GE23,   1, 
        Offset (0xA0), 
        Offset (0xA2), 
        GS40,   1, 
            ,   5, 
        GV40,   1, 
        GE40,   1
    }

    OperationRegion (GSMM, SystemMemory, 0xFED80000, 0x1000)
    Field (GSMM, AnyAcc, NoLock, Preserve)
    {
        Offset (0x288), 
            ,   1, 
        CLPS,   1, 
        Offset (0x2B0), 
            ,   2, 
        SLPS,   2
    }

    OperationRegion (PMI2, SystemMemory, 0xFED80300, 0x0100)
    Field (PMI2, AnyAcc, NoLock, Preserve)
    {
        Offset (0xBB), 
            ,   6, 
        PWDE,   1, 
        Offset (0xBC)
    }

    OperationRegion (P1E0, SystemIO, P1EB, 0x04)
    Field (P1E0, ByteAcc, NoLock, Preserve)
    {
            ,   14, 
        PEWS,   1, 
        WSTA,   1, 
            ,   14, 
        PEWD,   1
    }

    OperationRegion (IOCC, SystemIO, 0x0400, 0x80)
    Field (IOCC, ByteAcc, NoLock, Preserve)
    {
        Offset (0x01), 
            ,   2, 
        RTCS,   1
    }

    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        PRWP [Zero] = Arg0
        PRWP [One] = Arg1
        If ((DAS3 == Zero))
        {
            If ((Arg1 <= 0x03))
            {
                PRWP [One] = Zero
            }
        }

        Return (PRWP) /* \PRWP */
    }

    Method (SPTS, 1, NotSerialized)
    {
        If ((Arg0 == 0x03))
        {
            RSTU = Zero
        }

        CLPS = One
        SLPS = One
        PEWS = PEWS /* \PEWS */
    }

    Method (SWAK, 1, NotSerialized)
    {
        If ((Arg0 == 0x03))
        {
            RSTU = One
        }

        PEWS = PEWS /* \PEWS */
        PEWD = Zero
    }

    Method (TPST, 1, Serialized)
    {
        Local0 = (Arg0 + 0xB0000000)
        OperationRegion (VARM, SystemIO, 0x80, 0x04)
        Field (VARM, DWordAcc, NoLock, Preserve)
        {
            VARR,   32
        }

        VARR = Local0
    }

    OperationRegion (GNVS, SystemMemory, 0xCCF3CA98, 0x0000018D)
    Field (GNVS, AnyAcc, NoLock, Preserve)
    {
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        BRTL,   8, 
        TLST,   8, 
        IGDS,   8, 
        LCDA,   16, 
        CSTE,   16, 
        NSTE,   16, 
        CADL,   16, 
        PADL,   16, 
        LIDS,   8, 
        PWRS,   8, 
        BVAL,   32, 
        ADDL,   16, 
        BCMD,   8, 
        SBFN,   8, 
        DID,    32, 
        INFO,   2048, 
        TOML,   8, 
        TOMH,   8, 
        CEBP,   8, 
        C0LS,   8, 
        C1LS,   8, 
        C0HS,   8, 
        C1HS,   8, 
        ROMS,   32, 
        MUXF,   8, 
        PDDN,   8, 
        CNSB,   8, 
        RDHW,   8, 
        DAS3,   8, 
        TNBH,   8, 
        TCP0,   8, 
        TCP1,   8, 
        ATNB,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PWMN,   8, 
        LPTY,   8, 
        M92D,   8, 
        WKPM,   8, 
        ALST,   8, 
        AFUC,   8, 
        EXUS,   8, 
        GV0E,   8, 
        WLSH,   8, 
        TSSS,   8, 
        AOZP,   8, 
        TZFG,   8, 
        BPS0,   8, 
        NAPC,   8, 
        PCBA,   32, 
        PCBL,   32, 
        WLAN,   8, 
        BLTH,   8, 
        GPSS,   8, 
        NFCS,   8, 
        SBTY,   8, 
        BDID,   16, 
        MWTT,   8, 
        ACPM,   8, 
        KBCS,   8, 
        ACEC,   8, 
        DPTC,   8, 
        ECTL,   8, 
        MM64,   8, 
        HMB1,   64, 
        HMB2,   64, 
        HMM1,   64, 
        HMM2,   64, 
        HML1,   64, 
        HML2,   64, 
        WOVS,   8, 
        TCNT,   8, 
        NPWD,   8, 
        BCPU,   8, 
        BCP7,   8
    }

    OperationRegion (OGNS, SystemMemory, 0xCCF3CD18, 0x000000F5)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        OG00,   8, 
        OG01,   8, 
        M2WL,   8, 
        THPN,   8, 
        PBAR,   8, 
        THPD,   8, 
        DTEN,   8, 
        SDMO,   8, 
        TBEN,   8, 
        TBNH,   8, 
        RV2I,   8, 
        ISDS,   8, 
        OEMF,   16, 
        BAEE,   8, 
        BTCP,   8, 
        BSCP,   8, 
        CDPT,   8, 
        B41S,   8, 
        B41M,   8, 
        B41E,   8, 
        NACT,   8, 
        CJMX,   8, 
        LKFG,   8, 
        GPSL,   8, 
        BKST,   8, 
        ECBL,   8, 
        DCTP,   16, 
        NVBB,   32, 
        COLM,   8, 
        PSPT,   32, 
        PFPT,   32, 
        PLPT,   32, 
        PTHM,   8, 
        ESPT,   32, 
        EFPT,   32, 
        ELPT,   32, 
        ETHM,   8, 
        QSPT,   32, 
        QFPT,   32, 
        QLPT,   32, 
        QTHM,   8, 
        OSPT,   32, 
        OFPT,   32, 
        OLPT,   32, 
        OTHM,   8, 
        DSPT,   32, 
        DFPT,   32, 
        DLPT,   32, 
        CLO1,   8, 
        CLO2,   8, 
        OSTY,   8, 
        CM17,   8, 
        CVSF,   8, 
        EDID,   1024, 
        CRSS,   8, 
        MCPR,   8, 
        MWPR,   8, 
        MRD3,   8, 
        MPL1,   8, 
        MAL1,   8, 
        MIDQ,   8, 
        ML1S,   8, 
        MSDF,   8, 
        MTPW,   8, 
        MDSC,   8, 
        MDSH,   16, 
        MCJB,   8
    }

    Method (SCMP, 2, NotSerialized)
    {
        Name (STG1, Buffer (0x50){})
        Name (STG2, Buffer (0x50){})
        STG1 = Arg0
        STG2 = Arg1
        If ((SizeOf (Arg0) != SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Local0 = Zero
        While ((Local0 < SizeOf (Arg0)))
        {
            If ((DerefOf (STG1 [Local0]) != DerefOf (STG2 [Local0]
                )))
            {
                Return (Zero)
            }

            Local0++
        }

        Return (One)
    }

    Name (WNOS, Zero)
    Name (MYOS, Zero)
    Name (HTTS, Zero)
    Name (OSTB, Ones)
    Name (TPOS, Zero)
    Name (LINX, Zero)
    Name (OSSP, Zero)
    Method (SEQL, 2, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Local1 = SizeOf (Arg1)
        If ((Local0 != Local1))
        {
            Return (Zero)
        }

        Name (BUF0, Buffer (Local0){})
        BUF0 = Arg0
        Name (BUF1, Buffer (Local0){})
        BUF1 = Arg1
        Local2 = Zero
        While ((Local2 < Local0))
        {
            Local3 = DerefOf (BUF0 [Local2])
            Local4 = DerefOf (BUF1 [Local2])
            If ((Local3 != Local4))
            {
                Return (Zero)
            }

            Local2++
        }

        Return (One)
    }

    Method (OSTP, 0, NotSerialized)
    {
        If ((OSTB == Ones))
        {
            If (CondRefOf (\_OSI, Local0))
            {
                OSTB = Zero
                TPOS = Zero
                If (_OSI ("Windows 2001"))
                {
                    OSTB = 0x08
                    TPOS = 0x08
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSTB = 0x20
                    TPOS = 0x20
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSTB = 0x10
                    TPOS = 0x10
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSTB = 0x11
                    TPOS = 0x11
                }

                If (_OSI ("Windows 2001 SP3"))
                {
                    OSTB = 0x12
                    TPOS = 0x12
                }

                If (_OSI ("Windows 2006"))
                {
                    OSTB = 0x40
                    TPOS = 0x40
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSTB = 0x41
                    TPOS = 0x41
                    OSSP = One
                }

                If (_OSI ("Windows 2009"))
                {
                    OSSP = One
                    OSTB = 0x50
                    TPOS = 0x50
                }

                If (_OSI ("Windows 2012"))
                {
                    OSSP = One
                    OSTB = 0x60
                    TPOS = 0x60
                }

                If (_OSI ("Windows 2013"))
                {
                    OSSP = One
                    OSTB = 0x61
                    TPOS = 0x61
                }

                If (_OSI ("Windows 2015"))
                {
                    OSSP = One
                    OSTB = 0x70
                    TPOS = 0x70
                }

                If (_OSI ("Linux"))
                {
                    If (OSTY)
                    {
                        OSTB = 0x80
                    }
                    Else
                    {
                        LINX = One
                        OSTB = 0x80
                        TPOS = 0x80
                    }
                }
            }
            Else
            {
                If (CondRefOf (\_OS, Local0))
                {
                    If (SEQL (_OS, "Microsoft Windows"))
                    {
                        OSTB = One
                        TPOS = One
                    }
                    ElseIf (SEQL (_OS, "Microsoft WindowsME: Millennium Edition"))
                    {
                        OSTB = 0x02
                        TPOS = 0x02
                    }
                    ElseIf (SEQL (_OS, "Microsoft Windows NT"))
                    {
                        OSTB = 0x04
                        TPOS = 0x04
                    }
                    Else
                    {
                        OSTB = Zero
                        TPOS = Zero
                    }
                }
                Else
                {
                    OSTB = Zero
                    TPOS = Zero
                }

                If (OSTY)
                {
                    OSTB = 0x80
                }
            }
        }

        Return (OSTB) /* \OSTB */
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000){})
    OperationRegion (MDBG, SystemMemory, 0xCCED4018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        SHOW (Arg0)
        MDGC (0x20)
        MDG0 = MBUF /* \MBUF */
    }

    Method (DW2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x08)
        Local0 &= 0xFF
        Local1 &= 0xFF
        DB2H (Local1)
        BUFN--
        DB2H (Local0)
    }

    Method (DD2H, 1, Serialized)
    {
        Local0 = Arg0
        Local1 = (Arg0 >> 0x10)
        Local0 &= 0xFFFF
        Local1 &= 0xFFFF
        DW2H (Local1)
        BUFN--
        DW2H (Local0)
    }

    Method (MBGS, 1, Serialized)
    {
        Local0 = SizeOf (Arg0)
        Name (BUFS, Buffer (Local0){})
        BUFS = Arg0
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (BUFS [(SizeOf (Arg0) - Local0)]))
            Local0--
        }

        MDG0 = MBUF /* \MBUF */
    }

    Method (MBGH, 1, Serialized)
    {
        ToHexString (Arg0, Local1)
        Local0 = SizeOf (Local1)
        Name (BUFS, Buffer (Local0){})
        BUFS = Local1
        MDGC (0x20)
        While (Local0)
        {
            MDGC (DerefOf (BUFS [(SizeOf (Local1) - Local0)]))
            Local0--
        }

        MDG0 = MBUF /* \MBUF */
    }

    Method (SHOW, 1, Serialized)
    {
        MDGC (NTOC ((Arg0 >> 0x04)))
        MDGC (NTOC (Arg0))
    }

    Method (LINE, 0, Serialized)
    {
        Local0 = BUFN /* \BUFN */
        Local0 &= 0x0F
        While (Local0)
        {
            MDGC (Zero)
            Local0++
            Local0 &= 0x0F
        }
    }

    Method (MDGC, 1, Serialized)
    {
        MBUF [BUFN] = Arg0
        BUFN += One
        If ((BUFN > 0x0FFF))
        {
            BUFN &= 0x0FFF
            UP_L (One)
        }
    }

    Method (UP_L, 1, Serialized)
    {
        Local2 = Arg0
        Local2 <<= 0x04
        MOVE (Local2)
        Local3 = (0x1000 - Local2)
        While (Local2)
        {
            MBUF [Local3] = Zero
            Local3++
            Local2--
        }
    }

    Method (MOVE, 1, Serialized)
    {
        Local4 = Arg0
        BUFN = Zero
        Local5 = (0x1000 - Local4)
        While (Local5)
        {
            Local5--
            MBUF [BUFN] = DerefOf (MBUF [Local4])
            BUFN++
            Local4++
        }
    }

    Method (NTOC, 1, Serialized)
    {
        Local0 = (Arg0 & 0x0F)
        If ((Local0 < 0x0A))
        {
            Local0 += 0x30
        }
        Else
        {
            Local0 += 0x37
        }

        Return (Local0)
    }

    Scope (_SB)
    {
        Device (PLTF)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A05") /* Generic Container Device */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Device (C000)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, Zero)  // _UID: Unique ID
            }

            Device (C001)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
            }

            Device (C002)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
            }

            Device (C003)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
            }

            Device (C004)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
            }

            Device (C005)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
            }

            Device (C006)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x06)  // _UID: Unique ID
            }

            Device (C007)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x07)  // _UID: Unique ID
            }

            Device (C008)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x08)  // _UID: Unique ID
            }

            Device (C009)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x09)  // _UID: Unique ID
            }

            Device (C00A)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0A)  // _UID: Unique ID
            }

            Device (C00B)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0B)  // _UID: Unique ID
            }

            Device (C00C)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0C)  // _UID: Unique ID
            }

            Device (C00D)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0D)  // _UID: Unique ID
            }

            Device (C00E)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0E)  // _UID: Unique ID
            }

            Device (C00F)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x0F)  // _UID: Unique ID
            }
        }
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If ((CNSB == Zero))
    {
        If ((DAS3 == One))
        {
            Name (_S3, Package (0x04)  // _S3_: S3 System State
            {
                0x03, 
                0x03, 
                Zero, 
                Zero
            })
        }
    }

    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x04, 
        0x04, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x05, 
        0x05, 
        Zero, 
        Zero
    })
    Scope (_GPE)
    {
        Method (XL08, 0, NotSerialized)
        {
            TPST (0x3908)
            If ((TBEN == Zero))
            {
                Notify (\_SB.PCI0.GPP0, 0x02) // Device Wake
                Notify (\_SB.PCI0.GPP1, 0x02) // Device Wake
            }

            Notify (\_SB.PCI0.GPP5, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP17, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP18, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (XL0D, 0, NotSerialized)
        {
            TPST (0x390D)
            Notify (\_SB.PCI0.GPP2, 0x02) // Device Wake
            If (CRSS)
            {
                Notify (\_SB.PCI0.GPP2.WWAN, 0x02) // Device Wake
                Sleep (0x05)
            }
            Else
            {
                Notify (\_SB.PCI0.GPP2.O2CR, 0x02) // Device Wake
                Sleep (0x05)
            }
        }

        Method (XL0E, 0, NotSerialized)
        {
            TPST (0x390E)
            Notify (\_SB.PCI0.GPP4, 0x02) // Device Wake
        }

        Method (XL0F, 0, NotSerialized)
        {
            TPST (0x390F)
            Notify (\_SB.PCI0.GPP3, 0x02) // Device Wake
        }

        Method (XL19, 0, NotSerialized)
        {
            TPST (0x3919)
            Notify (\_SB.PCI0.GP17.XHC0, 0x02) // Device Wake
            Notify (\_SB.PCI0.GP17.XHC1, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }
    }

    Name (PICM, Zero)
    Name (GPIC, Zero)
    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        PICM = Arg0
        GPIC = Arg0
        If (PICM)
        {
            \_SB.DSPI ()
            If (NAPC)
            {
                \_SB.PCI0.NAPE ()
            }
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        SPTS (Arg0)
        \_SB.PCI0.LPC0.EC.PDE3 = Zero
        If ((Arg0 == One))
        {
            \_SB.S80H (0x51)
        }

        If ((Arg0 == 0x03))
        {
            \_SB.S80H (0x53)
            SLPS = One
        }

        If ((Arg0 == 0x04))
        {
            \_SB.S80H (0x54)
            SLPS = One
            RSTU = One
        }

        If ((Arg0 == 0x05))
        {
            \_SB.S80H (0x55)
            If ((WKPM == One))
            {
                PWDE = One
            }

            BCMD = 0x90
            \_SB.BSMI (Zero)
            \_SB.GSMI (0x03)
        }

        If ((CNSB == One)){}
        If (CondRefOf (\_SB.TPM2.PTS))
        {
            \_SB.TPM2.PTS (Arg0)
        }

        \_SB.APTS (Arg0, MPTS (Arg0))
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        SWAK (Arg0)
        \_SB.PCI0.LPC0.EC.PDE3 = Zero
        \_SB.AWAK (Arg0)
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((GPIC != Zero))
            {
                \_SB.DSPI ()
                If (NAPC)
                {
                    \_SB.PCI0.NAPE ()
                }
            }
        }

        If ((Arg0 == 0x03))
        {
            \_SB.S80H (0xE3)
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        If ((Arg0 == 0x04))
        {
            \_SB.S80H (0xE4)
            \_SB.PCI0.LPC0.OSCK ()
            If ((\_SB.PCI0.LPC0.EC.WINF & 0x20))
            {
                If ((\_SB.PCI0.LPC0.EC.OEM4 == 0xE5))
                {
                    \_SB.PCI0.NAPX = 0x16FF8814
                    \_SB.PCI0.NAPD = 0x11
                }

                If ((\_SB.PCI0.LPC0.EC.OEM4 == 0xE6))
                {
                    \_SB.PCI0.NAPX = 0x16FF8814
                    \_SB.PCI0.NAPD = 0x15
                }
            }
        }

        \_SB.AC.ACDC = 0xFF
        MWAK (Arg0)
        Return (Zero)
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Name (_ADR, Zero)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If ((GPIC != Zero))
                {
                    DSPI ()
                    If (\NAPC)
                    {
                        NAPE ()
                    }
                }

                OSTP ()
            }

            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If ((TBEN == One))
                    {
                        If ((TBNH != Zero))
                        {
                            CTRL &= 0xFFFFFFF5
                        }
                        Else
                        {
                            CTRL &= 0xFFFFFFF4
                        }
                    }

                    If (((SUPP & 0x16) != 0x16))
                    {
                        CTRL &= 0x1E
                    }

                    CTRL &= 0x1D
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One)){}
                        If ((CTRL & 0x04)){}
                        If ((CTRL & 0x10)){}
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Arg3)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Arg3)
                }
            }

            Method (TOM, 0, NotSerialized)
            {
                Local0 = (TOML * 0x00010000)
                Local1 = (TOMH * 0x01000000)
                Local0 += Local1
                Return (Local0)
            }

            Name (CRES, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, SubDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    0x00,, )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    0x00,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadOnly,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xF7FFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x78000000,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFC000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x02B00000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED45000,         // Range Minimum
                    0xFED811FF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0003C200,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED81900,         // Range Minimum
                    0xFED81FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000700,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFEDC0000,         // Range Minimum
                    0xFEDC0FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00001000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, SubDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFEDC6000,         // Range Minimum
                    0xFEDC6FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00001000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000000, // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRES, \_SB.PCI0._Y00._MIN, BTMN)  // _MIN: Minimum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y00._MAX, BTMX)  // _MAX: Maximum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y00._LEN, BTLN)  // _LEN: Length
                CreateDWordField (CRES, \_SB.PCI0._Y01._MIN, BTN1)  // _MIN: Minimum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y01._MAX, BTX1)  // _MAX: Maximum Base Address
                CreateDWordField (CRES, \_SB.PCI0._Y01._LEN, BTL1)  // _LEN: Length
                BTMN = TOM ()
                BTMX = (PCBA - One)
                BTLN = (PCBA - BTMN) /* \_SB_.PCI0._CRS.BTMN */
                BTN1 = (PCBL + One)
                BTL1 = (BTX1 - BTN1) /* \_SB_.PCI0._CRS.BTN1 */
                BTL1 += One
                If ((MM64 == One))
                {
                    CreateQWordField (CRES, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                    CreateQWordField (CRES, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                    CreateQWordField (CRES, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                    M1MN = HMB1 /* \HMB1 */
                    M1MX = HMM1 /* \HMM1 */
                    M1LN = HML1 /* \HML1 */
                    CreateQWordField (CRES, \_SB.PCI0._Y03._MIN, M2MN)  // _MIN: Minimum Base Address
                    CreateQWordField (CRES, \_SB.PCI0._Y03._MAX, M2MX)  // _MAX: Maximum Base Address
                    CreateQWordField (CRES, \_SB.PCI0._Y03._LEN, M2LN)  // _LEN: Length
                    M2MN = HMB2 /* \HMB2 */
                    M2MX = HMM2 /* \HMM2 */
                    M2LN = HML2 /* \HML2 */
                }

                Return (CRES) /* \_SB_.PCI0.CRES */
            }

            Device (MEMR)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (BAR3, 0xFDE00000)
                Name (MEM1, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y04)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y05)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00000000,         // Address Length
                        _Y06)
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._BAS, MB01)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y04._LEN, ML01)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y05._BAS, MB02)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y05._LEN, ML02)  // _LEN: Length
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y06._BAS, MB03)  // _BAS: Base Address
                    CreateDWordField (MEM1, \_SB.PCI0.MEMR._Y06._LEN, ML03)  // _LEN: Length
                    If (GPIC)
                    {
                        MB01 = 0xFEC00000
                        MB02 = 0xFEE00000
                        ML01 = 0x1000
                        If (\NAPC)
                        {
                            ML01 += 0x1000
                        }

                        ML02 = 0x1000
                    }

                    If ((BAR3 != 0xFFF00000))
                    {
                        MB03 = BAR3 /* \_SB_.PCI0.MEMR.BAR3 */
                        ML03 = 0x00100000
                    }

                    Return (MEM1) /* \_SB_.PCI0.MEMR.MEM1 */
                }
            }

            OperationRegion (NAPC, PCI_Config, 0xB8, 0x08)
            Field (NAPC, DWordAcc, NoLock, Preserve)
            {
                NAPX,   32, 
                NAPD,   32
            }

            Mutex (NAPM, 0x00)
            Method (NAPE, 0, NotSerialized)
            {
                Acquire (NAPM, 0xFFFF)
                Local0 = (PCBA + 0xB8)
                OperationRegion (VARM, SystemMemory, Local0, 0x08)
                Field (VARM, DWordAcc, NoLock, Preserve)
                {
                    NAPX,   32, 
                    NAPD,   32
                }

                Local1 = NAPX /* \_SB_.PCI0.NAPE.NAPX */
                NAPX = 0x14300000
                Local0 = NAPD /* \_SB_.PCI0.NAPE.NAPD */
                Local0 &= 0xFFFFFFEF
                NAPD = Local0
                NAPX = Local1
                Release (NAPM)
            }

            Name (PR00, Package (0x0E)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    LNKH, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }
            })
            Name (AR00, Package (0x0E)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Name (NR00, Package (0x0E)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x28
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x29
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x2A
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x24
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    Zero, 
                    0x25
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    Zero, 
                    0x26
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    Zero, 
                    0x27
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    Zero, 
                    Zero, 
                    0x20
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    Zero, 
                    0x21
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    One, 
                    Zero, 
                    0x22
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    If (\NAPC)
                    {
                        Return (NR00) /* \_SB_.PCI0.NR00 */
                    }
                    Else
                    {
                        Return (AR00) /* \_SB_.PCI0.AR00 */
                    }
                }
                Else
                {
                    Return (PR00) /* \_SB_.PCI0.PR00 */
                }
            }

            Device (GPP0)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR01, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x18
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x19
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1B
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR01) /* \_SB_.PCI0.GPP0.NR01 */
                        }
                        Else
                        {
                            Return (AR01) /* \_SB_.PCI0.GPP0.AR01 */
                        }
                    }
                    Else
                    {
                        Return (PR01) /* \_SB_.PCI0.GPP0.PR01 */
                    }
                }
            }

            Device (GPP1)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR02, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR02, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR02, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x1C
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x1D
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1E
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1F
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR02) /* \_SB_.PCI0.GPP1.NR02 */
                        }
                        Else
                        {
                            Return (AR02) /* \_SB_.PCI0.GPP1.AR02 */
                        }
                    }
                    Else
                    {
                        Return (PR02) /* \_SB_.PCI0.GPP1.PR02 */
                    }
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }

                Device (DEV1)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (Zero)
                    }
                }
            }

            Device (GPP2)
            {
                Name (_ADR, 0x00010003)  // _ADR: Address
                Method (RHRW, 0, NotSerialized)
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x0D, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x0D, Zero))
                    }
                }

                Name (PR03, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR03, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR03, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x20
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x21
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x22
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x23
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR03) /* \_SB_.PCI0.GPP2.NR03 */
                        }
                        Else
                        {
                            Return (AR03) /* \_SB_.PCI0.GPP2.AR03 */
                        }
                    }
                    Else
                    {
                        Return (PR03) /* \_SB_.PCI0.GPP2.PR03 */
                    }
                }

                Device (WWAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (CCFG, PCI_Config, Zero, 0x0900)
                    Field (CCFG, ByteAcc, NoLock, Preserve)
                    {
                        RVID,   32, 
                        Offset (0xE8), 
                        WSID,   32, 
                        Offset (0x724), 
                        C570,   32, 
                        Offset (0x814), 
                        C571,   32
                    }

                    Method (C57S, 0, Serialized)
                    {
                        Local1 = (RVID & 0xFFFF)
                        If ((Local1 == 0x10EC))
                        {
                            If (((C570 != 0xEEFFFFAA) || (C571 != 0x80040062)))
                            {
                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    C571 = 0x80000000
                                    Local0 = C571 /* \_SB_.PCI0.GPP2.WWAN.C571 */
                                    If ((Local0 == 0x80000000))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    C570 = 0xEEFFFFAA
                                    Local0 = C570 /* \_SB_.PCI0.GPP2.WWAN.C570 */
                                    If ((Local0 == 0xEEFFFFAA))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    C571 = 0x80040062
                                    Local0 = C571 /* \_SB_.PCI0.GPP2.WWAN.C571 */
                                    If ((Local0 == 0x80040062))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE35FF2C
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE35FF2C))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE36FF00
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE36FF00))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE37FF58
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE37FF58))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE38FF15
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE38FF15))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE39FF00
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE39FF00))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE3AFFA6
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE3AFFA5))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xFE3BFF8F
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xFE3BFF8F))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }

                                Local1 = Zero
                                While ((Local1 < 0x05))
                                {
                                    WSID = 0xBE3B0000
                                    Local0 = WSID /* \_SB_.PCI0.GPP2.WWAN.WSID */
                                    If ((Local0 == 0xBE3B0000))
                                    {
                                        Break
                                    }

                                    Stall (0x64)
                                    Local1++
                                }
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local1 = (RVID & 0xFFFF)
                        If ((Local1 == 0x10EC))
                        {
                            C57S ()
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (RHRW, 0, NotSerialized)
                    {
                        If ((WKPM == One))
                        {
                            Return (GPRW (0x0D, 0x03))
                        }
                        Else
                        {
                            Return (GPRW (0x0D, Zero))
                        }
                    }
                }

                Device (O2CR)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    OperationRegion (OCFG, PCI_Config, Zero, 0x0900)
                    Field (OCFG, DWordAcc, NoLock, Preserve)
                    {
                        OVID,   32, 
                        Offset (0x2C), 
                        OSID,   32, 
                        Offset (0x90), 
                        OLNK,   32, 
                        Offset (0xD0), 
                        OUNK,   32, 
                        Offset (0xDC), 
                        O2SD,   32, 
                        PL1T,   32, 
                        Offset (0xFC), 
                        AL1T,   32, 
                        Offset (0x248), 
                        L1PS,   32, 
                        Offset (0x300), 
                        TPWT,   32, 
                        O2DS,   32, 
                        Offset (0x3E0), 
                        CDL1,   32, 
                        IQWR,   32
                    }

                    Method (O57S, 0, Serialized)
                    {
                        Name (TWPB, Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        })
                        Name (TUNK, Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        })
                        CreateBitField (TWPB, 0x1F, LWPB)
                        CreateBitField (TUNK, 0x1F, CUNK)
                        Local1 = (OVID & 0xFFFF)
                        If ((Local1 == 0x1217))
                        {
                            Local1 = Zero
                            While ((Local1 < 0x05))
                            {
                                TWPB = Ones
                                LWPB = Zero
                                TUNK = Zero
                                OUNK &= ToInteger (TWPB)
                                TUNK = OUNK /* \_SB_.PCI0.GPP2.O2CR.OUNK */
                                If ((CUNK == Zero))
                                {
                                    Break
                                }

                                Stall (0x64)
                                Local1++
                            }

                            Local1 = Zero
                            While ((Local1 < 0x05))
                            {
                                OSID = 0xA6001558
                                Local0 = OSID /* \_SB_.PCI0.GPP2.O2CR.OSID */
                                If ((Local0 == 0x0A601558))
                                {
                                    Break
                                }

                                Stall (0x64)
                                Local1++
                            }

                            If (MCPR)
                            {
                                CDL1 |= 0x00020000
                            }
                            Else
                            {
                                CDL1 &= 0xFFFDFFFF
                            }

                            If (MWPR)
                            {
                                IQWR |= 0x01000000
                            }
                            Else
                            {
                                IQWR &= 0xFEFFFFFF
                            }

                            If (MRD3)
                            {
                                CDL1 |= 0x20000000
                            }
                            Else
                            {
                                CDL1 &= 0xDFFFFFFF
                            }

                            If ((MIDQ & ML1S))
                            {
                                IQWR |= 0x00080000
                            }
                            Else
                            {
                                IQWR &= 0xFFF7FFFF
                            }

                            If (ML1S)
                            {
                                CDL1 &= 0xEFFFFFFF
                            }
                            Else
                            {
                                CDL1 |= 0x10000000
                            }

                            If (MSDF)
                            {
                                O2SD |= One
                            }
                            Else
                            {
                                O2SD &= 0xFFFFFFFE
                            }

                            Local1 = Zero
                            While ((Local1 < 0x05))
                            {
                                TWPB = Zero
                                LWPB = One
                                TUNK = Zero
                                OUNK |= ToInteger (TWPB)
                                TUNK = OUNK /* \_SB_.PCI0.GPP2.O2CR.OUNK */
                                If ((CUNK == One))
                                {
                                    Break
                                }

                                Stall (0x64)
                                Local1++
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Local1 = (OVID & 0xFFFF)
                        If ((Local1 == 0x1217))
                        {
                            O57S ()
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (RHRW, 0, NotSerialized)
                    {
                        If ((WKPM == One))
                        {
                            Return (GPRW (0x0D, 0x03))
                        }
                        Else
                        {
                            Return (GPRW (0x0D, Zero))
                        }
                    }
                }
            }

            Device (GPP3)
            {
                Name (_ADR, 0x00020001)  // _ADR: Address
                Method (RHRW, 0, NotSerialized)
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x0F, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x0F, Zero))
                    }
                }

                Name (PR04, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR04, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR04, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x24
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x25
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x26
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x27
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR04) /* \_SB_.PCI0.GPP3.NR04 */
                        }
                        Else
                        {
                            Return (AR04) /* \_SB_.PCI0.GPP3.AR04 */
                        }
                    }
                    Else
                    {
                        Return (PR04) /* \_SB_.PCI0.GPP3.PR04 */
                    }
                }

                Device (RTL8)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (RHRW, 0, NotSerialized)
                    {
                        If ((WKPM == One))
                        {
                            Return (GPRW (0x0F, 0x04))
                        }
                        Else
                        {
                            Return (GPRW (0x0F, Zero))
                        }
                    }
                }
            }

            Device (GPP4)
            {
                Name (_ADR, 0x00020002)  // _ADR: Address
                Method (RHRW, 0, NotSerialized)
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x0E, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x0E, Zero))
                    }
                }

                Name (PR05, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR05, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR05, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x28
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x29
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x2A
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x2B
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR05) /* \_SB_.PCI0.GPP4.NR05 */
                        }
                        Else
                        {
                            Return (AR05) /* \_SB_.PCI0.GPP4.AR05 */
                        }
                    }
                    Else
                    {
                        Return (PR05) /* \_SB_.PCI0.GPP4.PR05 */
                    }
                }

                Device (BTH0)
                {
                    Name (_HID, "QCOM6390")  // _HID: Hardware ID
                    Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((BLTH == Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (UBUF, ResourceTemplate ()
                        {
                            UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                                0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                                0x0020, 0x0020, "\\_SB.FUR0",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                            GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x0003
                                }
                        })
                        Return (UBUF) /* \_SB_.PCI0.GPP4.BTH0._CRS.UBUF */
                    }
                }
            }

            Device (GPP5)
            {
                Name (_ADR, 0x00020003)  // _ADR: Address
                Method (RHRW, 0, NotSerialized)
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR06, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }
                })
                Name (AR06, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }
                })
                Name (NR06, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x2C
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x2D
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x2E
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x2F
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR06) /* \_SB_.PCI0.GPP5.NR06 */
                        }
                        Else
                        {
                            Return (AR06) /* \_SB_.PCI0.GPP5.AR06 */
                        }
                    }
                    Else
                    {
                        Return (PR06) /* \_SB_.PCI0.GPP5.PR06 */
                    }
                }

                Device (DEV0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }
            }

            Device (GPP6)
            {
                Name (_ADR, 0x00020004)  // _ADR: Address
                Name (PR07, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (AR07, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Name (NR07, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x30
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x31
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x32
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x33
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR07) /* \_SB_.PCI0.GPP6.NR07 */
                        }
                        Else
                        {
                            Return (AR07) /* \_SB_.PCI0.GPP6.AR07 */
                        }
                    }
                    Else
                    {
                        Return (PR07) /* \_SB_.PCI0.GPP6.PR07 */
                    }
                }
            }

            Device (GP17)
            {
                Name (_ADR, 0x00080001)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x19, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x19, Zero))
                    }
                }

                Name (PR17, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKF, 
                        Zero
                    }
                })
                Name (AR17, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x15
                    }
                })
                Name (NR17, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x26
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x27
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x24
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x25
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR17) /* \_SB_.PCI0.GP17.NR17 */
                        }
                        Else
                        {
                            Return (AR17) /* \_SB_.PCI0.GP17.AR17 */
                        }
                    }
                    Else
                    {
                        Return (PR17) /* \_SB_.PCI0.GP17.PR17 */
                    }
                }

                Device (VGA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (DOSA, Zero)
                    Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                    {
                        DOSA = Arg0
                    }

                    Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                    {
                        Return (Package (0x07)
                        {
                            0x00010110, 
                            0x00010210, 
                            0x00010220, 
                            0x00010230, 
                            0x00010240, 
                            0x00031000, 
                            0x00032000
                        })
                    }

                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)  // _ADR: Address
                        Name (BCLB, Package (0x34)
                        {
                            0x5A, 
                            0x3C, 
                            0x02, 
                            0x04, 
                            0x06, 
                            0x08, 
                            0x0A, 
                            0x0C, 
                            0x0E, 
                            0x10, 
                            0x12, 
                            0x14, 
                            0x16, 
                            0x18, 
                            0x1A, 
                            0x1C, 
                            0x1E, 
                            0x20, 
                            0x22, 
                            0x24, 
                            0x26, 
                            0x28, 
                            0x2A, 
                            0x2C, 
                            0x2E, 
                            0x30, 
                            0x32, 
                            0x34, 
                            0x36, 
                            0x38, 
                            0x3A, 
                            0x3C, 
                            0x3E, 
                            0x40, 
                            0x42, 
                            0x44, 
                            0x46, 
                            0x48, 
                            0x4A, 
                            0x4C, 
                            0x4E, 
                            0x50, 
                            0x52, 
                            0x54, 
                            0x56, 
                            0x58, 
                            0x5A, 
                            0x5C, 
                            0x5E, 
                            0x60, 
                            0x62, 
                            0x64
                        })
                        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                        {
                            Return (BCLB) /* \_SB_.PCI0.GP17.VGA_.LCD_.BCLB */
                        }

                        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                        {
                            Divide ((Arg0 * 0xFF), 0x64, Local1, Local0)
                            AFN7 (Local0)
                            BRTL = Arg0
                        }
                    }
                }

                Device (PSP)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                }

                Device (ACP)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_WOV, 0, NotSerialized)
                    {
                        Return (WOVS) /* \WOVS */
                    }
                }

                Device (AZAL)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                }

                Device (XHC0)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (RHRW, 0, NotSerialized)
                    {
                        Return (GPRW (0x19, 0x04))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT1.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x11, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT1.PLD1 */
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT2.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x90, 0x0C, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT2.PLD1 */
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT3.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x91, 0x1C, 0x80, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT3.PLD1 */
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT4.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x91, 0x1D, 0x00, 0x04, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT4.PLD1 */
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT5.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x11, 0x0C, 0x80, 0x00, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT5.PLD1 */
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT6.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x91, 0x0C, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC0.RHUB.PRT6.PLD1 */
                            }
                        }
                    }
                }

                Device (XHC1)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (RHRW, 0, NotSerialized)
                    {
                        Return (GPRW (0x19, 0x04))
                    }

                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Device (PRT1)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT1.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x11, 0x0C, 0x80, 0x02, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT1.PLD1 */
                            }
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT2.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x90, 0x0C, 0x00, 0x05, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT2.PLD1 */
                            }
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT3.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x90, 0x1C, 0x80, 0x06, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT3.PLD1 */
                            }
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT4.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x90, 0x1D, 0x00, 0x07, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT4.PLD1 */
                            }

                            Device (WCAM)
                            {
                                Name (_ADR, 0x04)  // _ADR: Address
                                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                                {
                                    Name (PLDP, Package (0x01)
                                    {
                                        Buffer (0x14)
                                        {
                                            /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x24, 0x1D, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,  // $.......
                                            /* 0010 */  0xE1, 0x00, 0xAF, 0x00                           // ....
                                        }
                                    })
                                    Return (PLDP) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT4.WCAM._PLD.PLDP */
                                }
                            }
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0x09, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT5.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x11, 0x0C, 0x80, 0x02, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT5.PLD1 */
                            }
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x06)  // _ADR: Address
                            Name (UPC1, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                            {
                                Return (UPC1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT6.UPC1 */
                            }

                            Name (PLD1, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x90, 0x0C, 0x00, 0x03, 0x01, 0x00, 0x00, 0x00,  // ........
                                    /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                                }
                            })
                            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                            {
                                Return (PLD1) /* \_SB_.PCI0.GP17.XHC1.RHUB.PRT6.PLD1 */
                            }
                        }
                    }
                }

                Device (MP2C)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                }
            }

            Device (GP18)
            {
                Name (_ADR, 0x00080002)  // _ADR: Address
                Name (PR18, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKB, 
                        Zero
                    }
                })
                Name (AR18, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x11
                    }
                })
                Name (NR18, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x22
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x23
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x20
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x21
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR18) /* \_SB_.PCI0.GP18.NR18 */
                        }
                        Else
                        {
                            Return (AR18) /* \_SB_.PCI0.GP18.AR18 */
                        }
                    }
                    Else
                    {
                        Return (PR18) /* \_SB_.PCI0.GP18.PR18 */
                    }
                }

                Device (SATA)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                }

                Device (SAT1)
                {
                    Name (_ADR, One)  // _ADR: Address
                }
            }

            Device (GP19)
            {
                Name (_ADR, 0x00080003)  // _ADR: Address
                Method (RHRW, 0, NotSerialized)
                {
                    If ((WKPM == One))
                    {
                        Return (GPRW (0x08, 0x04))
                    }
                    Else
                    {
                        Return (GPRW (0x08, Zero))
                    }
                }

                Name (PR19, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKF, 
                        Zero
                    }
                })
                Name (AR19, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x15
                    }
                })
                Name (NR19, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x1E
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x1F
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x1C
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x1D
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        If (\NAPC)
                        {
                            Return (NR19) /* \_SB_.PCI0.GP19.NR19 */
                        }
                        Else
                        {
                            Return (AR19) /* \_SB_.PCI0.GP19.AR19 */
                        }
                    }
                    Else
                    {
                        Return (PR19) /* \_SB_.PCI0.GP19.PR19 */
                    }
                }
            }

            Device (HPET)
            {
                Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((HPEN == One))
                    {
                        If ((OSTB >= 0x40))
                        {
                            Return (0x0F)
                        }

                        HPEN = Zero
                        Return (One)
                    }

                    Return (One)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y07)
                    })
                    CreateDWordField (BUF0, \_SB.PCI0.HPET._CRS._Y07._BAS, HPEB)  // _BAS: Base Address
                    Local0 = 0xFED00000
                    HPEB = (Local0 & 0xFFFFFC00)
                    Return (BUF0) /* \_SB_.PCI0.HPET._CRS.BUF0 */
                }
            }

            Device (SMBS)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
            }

            Device (LPC0)
            {
                Name (_ADR, 0x00140003)  // _ADR: Address
                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (COPR)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPC0.RTC_.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.LPC0.RTC_.BUF1 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If ((HPEN == One))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPC0.TMR_.BUF0 */
                        }

                        Return (BUF1) /* \_SB_.PCI0.LPC0.TMR_.BUF1 */
                    }
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0xD0,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D6,             // Range Minimum
                            0x04D6,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C00,             // Range Minimum
                            0x0C00,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0C14,             // Range Minimum
                            0x0C14,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C50,             // Range Minimum
                            0x0C50,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x0C6C,             // Range Minimum
                            0x0C6C,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0C6F,             // Range Minimum
                            0x0C6F,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0CD0,             // Range Minimum
                            0x0CD0,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                    })
                }

                Device (MEM)
                {
                    Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
                    Name (MSRC, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFFF00000,         // Address Base
                            0x00100000,         // Address Length
                            _Y08)
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y08._LEN, PSIZ)  // _LEN: Length
                        CreateDWordField (MSRC, \_SB.PCI0.LPC0.MEM._Y08._BAS, PBAS)  // _BAS: Base Address
                        PSIZ = ROMS /* \ROMS */
                        Local0 = (ROMS - One)
                        PBAS = (Ones - Local0)
                        Return (MSRC) /* \_SB_.PCI0.LPC0.MEM_.MSRC */
                    }
                }

                Name (XX00, Buffer (0x03){})
                Name (CCMO, 0x03)
                Name (DFQF, Zero)
                Name (BOID, 0x54)
                Method (STT1, 4, NotSerialized)
                {
                    Local3 = Buffer (0x08){}
                    CreateWordField (Local3, Zero, M254)
                    CreateByteField (Local3, 0x02, M255)
                    CreateDWordField (Local3, 0x03, M256)
                    M254 = 0x07
                    M255 = 0x20
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x22
                    M256 = Arg1
                    ALIB (0x0C, Local3)
                    M255 = 0x24
                    M256 = Arg2
                    ALIB (0x0C, Local3)
                    M255 = 0x25
                    M256 = Arg3
                    ALIB (0x0C, Local3)
                }

                Method (STT2, 4, NotSerialized)
                {
                    Local3 = Buffer (0x08){}
                    CreateWordField (Local3, Zero, M254)
                    CreateByteField (Local3, 0x02, M255)
                    CreateDWordField (Local3, 0x03, M256)
                    M254 = 0x07
                    M255 = 0x26
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x27
                    M256 = Arg1
                    ALIB (0x0C, Local3)
                    M255 = 0x2C
                    M256 = Arg2
                    ALIB (0x0C, Local3)
                    M255 = 0x2E
                    M256 = Arg3
                    ALIB (0x0C, Local3)
                }

                Method (DDD3, 3, NotSerialized)
                {
                    Local3 = Buffer (0x08){}
                    CreateWordField (Local3, Zero, M254)
                    CreateByteField (Local3, 0x02, M255)
                    CreateDWordField (Local3, 0x03, M256)
                    M254 = 0x07
                    M255 = 0x05
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x06
                    M256 = Arg1
                    ALIB (0x0C, Local3)
                    M255 = 0x07
                    M256 = Arg2
                    ALIB (0x0C, Local3)
                }

                Method (DDD4, 1, NotSerialized)
                {
                    Local3 = Buffer (0x08){}
                    CreateWordField (Local3, Zero, M254)
                    CreateByteField (Local3, 0x02, M255)
                    CreateDWordField (Local3, 0x03, M256)
                    M254 = 0x07
                    M255 = 0x03
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                }

                Method (DDD5, 4, NotSerialized)
                {
                    Local3 = Buffer (0x08){}
                    CreateWordField (Local3, Zero, M254)
                    CreateByteField (Local3, 0x02, M255)
                    CreateDWordField (Local3, 0x03, M256)
                    M254 = 0x07
                    M255 = 0x0B
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x0C
                    M256 = Arg1
                    ALIB (0x0C, Local3)
                    M255 = 0x0E
                    M256 = Arg2
                    ALIB (0x0C, Local3)
                    M255 = 0x11
                    M256 = Arg3
                    ALIB (0x0C, Local3)
                }

                Method (DDD6, 7, NotSerialized)
                {
                    Local3 = Buffer (0x08){}
                    CreateWordField (Local3, Zero, M254)
                    CreateByteField (Local3, 0x02, M255)
                    CreateDWordField (Local3, 0x03, M256)
                    M254 = 0x07
                    M255 = 0x20
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x22
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x24
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x25
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x26
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x27
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                    M255 = 0x2C
                    M256 = Arg0
                    ALIB (0x0C, Local3)
                }

                Method (OSCK, 0, NotSerialized)
                {
                    If ((OSTB < 0x60))
                    {
                        If ((OSTB == 0x50))
                        {
                            Local0 = 0x08
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                    ElseIf ((OSTB == 0x80))
                    {
                        Local0 = 0x81
                    }
                    Else
                    {
                        Local0 = 0x02
                    }

                    ^EC.ECOS = Local0
                    If ((OSTB == 0x80))
                    {
                        ^EC.WINF |= One
                    }
                    ElseIf ((OSTB == 0x40))
                    {
                        ^EC.WINF |= One
                    }
                    ElseIf ((OSTB == 0x41))
                    {
                        ^EC.WINF |= One
                    }
                    Else
                    {
                        ^EC.WINF |= One
                    }

                    Local0 = ^EC.INF2 /* \_SB_.PCI0.LPC0.EC__.INF2 */
                    If ((OEMF & 0x40))
                    {
                        Local0 &= 0xDF
                    }

                    If ((OEMF & 0x4000))
                    {
                        Local0 |= One
                    }
                    Else
                    {
                        Local0 &= 0xFE
                    }

                    If ((OSTB == 0x50))
                    {
                        Local0 &= 0xFD
                    }

                    ^EC.INF2 = Local0
                    If ((OSTB == 0x80)){}
                    ^EC.SLFG = Zero
                    ^EC.ECTB = Zero
                    ^EC.B15C = Zero
                }

                Method (DD25, 0, Serialized)
                {
                    If (^EC.ADP)
                    {
                        Switch (ToInteger (CCMO))
                        {
                            Case (Zero)
                            {
                                If ((BCPU == One))
                                {
                                    If ((BCP7 == One))
                                    {
                                        If ((M009 == BOID))
                                        {
                                            One
                                            DDD3 (0x2710, 0x4650, 0x3A98)
                                            DDD4 (0x64)
                                            DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                        }
                                        Else
                                        {
                                            DDD3 (0x2710, 0x4650, 0x3A98)
                                            DDD4 (0x64)
                                            DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                                        }
                                    }
                                    ElseIf ((M009 == BOID))
                                    {
                                        One
                                        DDD3 (0x2710, 0x4650, 0x3A98)
                                        DDD4 (0x64)
                                        DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                    }
                                    Else
                                    {
                                        DDD3 (0x2710, 0x4650, 0x3A98)
                                        DDD4 (0x64)
                                        DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                                    }
                                }
                                Else
                                {
                                    DDD3 (QSPT, QFPT, QLPT)
                                    DDD4 (QTHM)
                                    DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                }

                                STT1 (0x199A, 0x2800, 0x21, 0x2666)
                                STT2 (0x016D, 0x024C, 0xFF88, 0x3A98)
                            }
                            Case (One)
                            {
                                If ((BCPU == One))
                                {
                                    If ((BCP7 == One))
                                    {
                                        If ((M009 == BOID))
                                        {
                                            One
                                            DDD3 (0x1388, 0x4650, 0x3A98)
                                            DDD4 (0x64)
                                            DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                        }
                                        Else
                                        {
                                            DDD3 (0x1388, 0x4650, 0x3A98)
                                            DDD4 (0x64)
                                            DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                                        }
                                    }
                                    ElseIf ((M009 == BOID))
                                    {
                                        One
                                        DDD3 (0x1388, 0x4650, 0x3A98)
                                        DDD4 (0x64)
                                        DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                    }
                                    Else
                                    {
                                        DDD3 (0x1388, 0x4650, 0x3A98)
                                        DDD4 (0x64)
                                        DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                                    }
                                }
                                Else
                                {
                                    DDD3 (OSPT, OFPT, OLPT)
                                    DDD4 (OTHM)
                                    DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                }

                                STT1 (0x199A, 0x2800, 0x21, 0x2666)
                                STT2 (0x016D, 0x024C, 0xFF88, 0x3A98)
                            }
                            Case (0x02)
                            {
                                If ((BCPU == One))
                                {
                                    If ((BCP7 == One))
                                    {
                                        If ((MCJB == One))
                                        {
                                            DDD3 (0x61A8, 0x7530, 0x6978)
                                            DDD4 (0x64)
                                            DDD5 (0xABE0, 0x00014C08, 0x32C8, 0x4268)
                                        }
                                        ElseIf ((M009 == BOID))
                                        {
                                            One
                                            DDD3 (0x61A8, 0x88B8, 0x6978)
                                            DDD4 (0x64)
                                            DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                        }
                                        Else
                                        {
                                            DDD3 (0x61A8, 0x7530, 0x7530)
                                            DDD4 (0x64)
                                            DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                                        }

                                        STT1 (0x199A, 0x2C00, 0x21, 0x2666)
                                        STT2 (0x014B, 0x02C3, 0xF2FB, 0x3A98)
                                    }
                                    Else
                                    {
                                        If ((MCJB == One))
                                        {
                                            DDD3 (0x61A8, 0x7530, 0x6978)
                                            DDD4 (0x64)
                                            DDD5 (0xABE0, 0x00014C08, 0x32C8, 0x4268)
                                        }
                                        ElseIf ((M009 == BOID))
                                        {
                                            One
                                            DDD3 (0x61A8, 0x88B8, 0x6978)
                                            DDD4 (0x64)
                                            DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                        }
                                        Else
                                        {
                                            DDD3 (0x61A8, 0xBB80, 0x927C)
                                            DDD4 (0x64)
                                            DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                                        }

                                        STT1 (0x199A, 0x2C00, 0x21, 0x2666)
                                        STT2 (0x014B, 0x02C3, 0xF2FB, 0x3A98)
                                    }
                                }
                                Else
                                {
                                    DDD3 (PSPT, PFPT, PLPT)
                                    DDD4 (PTHM)
                                    DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                    STT1 (0x199A, 0x3000, 0x21, 0x2666)
                                    STT2 (0x014B, 0x02C3, 0xF2FB, 0x3A98)
                                }
                            }
                            Case (0x03)
                            {
                                If ((BCPU == One))
                                {
                                    If ((BCP7 == One))
                                    {
                                        If ((MCJB == One))
                                        {
                                            DDD3 (0x3A98, 0x7530, 0x4E20)
                                            DDD4 (0x64)
                                            DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                                        }
                                        ElseIf ((M009 == BOID))
                                        {
                                            One
                                            DDD3 (0x3A98, 0x7530, 0x61A8)
                                            DDD4 (0x64)
                                            DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                        }
                                        Else
                                        {
                                            DDD3 (0x3A98, 0x7530, 0x61A8)
                                            DDD4 (0x64)
                                            DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                                        }
                                    }
                                    ElseIf ((MCJB == One))
                                    {
                                        DDD3 (0x3A98, 0x7530, 0x4E20)
                                        DDD4 (0x64)
                                        DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                                    }
                                    ElseIf ((M009 == BOID))
                                    {
                                        One
                                        DDD3 (0x3A98, 0x7530, 0x4E20)
                                        DDD4 (0x64)
                                        DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                    }
                                    Else
                                    {
                                        DDD3 (0x3A98, 0x7530, 0x61A8)
                                        DDD4 (0x64)
                                        DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                                    }
                                }
                                Else
                                {
                                    DDD3 (ESPT, EFPT, ELPT)
                                    DDD4 (ETHM)
                                    DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                                }

                                STT1 (0x199A, 0x2800, 0x21, 0x2666)
                                STT2 (0x016D, 0x024C, 0xFF88, 0x3A98)
                            }

                        }
                    }
                    ElseIf ((BCPU == One))
                    {
                        If ((BCP7 == One))
                        {
                            If ((M009 == BOID))
                            {
                                One
                                DDD3 (0x1388, 0x2710, 0x1F40)
                                DDD4 (0x64)
                                DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                            }
                            Else
                            {
                                DDD3 (0x1388, 0x2710, 0x1F40)
                                DDD4 (0x64)
                                DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                            }
                        }
                        ElseIf ((M009 == BOID))
                        {
                            One
                            DDD3 (0x1388, 0x2710, 0x1F40)
                            DDD4 (0x64)
                            DDD5 (0x61A8, 0x00011170, 0x32C8, 0x4268)
                        }
                        Else
                        {
                            DDD3 (0x1388, 0x2710, 0x1F40)
                            DDD4 (0x64)
                            DDD5 (0xABE0, 0x00015F90, 0x32C8, 0x4268)
                        }
                    }
                    Else
                    {
                        DDD3 (DSPT, DFPT, DLPT)
                        DDD5 (0x4E20, 0x00011170, 0x32C8, 0x4268)
                    }
                }

                Device (EC)
                {
                    Mutex (PATM, 0x00)
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Method (_GPE, 0, NotSerialized)  // _GPE: General Purpose Events
                    {
                        Return (0x03)
                    }

                    Name (ECOK, Zero)
                    Name (GP12, Zero)
                    Name (SLFG, Zero)
                    Name (ECTB, Zero)
                    Name (B15C, Zero)
                    Name (NACT, 0x02)
                    Name (AACC, Zero)
                    Name (XX68, Zero)
                    Name (XXC7, Zero)
                    Name (XXCA, Zero)
                    Name (XXD7, Zero)
                    Name (XXDA, Zero)
                    Name (XXDD, Zero)
                    Name (XXE2, Zero)
                    Name (XXF0, Zero)
                    Name (XXF2, Zero)
                    Name (XXF4, Zero)
                    Name (DFQF, Zero)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (((Arg0 == 0x03) && (Arg1 == One)))
                        {
                            ECOK = Arg1
                            OSCK ()
                        }

                        PDE3 = Zero
                        If ((WINF & 0x20))
                        {
                            If ((OEM4 == 0xE5))
                            {
                                NAPX = 0x16FF8814
                                NAPD = 0x11
                            }

                            If ((OEM4 == 0xE6))
                            {
                                NAPX = 0x16FF8814
                                NAPD = 0x15
                            }
                        }

                        DD25 ()
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    OperationRegion (RAM, SystemMemory, 0xFE500100, 0x0400)
                    Field (RAM, ByteAcc, Lock, Preserve)
                    {
                        NMSG,   8, 
                        SLED,   4, 
                        Offset (0x02), 
                        MODE,   1, 
                        FAN0,   1, 
                        TME0,   1, 
                        TME1,   1, 
                        FAN1,   1, 
                            ,   2, 
                        Offset (0x03), 
                        LSTE,   1, 
                        LSW0,   1, 
                        LWKE,   1, 
                        WAKF,   1, 
                            ,   2, 
                        PWKE,   1, 
                        MWKE,   1, 
                        AC0,    8, 
                        PSV,    8, 
                        CRT,    8, 
                        TMP,    8, 
                        AC1,    8, 
                        BBST,   8, 
                        Offset (0x0B), 
                        Offset (0x0C), 
                        Offset (0x0D), 
                        Offset (0x0E), 
                        SLPT,   8, 
                        SWEJ,   1, 
                        SWCH,   1, 
                        Offset (0x10), 
                        ADP,    1, 
                        AFLT,   1, 
                        BAT0,   1, 
                        BAT1,   1, 
                            ,   3, 
                        PWOF,   1, 
                        WFNO,   8, 
                        BPU0,   32, 
                        BDC0,   32, 
                        BFC0,   32, 
                        BTC0,   32, 
                        BDV0,   32, 
                        BST0,   32, 
                        BPR0,   32, 
                        BRC0,   32, 
                        BPV0,   32, 
                        BTP0,   16, 
                        BRS0,   16, 
                        BCW0,   32, 
                        BCL0,   32, 
                        BCG0,   32, 
                        BG20,   32, 
                        BMO0,   64, 
                        BIF0,   64, 
                        BSN0,   32, 
                        BTY0,   64, 
                        Offset (0x67), 
                        Offset (0x68), 
                        ECOS,   8, 
                        LNXD,   8, 
                        ECPS,   8, 
                        Offset (0x6C), 
                        BTMP,   16, 
                        EVTN,   8, 
                        Offset (0x72), 
                        PRCL,   8, 
                        PRC0,   8, 
                        PRC1,   8, 
                        PRCM,   8, 
                        PRIN,   8, 
                        PSTE,   8, 
                        PCAD,   8, 
                        PEWL,   8, 
                        PWRL,   8, 
                        PECD,   8, 
                        PEHI,   8, 
                        PECI,   8, 
                        PEPL,   8, 
                        PEPM,   8, 
                        PWFC,   8, 
                        PECC,   8, 
                        PDT0,   8, 
                        PDT1,   8, 
                        PDT2,   8, 
                        PDT3,   8, 
                        PRFC,   8, 
                        PRS0,   8, 
                        PRS1,   8, 
                        PRS2,   8, 
                        PRS3,   8, 
                        PRS4,   8, 
                        PRCS,   8, 
                        PEC0,   8, 
                        PEC1,   8, 
                        PEC2,   8, 
                        PEC3,   8, 
                        CMDR,   8, 
                        CVRT,   8, 
                        GTVR,   8, 
                        FANT,   8, 
                        SKNT,   8, 
                        AMBT,   8, 
                        MCRT,   8, 
                        DIM0,   8, 
                        DIM1,   8, 
                        PMAX,   8, 
                        PPDT,   8, 
                        PECH,   8, 
                        PMDT,   8, 
                        TSD0,   8, 
                        TSD1,   8, 
                        TSD2,   8, 
                        TSD3,   8, 
                        CPUP,   16, 
                        MCHP,   16, 
                        SYSP,   16, 
                        CPAP,   16, 
                        MCAP,   16, 
                        SYAP,   16, 
                        CFSP,   16, 
                        CPUE,   16, 
                        Offset (0xC6), 
                        Offset (0xC7), 
                        VGAT,   8, 
                        OEM1,   8, 
                        OEM2,   8, 
                        OEM3,   16, 
                        OEM4,   8, 
                        OEM5,   8, 
                        DUT1,   8, 
                        DUT2,   8, 
                        RPM1,   16, 
                        RPM2,   16, 
                        RPM4,   16, 
                        Offset (0xD7), 
                        DTHL,   8, 
                        DTBP,   8, 
                        AIRP,   8, 
                        WINF,   8, 
                        RINF,   8, 
                        Offset (0xDD), 
                        INF2,   8, 
                        MUTE,   1, 
                        Offset (0xE0), 
                        RPM3,   16, 
                        ECKS,   8, 
                        Offset (0xE4), 
                            ,   2, 
                        CMSE,   1, 
                            ,   1, 
                        XTUF,   1, 
                        EP12,   1, 
                        FN_G,   1, 
                        Offset (0xE5), 
                        INF3,   8, 
                        DFAL,   1, 
                        DFAE,   1, 
                        Offset (0xE7), 
                        XFAN,   8, 
                            ,   2, 
                        MAXQ,   1, 
                            ,   2, 
                        FN_D,   1, 
                        Offset (0xE9), 
                        KPCR,   1, 
                        Offset (0xEA), 
                            ,   3, 
                        PDST,   1, 
                        Offset (0xEC), 
                        PDE0,   1, 
                        PDE1,   1, 
                        PDE2,   1, 
                        PDE3,   1, 
                        PDE4,   1, 
                        Offset (0xED), 
                        PDEW,   8, 
                        Offset (0xF0), 
                        PL1T,   16, 
                        PL2T,   16, 
                        TAUT,   8, 
                        Offset (0xFE), 
                        TPFL,   8, 
                        DBGE,   8, 
                        Offset (0x280), 
                        KLCR,   8, 
                        KLCG,   8, 
                        KLCB,   8, 
                        KMCR,   8, 
                        KMCG,   8, 
                        KMCB,   8, 
                        KRCR,   8, 
                        KRCG,   8, 
                        KRCB,   8, 
                        KBNS,   8, 
                        FANC,   8, 
                        KBLD,   8, 
                        P1F1,   8, 
                        P2F1,   8, 
                        P3F1,   8, 
                        P4F1,   8, 
                        P1D1,   8, 
                        P2D1,   8, 
                        P3D1,   8, 
                        P4D1,   8, 
                        SH11,   8, 
                        SL11,   8, 
                        SH12,   8, 
                        SL12,   8, 
                        SH13,   8, 
                        SL13,   8, 
                        P1F2,   8, 
                        P2F2,   8, 
                        P3F2,   8, 
                        P4F2,   8, 
                        P1D2,   8, 
                        P2D2,   8, 
                        P3D2,   8, 
                        P4D2,   8, 
                        SH21,   8, 
                        SL21,   8, 
                        SH22,   8, 
                        SL22,   8, 
                        SH23,   8, 
                        SL23,   8, 
                        P1F3,   8, 
                        P2F3,   8, 
                        P3F3,   8, 
                        P4F3,   8, 
                        P1D3,   8, 
                        P2D3,   8, 
                        P3D3,   8, 
                        P4D3,   8, 
                        SH31,   8, 
                        SL31,   8, 
                        SH32,   8, 
                        SL32,   8, 
                        SH33,   8, 
                        SL33,   8, 
                        Offset (0x2CF), 
                        VER1,   8, 
                        VER2,   8, 
                        RSV1,   8, 
                        RSV2,   8, 
                        CCI0,   8, 
                        CCI1,   8, 
                        CCI2,   8, 
                        CCI3,   8, 
                        CTL0,   8, 
                        CTL1,   8, 
                        CTL2,   8, 
                        CTL3,   8, 
                        CTL4,   8, 
                        CTL5,   8, 
                        CTL6,   8, 
                        CTL7,   8, 
                        MGI0,   8, 
                        MGI1,   8, 
                        MGI2,   8, 
                        MGI3,   8, 
                        MGI4,   8, 
                        MGI5,   8, 
                        MGI6,   8, 
                        MGI7,   8, 
                        MGI8,   8, 
                        MGI9,   8, 
                        MGIA,   8, 
                        MGIB,   8, 
                        MGIC,   8, 
                        MGID,   8, 
                        MGIE,   8, 
                        MGIF,   8, 
                        MGO0,   8, 
                        MGO1,   8, 
                        MGO2,   8, 
                        MGO3,   8, 
                        MGO4,   8, 
                        MGO5,   8, 
                        MGO6,   8, 
                        MGO7,   8, 
                        MGO8,   8, 
                        MGO9,   8, 
                        MGOA,   8, 
                        MGOB,   8, 
                        MGOC,   8, 
                        MGOD,   8, 
                        MGOE,   8, 
                        MGOF,   8, 
                        MSTS,   8
                    }

                    OperationRegion (EC81, EmbeddedControl, Zero, 0xFF)
                    Field (EC81, ByteAcc, Lock, Preserve)
                    {
                        Offset (0xF8), 
                        FCMD,   8, 
                        FDAT,   8, 
                        FBUF,   8, 
                        FBF1,   8, 
                        FBF2,   8, 
                        FBF3,   8, 
                        CLCD,   8
                    }

                    Method (WNTY, 2, NotSerialized)
                    {
                        If (^^^^DCHU.HKDR)
                        {
                            ^^^^DCHU.EVNT = Arg0
                            Notify (DCHU, Arg1)
                        }
                        ElseIf (^^^^WMI.HKDR)
                        {
                            ^^^^WMI.EVNT = Arg0
                            Notify (WMI, 0xD0) // Hardware-Specific
                        }
                    }

                    Method (_Q0A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x0A)
                        WNTY (0x5D, 0x5D)
                    }

                    Method (_Q0B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x0B)
                        WNTY (OEM4, OEM4)
                    }

                    Method (_Q0C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x0C)
                        WNTY (0xFB, 0xFB)
                    }

                    Method (_Q0E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x0E)
                        WNTY (0xFA, 0xFA)
                    }

                    Method (_Q0F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x0F)
                        WNTY (0xFA, 0xFA)
                    }

                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x10)
                        If ((OSTB == 0x80)){}
                        Else
                        {
                            WNTY (0x94, 0x94)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x11)
                        Notify (^^^GP17.VGA.LCD, 0x87) // Device-Specific
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x12)
                        Notify (^^^GP17.VGA.LCD, 0x86) // Device-Specific
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x13)
                        WNTY (OEM4, OEM4)
                    }

                    Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x14)
                        WNTY (0x85, 0x85)
                    }

                    Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x15)
                        S80H (0x0D)
                        If (^^^^LID0.LIDF)
                        {
                            WNTY (0xC2, 0xC2)
                        }
                        Else
                        {
                            Notify (SLPB, 0x80) // Status Change
                        }
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x16)
                        ^^^^AC.ACFG = ADP /* \_SB_.PCI0.LPC0.EC__.ADP_ */
                        DD25 ()
                        Notify (AC, 0x80) // Status Change
                        If (ADP)
                        {
                            Sleep (0x01F4)
                            ECTB = Zero
                            If ((PDST == One))
                            {
                                If (((PDEW <= 0x32) && (PDEW != Zero)))
                                {
                                    DDD3 (DSPT, DFPT, DLPT)
                                }
                                Else
                                {
                                    DD25 ()
                                }
                            }
                            Else
                            {
                                DD25 ()
                            }
                        }
                        Else
                        {
                            Notify (^^^^BAT0, 0x81) // Information Change
                            Sleep (0x1E)
                            Notify (^^^^BAT0, 0x80) // Status Change
                            Sleep (0x1E)
                            DDD3 (DSPT, DFPT, DLPT)
                        }
                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x17)
                        Notify (^^^^BAT0, 0x81) // Information Change
                    }

                    Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((CLO2 == One))
                        {
                            S80H (0x19)
                            Notify (^^^GP17.VGA.LCD, 0x88) // Device-Specific
                            Notify (^^^^BAT0, 0x81) // Information Change
                            WNTY (0xB7, 0xB7)
                        }
                    }

                    Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x1B)
                        Notify (PWRB, 0x02) // Device Wake
                    }

                    Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x1B)
                        Notify (LID0, 0x80) // Status Change
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x1C)
                        If (CondRefOf (\_TZ.TZ0)){}
                    }

                    Method (_Q1E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((CLO1 == One))
                        {
                            S80H (0x1E)
                            Notify (^^^GP17.VGA.LCD, 0x88) // Device-Specific
                            WNTY (0xB7, 0xB7)
                        }
                    }

                    Method (_Q4A, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x4A)
                        Local0 = OEM4 /* \_SB_.PCI0.LPC0.EC__.OEM4 */
                        Switch (ToInteger (Local0))
                        {
                            Case (0xCC)
                            {
                                WNTY (0xBA, 0xBA)
                            }
                            Case (0xCB)
                            {
                                WNTY (0xBB, 0xBB)
                            }

                        }
                    }

                    Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x50)
                        Local0 = OEM4 /* \_SB_.PCI0.LPC0.EC__.OEM4 */
                        If ((Local0 == 0x74))
                        {
                            WNTY (0x74, 0x74)
                            Return (Zero)
                        }

                        If ((Local0 == 0x75))
                        {
                            WNTY (0x75, 0x75)
                            Return (Zero)
                        }

                        If ((Local0 == 0x7B))
                        {
                            WNTY (0x7B, 0x7B)
                            Return (Zero)
                        }

                        If ((Local0 == 0x7C))
                        {
                            WNTY (0x7C, 0x7C)
                            Return (Zero)
                        }

                        If ((Local0 == 0x80))
                        {
                            WNTY (0x83, 0x83)
                            If ((OSTB == 0x80)){}
                            Return (Zero)
                        }

                        If ((Local0 == 0x81))
                        {
                            WNTY (0x81, 0x81)
                            If ((OSTB == 0x80)){}
                            Return (Zero)
                        }

                        If ((Local0 == 0x82))
                        {
                            WNTY (0x82, 0x82)
                            If ((OSTB == 0x80)){}
                            Return (Zero)
                        }

                        If ((Local0 == 0x89))
                        {
                            WNTY (0x89, 0x89)
                            Return (Zero)
                        }

                        If ((Local0 == 0x8A))
                        {
                            WNTY (0x8A, 0x8A)
                            Return (Zero)
                        }

                        If ((Local0 == 0x8B))
                        {
                            WNTY (0x8B, 0x8B)
                            Return (Zero)
                        }

                        If ((Local0 == 0x8C))
                        {
                            WNTY (0x8C, 0x8C)
                            Return (Zero)
                        }

                        If ((Local0 == 0x8D))
                        {
                            WNTY (0x8D, 0x8D)
                            Return (Zero)
                        }

                        If ((Local0 == 0x8E))
                        {
                            WNTY (0x8E, 0x8E)
                            Return (Zero)
                        }

                        If ((Local0 == 0x9E))
                        {
                            WNTY (0x9E, 0x9E)
                            If ((OSTB == 0x80)){}
                            Return (Zero)
                        }

                        If ((Local0 == 0x9F))
                        {
                            WNTY (0x9F, 0x9F)
                            If ((OSTB == 0x80)){}
                            Return (Zero)
                        }

                        If ((Local0 == 0xA0))
                        {
                            WNTY (0x9B, 0x9B)
                            Return (Zero)
                        }

                        If ((Local0 == 0xA8))
                        {
                            WNTY (0x95, 0x95)
                            Return (Zero)
                        }

                        If ((Local0 == 0xA9))
                        {
                            WNTY (0x9C, 0x9C)
                            Return (Zero)
                        }

                        If ((Local0 == 0xAB))
                        {
                            WNTY (0x84, 0x84)
                            Return (Zero)
                        }

                        If ((Local0 == 0xAE))
                        {
                            Return (Zero)
                        }

                        If ((Local0 == 0xAF))
                        {
                            Return (Zero)
                        }

                        If ((Local0 == 0xB0))
                        {
                            WNTY (0x7F, 0x7F)
                            Return (Zero)
                        }

                        If ((Local0 == 0xC7))
                        {
                            WNTY (0xC7, 0xC7)
                            Return (Zero)
                        }

                        If ((Local0 == 0xC8))
                        {
                            WNTY (0xC8, 0xC8)
                            Return (Zero)
                        }

                        If ((Local0 == 0xC9))
                        {
                            WNTY (0xC9, 0xC9)
                            Return (Zero)
                        }

                        If ((Local0 == 0xCA))
                        {
                            WNTY (0xCA, 0xCA)
                            Return (Zero)
                        }

                        If ((Local0 == 0xCF))
                        {
                            WNTY (0xCB, 0xCB)
                            Return (Zero)
                        }

                        If ((Local0 == 0xD0))
                        {
                            WNTY (0xCC, 0xCC)
                            Return (Zero)
                        }

                        If ((Local0 == 0xF2))
                        {
                            WNTY (0x70, 0x70)
                            Return (Zero)
                        }

                        If ((Local0 == 0xF3))
                        {
                            WNTY (0x8F, 0x8F)
                            Return (Zero)
                        }

                        If ((Local0 == 0x6A))
                        {
                            WNTY (0x6A, 0x6A)
                            Return (Zero)
                        }

                        If ((Local0 == 0x6C))
                        {
                            WNTY (0x6B, 0x6B)
                            Return (Zero)
                        }
                    }

                    Method (_Q56, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x56)
                        If (^^^^DCHU.HKDR)
                        {
                            FDAT = 0xFF
                            FCMD = 0xD3
                            If ((FBUF == 0xAA))
                            {
                                Local0 = 0x64
                            }
                            Else
                            {
                                Local0 = 0x65
                            }

                            FBUF = Zero
                            ^^^^DCHU.EVNT = Local0
                            Notify (DCHU, Local0)
                        }
                    }

                    Method (_Q57, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x5D)
                        DDD3 (QSPT, QFPT, QLPT)
                    }

                    Method (_Q58, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x58)
                        DD25 ()
                    }

                    Method (_Q5D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x5D)
                        WNTY (0x59, 0x59)
                    }

                    Method (_Q60, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x40)
                        If ((PDST == One))
                        {
                            If ((PDEW <= 0x32))
                            {
                                DDD3 (DSPT, DFPT, DLPT)
                            }
                            Else
                            {
                                DD25 ()
                            }
                        }
                        Else
                        {
                            DD25 ()
                        }
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x62)
                        If ((OEM4 == 0xE1))
                        {
                            WNTY (0x4A, 0x4A)
                        }

                        If ((OEM4 == 0xE2))
                        {
                            WNTY (0x4B, 0x4B)
                        }

                        If ((OEM4 == 0xE3))
                        {
                            WNTY (0x4C, 0x4C)
                        }

                        If ((OEM4 == 0xE4))
                        {
                            WNTY (0x4D, 0x4D)
                        }
                    }

                    Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        S80H (0x63)
                        If ((OEM4 == 0xE5))
                        {
                            NAPX = 0x16FF8814
                            NAPD = 0x11
                        }

                        If ((OEM4 == 0xE6))
                        {
                            NAPX = 0x16FF8814
                            NAPD = 0x15
                        }
                    }
                }

                Device (PS2K)
                {
                    Name (_HID, "MSFT0001")  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS22)
                {
                    Name (_HID, "ETD0465")  // _HID: Hardware ID
                    Method (_UID, 0, Serialized)  // _UID: Unique ID
                    {
                        Return (Zero)
                    }

                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((^^EC.TPFL == 0x02))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }
                }

                Device (PS23)
                {
                    Name (_HID, "FTE1000")  // _HID: Hardware ID
                    Method (_UID, 0, Serialized)  // _UID: Unique ID
                    {
                        Return (Zero)
                    }

                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((^^EC.TPFL == 0x03))
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }
                }

                Mutex (PSMX, 0x00)
            }

            Scope (GPP1)
            {
            }

            Scope (GPP1.DEV0)
            {
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            }

            Scope (GPP2)
            {
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                            "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x00AC
                            }
                    })
                    Return (RBUF) /* \_SB_.PCI0.GPP2._CRS.RBUF */
                }
            }

            Scope (GPP3)
            {
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, Buffer (0x02)
                    {
                         0x79, 0x00                                       // y.
                    })
                    Return (RBUF) /* \_SB_.PCI0.GPP3._CRS.RBUF */
                }
            }

            Scope (GPP3.RTL8)
            {
                Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
            }

            Scope (GPP4)
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                    GpioInt (Edge, ActiveHigh, SharedAndWake, PullNone, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00AC
                        }
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Return (RBUF) /* \_SB_.PCI0.GPP4.RBUF */
                }

                Device (WLAN)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                }
            }

            Method (PXCR, 3, Serialized)
            {
                Local0 = Zero
                0x08 = M017 (Arg0, Arg1, Arg2, 0x34, Zero)
                Local1
                While ((Local1 != Zero))
                {
                    0x08 = M017 (Arg0, Arg1, Arg2, Local1, Zero)
                    Local2
                    If (((Local2 == Zero) || (Local2 == 0xFF)))
                    {
                        Break
                    }

                    If ((Local2 == 0x10))
                    {
                        Local0 = Local1
                        Break
                    }

                    0x08 = M017 (Arg0, Arg1, Arg2, (Local1 + One), Zero)
                    Local1
                }

                Return (Local0)
            }

            Scope (\_SB)
            {
                OperationRegion (PMIO, SystemMemory, 0xFED80300, 0x0100)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x80), 
                    SI3R,   1
                }

                Name (NBRI, Zero)
                Name (NBAR, Zero)
                Name (NCMD, Zero)
                Name (PXDC, Zero)
                Name (PXLC, Zero)
                Name (PXD2, Zero)
            }

            Scope (GPP6)
            {
                PowerResource (P0NV, 0x00, 0x0000)
                {
                    Name (D0NV, One)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        TPST (0x60AA)
                        Return (D0NV) /* \_SB_.PCI0.GPP6.P0NV.D0NV */
                    }

                    Method (_ON, 0, NotSerialized)  // _ON_: Power On
                    {
                        TPST (0x60D0)
                        If ((SI3R && NPWD))
                        {
                            TPST (0x60E0)
                            Local1 = PXCR (NBRI, Zero, Zero)
                            M020 (NBRI, Zero, Zero, (Local1 + 0x08), PXDC)
                            M020 (NBRI, Zero, Zero, (Local1 + 0x10), (PXLC & 0xFFFFFEFC))
                            M020 (NBRI, Zero, Zero, (Local1 + 0x28), PXD2)
                            M020 (NBRI, Zero, Zero, 0x10, NBAR)
                            M020 (NBRI, Zero, Zero, 0x04, 0x06)
                            APMC = 0xE3
                            SI3R = Zero
                            TPST (0x60E1)
                        }

                        D0NV = One
                    }

                    Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                    {
                        TPST (0x60D3)
                        0x18 = M019 (Zero, 0x02, 0x04)
                        Local0
                        NBRI = ((Local0 & 0xFF00) >> 0x08)
                        0x04 = M019 (NBRI, Zero, Zero)
                        NCMD
                        0x10 = M019 (NBRI, Zero, Zero)
                        NBAR
                        Local1 = PXCR (NBRI, Zero, Zero)
                        (Local1 + 0x08) = M019 (NBRI, Zero, Zero)
                        PXDC
                        (Local1 + 0x10) = M019 (NBRI, Zero, Zero)
                        PXLC
                        (Local1 + 0x28) = M019 (NBRI, Zero, Zero)
                        PXD2
                        D0NV = Zero
                    }
                }

                Device (NVME)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_S0W, 0x04)  // _S0W: S0 Device Wake State
                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        P0NV
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        P0NV
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        P0NV
                    })
                    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                    {
                        TPST (0x6050)
                    }

                    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                    {
                        TPST (0x6053)
                    }

                    Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
                    {
                        ToUUID ("5025030f-842f-4ab4-a561-99a5189762d0") /* Unknown UUID */, 
                        Package (0x01)
                        {
                            Package (0x02)
                            {
                                "StorageD3Enable", 
                                One
                            }
                        }
                    })
                }
            }

            Scope (\)
            {
                OperationRegion (SPRT, SystemIO, 0xB0, 0x02)
                Field (SPRT, ByteAcc, Lock, Preserve)
                {
                    SSMP,   8
                }

                Method (ASMI, 2, NotSerialized)
                {
                    CVSF = Arg1
                    SSMP = Arg0
                    Sleep (0x0A)
                }
            }

            Scope (\_SB)
            {
                Device (AC)
                {
                    Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Name (ACFG, One)
                    Name (IGNR, Zero)
                    Name (RPPC, Zero)
                    Name (RQTM, Zero)
                    Name (CTMS, 0xA55A)
                    Name (GPSF, Zero)
                    Name (PSSN, Zero)
                    Name (XX00, Buffer (0x03){})
                    Name (ACDC, 0xFF)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        IGNR = Zero
                        RPPC = Zero
                        RQTM = Zero
                        CTMS = 0xA55A
                        PSSN = Zero
                    }

                    Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                    {
                        If (^^PCI0.LPC0.EC.ECOK)
                        {
                            CreateWordField (XX00, Zero, SSZE)
                            CreateByteField (XX00, 0x02, ACST)
                            SSZE = 0x03
                            ACFG = ^^PCI0.LPC0.EC.ADP /* \_SB_.PCI0.LPC0.EC__.ADP_ */
                            If ((ACFG != ACDC))
                            {
                                If (ACFG)
                                {
                                    AFN4 (One)
                                    ACST = Zero
                                }
                                Else
                                {
                                    AFN4 (0x02)
                                    ACST = One
                                }

                                ALIB (One, XX00)
                                ACDC = ACFG /* \_SB_.AC__.ACFG */
                            }
                        }

                        Return (ACFG) /* \_SB_.AC__.ACFG */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (ADJP, 1, Serialized)
                    {
                    }
                }

                Device (BAT0)
                {
                    Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                    {
                        _SB
                    })
                    Name (BFCC, Zero)
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (^^PCI0.LPC0.EC.ECOK)
                        {
                            Sleep (0x012C)
                            If (^^PCI0.LPC0.EC.BAT0)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Name (PBIF, Package (0x0D)
                    {
                        One, 
                        Ones, 
                        Ones, 
                        One, 
                        0x39D0, 
                        Zero, 
                        Zero, 
                        0x40, 
                        0x40, 
                        "BAT", 
                        "0001", 
                        "LION", 
                        "Notebook"
                    })
                    Method (IVBI, 0, NotSerialized)
                    {
                        PBIF [One] = Ones
                        PBIF [0x02] = Ones
                        PBIF [0x04] = Ones
                        PBIF [0x09] = " "
                        PBIF [0x0A] = " "
                        PBIF [0x0B] = " "
                        PBIF [0x0C] = " "
                        BFCC = Zero
                    }

                    Method (UPBI, 0, NotSerialized)
                    {
                        If (^^PCI0.LPC0.EC.BAT0)
                        {
                            Local0 = (^^PCI0.LPC0.EC.BDC0 & 0xFFFF)
                            PBIF [One] = Local0
                            Local0 = (^^PCI0.LPC0.EC.BFC0 & 0xFFFF)
                            PBIF [0x02] = Local0
                            BFCC = Local0
                            Local0 = (^^PCI0.LPC0.EC.BDV0 & 0xFFFF)
                            PBIF [0x04] = Local0
                            Local0 = (^^PCI0.LPC0.EC.BCW0 & 0xFFFF)
                            PBIF [0x05] = Local0
                            Local0 = (^^PCI0.LPC0.EC.BCL0 & 0xFFFF)
                            PBIF [0x06] = Local0
                            PBIF [0x09] = "BAT"
                            PBIF [0x0A] = "0001"
                            PBIF [0x0B] = "LION"
                            PBIF [0x0C] = "Notebook"
                        }
                        Else
                        {
                            IVBI ()
                        }
                    }

                    Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                    {
                        If (^^PCI0.LPC0.EC.ECOK)
                        {
                            UPBI ()
                        }
                        Else
                        {
                            IVBI ()
                        }

                        Return (PBIF) /* \_SB_.BAT0.PBIF */
                    }

                    Name (PBST, Package (0x04)
                    {
                        Zero, 
                        Ones, 
                        Ones, 
                        0x3D90
                    })
                    Method (IVBS, 0, NotSerialized)
                    {
                        PBST [Zero] = Zero
                        PBST [One] = Ones
                        PBST [0x02] = Ones
                        PBST [0x03] = 0x2710
                    }

                    Method (UPBS, 0, NotSerialized)
                    {
                        If (^^PCI0.LPC0.EC.BAT0)
                        {
                            Local0 = Zero
                            Local1 = Zero
                            If (^^AC.ACFG)
                            {
                                If (((^^PCI0.LPC0.EC.BST0 & 0x02) == 0x02))
                                {
                                    Local0 |= 0x02
                                    Local1 = (^^PCI0.LPC0.EC.BPR0 & 0xFFFF)
                                }
                            }
                            Else
                            {
                                Local0 |= One
                                Local1 = (^^PCI0.LPC0.EC.BPR0 & 0xFFFF)
                            }

                            Local7 = (Local1 & 0x8000)
                            If ((Local7 == 0x8000))
                            {
                                Local1 ^= 0xFFFF
                            }

                            Local2 = (^^PCI0.LPC0.EC.BRC0 & 0xFFFF)
                            Local3 = (^^PCI0.LPC0.EC.BPV0 & 0xFFFF)
                            PBST [Zero] = Local0
                            PBST [One] = Local1
                            PBST [0x02] = Local2
                            PBST [0x03] = Local3
                            If ((BFCC != ^^PCI0.LPC0.EC.BFC0))
                            {
                                Notify (BAT0, 0x81) // Information Change
                            }
                        }
                        Else
                        {
                            IVBS ()
                        }
                    }

                    Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                    {
                        If (^^PCI0.LPC0.EC.ECOK)
                        {
                            UPBS ()
                        }
                        Else
                        {
                            IVBS ()
                        }

                        Return (PBST) /* \_SB_.BAT0.PBST */
                    }
                }

                Scope (\_SB)
                {
                    Device (DCHU)
                    {
                        Name (_HID, "CLV0001")  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Name (INDX, Zero)
                        Name (EVNT, Zero)
                        Name (EVID, Zero)
                        Name (HKDR, Zero)
                        Name (ARGS, Zero)
                        Name (ARGP, Buffer (0x0100)
                        {
                             0x00                                             // .
                        })
                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            HKDR = Zero
                        }

                        Method (GHPI, 0, NotSerialized)
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0x71
                                ^^PCI0.LPC0.EC.FCMD = 0xD2
                                Local0 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            }
                            Else
                            {
                                Local0 = Ones
                            }

                            Return (Local0)
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("93f224e4-fbdc-4bbf-add6-db71bdc0afad") /* Unknown UUID */))
                            {
                                Local1 = Acquire (^^PCI0.LPC0.EC.PATM, 0x0064)
                                If ((Local1 == Zero))
                                {
                                    If ((ToInteger (Arg2) == 0x04))
                                    {
                                        Local0 = PEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }

                                    If ((ToInteger (Arg2) == 0x0C))
                                    {
                                        Local0 = DEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }
                                    ElseIf ((ToInteger (Arg2) == 0x0D))
                                    {
                                        Local0 = EEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }
                                    ElseIf ((ToInteger (Arg2) == 0x0E))
                                    {
                                        Local0 = FEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }
                                    ElseIf ((ToInteger (Arg2) == 0x11))
                                    {
                                        Local0 = AMVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }
                                    ElseIf ((ToInteger (Arg2) == 0x04))
                                    {
                                        Local0 = PEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }
                                    Else
                                    {
                                        Local0 = ZEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }

                                    Release (^^PCI0.LPC0.EC.PATM)
                                    Return (0x80000002)
                                }
                            }

                            If ((Arg0 == Buffer (0x10)
                                    {
                                        /* 0000 */  0x34, 0x79, 0x6D, 0x0B, 0xB5, 0x1E, 0x3E, 0x45,  // 4ym...>E
                                        /* 0008 */  0x58, 0x25, 0xD9, 0x45, 0x07, 0x2A, 0x45, 0xAA   // X%.E.*E.
                                    }))
                            {
                                Local1 = Acquire (^^PCI0.LPC0.EC.PATM, 0x0064)
                                If ((Local1 == Zero))
                                {
                                    If ((ToInteger (Arg1) == 0x0E))
                                    {
                                        Local0 = FEVT (Arg1, Arg2, Arg3)
                                        Release (^^PCI0.LPC0.EC.PATM)
                                        Return (Local0)
                                    }

                                    Release (^^PCI0.LPC0.EC.PATM)
                                    Return (0x80000002)
                                }
                            }

                            If ((Arg0 == Buffer (0x10)
                                    {
                                        /* 0000 */  0x27, 0xEF, 0x76, 0x60, 0x0E, 0x16, 0x86, 0x46,  // '.v`...F
                                        /* 0008 */  0x35, 0xE5, 0x92, 0x4A, 0x50, 0xB4, 0xDE, 0xAA   // 5..JP...
                                    }))
                            {
                                Return (0x80000002)
                            }

                            Return (0x80000002)
                        }

                        Method (DEVT, 3, NotSerialized)
                        {
                            ARGS = Zero
                            Name (WMIG, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            CreateWordField (WMIG, Zero, DE00)
                            CreateWordField (WMIG, 0x02, DE01)
                            CreateWordField (WMIG, 0x04, DE02)
                            CreateWordField (WMIG, 0x06, DE03)
                            CreateWordField (WMIG, 0x08, DE04)
                            CreateDWordField (WMIG, 0x0A, DE05)
                            CreateWordField (WMIG, 0x0E, DE06)
                            CreateByteField (WMIG, 0x10, DE07)
                            CreateByteField (WMIG, 0x11, DE08)
                            CreateByteField (WMIG, 0x12, DE09)
                            CreateByteField (WMIG, 0x13, DE0A)
                            CreateByteField (WMIG, 0x14, DE0B)
                            CreateByteField (WMIG, 0x15, DE0C)
                            CreateByteField (WMIG, 0x16, DE0D)
                            CreateByteField (WMIG, 0x17, DE0E)
                            CreateByteField (WMIG, 0x18, DE0F)
                            CreateByteField (WMIG, 0x19, DE10)
                            CreateByteField (WMIG, 0x1E, DE11)
                            DE00 = Zero
                            ^^PCI0.LPC0.EC.FDAT = 0x03
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            Local1 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            Local0 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                            DE01 = ((Local0 << 0x08) | Local1)
                            ^^PCI0.LPC0.EC.FDAT = 0x04
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE02 = ((Local0 << 0x08) | Local1)
                            ^^PCI0.LPC0.EC.FDAT = 0x05
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE03 = ((Local0 << 0x08) | Local1)
                            ^^PCI0.LPC0.EC.FDAT = 0x02
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE04 = ((Local1 << 0x08) | Local0)
                            ^^PCI0.LPC0.EC.FDAT = 0x07
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE05 = ((Local1 << 0x08) | Local0)
                            ^^PCI0.LPC0.EC.FDAT = 0x08
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE06 = ((Local1 << 0x08) | Local0)
                            ^^PCI0.LPC0.EC.FDAT = 0x02
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            DE08 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                            ^^PCI0.LPC0.EC.FDAT = 0x03
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            DE07 = ^^PCI0.LPC0.EC.DUT1 /* \_SB_.PCI0.LPC0.EC__.DUT1 */
                            DE09 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                            ^^PCI0.LPC0.EC.FDAT = Zero
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            DE0A = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                            DE0B = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE0C = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            ^^PCI0.LPC0.EC.FDAT = One
                            ^^PCI0.LPC0.EC.FCMD = 0xC0
                            DE0D = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                            DE0E = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            DE0F = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            DE10 = ((^^PCI0.LPC0.EC.AIRP >> 0x07) & One)
                            DE11 = Zero
                            Return (WMIG) /* \_SB_.DCHU.DEVT.WMIG */
                        }

                        Method (EEVT, 3, NotSerialized)
                        {
                            ARGS = Zero
                            Name (WMIG, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            CreateWordField (WMIG, Zero, EE00)
                            CreateByteField (WMIG, 0x02, EE02)
                            CreateByteField (WMIG, 0x03, EE03)
                            CreateByteField (WMIG, 0x04, EE04)
                            CreateByteField (WMIG, 0x05, EE05)
                            CreateByteField (WMIG, 0x06, EE06)
                            CreateByteField (WMIG, 0x07, EE07)
                            CreateByteField (WMIG, 0x08, EE08)
                            CreateByteField (WMIG, 0x09, EE09)
                            CreateByteField (WMIG, 0x0A, EE0A)
                            CreateByteField (WMIG, 0x0B, EE0B)
                            CreateByteField (WMIG, 0x0C, EE0C)
                            CreateByteField (WMIG, 0x0D, EE0D)
                            CreateByteField (WMIG, 0x0E, EE0E)
                            CreateByteField (WMIG, 0x0F, EE0F)
                            CreateByteField (WMIG, 0x10, EE10)
                            CreateByteField (WMIG, 0x11, EE11)
                            CreateByteField (WMIG, 0x12, EE12)
                            CreateByteField (WMIG, 0x13, EE13)
                            CreateByteField (WMIG, 0x14, EE14)
                            CreateByteField (WMIG, 0x15, EE15)
                            CreateByteField (WMIG, 0x16, EE16)
                            CreateByteField (WMIG, 0x17, EE17)
                            CreateByteField (WMIG, 0x18, EE18)
                            CreateByteField (WMIG, 0x19, EE19)
                            CreateByteField (WMIG, 0x1A, EE1A)
                            CreateByteField (WMIG, 0x1B, EE1B)
                            CreateByteField (WMIG, 0x1C, EE1C)
                            CreateByteField (WMIG, 0x1D, EE1D)
                            CreateByteField (WMIG, 0x1E, EE1E)
                            CreateByteField (WMIG, 0x1F, EE1F)
                            CreateByteField (WMIG, 0x20, EE20)
                            CreateByteField (WMIG, 0x21, EE21)
                            CreateByteField (WMIG, 0x22, EE22)
                            CreateByteField (WMIG, 0x23, EE23)
                            CreateByteField (WMIG, 0x24, EE24)
                            CreateByteField (WMIG, 0x25, EE25)
                            CreateByteField (WMIG, 0x26, EE26)
                            CreateByteField (WMIG, 0x27, EE27)
                            CreateWordField (WMIG, 0x28, EE28)
                            CreateByteField (WMIG, 0x2A, EE2A)
                            CreateByteField (WMIG, 0x2B, EE2B)
                            EE00 = Zero
                            EE02 = ^^PCI0.LPC0.EC.KLCR /* \_SB_.PCI0.LPC0.EC__.KLCR */
                            EE03 = ^^PCI0.LPC0.EC.KLCG /* \_SB_.PCI0.LPC0.EC__.KLCG */
                            EE04 = ^^PCI0.LPC0.EC.KLCB /* \_SB_.PCI0.LPC0.EC__.KLCB */
                            EE05 = ^^PCI0.LPC0.EC.KMCR /* \_SB_.PCI0.LPC0.EC__.KMCR */
                            EE06 = ^^PCI0.LPC0.EC.KMCG /* \_SB_.PCI0.LPC0.EC__.KMCG */
                            EE07 = ^^PCI0.LPC0.EC.KMCB /* \_SB_.PCI0.LPC0.EC__.KMCB */
                            EE08 = ^^PCI0.LPC0.EC.KRCR /* \_SB_.PCI0.LPC0.EC__.KRCR */
                            EE09 = ^^PCI0.LPC0.EC.KRCG /* \_SB_.PCI0.LPC0.EC__.KRCG */
                            EE0A = ^^PCI0.LPC0.EC.KRCB /* \_SB_.PCI0.LPC0.EC__.KRCB */
                            EE0B = ^^PCI0.LPC0.EC.KBNS /* \_SB_.PCI0.LPC0.EC__.KBNS */
                            EE0C = ^^PCI0.LPC0.EC.FANC /* \_SB_.PCI0.LPC0.EC__.FANC */
                            EE0D = ^^PCI0.LPC0.EC.KBLD /* \_SB_.PCI0.LPC0.EC__.KBLD */
                            EE0F = ^^PCI0.LPC0.EC.KBLD /* \_SB_.PCI0.LPC0.EC__.KBLD */
                            EE10 = ^^PCI0.LPC0.EC.P1F1 /* \_SB_.PCI0.LPC0.EC__.P1F1 */
                            EE11 = ^^PCI0.LPC0.EC.P1D1 /* \_SB_.PCI0.LPC0.EC__.P1D1 */
                            EE12 = ^^PCI0.LPC0.EC.P2F1 /* \_SB_.PCI0.LPC0.EC__.P2F1 */
                            EE13 = ^^PCI0.LPC0.EC.P2D1 /* \_SB_.PCI0.LPC0.EC__.P2D1 */
                            EE14 = ^^PCI0.LPC0.EC.P3F1 /* \_SB_.PCI0.LPC0.EC__.P3F1 */
                            EE15 = ^^PCI0.LPC0.EC.P3D1 /* \_SB_.PCI0.LPC0.EC__.P3D1 */
                            EE16 = ^^PCI0.LPC0.EC.P4F1 /* \_SB_.PCI0.LPC0.EC__.P4F1 */
                            EE17 = ^^PCI0.LPC0.EC.P4D1 /* \_SB_.PCI0.LPC0.EC__.P4D1 */
                            EE18 = ^^PCI0.LPC0.EC.P1F2 /* \_SB_.PCI0.LPC0.EC__.P1F2 */
                            EE19 = ^^PCI0.LPC0.EC.P1D2 /* \_SB_.PCI0.LPC0.EC__.P1D2 */
                            EE1A = ^^PCI0.LPC0.EC.P2F2 /* \_SB_.PCI0.LPC0.EC__.P2F2 */
                            EE1B = ^^PCI0.LPC0.EC.P2D2 /* \_SB_.PCI0.LPC0.EC__.P2D2 */
                            EE1C = ^^PCI0.LPC0.EC.P3F2 /* \_SB_.PCI0.LPC0.EC__.P3F2 */
                            EE1D = ^^PCI0.LPC0.EC.P3D2 /* \_SB_.PCI0.LPC0.EC__.P3D2 */
                            EE1E = ^^PCI0.LPC0.EC.P4F2 /* \_SB_.PCI0.LPC0.EC__.P4F2 */
                            EE1F = ^^PCI0.LPC0.EC.P4D2 /* \_SB_.PCI0.LPC0.EC__.P4D2 */
                            EE20 = ^^PCI0.LPC0.EC.P1F3 /* \_SB_.PCI0.LPC0.EC__.P1F3 */
                            EE21 = ^^PCI0.LPC0.EC.P1D3 /* \_SB_.PCI0.LPC0.EC__.P1D3 */
                            EE22 = ^^PCI0.LPC0.EC.P2F3 /* \_SB_.PCI0.LPC0.EC__.P2F3 */
                            EE23 = ^^PCI0.LPC0.EC.P2D3 /* \_SB_.PCI0.LPC0.EC__.P2D3 */
                            EE24 = ^^PCI0.LPC0.EC.P3F3 /* \_SB_.PCI0.LPC0.EC__.P3F3 */
                            EE25 = ^^PCI0.LPC0.EC.P3D3 /* \_SB_.PCI0.LPC0.EC__.P3D3 */
                            EE26 = ^^PCI0.LPC0.EC.P4F3 /* \_SB_.PCI0.LPC0.EC__.P4F3 */
                            EE27 = ^^PCI0.LPC0.EC.P4D3 /* \_SB_.PCI0.LPC0.EC__.P4D3 */
                            EE28 = 0xA6001558
                            EE2A = Zero
                            EE2B = ^^PCI0.LPC0.EC.KPCR /* \_SB_.PCI0.LPC0.EC__.KPCR */
                            Return (WMIG) /* \_SB_.DCHU.EEVT.WMIG */
                        }

                        Method (FEVT, 3, NotSerialized)
                        {
                            ARGS = Zero
                            Name (WMIG, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            WMIG = DerefOf (Arg2 [Zero])
                            CreateWordField (WMIG, Zero, FE00)
                            CreateByteField (WMIG, 0x02, FE02)
                            CreateByteField (WMIG, 0x03, FE03)
                            CreateByteField (WMIG, 0x04, FE04)
                            CreateByteField (WMIG, 0x05, FE05)
                            CreateByteField (WMIG, 0x06, FE06)
                            CreateByteField (WMIG, 0x07, FE07)
                            CreateByteField (WMIG, 0x08, FE08)
                            CreateByteField (WMIG, 0x09, FE09)
                            CreateByteField (WMIG, 0x0A, FE0A)
                            CreateByteField (WMIG, 0x0B, FE0B)
                            CreateByteField (WMIG, 0x0C, FE0C)
                            CreateByteField (WMIG, 0x0D, FE0D)
                            CreateByteField (WMIG, 0x0E, FE0E)
                            CreateByteField (WMIG, 0x0F, FE0F)
                            CreateByteField (WMIG, 0x10, FE10)
                            CreateByteField (WMIG, 0x11, FE11)
                            CreateByteField (WMIG, 0x12, FE12)
                            CreateByteField (WMIG, 0x13, FE13)
                            CreateByteField (WMIG, 0x14, FE14)
                            CreateByteField (WMIG, 0x15, FE15)
                            CreateByteField (WMIG, 0x16, FE16)
                            CreateByteField (WMIG, 0x17, FE17)
                            CreateByteField (WMIG, 0x18, FE18)
                            CreateByteField (WMIG, 0x19, FE19)
                            CreateByteField (WMIG, 0x1A, FE1A)
                            CreateByteField (WMIG, 0x1B, FE1B)
                            CreateByteField (WMIG, 0x1C, FE1C)
                            CreateByteField (WMIG, 0x1D, FE1D)
                            CreateByteField (WMIG, 0x1E, FE1E)
                            CreateByteField (WMIG, 0x1F, FE1F)
                            FE00 = Zero
                            ^^PCI0.LPC0.EC.P2F1 = FE02 /* \_SB_.DCHU.FEVT.FE02 */
                            ^^PCI0.LPC0.EC.P2D1 = FE03 /* \_SB_.DCHU.FEVT.FE03 */
                            ^^PCI0.LPC0.EC.P3F1 = FE04 /* \_SB_.DCHU.FEVT.FE04 */
                            ^^PCI0.LPC0.EC.P3D1 = FE05 /* \_SB_.DCHU.FEVT.FE05 */
                            ^^PCI0.LPC0.EC.P2F2 = FE06 /* \_SB_.DCHU.FEVT.FE06 */
                            ^^PCI0.LPC0.EC.P2D2 = FE07 /* \_SB_.DCHU.FEVT.FE07 */
                            ^^PCI0.LPC0.EC.P3F2 = FE08 /* \_SB_.DCHU.FEVT.FE08 */
                            ^^PCI0.LPC0.EC.P3D2 = FE09 /* \_SB_.DCHU.FEVT.FE09 */
                            ^^PCI0.LPC0.EC.P2F3 = FE0A /* \_SB_.DCHU.FEVT.FE0A */
                            ^^PCI0.LPC0.EC.P2D3 = FE0B /* \_SB_.DCHU.FEVT.FE0B */
                            ^^PCI0.LPC0.EC.P3F3 = FE0C /* \_SB_.DCHU.FEVT.FE0C */
                            ^^PCI0.LPC0.EC.P3D3 = FE0D /* \_SB_.DCHU.FEVT.FE0D */
                            ^^PCI0.LPC0.EC.SH11 = FE0E /* \_SB_.DCHU.FEVT.FE0E */
                            ^^PCI0.LPC0.EC.SL11 = FE0F /* \_SB_.DCHU.FEVT.FE0F */
                            ^^PCI0.LPC0.EC.SH12 = FE10 /* \_SB_.DCHU.FEVT.FE10 */
                            ^^PCI0.LPC0.EC.SL12 = FE11 /* \_SB_.DCHU.FEVT.FE11 */
                            ^^PCI0.LPC0.EC.SH13 = FE12 /* \_SB_.DCHU.FEVT.FE12 */
                            ^^PCI0.LPC0.EC.SL13 = FE13 /* \_SB_.DCHU.FEVT.FE13 */
                            ^^PCI0.LPC0.EC.SH21 = FE14 /* \_SB_.DCHU.FEVT.FE14 */
                            ^^PCI0.LPC0.EC.SL21 = FE15 /* \_SB_.DCHU.FEVT.FE15 */
                            ^^PCI0.LPC0.EC.SH22 = FE16 /* \_SB_.DCHU.FEVT.FE16 */
                            ^^PCI0.LPC0.EC.SL22 = FE17 /* \_SB_.DCHU.FEVT.FE17 */
                            ^^PCI0.LPC0.EC.SH23 = FE18 /* \_SB_.DCHU.FEVT.FE18 */
                            ^^PCI0.LPC0.EC.SL23 = FE19 /* \_SB_.DCHU.FEVT.FE19 */
                            ^^PCI0.LPC0.EC.SH31 = FE1A /* \_SB_.DCHU.FEVT.FE1A */
                            ^^PCI0.LPC0.EC.SL31 = FE1B /* \_SB_.DCHU.FEVT.FE1B */
                            ^^PCI0.LPC0.EC.SH32 = FE1C /* \_SB_.DCHU.FEVT.FE1C */
                            ^^PCI0.LPC0.EC.SL32 = FE1D /* \_SB_.DCHU.FEVT.FE1D */
                            ^^PCI0.LPC0.EC.SH33 = FE1E /* \_SB_.DCHU.FEVT.FE1E */
                            ^^PCI0.LPC0.EC.SL33 = FE1F /* \_SB_.DCHU.FEVT.FE1F */
                            Return (WMIG) /* \_SB_.DCHU.FEVT.WMIG */
                        }

                        Method (AMVT, 3, NotSerialized)
                        {
                            Name (AAMD, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            CreateByteField (AAMD, 0x0D, AA0D)
                            CreateByteField (AAMD, 0x0E, AA0E)
                            AA0D = CM17 /* \CM17 */
                            AA0E = COLM /* \COLM */
                            Return (AAMD) /* \_SB_.DCHU.AMVT.AAMD */
                        }

                        Method (ZEVT, 3, Serialized)
                        {
                            ARGP = DerefOf (Arg2 [Zero])
                            CreateField (ARGP, Zero, 0x20, BINT)
                            ARGS = BINT /* \_SB_.DCHU.ZEVT.BINT */
                            Local0 = Zero
                            If ((ToInteger (Arg1) == One))
                            {
                                If (HKDR)
                                {
                                    Local0 = EVNT /* \_SB_.DCHU.EVNT */
                                }
                            }

                            If ((ToInteger (Arg1) == 0x03))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Local0 = ^^PCI0.LPC0.EC.TMP /* \_SB_.PCI0.LPC0.EC__.TMP_ */
                                }
                            }

                            If ((ToInteger (Arg1) == 0x05))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xA1
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        If ((^^PCI0.LPC0.EC.OEM3 & 0x08))
                                        {
                                            If ((Local1 & 0x02))
                                            {
                                                Local0 = One
                                            }
                                            Else
                                            {
                                                Local0 = Zero
                                            }
                                        }
                                        Else
                                        {
                                            Local0 = 0x02
                                        }

                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x06))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xA1
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        If ((^^PCI0.LPC0.EC.OEM3 & 0x04))
                                        {
                                            If ((Local1 & One))
                                            {
                                                Local0 = One
                                            }
                                            Else
                                            {
                                                Local0 = Zero
                                            }
                                        }
                                        Else
                                        {
                                            Local0 = 0x02
                                        }

                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x07))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xA1
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        If ((^^PCI0.LPC0.EC.OEM3 & 0x10))
                                        {
                                            If ((Local1 & 0x04))
                                            {
                                                Local0 = One
                                            }
                                            Else
                                            {
                                                Local0 = Zero
                                            }
                                        }
                                        Else
                                        {
                                            Local0 = 0x02
                                        }

                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x08))
                            {
                                Local0 = GHPI ()
                            }

                            If ((ToInteger (Arg1) == 0x09))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xA1
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        If ((Local1 & 0x10))
                                        {
                                            Local0 = One
                                        }
                                        Else
                                        {
                                            Local0 = Zero
                                        }

                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x0A))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xA1
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        If ((^^PCI0.LPC0.EC.OEM3 & 0x20))
                                        {
                                            If ((Local1 & 0x08))
                                            {
                                                Local0 = One
                                            }
                                            Else
                                            {
                                                Local0 = Zero
                                            }
                                        }
                                        Else
                                        {
                                            Local0 = 0x02
                                        }

                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x0B)){}
                            If ((ToInteger (Arg1) == 0x0C)){}
                            If ((ToInteger (Arg1) == 0x0D)){}
                            If ((ToInteger (Arg1) == 0x0E)){}
                            If ((ToInteger (Arg1) == 0x0F)){}
                            If ((ToInteger (Arg1) == 0x10))
                            {
                                DCTP |= LKFG /* \LKFG */
                                Local0 = DCTP /* \DCTP */
                            }

                            If ((ToInteger (Arg1) == 0x11)){}
                            If ((ToInteger (Arg1) == 0x12)){}
                            If ((ToInteger (Arg1) == 0x32))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Local0 = ^^PCI0.LPC0.EC.BDC0 /* \_SB_.PCI0.LPC0.EC__.BDC0 */
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x33))
                            {
                                If (^^PCI0.LPC0.EC.ECOK){}
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x34))
                            {
                                If (^^PCI0.LPC0.EC.ECOK){}
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x35))
                            {
                                Local0 = One
                            }

                            If ((ToInteger (Arg1) == 0x36))
                            {
                                Local0 = One
                            }

                            If ((ToInteger (Arg1) == 0x37))
                            {
                                Local0 = One
                            }

                            If ((ToInteger (Arg1) == 0x38))
                            {
                                Local0 = One
                            }

                            If ((ToInteger (Arg1) == 0x39))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x3A))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x3B))
                            {
                                Noop
                            }

                            If ((ToInteger (Arg1) == 0x3C)){}
                            If ((ToInteger (Arg1) == 0x3D))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    P80H = 0x61
                                    ^^PCI0.LPC0.EC.FDAT = One
                                    ^^PCI0.LPC0.EC.FCMD = 0xCA
                                    Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                }
                                Else
                                {
                                    Local0 = Zero
                                }
                            }

                            If ((ToInteger (Arg1) == 0x3E))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x3F))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x40))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x41))
                            {
                                Local0 = Zero
                                ^^PCI0.LPC0.EC.FDAT = ((ARGS >> 0x18) & 0xFF)
                                ^^PCI0.LPC0.EC.FBUF = ((ARGS >> 0x10) & 0xFF)
                                ^^PCI0.LPC0.EC.FBF1 = ((ARGS >> 0x08) & 0xFF)
                                ^^PCI0.LPC0.EC.FCMD = (ARGS & 0xFF)
                                Local0 = Zero
                                Local0 |= ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                Local0 |= (^^PCI0.LPC0.EC.FBUF << 0x08)
                                Local0 |= (^^PCI0.LPC0.EC.FBF1 << 0x10)
                                Local0 |= (^^PCI0.LPC0.EC.FBF2 << 0x18)
                            }

                            If ((ToInteger (Arg1) == 0x42))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    P80H = 0x66
                                    Local0 = BKST /* \BKST */
                                }
                            }

                            If ((ToInteger (Arg1) == 0x43))
                            {
                                If (^^PCI0.LPC0.EC.ECOK){}
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x44))
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0x03
                                ^^PCI0.LPC0.EC.FCMD = 0xCD
                                Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                            }

                            If ((ToInteger (Arg1) == 0x45))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x50)){}
                            If ((ToInteger (Arg1) == 0x51))
                            {
                                Noop
                            }

                            If ((ToInteger (Arg1) == 0x52))
                            {
                                Local0 = 0x25
                                If (((OEMF & 0x0400) || (OEMF & 0x0600)))
                                {
                                    Local0 |= 0x00200000
                                }

                                If ((OEMF & 0x1000))
                                {
                                    Local0 |= 0x02
                                }

                                If ((ECBL == Zero))
                                {
                                    Local0 |= 0x04000000
                                }

                                If ((LKFG & One))
                                {
                                    Local0 |= 0x00400000
                                }

                                If ((LKFG & 0x08))
                                {
                                    Local0 |= 0x02000000
                                }

                                If ((LKFG & 0x02))
                                {
                                    Local0 |= 0x20000000
                                }

                                If ((LKFG & 0x10))
                                {
                                    Local0 |= 0x40000000
                                }
                            }

                            If ((ToInteger (Arg1) == 0x53)){}
                            If ((ToInteger (Arg1) == 0x54)){}
                            If ((ToInteger (Arg1) == 0x60))
                            {
                                If ((^^PCI0.LPC0.EC.RINF & 0x10))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0x91
                                    ^^PCI0.LPC0.EC.FCMD = 0xD2
                                    Local0 = 0x1C
                                }
                                Else
                                {
                                    Local0 = 0x0C
                                }

                                Local0 |= 0x0200
                            }

                            If ((ToInteger (Arg1) == 0x61))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xA2
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    If (One)
                                    {
                                        Local0 = (^^PCI0.LPC0.EC.FDAT & One)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x62))
                            {
                                Local0 = Zero
                            }

                            If ((ToInteger (Arg1) == 0x63))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0x02
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    Local2 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                    ^^PCI0.LPC0.EC.FDAT = 0x03
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    Local0 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                    Local0 = ((Local0 << 0x08) | Local2)
                                    Local0 = ((Local0 << 0x08) | Local1)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x64))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = Zero
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local0 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        Local2 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        Local3 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                        Local0 = ((Local0 << 0x08) | Local2)
                                        Local0 = ((Local0 << 0x08) | Local3)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x6E))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = One
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local0 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        Local2 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        Local3 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                        Local0 = ((Local0 << 0x08) | Local2)
                                        Local0 = ((Local0 << 0x08) | Local3)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x6F))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0x02
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        Local0 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                        Local0 |= (Local0 << 0x08)
                                        Local0 = ((Local0 << 0x08) | Local1)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x70))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0x03
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        Local0 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                        Local0 |= (Local1 << 0x08)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = 0x04
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local2 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        Local1 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        Local1 |= (Local2 << 0x08)
                                        Local0 |= (Local1 << 0x10)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x71))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0x05
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        Local0 |= (Local1 << 0x08)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = 0x02
                                    ^^PCI0.LPC0.EC.FCMD = 0xC0
                                    If (One)
                                    {
                                        Local2 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        Local1 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                        Local1 |= (Local2 << 0x08)
                                        Local0 |= (Local1 << 0x10)
                                        ^^PCI0.LPC0.EC.FCMD = Zero
                                    }
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x72)){}
                            If ((ToInteger (Arg1) == 0x73))
                            {
                                Local1 = (INDX & 0xFFFF)
                                Local2 = ((INDX >> 0x10) & 0xFFFF)
                                If ((Local2 > 0x02))
                                {
                                    Local2 = Zero
                                }

                                If ((Local1 > 0xFF))
                                {
                                    Return (Zero)
                                }

                                Local2 = (One << Local2)
                                Local3 = Local2
                                Local3--
                                If (((Local1 + Local3) > 0xFF))
                                {
                                    Return (Zero)
                                }

                                Local0 = (Local1 + 0xFE500100)
                                Name (RBUF, Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           // ....
                                })
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    OperationRegion (RH2M, SystemMemory, Local0, Local2)
                                    Switch (ToInteger (Local2))
                                    {
                                        Case (One)
                                        {
                                            Field (RH2M, ByteAcc, Lock, Preserve)
                                            {
                                                RHMB,   8
                                            }

                                            RBUF = RHMB /* \_SB_.DCHU.ZEVT.RHMB */
                                        }
                                        Case (0x02)
                                        {
                                            Field (RH2M, ByteAcc, Lock, Preserve)
                                            {
                                                RHMW,   16
                                            }

                                            RBUF = RHMW /* \_SB_.DCHU.ZEVT.RHMW */
                                        }
                                        Case (0x04)
                                        {
                                            Field (RH2M, ByteAcc, Lock, Preserve)
                                            {
                                                RHMD,   32
                                            }

                                            RBUF = RHMD /* \_SB_.DCHU.ZEVT.RHMD */
                                        }

                                    }
                                }

                                Local0 = RBUF /* \_SB_.DCHU.ZEVT.RBUF */
                            }

                            If ((ToInteger (Arg1) == 0x76)){}
                            If ((ToInteger (Arg1) == 0x77))
                            {
                                Local0 = (BAEE >> One)
                                Local0 |= (BSCP << 0x08)
                                Local0 |= (BTCP << 0x10)
                            }

                            If ((ToInteger (Arg1) == 0x7A))
                            {
                                Local0 = 0x2041
                                Local0 |= 0x02
                                Local0 |= 0x10
                                Local0 |= 0x40
                                If ((LKFG & 0x10))
                                {
                                    Local0 |= 0x10000000
                                    Local0 |= 0x4000
                                }

                                Local0 |= 0x00020000
                                If (Zero)
                                {
                                    Local0 |= 0x00800000
                                }
                                Else
                                {
                                    Local0 &= 0xFF7FFFFF
                                }

                                Local0 &= 0xFFFF7FFF
                                Local0 &= 0xFFFEFFFF
                                Local0 |= 0x08000000
                                Local0 = 0x00012345
                            }

                            If ((ToInteger (Arg1) == 0x14))
                            {
                                Local0 = 0x14
                            }

                            If ((ToInteger (Arg1) == 0x16))
                            {
                                Local0 = 0x16
                            }

                            If ((ToInteger (Arg1) == 0x17))
                            {
                                Local0 = 0x17
                            }

                            If ((ToInteger (Arg1) == 0x18))
                            {
                                Local0 = 0x18
                            }

                            If ((ToInteger (Arg1) == 0x19))
                            {
                                Local0 = 0x19
                            }

                            If ((ToInteger (Arg1) == 0x1A))
                            {
                                Local0 = 0x1A
                            }

                            If ((ToInteger (Arg1) == 0x1B))
                            {
                                Local0 = 0x1B
                            }

                            If ((ToInteger (Arg1) == 0x46))
                            {
                                HKDR = One
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If ((LKFG & One))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x05
                                        ^^PCI0.LPC0.EC.FBUF = One
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = 0x81
                                    ^^PCI0.LPC0.EC.FBUF = 0x30
                                    ^^PCI0.LPC0.EC.FCMD = 0xD2
                                }

                                If ((OEMF & 0x10))
                                {
                                    Local0 |= One
                                }

                                If ((OEMF & 0x20))
                                {
                                    Local0 |= 0x04
                                }

                                If ((OEMF & 0x2000))
                                {
                                    Local0 |= 0x2000
                                }

                                If ((OEMF & 0x0800))
                                {
                                    Local0 |= 0x0100
                                }

                                OperationRegion (PCFM, SystemMemory, 0xF8301000, 0xFF)
                                Field (PCFM, ByteAcc, NoLock, Preserve)
                                {
                                    DMID,   32, 
                                    Offset (0x80), 
                                    PML0,   1, 
                                    PML1,   1
                                }

                                OperationRegion (PCFN, SystemMemory, 0xF8401000, 0xFF)
                                Field (PCFN, ByteAcc, NoLock, Preserve)
                                {
                                    DNID,   32, 
                                    Offset (0x80), 
                                    PNL0,   1, 
                                    PNL1,   1
                                }

                                If ((DMID == 0x816810EC))
                                {
                                    PML0 = Zero
                                    PML1 = One
                                }

                                If ((DNID == 0x816810EC))
                                {
                                    PNL0 = Zero
                                    PNL1 = One
                                }

                                Local0 = 0x2100
                            }

                            If ((ToInteger (Arg1) == 0x47))
                            {
                                Local0 = 0x47
                            }

                            If ((ToInteger (Arg1) == 0x48))
                            {
                                Local0 = 0x48
                            }

                            If ((ToInteger (Arg1) == 0x49))
                            {
                                Notify (PWRB, 0x80) // Status Change
                                Local0 = 0x49
                            }

                            If ((ToInteger (Arg1) == 0x4A))
                            {
                                Local0 = 0x4A
                            }

                            If ((ToInteger (Arg1) == 0x6D))
                            {
                                Local0 = 0x6D
                            }

                            If ((ToInteger (Arg1) == 0x27))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    P80H = ToInteger (ARGS)
                                    ^^PCI0.LPC0.EC.FDAT = Zero
                                    ^^PCI0.LPC0.EC.FBUF = ToInteger (ARGS)
                                    ^^PCI0.LPC0.EC.FCMD = 0xCA
                                }

                                Local0 = 0x27
                            }

                            If ((ToInteger (Arg1) == 0x1D))
                            {
                                Local0 = 0x1D
                            }

                            If ((ToInteger (Arg1) == 0x1E))
                            {
                                P80H = 0x30
                            }

                            If ((ToInteger (Arg1) == 0x1F))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = One
                                        P80H = 0xDF
                                    }
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = Zero
                                        P80H = 0x5F
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = 0xA4
                                }

                                Local0 = 0x1F
                            }

                            If ((ToInteger (Arg1) == 0x20))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA2
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x20
                            }

                            If ((ToInteger (Arg1) == 0x21))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA3
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x21
                            }

                            If ((ToInteger (Arg1) == 0x22))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA1
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x22
                            }

                            If ((ToInteger (Arg1) == 0x23))
                            {
                                If (ARGS){}
                                Else
                                {
                                }

                                Local0 = 0x23
                            }

                            If ((ToInteger (Arg1) == 0x24))
                            {
                                Local0 = 0x24
                            }

                            If ((ToInteger (Arg1) == 0x25))
                            {
                                Local0 = 0x25
                            }

                            If ((ToInteger (Arg1) == 0x26))
                            {
                                Local0 = 0x26
                            }

                            If ((ToInteger (Arg1) == 0x28))
                            {
                                Local0 = 0x28
                            }

                            If ((ToInteger (Arg1) == 0x29))
                            {
                                Local0 = 0x29
                            }

                            If ((ToInteger (Arg1) == 0x2A))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA5
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x2A
                            }

                            If ((ToInteger (Arg1) == 0x2B))
                            {
                                Local0 = 0x2B
                            }

                            If ((ToInteger (Arg1) == 0x2C))
                            {
                                Local0 = 0x2C
                            }

                            If ((ToInteger (Arg1) == 0x2D))
                            {
                                Local0 = 0x2D
                            }

                            If ((ToInteger (Arg1) == 0x2E))
                            {
                                Local0 = 0x2E
                            }

                            If ((ToInteger (Arg1) == 0x2F))
                            {
                                Local0 = 0x2F
                            }

                            If ((ToInteger (Arg1) == 0x30))
                            {
                                Local0 = 0x30
                            }

                            If ((ToInteger (Arg1) == 0x31))
                            {
                                If (^^PCI0.LPC0.EC.ECOK){}
                                Local0 = 0x31
                            }

                            If ((ToInteger (Arg1) == 0x4B))
                            {
                                Local0 = 0x4B
                            }

                            If ((ToInteger (Arg1) == 0x4C))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA4
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x4C
                            }

                            If ((ToInteger (Arg1) == 0x4D))
                            {
                                Local0 = 0x4D
                            }

                            If ((ToInteger (Arg1) == 0x4E))
                            {
                                Local0 = 0x4E
                            }

                            If ((ToInteger (Arg1) == 0x4F))
                            {
                                Switch (ToInteger (ARGS))
                                {
                                    Case (Zero)
                                    {
                                        P80H = 0x4F
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            OEMF &= 0xFFF9
                                            ^^AC.ADJP (Zero)
                                        }
                                    }
                                    Case (One)
                                    {
                                        P80H = 0x5F
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            OEMF = ((OEMF & 0xFFF9) | 0x02)
                                            ^^AC.ADJP (Zero)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        P80H = 0x6F
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            OEMF = ((OEMF & 0xFFF9) | 0x04)
                                            ^^AC.ADJP (Zero)
                                        }
                                    }

                                }

                                If ((NVBB & 0xFFFF))
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        If (^^AC.ACFG)
                                        {
                                            ^^PCI0.LPC0.EC.BBST = Zero
                                        }
                                        Else
                                        {
                                            ^^PCI0.LPC0.EC.BBST = (((NVBB >> 0x04) & 0xF0) | (NVBB & 
                                                0x0F))
                                        }

                                        If (GPSL){}
                                    }
                                }

                                Local0 = 0x4F
                            }

                            If ((ToInteger (Arg1) == 0x55))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    ^^PCI0.LPC0.EC.INF2 |= 0x02
                                }

                                Local0 = 0x55
                            }

                            If ((ToInteger (Arg1) == 0x56))
                            {
                                Local0 = 0x56
                            }

                            If ((ToInteger (Arg1) == 0x57))
                            {
                                Local0 = 0x57
                            }

                            If ((ToInteger (Arg1) == 0x58))
                            {
                                Local0 = 0x58
                            }

                            If ((ToInteger (Arg1) == 0x59))
                            {
                                Local0 = 0x59
                            }

                            If ((ToInteger (Arg1) == 0x5A))
                            {
                                Switch (ToInteger (ARGS))
                                {
                                    Case (Zero)
                                    {
                                        ^^LID0.WMIF = One
                                        Notify (LID0, 0x80) // Status Change
                                    }
                                    Case (One)
                                    {
                                        Notify (SLPB, 0x80) // Status Change
                                    }
                                    Case (0x02)
                                    {
                                        Notify (PWRB, 0x80) // Status Change
                                    }

                                }

                                Local0 = 0x5A
                            }

                            If ((ToInteger (Arg1) == 0x5B))
                            {
                                Local0 = 0x5B
                            }

                            If ((ToInteger (Arg1) == 0x5C))
                            {
                                Local0 = 0x5C
                            }

                            If ((ToInteger (Arg1) == 0x5D))
                            {
                                Local0 = 0x5D
                            }

                            If ((ToInteger (Arg1) == 0x5E))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA6
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x5E
                            }

                            If ((ToInteger (Arg1) == 0x5F))
                            {
                                Local0 = 0x5F
                            }

                            If ((ToInteger (Arg1) == 0x65))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        Local1 = 0xC2
                                    }
                                    Else
                                    {
                                        Local1 = 0xC3
                                    }

                                    ^^PCI0.LPC0.EC.FDAT = Local1
                                    ^^PCI0.LPC0.EC.FBUF = 0xA9
                                    ^^PCI0.LPC0.EC.FCMD = 0xB8
                                }

                                Local0 = 0x65
                            }

                            If ((ToInteger (Arg1) == 0x66)){}
                            If ((ToInteger (Arg1) == 0x67))
                            {
                                Local2 = ((ARGS >> 0x0C) & 0x0F)
                                If ((Local2 >= 0x0A))
                                {
                                    Local2 = Zero
                                }
                                Else
                                {
                                    Local2 *= 0x19
                                    Local2 = (0xFF - Local2)
                                }

                                Local3 = ((ARGS >> 0x10) & 0xFF)
                                Local4 = ((ARGS >> 0x18) & 0x0F)
                                Local7 = ((ARGS >> 0x1C) & 0x0F)
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (((Local7 >= 0x07) && (Local7 <= 0x0B)))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = Local7
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }
                                    Else
                                    {
                                        If ((Local7 == Zero))
                                        {
                                            Local0 = Zero
                                            Local0 = (ARGS & 0x07)
                                            Local0 |= ((ARGS >> One) & 0x38)
                                            Local0 |= ((ARGS >> 0x02) & 0x01C0)
                                            ^^PCI0.LPC0.EC.FDAT = Local0
                                            ^^PCI0.LPC0.EC.FBUF = (Local0 >> 0x08)
                                            ^^PCI0.LPC0.EC.FCMD = 0xC2
                                        }

                                        If ((Local7 == One))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x03
                                            ^^PCI0.LPC0.EC.FBUF = Local3
                                            ^^PCI0.LPC0.EC.FCMD = 0xC4
                                        }

                                        If ((Local7 == 0x02))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x04
                                            ^^PCI0.LPC0.EC.FBUF = Local3
                                            ^^PCI0.LPC0.EC.FCMD = 0xC4
                                        }

                                        If ((Local7 == 0x03))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x06
                                            ^^PCI0.LPC0.EC.FBUF = Local3
                                            ^^PCI0.LPC0.EC.FBF1 = Local4
                                            ^^PCI0.LPC0.EC.FCMD = 0xC4
                                        }

                                        If ((Local7 == 0x04))
                                        {
                                            If (Local3)
                                            {
                                                Local0 = 0x0D
                                            }
                                            Else
                                            {
                                                Local0 = 0x0E
                                            }

                                            ^^PCI0.LPC0.EC.FDAT = Local0
                                            ^^PCI0.LPC0.EC.FCMD = 0xC4
                                        }

                                        If ((Local7 == 0x0C)){}
                                        If ((Local7 == 0x0D))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x02
                                            ^^PCI0.LPC0.EC.FBUF = Local2
                                            ^^PCI0.LPC0.EC.FCMD = 0xC4
                                        }

                                        If ((Local7 == 0x0E))
                                        {
                                            Local1 = ((ARGS >> 0x0E) & 0x1F)
                                            If ((ARGS & 0x2000))
                                            {
                                                Local1 |= 0x20
                                            }

                                            ^^PCI0.LPC0.EC.FDAT = 0x0C
                                            ^^PCI0.LPC0.EC.FBUF = Local1
                                            ^^PCI0.LPC0.EC.FCMD = 0xC4
                                        }

                                        If ((Local7 == 0x0F))
                                        {
                                            Local6 = Zero
                                            Local3 = (ARGS & 0xFF)
                                            Local2 = ((ARGS >> 0x08) & 0xFF)
                                            Local1 = ((ARGS >> 0x10) & 0xFF)
                                            If ((Local4 < 0x03))
                                            {
                                                Local0 = (Local4 + 0x03)
                                                Local6 = 0xCA
                                            }
                                            ElseIf ((Local4 == 0x03))
                                            {
                                                Local0 = 0x07
                                                Local6 = 0xCA
                                            }
                                            ElseIf ((Local4 == 0x04))
                                            {
                                                Local0 = 0x06
                                                Local1 = (ARGS & 0xFF)
                                                Local6 = 0xCA
                                            }
                                            ElseIf ((Local4 == 0x06))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = 0x09
                                                ^^PCI0.LPC0.EC.FBUF = Local1
                                                ^^PCI0.LPC0.EC.FBF1 = Local2
                                                ^^PCI0.LPC0.EC.FBF2 = Local3
                                                ^^PCI0.LPC0.EC.FCMD = 0xCA
                                                Local0 = 0x0A
                                                Local6 = 0xCA
                                            }

                                            If (Local6)
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = Local0
                                                ^^PCI0.LPC0.EC.FBUF = Local1
                                                ^^PCI0.LPC0.EC.FBF1 = Local2
                                                ^^PCI0.LPC0.EC.FBF2 = Local3
                                                ^^PCI0.LPC0.EC.FCMD = Local6
                                            }
                                        }
                                    }
                                }

                                Local0 = 0x67
                            }

                            If ((ToInteger (Arg1) == 0x68))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Local4 = ARGS /* \_SB_.DCHU.ARGS */
                                    ^^PCI0.LPC0.EC.FDAT = One
                                    ^^PCI0.LPC0.EC.FBUF = (Local4 & 0xFF)
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    ^^PCI0.LPC0.EC.FDAT = 0x02
                                    ^^PCI0.LPC0.EC.FBUF = ((Local4 >> 0x08) & 0xFF)
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    ^^PCI0.LPC0.EC.FDAT = 0x03
                                    ^^PCI0.LPC0.EC.FBUF = ((Local4 >> 0x10) & 0xFF)
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    ^^PCI0.LPC0.EC.FDAT = 0x04
                                    ^^PCI0.LPC0.EC.FBUF = ((Local4 >> 0x18) & 0xFF)
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                }

                                Local0 = 0x68
                            }

                            If ((ToInteger (Arg1) == 0x69))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Local4 = ARGS /* \_SB_.DCHU.ARGS */
                                    If ((Local4 & One))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0xFF
                                        ^^PCI0.LPC0.EC.FBUF = One
                                        ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    }

                                    If ((Local4 & 0x02))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0xFF
                                        ^^PCI0.LPC0.EC.FBUF = 0x02
                                        ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    }

                                    If ((Local4 & 0x04))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0xFF
                                        ^^PCI0.LPC0.EC.FBUF = 0x03
                                        ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    }

                                    If ((Local4 & 0x08))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0xFF
                                        ^^PCI0.LPC0.EC.FBUF = 0x04
                                        ^^PCI0.LPC0.EC.FCMD = 0xC1
                                    }
                                }

                                Local0 = 0x69
                            }

                            If ((ToInteger (Arg1) == 0x6A))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Local0 = ((ARGS >> 0x08) & 0xFF)
                                    Local1 = (ARGS & 0xFF)
                                    ^^PCI0.LPC0.EC.FDAT = Local0
                                    ^^PCI0.LPC0.EC.FBUF = Local1
                                    ^^PCI0.LPC0.EC.FCMD = 0xBA
                                    B41S = Local0
                                    B41M = Local1
                                    B41E = One
                                }

                                Local0 = 0x6A
                            }

                            If ((ToInteger (Arg1) == 0x6B))
                            {
                                INDX = ARGS /* \_SB_.DCHU.ARGS */
                                Local0 = 0x6B
                            }

                            If ((ToInteger (Arg1) == 0x6C))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS){}
                                    Else
                                    {
                                    }
                                }

                                Local0 = 0x6C
                            }

                            If ((ToInteger (Arg1) == 0x74))
                            {
                                CreateField (Arg2, Zero, One, SMUT)
                                CreateField (Arg2, One, 0x07, SAUD)
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ToInteger (SMUT))
                                    {
                                        Local0 = Zero
                                    }
                                    Else
                                    {
                                        Local0 = ToInteger (SAUD)
                                        If ((Local0 > 0x64))
                                        {
                                            Local0 = 0x64
                                        }
                                    }

                                    If ((LKFG & 0x04)){}
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = Local0
                                        ^^PCI0.LPC0.EC.FCMD = 0xC6
                                    }
                                }

                                Local0 = 0x74
                            }

                            If ((ToInteger (Arg1) == 0x1C))
                            {
                                Local0 = 0x1C
                            }

                            If ((ToInteger (Arg1) == 0x75))
                            {
                                Local1 = (INDX & 0xFFFF)
                                Local2 = ((INDX >> 0x10) & 0xFFFF)
                                If ((Local1 == 0xD9))
                                {
                                    ARGS &= 0x40
                                    ^^PCI0.LPC0.EC.AIRP &= 0xBF
                                    ARGS |= ^^PCI0.LPC0.EC.AIRP /* \_SB_.PCI0.LPC0.EC__.AIRP */
                                    P80H = 0xD9
                                }

                                If ((Local2 > 0x02))
                                {
                                    Local2 = Zero
                                }

                                If ((Local1 > 0xFF))
                                {
                                    Return (Ones)
                                }

                                Local2 = (One << Local2)
                                Local3 = Local2
                                Local3--
                                If (((Local1 + Local3) > 0xFF))
                                {
                                    Return (Ones)
                                }

                                Local0 = (Local1 + 0xFE500100)
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Name (WBUF, Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                           // ....
                                    })
                                    CreateByteField (WBUF, Zero, ARGB)
                                    CreateWordField (WBUF, Zero, ARGW)
                                    CreateDWordField (WBUF, Zero, ARGD)
                                    WBUF = ARGS /* \_SB_.DCHU.ARGS */
                                    OperationRegion (WH2M, SystemMemory, Local0, Local2)
                                    Switch (ToInteger (Local2))
                                    {
                                        Case (One)
                                        {
                                            Field (WH2M, ByteAcc, Lock, Preserve)
                                            {
                                                WHMB,   8
                                            }

                                            WHMB = ARGB /* \_SB_.DCHU.ZEVT.ARGB */
                                        }
                                        Case (0x02)
                                        {
                                            Field (WH2M, ByteAcc, Lock, Preserve)
                                            {
                                                WHMW,   16
                                            }

                                            WHMW = ARGW /* \_SB_.DCHU.ZEVT.ARGW */
                                        }
                                        Case (0x04)
                                        {
                                            Field (WH2M, ByteAcc, Lock, Preserve)
                                            {
                                                WHMD,   32
                                            }

                                            WHMD = ARGD /* \_SB_.DCHU.ZEVT.ARGD */
                                        }

                                    }

                                    If (((Local1 <= 0xF8) && ((Local1 + Local3) >= 
                                        0xF8)))
                                    {
                                        Local4 = (0xF8 - Local1)
                                        ^^PCI0.LPC0.EC.FCMD = DerefOf (WBUF [Local4])
                                    }

                                    Local0 = 0x75
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x76))
                            {
                                Local1 = ((ARGS & 0xFF000000) >> 0x18)
                                Local2 = (ARGS & 0x00FFFFFF)
                                Switch (ToInteger (Local1))
                                {
                                    Case (0x05)
                                    {
                                        BAEE = (Local2 << One)
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            ^^PCI0.LPC0.EC.FBF1 = BAEE /* \BAEE */
                                            ^^PCI0.LPC0.EC.FCMD = 0xCB
                                        }
                                    }
                                    Case (0x06)
                                    {
                                        BTCP = ((Local2 & 0xFF00) >> 0x08)
                                        BSCP = (Local2 & 0xFF)
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            ^^PCI0.LPC0.EC.FBUF = BSCP /* \BSCP */
                                            ^^PCI0.LPC0.EC.FDAT = BTCP /* \BTCP */
                                        }
                                    }

                                }

                                Local0 = 0x76
                            }

                            If ((ToInteger (Arg1) == 0x77))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    Local0 = (BAEE >> One)
                                    Local0 |= (BSCP << 0x08)
                                    Local0 |= (BTCP << 0x10)
                                }
                                Else
                                {
                                    Local0 = Ones
                                }
                            }

                            If ((ToInteger (Arg1) == 0x78)){}
                            If ((ToInteger (Arg1) == 0x15)){}
                            If ((ToInteger (Arg1) == 0x79))
                            {
                                Local1 = ((ARGS & 0xFF000000) >> 0x18)
                                Local2 = (ARGS & 0x00FFFFFF)
                                Switch (ToInteger (Local1))
                                {
                                    Case (One)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            If ((Local2 == Zero))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = 0x02
                                                ^^PCI0.LPC0.EC.FCMD = 0xD7
                                            }

                                            If ((Local2 == One))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = 0x10
                                                ^^PCI0.LPC0.EC.FCMD = 0xD7
                                            }

                                            If ((Local2 == 0x02))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = 0x08
                                                ^^PCI0.LPC0.EC.FCMD = 0xD7
                                            }

                                            If ((Local2 == 0x03))
                                            {
                                                If (^^PCI0.LPC0.EC.ECOK)
                                                {
                                                    ^^PCI0.LPC0.EC.FDAT = One
                                                    ^^PCI0.LPC0.EC.FBUF = Zero
                                                    ^^PCI0.LPC0.EC.FBF1 = Zero
                                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                                }
                                            }

                                            If ((Local2 == 0x04)){}
                                            If ((Local2 == 0x05))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = One
                                                ^^PCI0.LPC0.EC.FCMD = 0xD7
                                            }

                                            If ((Local2 == 0x06))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = 0x04
                                                ^^PCI0.LPC0.EC.FCMD = 0xD7
                                            }
                                        }
                                        Else
                                        {
                                            Local0 = Ones
                                        }
                                    }
                                    Case (0x05)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            If (Local2)
                                            {
                                                ^^PCI0.LPC0.EC.ECKS |= 0x10
                                            }
                                            Else
                                            {
                                                ^^PCI0.LPC0.EC.ECKS &= 0xEF
                                            }
                                        }
                                        Else
                                        {
                                            Local0 = Ones
                                        }
                                    }
                                    Case (0x07)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            Local4 = Zero
                                            Local5 = Zero
                                            Local6 = Zero
                                            Local7 = Zero
                                            If (Local2)
                                            {
                                                Local4 = (Local2 & 0xFF)
                                                Local5 = ((Local2 >> 0x08) & 0xFF)
                                                Local6 = ((Local2 >> 0x10) & 0xFF)
                                                Local3 = (((Local6 - 0x32) * 0x0A) / ((CJMX - 
                                                    0x0A) - Local4))
                                                Local3 <<= 0x03
                                                Local7 = (Local3 / 0x0A)
                                                If (((Local3 - (Local7 * 0x0A)) > 0x04))
                                                {
                                                    Local7++
                                                }

                                                Local3 = One
                                            }
                                            Else
                                            {
                                                Local3 = Zero
                                            }

                                            ^^PCI0.LPC0.EC.FDAT = Local3
                                            ^^PCI0.LPC0.EC.FBUF = Local4
                                            ^^PCI0.LPC0.EC.FBF1 = Local5
                                            ^^PCI0.LPC0.EC.FBF2 = Local6
                                            ^^PCI0.LPC0.EC.FBF3 = Local7
                                            ^^PCI0.LPC0.EC.FCMD = 0xCC
                                        }
                                        Else
                                        {
                                            Local0 = Ones
                                        }
                                    }
                                    Case (0x09)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            Local2 = (ARGS & 0xFF)
                                            ^^PCI0.LPC0.EC.FDAT = 0x07
                                            ^^PCI0.LPC0.EC.FBUF = Local2
                                            ^^PCI0.LPC0.EC.FCMD = 0xCE
                                        }
                                        Else
                                        {
                                            Local0 = Ones
                                        }
                                    }
                                    Case (0x0A)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            Local4 = (Local2 & 0xFF)
                                            ^^PCI0.LPC0.EC.FDAT = Local4
                                            ^^PCI0.LPC0.EC.FCMD = 0xCF
                                        }
                                        Else
                                        {
                                            Local0 = Ones
                                        }
                                    }
                                    Case (0x0B)
                                    {
                                    }
                                    Case (0x0C)
                                    {
                                    }
                                    Case (0x0D)
                                    {
                                    }
                                    Case (0x0E)
                                    {
                                        ^^PCI0.LPC0.EC.XFAN = (Local2 & 0xFF)
                                    }
                                    Case (0x0F)
                                    {
                                        Local0 = (Local2 & 0xFF)
                                        If (Local0)
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x02
                                            ^^PCI0.LPC0.EC.FBUF = One
                                            ^^PCI0.LPC0.EC.FCMD = 0xCD
                                        }
                                        Else
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x02
                                            ^^PCI0.LPC0.EC.FBUF = Zero
                                            ^^PCI0.LPC0.EC.FCMD = 0xCD
                                        }
                                    }
                                    Case (0x10)
                                    {
                                    }
                                    Case (0x13)
                                    {
                                    }
                                    Case (0x15)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            Local2 = (ARGS & 0xFF)
                                            ^^PCI0.LPC0.EC.FDAT = Local2
                                            ^^PCI0.LPC0.EC.FCMD = 0xD3
                                        }
                                        Else
                                        {
                                            Local0 = Ones
                                        }
                                    }
                                    Case (0x17)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = (Local2 & 0xFF)
                                            ^^PCI0.LPC0.EC.FCMD = 0xD5
                                        }

                                        If ((NACT == One))
                                        {
                                            Local3 = Zero
                                            Local4 = Zero
                                            Local5 = Zero
                                            Local6 = Zero
                                            Local3 = (Local2 & 0x07)
                                            Local4 = (Local2 & 0x10)
                                            Local5 = (Local2 & 0x20)
                                            Local6 = (Local2 & 0x40)
                                            If ((((Local3 == 0x05) || (Local3 == 0x06)) || (Local3 == 0x07)))
                                            {
                                                ^^PCI0.LPC0.EC.ECTB = One
                                                ^^AC.ADJP (Zero)
                                            }
                                            ElseIf ((Local3 == 0x04)){}
                                            ElseIf ((Local3 == 0x03))
                                            {
                                                ^^PCI0.LPC0.EC.ECTB = One
                                                ^^AC.ADJP (Zero)
                                            }
                                            ElseIf ((Local4 == 0x10))
                                            {
                                                ^^PCI0.LPC0.EC.ECTB = One
                                                ^^AC.ADJP (Zero)
                                            }
                                            ElseIf ((Local5 == 0x20))
                                            {
                                                ^^PCI0.LPC0.EC.ECTB = One
                                                ^^AC.ADJP (Zero)
                                            }
                                            ElseIf ((Local6 == 0x40))
                                            {
                                                ^^PCI0.LPC0.EC.ECTB = One
                                                ^^AC.ADJP (Zero)
                                            }
                                            Else
                                            {
                                                ^^PCI0.LPC0.EC.ECTB = Zero
                                                ^^AC.ADJP (Zero)
                                            }
                                        }
                                    }
                                    Case (0x18)
                                    {
                                        If (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            If (((Local2 & 0xFF) == 0xFF))
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = (Local2 & 0xFF)
                                                ^^PCI0.LPC0.EC.FBUF = ((Local2 >> 0x10) & 0xFF)
                                                ^^PCI0.LPC0.EC.FBF1 = ((Local2 >> 0x08) & 0xFF)
                                                ^^PCI0.LPC0.EC.FCMD = 0xD4
                                            }
                                            Else
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = ToInteger (Local2)
                                                ^^PCI0.LPC0.EC.FCMD = 0xD4
                                            }
                                        }
                                    }
                                    Case (0x19)
                                    {
                                        Local2 = (Local2 & 0xFF)
                                        ^^PCI0.LPC0.CCMO = ToInteger (Local2)
                                        ^^PCI0.LPC0.DD25 ()
                                        Switch (ToInteger (Local2))
                                        {
                                            Case (Zero)
                                            {
                                                ^^PCI0.LPC0.EC.FBUF = 0x02
                                            }
                                            Case (One)
                                            {
                                                ^^PCI0.LPC0.EC.FBUF = 0x03
                                            }
                                            Case (0x02)
                                            {
                                                ^^PCI0.LPC0.EC.FBUF = One
                                            }
                                            Case (0x03)
                                            {
                                                ^^PCI0.LPC0.EC.FBUF = Zero
                                            }

                                        }

                                        ^^PCI0.LPC0.EC.FDAT = One
                                        ^^PCI0.LPC0.EC.FCMD = 0xD8
                                    }
                                    Case (0x1A)
                                    {
                                        If ((Local2 && One))
                                        {
                                            If (^^PCI0.LPC0.EC.ECOK)
                                            {
                                                ^^PCI0.LPC0.EC.AIRP |= 0x40
                                            }
                                        }
                                        ElseIf (^^PCI0.LPC0.EC.ECOK)
                                        {
                                            ^^PCI0.LPC0.EC.AIRP &= 0xBF
                                        }
                                    }
                                    Case (0x1E)
                                    {
                                        If ((Local2 == One))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0xC2
                                            ^^PCI0.LPC0.EC.FBUF = 0xAC
                                            ^^PCI0.LPC0.EC.FCMD = 0xB8
                                        }
                                        Else
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0xC3
                                            ^^PCI0.LPC0.EC.FBUF = 0xAC
                                            ^^PCI0.LPC0.EC.FCMD = 0xB8
                                        }
                                    }
                                    Case (0x20)
                                    {
                                        If ((Local2 && One))
                                        {
                                            ^^PCI0.LPC0.EC.WINF |= 0x08
                                        }
                                    }
                                    Case (0x22)
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = Zero
                                        ^^PCI0.LPC0.EC.FBUF = Zero
                                        ^^PCI0.LPC0.EC.FCMD = 0xD9
                                    }
                                    Case (0x2A)
                                    {
                                        If ((Local2 && One))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = One
                                            ^^PCI0.LPC0.EC.FCMD = 0xDC
                                        }
                                    }

                                }
                            }

                            If ((ToInteger (Arg1) == 0x13))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (ARGS)
                                    {
                                        ^^PCI0.LPC0.EC.ECKS |= 0x80
                                    }
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.ECKS &= 0x7F
                                    }
                                }

                                Local0 = 0x13
                            }

                            Return (Local0)
                        }

                        Method (PEVT, 3, Serialized)
                        {
                            S80H (Arg1)
                            ARGS = Zero
                            Name (WMIG, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            Name (CLR1, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            Name (TMP1, Buffer (0x0100)
                            {
                                 0x00                                             // .
                            })
                            Name (CNT1, Zero)
                            Name (ADR1, Buffer (0x04)
                            {
                                 0x00                                             // .
                            })
                            Name (SUB8, Buffer (0x20)
                            {
                                 0x00                                             // .
                            })
                            Name (SUB9, Buffer (0x0F)
                            {
                                 0x00                                             // .
                            })
                            Name (SB32, Buffer (0x10)
                            {
                                 0x00                                             // .
                            })
                            CreateByteField (ADR1, Zero, AD00)
                            CreateByteField (ADR1, One, AD01)
                            CreateByteField (ADR1, 0x02, AD02)
                            CreateByteField (ADR1, 0x03, AD03)
                            CreateWordField (ADR1, Zero, ADW0)
                            WMIG = DerefOf (Arg2 [Zero])
                            CreateByteField (WMIG, Zero, ZE00)
                            CreateByteField (WMIG, One, ZE01)
                            CreateByteField (WMIG, 0x02, ZE02)
                            CreateByteField (WMIG, 0x03, ZE03)
                            CreateByteField (WMIG, 0x04, ZE04)
                            CreateByteField (WMIG, 0x05, ZE05)
                            CreateByteField (WMIG, 0x06, ZE06)
                            CreateByteField (WMIG, 0x07, ZE07)
                            CreateByteField (WMIG, 0x08, ZE08)
                            CreateByteField (WMIG, 0x09, ZE09)
                            CreateByteField (WMIG, 0x0A, ZE0A)
                            CreateByteField (WMIG, 0x0B, ZE0B)
                            CreateByteField (WMIG, 0x0C, ZE0C)
                            CreateByteField (WMIG, 0x0D, ZE0D)
                            CreateByteField (WMIG, 0x0E, ZE0E)
                            CreateByteField (WMIG, 0x0F, ZE0F)
                            CreateByteField (WMIG, 0x10, ZE10)
                            CreateByteField (WMIG, 0x11, ZE11)
                            CreateByteField (WMIG, 0x12, ZE12)
                            CreateByteField (WMIG, 0x13, ZE13)
                            CreateByteField (WMIG, 0x14, ZE14)
                            CreateByteField (WMIG, 0x15, ZE15)
                            CreateByteField (WMIG, 0x16, ZE16)
                            CreateByteField (WMIG, 0x17, ZE17)
                            CreateByteField (WMIG, 0x18, ZE18)
                            CreateByteField (WMIG, 0x19, ZE19)
                            CreateByteField (WMIG, 0x1A, ZE1A)
                            CreateByteField (WMIG, 0x1B, ZE1B)
                            CreateByteField (WMIG, 0x1C, ZE1C)
                            CreateByteField (WMIG, 0x1D, ZE1D)
                            CreateByteField (WMIG, 0x1E, ZE1E)
                            CreateByteField (WMIG, 0x1F, ZE1F)
                            CreateByteField (WMIG, 0x20, ZE20)
                            CreateByteField (WMIG, 0x21, ZE21)
                            CreateByteField (WMIG, 0x22, ZE22)
                            CreateByteField (WMIG, 0x23, ZE23)
                            CreateByteField (WMIG, 0x24, ZE24)
                            CreateByteField (WMIG, 0x25, ZE25)
                            CreateByteField (WMIG, 0x26, ZE26)
                            CreateByteField (SUB8, Zero, SU00)
                            CreateByteField (SUB8, One, SU01)
                            CreateDWordField (SUB8, 0x02, SU02)
                            CreateDWordField (SUB8, 0x06, SU06)
                            CreateWordField (SUB8, 0x0A, SU0A)
                            CreateByteField (SUB8, 0x0C, SU0C)
                            CreateWordField (SUB8, 0x0D, SU0D)
                            CreateByteField (SUB8, 0x0F, SU0F)
                            CreateByteField (SUB8, 0x10, SU10)
                            CreateByteField (SUB8, 0x11, SU11)
                            CreateByteField (SUB8, 0x12, SU12)
                            CreateByteField (SUB8, 0x13, SU13)
                            CreateByteField (SUB8, 0x14, SU14)
                            CreateByteField (SUB8, 0x15, SU15)
                            CreateByteField (SUB8, 0x16, SU16)
                            CreateByteField (SUB8, 0x17, SU17)
                            CreateByteField (SUB8, 0x18, SU18)
                            CreateWordField (SUB9, Zero, S900)
                            CreateWordField (SUB9, 0x02, S901)
                            CreateWordField (SUB9, 0x04, S902)
                            CreateWordField (SUB9, 0x06, S903)
                            CreateWordField (SUB9, 0x08, S904)
                            CreateWordField (SUB9, 0x0A, S905)
                            CreateWordField (SUB9, 0x0C, S906)
                            CreateWordField (SUB9, 0x0E, S907)
                            CreateByteField (SB32, Zero, S320)
                            CreateByteField (SB32, One, S321)
                            CreateByteField (SB32, 0x02, S322)
                            CreateByteField (SB32, 0x03, S323)
                            CreateByteField (SB32, 0x04, S324)
                            CreateByteField (SB32, 0x05, S325)
                            CreateByteField (SB32, 0x06, S326)
                            CreateByteField (SB32, 0x07, S327)
                            CreateByteField (SB32, 0x08, S328)
                            CreateByteField (SB32, 0x09, S329)
                            CreateByteField (SB32, 0x0A, S32A)
                            CreateByteField (SB32, 0x0B, S32B)
                            CreateByteField (SB32, 0x0C, S32C)
                            CreateByteField (SB32, 0x0D, S32D)
                            CreateByteField (SB32, 0x0E, S32E)
                            CreateByteField (SB32, 0x0F, S32F)
                            CreateWordField (WMIG, One, ZEW1)
                            Switch (ToInteger (ZE00))
                            {
                                Case (One)
                                {
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                    ^^PCI0.LPC0.EC.FDAT = Zero
                                    ^^PCI0.LPC0.EC.FBUF = Zero
                                    ^^PCI0.LPC0.EC.FBF1 = Zero
                                    ^^PCI0.LPC0.EC.FBF2 = Zero
                                    ^^PCI0.LPC0.EC.FBF3 = Zero
                                    If (ZE07)
                                    {
                                        AD01 = ZE01 /* \_SB_.DCHU.PEVT.ZE01 */
                                        AD00 = ZE02 /* \_SB_.DCHU.PEVT.ZE02 */
                                        CNT1 = Zero
                                        While (ZE07)
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = AD01 /* \_SB_.DCHU.PEVT.AD01 */
                                            ^^PCI0.LPC0.EC.FBUF = AD00 /* \_SB_.DCHU.PEVT.AD00 */
                                            ^^PCI0.LPC0.EC.FBF1 = ZE03 /* \_SB_.DCHU.PEVT.ZE03 */
                                            ^^PCI0.LPC0.EC.FCMD = ZE06 /* \_SB_.DCHU.PEVT.ZE06 */
                                            If ((ZE03 == 0x23))
                                            {
                                                If ((ZE07 > 0x40))
                                                {
                                                    Break
                                                }

                                                ADW0 += 0x04
                                                TMP1 [CNT1] = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                                CNT1++
                                                TMP1 [CNT1] = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                                CNT1++
                                                TMP1 [CNT1] = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                                CNT1++
                                                TMP1 [CNT1] = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                                CNT1++
                                            }
                                            Else
                                            {
                                                If ((ZE07 > 0x80))
                                                {
                                                    Break
                                                }

                                                ADW0 += 0x02
                                                TMP1 [CNT1] = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                                CNT1++
                                                TMP1 [CNT1] = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                                CNT1++
                                            }

                                            ZE07--
                                        }

                                        WMIG = CLR1 /* \_SB_.DCHU.PEVT.CLR1 */
                                        WMIG = TMP1 /* \_SB_.DCHU.PEVT.TMP1 */
                                    }
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = ZE01 /* \_SB_.DCHU.PEVT.ZE01 */
                                        ^^PCI0.LPC0.EC.FBUF = ZE02 /* \_SB_.DCHU.PEVT.ZE02 */
                                        ^^PCI0.LPC0.EC.FBF1 = ZE03 /* \_SB_.DCHU.PEVT.ZE03 */
                                        ^^PCI0.LPC0.EC.FBF2 = ZE04 /* \_SB_.DCHU.PEVT.ZE04 */
                                        ^^PCI0.LPC0.EC.FBF3 = ZE05 /* \_SB_.DCHU.PEVT.ZE05 */
                                        ^^PCI0.LPC0.EC.FCMD = ZE06 /* \_SB_.DCHU.PEVT.ZE06 */
                                        WMIG = CLR1 /* \_SB_.DCHU.PEVT.CLR1 */
                                        ZE00 = ^^PCI0.LPC0.EC.FCMD /* \_SB_.PCI0.LPC0.EC__.FCMD */
                                        ZE01 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                        ZE02 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                        ZE03 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                        ZE04 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                        ZE05 = ^^PCI0.LPC0.EC.FBF3 /* \_SB_.PCI0.LPC0.EC__.FBF3 */
                                    }

                                    Return (WMIG) /* \_SB_.DCHU.PEVT.WMIG */
                                }
                                Case (0x02)
                                {
                                    If ((ToInteger (ZE03) == 0x03))
                                    {
                                        ^^PCI0.LPC0.EC.VER1 = ZE05 /* \_SB_.DCHU.PEVT.ZE05 */
                                        ^^PCI0.LPC0.EC.VER2 = ZE06 /* \_SB_.DCHU.PEVT.ZE06 */
                                        ^^PCI0.LPC0.EC.RSV1 = ZE07 /* \_SB_.DCHU.PEVT.ZE07 */
                                        ^^PCI0.LPC0.EC.RSV2 = ZE08 /* \_SB_.DCHU.PEVT.ZE08 */
                                        ^^PCI0.LPC0.EC.CCI0 = ZE09 /* \_SB_.DCHU.PEVT.ZE09 */
                                        ^^PCI0.LPC0.EC.CCI1 = ZE0A /* \_SB_.DCHU.PEVT.ZE0A */
                                        ^^PCI0.LPC0.EC.CCI2 = ZE0B /* \_SB_.DCHU.PEVT.ZE0B */
                                        ^^PCI0.LPC0.EC.CCI3 = ZE0C /* \_SB_.DCHU.PEVT.ZE0C */
                                        ^^PCI0.LPC0.EC.CTL0 = ZE0D /* \_SB_.DCHU.PEVT.ZE0D */
                                        ^^PCI0.LPC0.EC.CTL1 = ZE0E /* \_SB_.DCHU.PEVT.ZE0E */
                                        ^^PCI0.LPC0.EC.CTL2 = ZE0F /* \_SB_.DCHU.PEVT.ZE0F */
                                        ^^PCI0.LPC0.EC.CTL3 = ZE10 /* \_SB_.DCHU.PEVT.ZE10 */
                                        ^^PCI0.LPC0.EC.CTL4 = ZE11 /* \_SB_.DCHU.PEVT.ZE11 */
                                        ^^PCI0.LPC0.EC.CTL5 = ZE12 /* \_SB_.DCHU.PEVT.ZE12 */
                                        ^^PCI0.LPC0.EC.CTL6 = ZE13 /* \_SB_.DCHU.PEVT.ZE13 */
                                        ^^PCI0.LPC0.EC.CTL7 = ZE14 /* \_SB_.DCHU.PEVT.ZE14 */
                                        ^^PCI0.LPC0.EC.MGI0 = ZE15 /* \_SB_.DCHU.PEVT.ZE15 */
                                        ^^PCI0.LPC0.EC.MGI1 = ZE16 /* \_SB_.DCHU.PEVT.ZE16 */
                                        ^^PCI0.LPC0.EC.MGI2 = ZE17 /* \_SB_.DCHU.PEVT.ZE17 */
                                        ^^PCI0.LPC0.EC.MGI3 = ZE18 /* \_SB_.DCHU.PEVT.ZE18 */
                                        ^^PCI0.LPC0.EC.MGI4 = ZE19 /* \_SB_.DCHU.PEVT.ZE19 */
                                        ^^PCI0.LPC0.EC.MGI5 = ZE1A /* \_SB_.DCHU.PEVT.ZE1A */
                                        ^^PCI0.LPC0.EC.MGI6 = ZE1B /* \_SB_.DCHU.PEVT.ZE1B */
                                        ^^PCI0.LPC0.EC.MGI7 = ZE1C /* \_SB_.DCHU.PEVT.ZE1C */
                                        ^^PCI0.LPC0.EC.MGI8 = ZE1D /* \_SB_.DCHU.PEVT.ZE1D */
                                        ^^PCI0.LPC0.EC.MGI9 = ZE1E /* \_SB_.DCHU.PEVT.ZE1E */
                                        ^^PCI0.LPC0.EC.MGIA = ZE1F /* \_SB_.DCHU.PEVT.ZE1F */
                                        ^^PCI0.LPC0.EC.MGIB = ZE20 /* \_SB_.DCHU.PEVT.ZE20 */
                                        ^^PCI0.LPC0.EC.MGIC = ZE21 /* \_SB_.DCHU.PEVT.ZE21 */
                                        ^^PCI0.LPC0.EC.MGID = ZE22 /* \_SB_.DCHU.PEVT.ZE22 */
                                        ^^PCI0.LPC0.EC.MGIE = ZE23 /* \_SB_.DCHU.PEVT.ZE23 */
                                        ^^PCI0.LPC0.EC.MGIF = ZE24 /* \_SB_.DCHU.PEVT.ZE24 */
                                        ^^PCI0.LPC0.EC.MGO0 = ZE25 /* \_SB_.DCHU.PEVT.ZE25 */
                                        ^^PCI0.LPC0.EC.PDE0 = One
                                        ^^PCI0.LPC0.EC.PDE1 = Zero
                                    }

                                    If ((ToInteger (ZE03) == 0x04))
                                    {
                                        ^^PCI0.LPC0.EC.VER1 = ZE05 /* \_SB_.DCHU.PEVT.ZE05 */
                                        ^^PCI0.LPC0.EC.VER2 = ZE06 /* \_SB_.DCHU.PEVT.ZE06 */
                                        ^^PCI0.LPC0.EC.RSV1 = ZE07 /* \_SB_.DCHU.PEVT.ZE07 */
                                        ^^PCI0.LPC0.EC.RSV2 = ZE08 /* \_SB_.DCHU.PEVT.ZE08 */
                                        ^^PCI0.LPC0.EC.CCI0 = ZE09 /* \_SB_.DCHU.PEVT.ZE09 */
                                        ^^PCI0.LPC0.EC.CCI1 = ZE0A /* \_SB_.DCHU.PEVT.ZE0A */
                                        ^^PCI0.LPC0.EC.CCI2 = ZE0B /* \_SB_.DCHU.PEVT.ZE0B */
                                        ^^PCI0.LPC0.EC.CCI3 = ZE0C /* \_SB_.DCHU.PEVT.ZE0C */
                                        ^^PCI0.LPC0.EC.CTL0 = ZE0D /* \_SB_.DCHU.PEVT.ZE0D */
                                        ^^PCI0.LPC0.EC.CTL1 = ZE0E /* \_SB_.DCHU.PEVT.ZE0E */
                                        ^^PCI0.LPC0.EC.CTL2 = ZE0F /* \_SB_.DCHU.PEVT.ZE0F */
                                        ^^PCI0.LPC0.EC.CTL3 = ZE10 /* \_SB_.DCHU.PEVT.ZE10 */
                                        ^^PCI0.LPC0.EC.CTL4 = ZE11 /* \_SB_.DCHU.PEVT.ZE11 */
                                        ^^PCI0.LPC0.EC.CTL5 = ZE12 /* \_SB_.DCHU.PEVT.ZE12 */
                                        ^^PCI0.LPC0.EC.CTL6 = ZE13 /* \_SB_.DCHU.PEVT.ZE13 */
                                        ^^PCI0.LPC0.EC.CTL7 = ZE14 /* \_SB_.DCHU.PEVT.ZE14 */
                                        ^^PCI0.LPC0.EC.MGI0 = ZE15 /* \_SB_.DCHU.PEVT.ZE15 */
                                        ^^PCI0.LPC0.EC.MGI1 = ZE16 /* \_SB_.DCHU.PEVT.ZE16 */
                                        ^^PCI0.LPC0.EC.MGI2 = ZE17 /* \_SB_.DCHU.PEVT.ZE17 */
                                        ^^PCI0.LPC0.EC.MGI3 = ZE18 /* \_SB_.DCHU.PEVT.ZE18 */
                                        ^^PCI0.LPC0.EC.MGI4 = ZE19 /* \_SB_.DCHU.PEVT.ZE19 */
                                        ^^PCI0.LPC0.EC.MGI5 = ZE1A /* \_SB_.DCHU.PEVT.ZE1A */
                                        ^^PCI0.LPC0.EC.MGI6 = ZE1B /* \_SB_.DCHU.PEVT.ZE1B */
                                        ^^PCI0.LPC0.EC.MGI7 = ZE1C /* \_SB_.DCHU.PEVT.ZE1C */
                                        ^^PCI0.LPC0.EC.MGI8 = ZE1D /* \_SB_.DCHU.PEVT.ZE1D */
                                        ^^PCI0.LPC0.EC.MGI9 = ZE1E /* \_SB_.DCHU.PEVT.ZE1E */
                                        ^^PCI0.LPC0.EC.MGIA = ZE1F /* \_SB_.DCHU.PEVT.ZE1F */
                                        ^^PCI0.LPC0.EC.MGIB = ZE20 /* \_SB_.DCHU.PEVT.ZE20 */
                                        ^^PCI0.LPC0.EC.MGIC = ZE21 /* \_SB_.DCHU.PEVT.ZE21 */
                                        ^^PCI0.LPC0.EC.MGID = ZE22 /* \_SB_.DCHU.PEVT.ZE22 */
                                        ^^PCI0.LPC0.EC.MGIE = ZE23 /* \_SB_.DCHU.PEVT.ZE23 */
                                        ^^PCI0.LPC0.EC.MGIF = ZE24 /* \_SB_.DCHU.PEVT.ZE24 */
                                        ^^PCI0.LPC0.EC.MGO0 = ZE25 /* \_SB_.DCHU.PEVT.ZE25 */
                                        ^^PCI0.LPC0.EC.PDE0 = One
                                        ^^PCI0.LPC0.EC.PDE1 = One
                                    }

                                    Return (WMIG) /* \_SB_.DCHU.PEVT.WMIG */
                                }
                                Case (0x08)
                                {
                                    SU00 |= One
                                    SU01 |= Zero
                                    SU0F |= 0x92
                                    Local0 = 0x25
                                    If (((OEMF & 0x0400) || (OEMF & 0x0600)))
                                    {
                                        Local0 |= 0x00200000
                                    }

                                    If ((OEMF & 0x1000))
                                    {
                                        Local0 |= 0x02
                                    }

                                    If ((ECBL == Zero))
                                    {
                                        Local0 |= 0x04000000
                                    }

                                    If ((LKFG & One))
                                    {
                                        Local0 |= 0x00400000
                                    }

                                    If ((LKFG & 0x08))
                                    {
                                        Local0 |= 0x02000000
                                    }

                                    If ((LKFG & 0x02))
                                    {
                                        Local0 |= 0x20000000
                                    }

                                    If ((LKFG & 0x10))
                                    {
                                        Local0 |= 0x40000000
                                    }

                                    SU02 |= Local0
                                    SU06 |= 0x00012345
                                    If ((^^PCI0.LPC0.EC.RINF & 0x10))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x91
                                        ^^PCI0.LPC0.EC.FCMD = 0xD2
                                        Local0 = 0x1C
                                    }
                                    Else
                                    {
                                        Local0 = 0x0C
                                    }

                                    Local0 |= 0x0200
                                    SU0A |= Local0
                                    SU0C |= Zero
                                    DCTP |= LKFG /* \LKFG */
                                    Local0 = DCTP /* \DCTP */
                                    SU0D |= Local0
                                    SU10 = Zero
                                    SU13 |= 0x10
                                    Local0 = SUB8 /* \_SB_.DCHU.PEVT.SUB8 */
                                    Return (Local0)
                                }
                                Case (0x09)
                                {
                                    S901 = 0x0618
                                    S902 = Zero
                                    S903 = Zero
                                    S904 = 0x0618
                                    Local0 = SUB9 /* \_SB_.DCHU.PEVT.SUB9 */
                                    Return (Local0)
                                }
                                Case (0x20)
                                {
                                    S320 = One
                                    Local0 = SB32 /* \_SB_.DCHU.PEVT.SB32 */
                                    Return (Local0)
                                }
                                Case (0x0C)
                                {
                                    WMIG = Zero
                                    WMIG = EDID /* \EDID */
                                    Return (WMIG) /* \_SB_.DCHU.PEVT.WMIG */
                                }

                            }
                        }
                    }

                    Device (DCHP)
                    {
                        Name (_HID, "CLV0002")  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }
                }

                Device (WMI)
                {
                    Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (INDX, Zero)
                    Name (_WDG, Buffer (0x3C)
                    {
                        /* 0000 */  0x6D, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // m.......
                        /* 0008 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                        /* 0010 */  0x42, 0x42, 0x01, 0x02, 0x6B, 0x0F, 0xBC, 0xAB,  // BB..k...
                        /* 0018 */  0xA1, 0x8E, 0xD1, 0x11, 0x00, 0xA0, 0xC9, 0x06,  // ........
                        /* 0020 */  0x29, 0x10, 0x00, 0x00, 0xD0, 0x00, 0x01, 0x08,  // ).......
                        /* 0028 */  0x6C, 0x0F, 0xBC, 0xAB, 0xA1, 0x8E, 0xD1, 0x11,  // l.......
                        /* 0030 */  0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10, 0x00, 0x00,  // ....)...
                        /* 0038 */  0xD1, 0x00, 0x01, 0x08                           // ....
                    })
                    Name (EVNT, Zero)
                    Name (EVID, Zero)
                    Name (HKDR, Zero)
                    Name (ARGS, Zero)
                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        HKDR = Zero
                    }

                    Method (GHPI, 0, NotSerialized)
                    {
                        If (^^PCI0.LPC0.EC.ECOK)
                        {
                            ^^PCI0.LPC0.EC.FDAT = 0x71
                            ^^PCI0.LPC0.EC.FCMD = 0xD2
                            Local0 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        }
                        Else
                        {
                            Local0 = Ones
                        }

                        Return (Local0)
                    }

                    Method (WMBB, 3, NotSerialized)
                    {
                        Local1 = Acquire (^^PCI0.LPC0.EC.PATM, 0x0064)
                        If ((Local1 == Zero))
                        {
                            If ((ToInteger (Arg1) == 0x0C))
                            {
                                Local0 = DEVT (Arg0, Arg1, Arg2)
                                Release (^^PCI0.LPC0.EC.PATM)
                                Return (Local0)
                            }
                            ElseIf ((ToInteger (Arg1) == 0x0D))
                            {
                                Local0 = EEVT (Arg0, Arg1, Arg2)
                                Release (^^PCI0.LPC0.EC.PATM)
                                Return (Local0)
                            }
                            ElseIf ((ToInteger (Arg1) == 0x0E))
                            {
                                Local0 = FEVT (Arg0, Arg1, Arg2)
                                Release (^^PCI0.LPC0.EC.PATM)
                                Return (Local0)
                            }
                            ElseIf ((ToInteger (Arg1) == 0x11)){}
                            Else
                            {
                                Local0 = ZEVT (Arg0, Arg1, Arg2)
                                Release (^^PCI0.LPC0.EC.PATM)
                                Return (Local0)
                            }
                        }
                    }

                    Method (DEVT, 3, NotSerialized)
                    {
                        ARGS = Zero
                        Name (WMIG, Buffer (0x0100)
                        {
                             0x00                                             // .
                        })
                        CreateWordField (WMIG, Zero, DE00)
                        CreateWordField (WMIG, 0x02, DE01)
                        CreateWordField (WMIG, 0x04, DE02)
                        CreateWordField (WMIG, 0x06, DE03)
                        CreateWordField (WMIG, 0x08, DE04)
                        CreateDWordField (WMIG, 0x0A, DE05)
                        CreateWordField (WMIG, 0x0E, DE06)
                        CreateByteField (WMIG, 0x10, DE07)
                        CreateByteField (WMIG, 0x11, DE08)
                        CreateByteField (WMIG, 0x12, DE09)
                        CreateByteField (WMIG, 0x13, DE0A)
                        CreateByteField (WMIG, 0x14, DE0B)
                        CreateByteField (WMIG, 0x15, DE0C)
                        CreateByteField (WMIG, 0x16, DE0D)
                        CreateByteField (WMIG, 0x17, DE0E)
                        CreateByteField (WMIG, 0x18, DE0F)
                        CreateByteField (WMIG, 0x19, DE10)
                        DE00 = Zero
                        ^^PCI0.LPC0.EC.FDAT = 0x03
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        Local1 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        Local0 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                        DE01 = ((Local0 << 0x08) | Local1)
                        ^^PCI0.LPC0.EC.FDAT = 0x04
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE02 = ((Local0 << 0x08) | Local1)
                        ^^PCI0.LPC0.EC.FDAT = 0x05
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE03 = ((Local0 << 0x08) | Local1)
                        ^^PCI0.LPC0.EC.FDAT = 0x02
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE04 = ((Local1 << 0x08) | Local0)
                        ^^PCI0.LPC0.EC.FDAT = 0x07
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE05 = ((Local1 << 0x08) | Local0)
                        ^^PCI0.LPC0.EC.FDAT = 0x08
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE06 = ((Local1 << 0x08) | Local0)
                        ^^PCI0.LPC0.EC.FDAT = 0x02
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        DE08 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                        ^^PCI0.LPC0.EC.FDAT = 0x03
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        DE07 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        DE09 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                        ^^PCI0.LPC0.EC.FDAT = Zero
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        DE0A = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                        DE0B = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE0C = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        ^^PCI0.LPC0.EC.FDAT = One
                        ^^PCI0.LPC0.EC.FCMD = 0xC0
                        DE0D = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                        DE0E = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        DE0F = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                        DE10 = ((^^PCI0.LPC0.EC.AIRP >> 0x07) & One)
                        Return (WMIG) /* \_SB_.WMI_.DEVT.WMIG */
                    }

                    Method (EEVT, 3, NotSerialized)
                    {
                        ARGS = Zero
                        Name (WMIG, Buffer (0x0100)
                        {
                             0x00                                             // .
                        })
                        CreateWordField (WMIG, Zero, EE00)
                        CreateByteField (WMIG, 0x02, EE02)
                        CreateByteField (WMIG, 0x03, EE03)
                        CreateByteField (WMIG, 0x04, EE04)
                        CreateByteField (WMIG, 0x05, EE05)
                        CreateByteField (WMIG, 0x06, EE06)
                        CreateByteField (WMIG, 0x07, EE07)
                        CreateByteField (WMIG, 0x08, EE08)
                        CreateByteField (WMIG, 0x09, EE09)
                        CreateByteField (WMIG, 0x0A, EE0A)
                        CreateByteField (WMIG, 0x0B, EE0B)
                        CreateByteField (WMIG, 0x0C, EE0C)
                        CreateByteField (WMIG, 0x0D, EE0D)
                        CreateByteField (WMIG, 0x0E, EE0E)
                        CreateByteField (WMIG, 0x0F, EE0F)
                        CreateByteField (WMIG, 0x10, EE10)
                        CreateByteField (WMIG, 0x11, EE11)
                        CreateByteField (WMIG, 0x12, EE12)
                        CreateByteField (WMIG, 0x13, EE13)
                        CreateByteField (WMIG, 0x14, EE14)
                        CreateByteField (WMIG, 0x15, EE15)
                        CreateByteField (WMIG, 0x16, EE16)
                        CreateByteField (WMIG, 0x17, EE17)
                        CreateByteField (WMIG, 0x18, EE18)
                        CreateByteField (WMIG, 0x19, EE19)
                        CreateByteField (WMIG, 0x1A, EE1A)
                        CreateByteField (WMIG, 0x1B, EE1B)
                        CreateByteField (WMIG, 0x1C, EE1C)
                        CreateByteField (WMIG, 0x1D, EE1D)
                        CreateByteField (WMIG, 0x1E, EE1E)
                        CreateByteField (WMIG, 0x1F, EE1F)
                        CreateByteField (WMIG, 0x20, EE20)
                        CreateByteField (WMIG, 0x21, EE21)
                        CreateByteField (WMIG, 0x22, EE22)
                        CreateByteField (WMIG, 0x23, EE23)
                        CreateByteField (WMIG, 0x24, EE24)
                        CreateByteField (WMIG, 0x25, EE25)
                        CreateByteField (WMIG, 0x26, EE26)
                        CreateByteField (WMIG, 0x27, EE27)
                        CreateWordField (WMIG, 0x28, EE28)
                        CreateByteField (WMIG, 0x2A, EE2A)
                        CreateByteField (WMIG, 0x2B, EE2B)
                        EE2B = ^^PCI0.LPC0.EC.KPCR /* \_SB_.PCI0.LPC0.EC__.KPCR */
                        Return (WMIG) /* \_SB_.WMI_.EEVT.WMIG */
                    }

                    Method (FEVT, 3, NotSerialized)
                    {
                        ARGS = Zero
                        Name (WMIG, Buffer (0x0100)
                        {
                             0x00                                             // .
                        })
                        WMIG = Arg2
                        CreateWordField (Arg2, Zero, FE00)
                        CreateByteField (Arg2, 0x02, FE02)
                        CreateByteField (Arg2, 0x03, FE03)
                        CreateByteField (Arg2, 0x04, FE04)
                        CreateByteField (Arg2, 0x05, FE05)
                        CreateByteField (Arg2, 0x06, FE06)
                        CreateByteField (Arg2, 0x07, FE07)
                        CreateByteField (Arg2, 0x08, FE08)
                        CreateByteField (Arg2, 0x09, FE09)
                        CreateByteField (Arg2, 0x0A, FE0A)
                        CreateByteField (Arg2, 0x0B, FE0B)
                        CreateByteField (Arg2, 0x0C, FE0C)
                        CreateByteField (Arg2, 0x0D, FE0D)
                        CreateByteField (Arg2, 0x0E, FE0E)
                        CreateByteField (Arg2, 0x0F, FE0F)
                        CreateByteField (Arg2, 0x10, FE10)
                        CreateByteField (Arg2, 0x11, FE11)
                        CreateByteField (Arg2, 0x12, FE12)
                        CreateByteField (Arg2, 0x13, FE13)
                        CreateByteField (Arg2, 0x14, FE14)
                        CreateByteField (Arg2, 0x15, FE15)
                        CreateByteField (Arg2, 0x16, FE16)
                        CreateByteField (Arg2, 0x17, FE17)
                        CreateByteField (Arg2, 0x18, FE18)
                        CreateByteField (Arg2, 0x19, FE19)
                        CreateByteField (Arg2, 0x1A, FE1A)
                        CreateByteField (Arg2, 0x1B, FE1B)
                        CreateByteField (Arg2, 0x1C, FE1C)
                        CreateByteField (Arg2, 0x1D, FE1D)
                        CreateByteField (Arg2, 0x1E, FE1E)
                        CreateByteField (Arg2, 0x1F, FE1F)
                        FE00 = Zero
                        ^^PCI0.LPC0.EC.P2F1 = FE02 /* \_SB_.WMI_.FEVT.FE02 */
                        ^^PCI0.LPC0.EC.P2D1 = FE03 /* \_SB_.WMI_.FEVT.FE03 */
                        ^^PCI0.LPC0.EC.P3F1 = FE04 /* \_SB_.WMI_.FEVT.FE04 */
                        ^^PCI0.LPC0.EC.P3D1 = FE05 /* \_SB_.WMI_.FEVT.FE05 */
                        ^^PCI0.LPC0.EC.P2F2 = FE06 /* \_SB_.WMI_.FEVT.FE06 */
                        ^^PCI0.LPC0.EC.P2D2 = FE07 /* \_SB_.WMI_.FEVT.FE07 */
                        ^^PCI0.LPC0.EC.P3F2 = FE08 /* \_SB_.WMI_.FEVT.FE08 */
                        ^^PCI0.LPC0.EC.P3D2 = FE09 /* \_SB_.WMI_.FEVT.FE09 */
                        ^^PCI0.LPC0.EC.P2F3 = FE0A /* \_SB_.WMI_.FEVT.FE0A */
                        ^^PCI0.LPC0.EC.P2D3 = FE0B /* \_SB_.WMI_.FEVT.FE0B */
                        ^^PCI0.LPC0.EC.P3F3 = FE0C /* \_SB_.WMI_.FEVT.FE0C */
                        ^^PCI0.LPC0.EC.P3D3 = FE0D /* \_SB_.WMI_.FEVT.FE0D */
                        ^^PCI0.LPC0.EC.SH11 = FE0E /* \_SB_.WMI_.FEVT.FE0E */
                        ^^PCI0.LPC0.EC.SL11 = FE0F /* \_SB_.WMI_.FEVT.FE0F */
                        ^^PCI0.LPC0.EC.SH12 = FE10 /* \_SB_.WMI_.FEVT.FE10 */
                        ^^PCI0.LPC0.EC.SL12 = FE11 /* \_SB_.WMI_.FEVT.FE11 */
                        ^^PCI0.LPC0.EC.SH13 = FE12 /* \_SB_.WMI_.FEVT.FE12 */
                        ^^PCI0.LPC0.EC.SL13 = FE13 /* \_SB_.WMI_.FEVT.FE13 */
                        ^^PCI0.LPC0.EC.SH21 = FE14 /* \_SB_.WMI_.FEVT.FE14 */
                        ^^PCI0.LPC0.EC.SL21 = FE15 /* \_SB_.WMI_.FEVT.FE15 */
                        ^^PCI0.LPC0.EC.SH22 = FE16 /* \_SB_.WMI_.FEVT.FE16 */
                        ^^PCI0.LPC0.EC.SL22 = FE17 /* \_SB_.WMI_.FEVT.FE17 */
                        ^^PCI0.LPC0.EC.SH23 = FE18 /* \_SB_.WMI_.FEVT.FE18 */
                        ^^PCI0.LPC0.EC.SL23 = FE19 /* \_SB_.WMI_.FEVT.FE19 */
                        ^^PCI0.LPC0.EC.SH31 = FE1A /* \_SB_.WMI_.FEVT.FE1A */
                        ^^PCI0.LPC0.EC.SL31 = FE1B /* \_SB_.WMI_.FEVT.FE1B */
                        ^^PCI0.LPC0.EC.SH32 = FE1C /* \_SB_.WMI_.FEVT.FE1C */
                        ^^PCI0.LPC0.EC.SL32 = FE1D /* \_SB_.WMI_.FEVT.FE1D */
                        ^^PCI0.LPC0.EC.SH33 = FE1E /* \_SB_.WMI_.FEVT.FE1E */
                        ^^PCI0.LPC0.EC.SL33 = FE1F /* \_SB_.WMI_.FEVT.FE1F */
                        Return (WMIG) /* \_SB_.WMI_.FEVT.WMIG */
                    }

                    Method (ZEVT, 3, Serialized)
                    {
                        ARGS = Zero
                        If (SizeOf (Arg2))
                        {
                            ARGS = Arg2
                        }

                        Local0 = Zero
                        If ((ToInteger (Arg1) == One))
                        {
                            If (HKDR)
                            {
                                Local0 = EVNT /* \_SB_.WMI_.EVNT */
                            }
                        }

                        If ((ToInteger (Arg1) == 0x03))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Local0 = ^^PCI0.LPC0.EC.TMP /* \_SB_.PCI0.LPC0.EC__.TMP_ */
                            }
                        }

                        If ((ToInteger (Arg1) == 0x04)){}
                        If ((ToInteger (Arg1) == 0x05))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    If ((^^PCI0.LPC0.EC.OEM3 & 0x08))
                                    {
                                        If ((Local1 & 0x02))
                                        {
                                            Local0 = One
                                        }
                                        Else
                                        {
                                            Local0 = Zero
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = 0x02
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x06))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    If ((^^PCI0.LPC0.EC.OEM3 & 0x04))
                                    {
                                        If ((Local1 & One))
                                        {
                                            Local0 = One
                                        }
                                        Else
                                        {
                                            Local0 = Zero
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = 0x02
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x07))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    If ((^^PCI0.LPC0.EC.OEM3 & 0x10))
                                    {
                                        If ((Local1 & 0x04))
                                        {
                                            Local0 = One
                                        }
                                        Else
                                        {
                                            Local0 = Zero
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = 0x02
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x08))
                        {
                            Local0 = GHPI ()
                        }

                        If ((ToInteger (Arg1) == 0x09))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    If ((Local1 & 0x10))
                                    {
                                        Local0 = One
                                    }
                                    Else
                                    {
                                        Local0 = Zero
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x0A))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    If ((^^PCI0.LPC0.EC.OEM3 & 0x20))
                                    {
                                        If ((Local1 & 0x08))
                                        {
                                            Local0 = One
                                        }
                                        Else
                                        {
                                            Local0 = Zero
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = 0x02
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x0B)){}
                        If ((ToInteger (Arg1) == 0x0C)){}
                        If ((ToInteger (Arg1) == 0x0D)){}
                        If ((ToInteger (Arg1) == 0x0E)){}
                        If ((ToInteger (Arg1) == 0x0F)){}
                        If ((ToInteger (Arg1) == 0x10))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x11))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    If ((Local1 & 0x40))
                                    {
                                        Local0 = One
                                    }
                                    Else
                                    {
                                        Local0 = Zero
                                    }

                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x12)){}
                        If ((ToInteger (Arg1) == 0x32))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Local0 = ^^PCI0.LPC0.EC.BDC0 /* \_SB_.PCI0.LPC0.EC__.BDC0 */
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x33))
                        {
                            If (^^PCI0.LPC0.EC.ECOK){}
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x34))
                        {
                            If (^^PCI0.LPC0.EC.ECOK){}
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x35))
                        {
                            Local0 = One
                        }

                        If ((ToInteger (Arg1) == 0x36))
                        {
                            Local0 = One
                        }

                        If ((ToInteger (Arg1) == 0x37))
                        {
                            Local0 = One
                        }

                        If ((ToInteger (Arg1) == 0x38))
                        {
                            Local0 = One
                        }

                        If ((ToInteger (Arg1) == 0x39))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x3A))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x3B))
                        {
                            Noop
                        }

                        If ((ToInteger (Arg1) == 0x3C)){}
                        If ((ToInteger (Arg1) == 0x3E))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x3F))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x40))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x41))
                        {
                            Local0 = Zero
                            ^^PCI0.LPC0.EC.FDAT = ((ARGS >> 0x18) & 0xFF)
                            ^^PCI0.LPC0.EC.FBUF = ((ARGS >> 0x10) & 0xFF)
                            ^^PCI0.LPC0.EC.FBF1 = ((ARGS >> 0x08) & 0xFF)
                            ^^PCI0.LPC0.EC.FCMD = (ARGS & 0xFF)
                            Local0 = Zero
                            Local0 |= ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                            Local0 |= (^^PCI0.LPC0.EC.FBUF << 0x08)
                            Local0 |= (^^PCI0.LPC0.EC.FBF1 << 0x10)
                            Local0 |= (^^PCI0.LPC0.EC.FBF2 << 0x18)
                        }

                        If ((ToInteger (Arg1) == 0x42))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                P80H = 0x66
                                Local0 = BKST /* \BKST */
                            }
                        }

                        If ((ToInteger (Arg1) == 0x43))
                        {
                            If (^^PCI0.LPC0.EC.ECOK){}
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x44))
                        {
                            ^^PCI0.LPC0.EC.FDAT = 0x03
                            ^^PCI0.LPC0.EC.FCMD = 0xCD
                            Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                        }

                        If ((ToInteger (Arg1) == 0x45))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x50)){}
                        If ((ToInteger (Arg1) == 0x51))
                        {
                            Noop
                        }

                        If ((ToInteger (Arg1) == 0x52))
                        {
                            Local0 = 0x25
                            If (((OEMF & 0x0400) || (OEMF & 0x0600)))
                            {
                                Local0 |= 0x00200000
                            }

                            If ((OEMF & 0x1000))
                            {
                                Local0 |= 0x02
                            }

                            If ((ECBL == Zero))
                            {
                                Local0 |= 0x04000000
                            }

                            If ((LKFG & One))
                            {
                                Local0 |= 0x00400000
                            }

                            If ((LKFG & 0x08))
                            {
                                Local0 |= 0x02000000
                            }

                            If ((LKFG & 0x02))
                            {
                                Local0 |= 0x20000000
                            }

                            If ((LKFG & 0x10))
                            {
                                Local0 |= 0x40000000
                            }
                        }

                        If ((ToInteger (Arg1) == 0x53)){}
                        If ((ToInteger (Arg1) == 0x54)){}
                        If ((ToInteger (Arg1) == 0x60))
                        {
                            Local0 = 0x0C
                            Local0 |= 0x0300
                        }

                        If ((ToInteger (Arg1) == 0x61))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0xA2
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                                If (One)
                                {
                                    Local0 = (^^PCI0.LPC0.EC.FDAT & One)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x62))
                        {
                            Local0 = Zero
                        }

                        If ((ToInteger (Arg1) == 0x63))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0x02
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                Local2 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                ^^PCI0.LPC0.EC.FDAT = 0x03
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                Local0 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                Local0 = ((Local0 << 0x08) | Local2)
                                Local0 = ((Local0 << 0x08) | Local1)
                                ^^PCI0.LPC0.EC.FCMD = Zero
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x64))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = Zero
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local0 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    Local2 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                    Local3 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                    Local0 = ((Local0 << 0x08) | Local2)
                                    Local0 = ((Local0 << 0x08) | Local3)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x6E))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = One
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local0 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    Local2 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                    Local3 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                    Local0 = ((Local0 << 0x08) | Local2)
                                    Local0 = ((Local0 << 0x08) | Local3)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x6F))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0x02
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    Local0 = ^^PCI0.LPC0.EC.FBF2 /* \_SB_.PCI0.LPC0.EC__.FBF2 */
                                    Local0 |= (Local0 << 0x08)
                                    Local0 = ((Local0 << 0x08) | Local1)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x70))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0x03
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                    Local0 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                    Local0 |= (Local1 << 0x08)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }

                                ^^PCI0.LPC0.EC.FDAT = 0x04
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local2 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    Local1 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                    Local1 |= (Local2 << 0x08)
                                    Local0 |= (Local1 << 0x10)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x71))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.FDAT = 0x05
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local1 = ^^PCI0.LPC0.EC.FDAT /* \_SB_.PCI0.LPC0.EC__.FDAT */
                                    Local0 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                    Local0 |= (Local1 << 0x08)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }

                                ^^PCI0.LPC0.EC.FDAT = 0x02
                                ^^PCI0.LPC0.EC.FCMD = 0xC0
                                If (One)
                                {
                                    Local2 = ^^PCI0.LPC0.EC.FBUF /* \_SB_.PCI0.LPC0.EC__.FBUF */
                                    Local1 = ^^PCI0.LPC0.EC.FBF1 /* \_SB_.PCI0.LPC0.EC__.FBF1 */
                                    Local1 |= (Local2 << 0x08)
                                    Local0 |= (Local1 << 0x10)
                                    ^^PCI0.LPC0.EC.FCMD = Zero
                                }
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x72)){}
                        If ((ToInteger (Arg1) == 0x73))
                        {
                            Local1 = (INDX & 0xFFFF)
                            Local2 = ((INDX >> 0x10) & 0xFFFF)
                            If ((Local2 > 0x02))
                            {
                                Local2 = Zero
                            }

                            If ((Local1 > 0xFF))
                            {
                                Return (Zero)
                            }

                            Local2 = (One << Local2)
                            Local3 = Local2
                            Local3--
                            If (((Local1 + Local3) > 0xFF))
                            {
                                Return (Zero)
                            }

                            Local0 = (Local1 + 0xFE500100)
                            Name (RBUF, Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                           // ....
                            })
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                OperationRegion (RH2M, SystemMemory, Local0, Local2)
                                Switch (ToInteger (Local2))
                                {
                                    Case (One)
                                    {
                                        Field (RH2M, ByteAcc, Lock, Preserve)
                                        {
                                            RHMB,   8
                                        }

                                        RBUF = RHMB /* \_SB_.WMI_.ZEVT.RHMB */
                                    }
                                    Case (0x02)
                                    {
                                        Field (RH2M, ByteAcc, Lock, Preserve)
                                        {
                                            RHMW,   16
                                        }

                                        RBUF = RHMW /* \_SB_.WMI_.ZEVT.RHMW */
                                    }
                                    Case (0x04)
                                    {
                                        Field (RH2M, ByteAcc, Lock, Preserve)
                                        {
                                            RHMD,   32
                                        }

                                        RBUF = RHMD /* \_SB_.WMI_.ZEVT.RHMD */
                                    }

                                }
                            }

                            Local0 = RBUF /* \_SB_.WMI_.ZEVT.RBUF */
                        }

                        If ((ToInteger (Arg1) == 0x76)){}
                        If ((ToInteger (Arg1) == 0x77))
                        {
                            Local0 = (BAEE >> One)
                            Local0 |= (BSCP << 0x08)
                            Local0 |= (BTCP << 0x10)
                        }

                        If ((ToInteger (Arg1) == 0x7A))
                        {
                            Local0 = 0x2041
                            Local0 |= 0x02
                            Local0 |= 0x10
                            Local0 |= 0x40
                            If ((LKFG & 0x10))
                            {
                                Local0 |= 0x10000000
                                Local0 |= 0x4000
                            }

                            Local0 |= 0x00020000
                            If (Zero)
                            {
                                Local0 |= 0x00800000
                            }
                            Else
                            {
                                Local0 &= 0xFF7FFFFF
                            }

                            Local0 &= 0xFFFF7FFF
                            Local0 &= 0xFFFEFFFF
                        }

                        If ((ToInteger (Arg1) == 0x14))
                        {
                            Local0 = 0x14
                        }

                        If ((ToInteger (Arg1) == 0x16))
                        {
                            Local0 = 0x16
                        }

                        If ((ToInteger (Arg1) == 0x17))
                        {
                            Local0 = 0x17
                        }

                        If ((ToInteger (Arg1) == 0x18))
                        {
                            Local0 = 0x18
                        }

                        If ((ToInteger (Arg1) == 0x19))
                        {
                            Local0 = 0x19
                        }

                        If ((ToInteger (Arg1) == 0x1A))
                        {
                            Local0 = 0x1A
                        }

                        If ((ToInteger (Arg1) == 0x1B))
                        {
                            Local0 = 0x1B
                        }

                        If ((ToInteger (Arg1) == 0x46))
                        {
                            HKDR = One
                            IOB2 = 0xC0
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If ((LKFG & One))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0x05
                                    ^^PCI0.LPC0.EC.FBUF = One
                                    ^^PCI0.LPC0.EC.FCMD = 0xC4
                                }

                                ^^PCI0.LPC0.EC.FDAT = 0x81
                                ^^PCI0.LPC0.EC.FBUF = 0x20
                                ^^PCI0.LPC0.EC.FCMD = 0xD2
                            }

                            If ((OEMF & 0x10))
                            {
                                Local0 |= One
                            }

                            If ((OEMF & 0x20))
                            {
                                Local0 |= 0x04
                            }

                            If ((OEMF & 0x2000))
                            {
                                Local0 |= 0x2000
                            }

                            If ((OEMF & 0x0800))
                            {
                                Local0 |= 0x0100
                            }

                            Local0 = 0x07
                        }

                        If ((ToInteger (Arg1) == 0x47))
                        {
                            Local0 = 0x47
                        }

                        If ((ToInteger (Arg1) == 0x48))
                        {
                            Local0 = 0x48
                        }

                        If ((ToInteger (Arg1) == 0x49))
                        {
                            Notify (PWRB, 0x80) // Status Change
                            Local0 = 0x49
                        }

                        If ((ToInteger (Arg1) == 0x4A))
                        {
                            Local0 = 0x4A
                        }

                        If ((ToInteger (Arg1) == 0x6D))
                        {
                            Local0 = 0x6D
                        }

                        If ((ToInteger (Arg1) == 0x27))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                P80H = ToInteger (ARGS)
                                ^^PCI0.LPC0.EC.FDAT = Zero
                                ^^PCI0.LPC0.EC.FBUF = ToInteger (ARGS)
                                ^^PCI0.LPC0.EC.FCMD = 0xCA
                            }

                            Local0 = 0x27
                        }

                        If ((ToInteger (Arg1) == 0x1D))
                        {
                            Local0 = 0x1D
                        }

                        If ((ToInteger (Arg1) == 0x1E))
                        {
                            P80H = 0x30
                        }

                        If ((ToInteger (Arg1) == 0x1F))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    ^^PCI0.LPC0.EC.FDAT = One
                                    P80H = 0xDF
                                }
                                Else
                                {
                                    ^^PCI0.LPC0.EC.FDAT = Zero
                                    P80H = 0x5F
                                }

                                ^^PCI0.LPC0.EC.FCMD = 0xA4
                            }

                            Local0 = 0x1F
                        }

                        If ((ToInteger (Arg1) == 0x20))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA2
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x20
                        }

                        If ((ToInteger (Arg1) == 0x21))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA3
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x21
                        }

                        If ((ToInteger (Arg1) == 0x22))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA1
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x22
                        }

                        If ((ToInteger (Arg1) == 0x23))
                        {
                            If (ARGS){}
                            Else
                            {
                            }

                            Local0 = 0x23
                        }

                        If ((ToInteger (Arg1) == 0x24))
                        {
                            Local0 = 0x24
                        }

                        If ((ToInteger (Arg1) == 0x25))
                        {
                            Local0 = 0x25
                        }

                        If ((ToInteger (Arg1) == 0x26))
                        {
                            Local0 = 0x26
                        }

                        If ((ToInteger (Arg1) == 0x28))
                        {
                            Local0 = 0x28
                        }

                        If ((ToInteger (Arg1) == 0x29))
                        {
                            Local0 = 0x29
                        }

                        If ((ToInteger (Arg1) == 0x2A))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA5
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x2A
                        }

                        If ((ToInteger (Arg1) == 0x2B))
                        {
                            Local0 = 0x2B
                        }

                        If ((ToInteger (Arg1) == 0x2C))
                        {
                            Local0 = 0x2C
                        }

                        If ((ToInteger (Arg1) == 0x2D))
                        {
                            Local0 = 0x2D
                        }

                        If ((ToInteger (Arg1) == 0x2E))
                        {
                            Local0 = 0x2E
                        }

                        If ((ToInteger (Arg1) == 0x2F))
                        {
                            Local0 = 0x2F
                        }

                        If ((ToInteger (Arg1) == 0x30))
                        {
                            Local0 = 0x30
                        }

                        If ((ToInteger (Arg1) == 0x31))
                        {
                            If (^^PCI0.LPC0.EC.ECOK){}
                            Local0 = 0x31
                        }

                        If ((ToInteger (Arg1) == 0x4B))
                        {
                            Local0 = 0x4B
                        }

                        If ((ToInteger (Arg1) == 0x4C))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA4
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x4C
                        }

                        If ((ToInteger (Arg1) == 0x4D))
                        {
                            Local0 = 0x4D
                        }

                        If ((ToInteger (Arg1) == 0x4E))
                        {
                            Local0 = 0x4E
                        }

                        If ((ToInteger (Arg1) == 0x4F))
                        {
                            Switch (ToInteger (ARGS))
                            {
                                Case (Zero)
                                {
                                    P80H = 0x4F
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        OEMF &= 0xFFF9
                                        ^^AC.ADJP (Zero)
                                    }
                                }
                                Case (One)
                                {
                                    P80H = 0x5F
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        OEMF = ((OEMF & 0xFFF9) | 0x02)
                                        ^^AC.ADJP (Zero)
                                    }
                                }
                                Case (0x02)
                                {
                                    P80H = 0x6F
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        OEMF = ((OEMF & 0xFFF9) | 0x04)
                                        ^^AC.ADJP (Zero)
                                    }
                                }

                            }

                            If ((NVBB & 0xFFFF))
                            {
                                If (^^PCI0.LPC0.EC.ECOK)
                                {
                                    If (^^AC.ACFG)
                                    {
                                        ^^PCI0.LPC0.EC.BBST = Zero
                                    }
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.BBST = (((NVBB >> 0x04) & 0xF0) | (NVBB & 
                                            0x0F))
                                    }

                                    If (GPSL){}
                                }
                            }

                            Local0 = 0x4F
                        }

                        If ((ToInteger (Arg1) == 0x55))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                ^^PCI0.LPC0.EC.INF2 |= 0x02
                            }

                            Local0 = 0x55
                        }

                        If ((ToInteger (Arg1) == 0x56))
                        {
                            Local0 = 0x56
                        }

                        If ((ToInteger (Arg1) == 0x57))
                        {
                            Local0 = 0x57
                        }

                        If ((ToInteger (Arg1) == 0x58))
                        {
                            Local0 = 0x58
                        }

                        If ((ToInteger (Arg1) == 0x59))
                        {
                            Local0 = 0x59
                        }

                        If ((ToInteger (Arg1) == 0x5A))
                        {
                            Switch (ToInteger (ARGS))
                            {
                                Case (Zero)
                                {
                                    ^^LID0.WMIF = One
                                    Notify (LID0, 0x80) // Status Change
                                }
                                Case (One)
                                {
                                    Notify (SLPB, 0x80) // Status Change
                                }
                                Case (0x02)
                                {
                                    Notify (PWRB, 0x80) // Status Change
                                }

                            }

                            Local0 = 0x5A
                        }

                        If ((ToInteger (Arg1) == 0x5B))
                        {
                            Local0 = 0x5B
                        }

                        If ((ToInteger (Arg1) == 0x5C))
                        {
                            Local0 = 0x5C
                        }

                        If ((ToInteger (Arg1) == 0x5D))
                        {
                            Local0 = 0x5D
                        }

                        If ((ToInteger (Arg1) == 0x5E))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA6
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x5E
                        }

                        If ((ToInteger (Arg1) == 0x5F))
                        {
                            Local0 = 0x5F
                        }

                        If ((ToInteger (Arg1) == 0x65))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    Local1 = 0xC2
                                }
                                Else
                                {
                                    Local1 = 0xC3
                                }

                                ^^PCI0.LPC0.EC.FDAT = Local1
                                ^^PCI0.LPC0.EC.FBUF = 0xA9
                                ^^PCI0.LPC0.EC.FCMD = 0xB8
                            }

                            Local0 = 0x65
                        }

                        If ((ToInteger (Arg1) == 0x66)){}
                        If ((ToInteger (Arg1) == 0x67))
                        {
                            Local2 = ((ARGS >> 0x0C) & 0x0F)
                            If ((Local2 >= 0x0A))
                            {
                                Local2 = Zero
                            }
                            Else
                            {
                                Local2 *= 0x19
                                Local2 = (0xFF - Local2)
                            }

                            Local3 = ((ARGS >> 0x10) & 0xFF)
                            Local4 = ((ARGS >> 0x18) & 0x0F)
                            Local7 = ((ARGS >> 0x1C) & 0x0F)
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (((Local7 >= 0x07) && (Local7 <= 0x0B)))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = Local7
                                    ^^PCI0.LPC0.EC.FCMD = 0xC4
                                }
                                Else
                                {
                                    If ((Local7 == Zero))
                                    {
                                        Local0 = Zero
                                        Local0 = (ARGS & 0x07)
                                        Local0 |= ((ARGS >> One) & 0x38)
                                        Local0 |= ((ARGS >> 0x02) & 0x01C0)
                                        ^^PCI0.LPC0.EC.FDAT = Local0
                                        ^^PCI0.LPC0.EC.FBUF = (Local0 >> 0x08)
                                        ^^PCI0.LPC0.EC.FCMD = 0xC2
                                    }

                                    If ((Local7 == One))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x03
                                        ^^PCI0.LPC0.EC.FBUF = Local3
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    If ((Local7 == 0x02))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x04
                                        ^^PCI0.LPC0.EC.FBUF = Local3
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    If ((Local7 == 0x03))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x06
                                        ^^PCI0.LPC0.EC.FBUF = Local3
                                        ^^PCI0.LPC0.EC.FBF1 = Local4
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    If ((Local7 == 0x04))
                                    {
                                        If (Local3)
                                        {
                                            Local0 = 0x0D
                                        }
                                        Else
                                        {
                                            Local0 = 0x0E
                                        }

                                        ^^PCI0.LPC0.EC.FDAT = Local0
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    If ((Local7 == 0x0C)){}
                                    If ((Local7 == 0x0D))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x02
                                        ^^PCI0.LPC0.EC.FBUF = Local2
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    If ((Local7 == 0x0E))
                                    {
                                        Local1 = ((ARGS >> 0x0E) & 0x1F)
                                        If ((ARGS & 0x2000))
                                        {
                                            Local1 |= 0x20
                                        }

                                        ^^PCI0.LPC0.EC.FDAT = 0x0C
                                        ^^PCI0.LPC0.EC.FBUF = Local1
                                        ^^PCI0.LPC0.EC.FCMD = 0xC4
                                    }

                                    If ((Local7 == 0x0F))
                                    {
                                        Local6 = Zero
                                        Local3 = (ARGS & 0xFF)
                                        Local2 = ((ARGS >> 0x08) & 0xFF)
                                        Local1 = ((ARGS >> 0x10) & 0xFF)
                                        If ((Local4 < 0x03))
                                        {
                                            Local0 = (Local4 + 0x03)
                                            Local6 = 0xCA
                                        }
                                        ElseIf ((Local4 == 0x03))
                                        {
                                            Local0 = 0x07
                                            Local6 = 0xCA
                                        }
                                        ElseIf ((Local4 == 0x04))
                                        {
                                            Local0 = 0x06
                                            Local1 = (ARGS & 0xFF)
                                            Local6 = 0xCA
                                        }
                                        ElseIf ((Local4 == 0x06))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x09
                                            ^^PCI0.LPC0.EC.FBUF = Local1
                                            ^^PCI0.LPC0.EC.FBF1 = Local2
                                            ^^PCI0.LPC0.EC.FBF2 = Local3
                                            ^^PCI0.LPC0.EC.FCMD = 0xCA
                                            Local0 = 0x0A
                                            Local6 = 0xCA
                                        }

                                        If (Local6)
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = Local0
                                            ^^PCI0.LPC0.EC.FBUF = Local1
                                            ^^PCI0.LPC0.EC.FBF1 = Local2
                                            ^^PCI0.LPC0.EC.FBF2 = Local3
                                            ^^PCI0.LPC0.EC.FCMD = Local6
                                        }
                                    }
                                }
                            }

                            Local0 = 0x67
                        }

                        If ((ToInteger (Arg1) == 0x68))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Local4 = ARGS /* \_SB_.WMI_.ARGS */
                                ^^PCI0.LPC0.EC.FDAT = One
                                ^^PCI0.LPC0.EC.FBUF = (Local4 & 0xFF)
                                ^^PCI0.LPC0.EC.FCMD = 0xC1
                                ^^PCI0.LPC0.EC.FDAT = 0x02
                                ^^PCI0.LPC0.EC.FBUF = ((Local4 >> 0x08) & 0xFF)
                                ^^PCI0.LPC0.EC.FCMD = 0xC1
                                ^^PCI0.LPC0.EC.FDAT = 0x03
                                ^^PCI0.LPC0.EC.FBUF = ((Local4 >> 0x10) & 0xFF)
                                ^^PCI0.LPC0.EC.FCMD = 0xC1
                                ^^PCI0.LPC0.EC.FDAT = 0x04
                                ^^PCI0.LPC0.EC.FBUF = ((Local4 >> 0x18) & 0xFF)
                                ^^PCI0.LPC0.EC.FCMD = 0xC1
                            }

                            Local0 = 0x68
                        }

                        If ((ToInteger (Arg1) == 0x69))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Local4 = ARGS /* \_SB_.WMI_.ARGS */
                                If ((Local4 & One))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xFF
                                    ^^PCI0.LPC0.EC.FBUF = One
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                }

                                If ((Local4 & 0x02))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xFF
                                    ^^PCI0.LPC0.EC.FBUF = 0x02
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                }

                                If ((Local4 & 0x04))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xFF
                                    ^^PCI0.LPC0.EC.FBUF = 0x03
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                }

                                If ((Local4 & 0x08))
                                {
                                    ^^PCI0.LPC0.EC.FDAT = 0xFF
                                    ^^PCI0.LPC0.EC.FBUF = 0x04
                                    ^^PCI0.LPC0.EC.FCMD = 0xC1
                                }
                            }

                            Local0 = 0x69
                        }

                        If ((ToInteger (Arg1) == 0x6A))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Local0 = ((ARGS >> 0x08) & 0xFF)
                                Local1 = (ARGS & 0xFF)
                                ^^PCI0.LPC0.EC.FDAT = Local0
                                ^^PCI0.LPC0.EC.FBUF = Local1
                                ^^PCI0.LPC0.EC.FCMD = 0xBA
                                B41S = Local0
                                B41M = Local1
                                B41E = One
                            }

                            Local0 = 0x6A
                        }

                        If ((ToInteger (Arg1) == 0x6B))
                        {
                            INDX = ARGS /* \_SB_.WMI_.ARGS */
                            Local0 = 0x6B
                        }

                        If ((ToInteger (Arg1) == 0x6C))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS){}
                                Else
                                {
                                }
                            }

                            Local0 = 0x6C
                        }

                        If ((ToInteger (Arg1) == 0x74))
                        {
                            CreateField (Arg2, Zero, One, SMUT)
                            CreateField (Arg2, One, 0x07, SAUD)
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ToInteger (SMUT))
                                {
                                    Local0 = Zero
                                }
                                Else
                                {
                                    Local0 = ToInteger (SAUD)
                                    If ((Local0 > 0x64))
                                    {
                                        Local0 = 0x64
                                    }
                                }

                                If ((LKFG & 0x04)){}
                                Else
                                {
                                    ^^PCI0.LPC0.EC.FDAT = Local0
                                    ^^PCI0.LPC0.EC.FCMD = 0xC6
                                }
                            }

                            Local0 = 0x74
                        }

                        If ((ToInteger (Arg1) == 0x1C))
                        {
                            Local0 = 0x1C
                        }

                        If ((ToInteger (Arg1) == 0x75))
                        {
                            Local1 = (INDX & 0xFFFF)
                            Local2 = ((INDX >> 0x10) & 0xFFFF)
                            If ((Local1 == 0xD9))
                            {
                                ARGS &= 0x40
                                ^^PCI0.LPC0.EC.AIRP &= 0xBF
                                ARGS |= ^^PCI0.LPC0.EC.AIRP /* \_SB_.PCI0.LPC0.EC__.AIRP */
                                P80H = 0xD9
                            }

                            If ((Local2 > 0x02))
                            {
                                Local2 = Zero
                            }

                            If ((Local1 > 0xFF))
                            {
                                Return (Ones)
                            }

                            Local2 = (One << Local2)
                            Local3 = Local2
                            Local3--
                            If (((Local1 + Local3) > 0xFF))
                            {
                                Return (Ones)
                            }

                            Local0 = (Local1 + 0xFE500100)
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Name (WBUF, Buffer (0x04)
                                {
                                     0x00, 0x00, 0x00, 0x00                           // ....
                                })
                                CreateByteField (WBUF, Zero, ARGB)
                                CreateWordField (WBUF, Zero, ARGW)
                                CreateDWordField (WBUF, Zero, ARGD)
                                WBUF = ARGS /* \_SB_.WMI_.ARGS */
                                OperationRegion (WH2M, SystemMemory, Local0, Local2)
                                Switch (ToInteger (Local2))
                                {
                                    Case (One)
                                    {
                                        Field (WH2M, ByteAcc, Lock, Preserve)
                                        {
                                            WHMB,   8
                                        }

                                        WHMB = ARGB /* \_SB_.WMI_.ZEVT.ARGB */
                                    }
                                    Case (0x02)
                                    {
                                        Field (WH2M, ByteAcc, Lock, Preserve)
                                        {
                                            WHMW,   16
                                        }

                                        WHMW = ARGW /* \_SB_.WMI_.ZEVT.ARGW */
                                    }
                                    Case (0x04)
                                    {
                                        Field (WH2M, ByteAcc, Lock, Preserve)
                                        {
                                            WHMD,   32
                                        }

                                        WHMD = ARGD /* \_SB_.WMI_.ZEVT.ARGD */
                                    }

                                }

                                If (((Local1 <= 0xF8) && ((Local1 + Local3) >= 
                                    0xF8)))
                                {
                                    Local4 = (0xF8 - Local1)
                                    ^^PCI0.LPC0.EC.FCMD = DerefOf (WBUF [Local4])
                                }

                                Local0 = 0x75
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x76))
                        {
                            Local1 = ((ARGS & 0xFF000000) >> 0x18)
                            Local2 = (ARGS & 0x00FFFFFF)
                            Switch (ToInteger (Local1))
                            {
                                Case (0x05)
                                {
                                    BAEE = (Local2 << One)
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        ^^PCI0.LPC0.EC.FBF1 = BAEE /* \BAEE */
                                        ^^PCI0.LPC0.EC.FCMD = 0xCB
                                    }
                                }
                                Case (0x06)
                                {
                                    BTCP = ((Local2 & 0xFF00) >> 0x08)
                                    BSCP = (Local2 & 0xFF)
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        ^^PCI0.LPC0.EC.FBUF = BSCP /* \BSCP */
                                        ^^PCI0.LPC0.EC.FDAT = BTCP /* \BTCP */
                                    }
                                }

                            }

                            Local0 = 0x76
                        }

                        If ((ToInteger (Arg1) == 0x77))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                Local0 = (BAEE >> One)
                                Local0 |= (BSCP << 0x08)
                                Local0 |= (BTCP << 0x10)
                            }
                            Else
                            {
                                Local0 = Ones
                            }
                        }

                        If ((ToInteger (Arg1) == 0x78)){}
                        If ((ToInteger (Arg1) == 0x15)){}
                        If ((ToInteger (Arg1) == 0x79))
                        {
                            Local1 = ((ARGS & 0xFF000000) >> 0x18)
                            Local2 = (ARGS & 0x00FFFFFF)
                            Switch (ToInteger (Local1))
                            {
                                Case (One)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        If ((Local2 == Zero))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x02
                                            ^^PCI0.LPC0.EC.FCMD = 0xD7
                                        }

                                        If ((Local2 == One))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x10
                                            ^^PCI0.LPC0.EC.FCMD = 0xD7
                                        }

                                        If ((Local2 == 0x02))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x08
                                            ^^PCI0.LPC0.EC.FCMD = 0xD7
                                        }

                                        If ((Local2 == 0x03))
                                        {
                                            If (^^PCI0.LPC0.EC.ECOK)
                                            {
                                                ^^PCI0.LPC0.EC.FDAT = One
                                                ^^PCI0.LPC0.EC.FBUF = Zero
                                                ^^PCI0.LPC0.EC.FBF1 = Zero
                                                ^^PCI0.LPC0.EC.FCMD = 0xC1
                                            }
                                        }

                                        If ((Local2 == 0x04)){}
                                        If ((Local2 == 0x05))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = One
                                            ^^PCI0.LPC0.EC.FCMD = 0xD7
                                        }

                                        If ((Local2 == 0x06))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = 0x04
                                            ^^PCI0.LPC0.EC.FCMD = 0xD7
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = Ones
                                    }
                                }
                                Case (0x05)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        If (Local2)
                                        {
                                            ^^PCI0.LPC0.EC.ECKS |= 0x10
                                        }
                                        Else
                                        {
                                            ^^PCI0.LPC0.EC.ECKS &= 0xEF
                                        }
                                    }
                                    Else
                                    {
                                        Local0 = Ones
                                    }
                                }
                                Case (0x07)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        Local4 = Zero
                                        Local5 = Zero
                                        Local6 = Zero
                                        Local7 = Zero
                                        If (Local2)
                                        {
                                            Local4 = (Local2 & 0xFF)
                                            Local5 = ((Local2 >> 0x08) & 0xFF)
                                            Local6 = ((Local2 >> 0x10) & 0xFF)
                                            Local3 = (((Local6 - 0x32) * 0x0A) / ((CJMX - 
                                                0x0A) - Local4))
                                            Local3 <<= 0x03
                                            Local7 = (Local3 / 0x0A)
                                            If (((Local3 - (Local7 * 0x0A)) > 0x04))
                                            {
                                                Local7++
                                            }

                                            Local3 = One
                                        }
                                        Else
                                        {
                                            Local3 = Zero
                                        }

                                        ^^PCI0.LPC0.EC.FDAT = Local3
                                        ^^PCI0.LPC0.EC.FBUF = Local4
                                        ^^PCI0.LPC0.EC.FBF1 = Local5
                                        ^^PCI0.LPC0.EC.FBF2 = Local6
                                        ^^PCI0.LPC0.EC.FBF3 = Local7
                                        ^^PCI0.LPC0.EC.FCMD = 0xCC
                                    }
                                    Else
                                    {
                                        Local0 = Ones
                                    }
                                }
                                Case (0x09)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        Local2 = (ARGS & 0xFF)
                                        ^^PCI0.LPC0.EC.FDAT = 0x07
                                        ^^PCI0.LPC0.EC.FBUF = Local2
                                        ^^PCI0.LPC0.EC.FCMD = 0xCE
                                    }
                                    Else
                                    {
                                        Local0 = Ones
                                    }
                                }
                                Case (0x0A)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        Local4 = (Local2 & 0xFF)
                                        ^^PCI0.LPC0.EC.FDAT = Local4
                                        ^^PCI0.LPC0.EC.FCMD = 0xCF
                                    }
                                    Else
                                    {
                                        Local0 = Ones
                                    }
                                }
                                Case (0x0B)
                                {
                                }
                                Case (0x0C)
                                {
                                }
                                Case (0x0D)
                                {
                                }
                                Case (0x0E)
                                {
                                    ^^PCI0.LPC0.EC.XFAN = (Local2 & 0xFF)
                                }
                                Case (0x0F)
                                {
                                    Local0 = (Local2 & 0xFF)
                                    If (Local0)
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x02
                                        ^^PCI0.LPC0.EC.FBUF = One
                                        ^^PCI0.LPC0.EC.FCMD = 0xCD
                                    }
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0x02
                                        ^^PCI0.LPC0.EC.FBUF = Zero
                                        ^^PCI0.LPC0.EC.FCMD = 0xCD
                                    }
                                }
                                Case (0x10)
                                {
                                }
                                Case (0x13)
                                {
                                }
                                Case (0x15)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        Local2 = (ARGS & 0xFF)
                                        ^^PCI0.LPC0.EC.FDAT = Local2
                                        ^^PCI0.LPC0.EC.FCMD = 0xD3
                                    }
                                    Else
                                    {
                                        Local0 = Ones
                                    }
                                }
                                Case (0x17)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = (Local2 & 0xFF)
                                        ^^PCI0.LPC0.EC.FCMD = 0xD5
                                    }
                                }
                                Case (0x18)
                                {
                                    If (^^PCI0.LPC0.EC.ECOK)
                                    {
                                        If (((Local2 & 0xFF) == 0xFF))
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = (Local2 & 0xFF)
                                            ^^PCI0.LPC0.EC.FBUF = ((Local2 >> 0x10) & 0xFF)
                                            ^^PCI0.LPC0.EC.FBF1 = ((Local2 >> 0x08) & 0xFF)
                                            ^^PCI0.LPC0.EC.FCMD = 0xD4
                                        }
                                        Else
                                        {
                                            ^^PCI0.LPC0.EC.FDAT = ToInteger (Local2)
                                            ^^PCI0.LPC0.EC.FCMD = 0xD4
                                        }
                                    }
                                }
                                Case (0x19)
                                {
                                    Local2 = (Local2 & 0xFF)
                                    Switch (ToInteger (Local2))
                                    {
                                        Case (Zero)
                                        {
                                        }
                                        Case (One)
                                        {
                                        }
                                        Case (0x02)
                                        {
                                        }
                                        Case (0x03)
                                        {
                                        }

                                    }

                                    ^^PCI0.LPC0.EC.FDAT = One
                                    ^^PCI0.LPC0.EC.FCMD = 0xD8
                                }
                                Case (0x1A)
                                {
                                }
                                Case (0x1E)
                                {
                                    If ((Local2 == One))
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0xC2
                                        ^^PCI0.LPC0.EC.FBUF = 0xAC
                                        ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    }
                                    Else
                                    {
                                        ^^PCI0.LPC0.EC.FDAT = 0xC3
                                        ^^PCI0.LPC0.EC.FBUF = 0xAC
                                        ^^PCI0.LPC0.EC.FCMD = 0xB8
                                    }
                                }
                                Case (0x20)
                                {
                                    If ((Local2 && One))
                                    {
                                        ^^PCI0.LPC0.EC.WINF |= 0x08
                                    }
                                }

                            }
                        }

                        If ((ToInteger (Arg1) == 0x13))
                        {
                            If (^^PCI0.LPC0.EC.ECOK)
                            {
                                If (ARGS)
                                {
                                    ^^PCI0.LPC0.EC.ECKS |= 0x80
                                }
                                Else
                                {
                                    ^^PCI0.LPC0.EC.ECKS &= 0x7F
                                }
                            }

                            Local0 = 0x13
                        }

                        Return (Local0)
                    }

                    Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
                    {
                        Return (Zero)
                    }
                }

                Scope (\_SB)
                {
                    Device (CAI)
                    {
                        Name (_HID, EisaId ("CLV0003"))  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }
                }
            }
        }

        OperationRegion (PIRQ, SystemIO, 0x0C00, 0x02)
        Field (PIRQ, ByteAcc, NoLock, Preserve)
        {
            PIDX,   8, 
            PDAT,   8
        }

        IndexField (PIDX, PDAT, ByteAcc, NoLock, Preserve)
        {
            PIRA,   8, 
            PIRB,   8, 
            PIRC,   8, 
            PIRD,   8, 
            PIRE,   8, 
            PIRF,   8, 
            PIRG,   8, 
            PIRH,   8, 
            Offset (0x0C), 
            SIRA,   8, 
            SIRB,   8, 
            SIRC,   8, 
            SIRD,   8, 
            PIRS,   8, 
            Offset (0x13), 
            HDAD,   8, 
            Offset (0x17), 
            SDCL,   8, 
            Offset (0x1A), 
            SDIO,   8, 
            Offset (0x30), 
            USB1,   8, 
            Offset (0x34), 
            USB3,   8, 
            Offset (0x41), 
            SATA,   8, 
            Offset (0x62), 
            GIOC,   8, 
            Offset (0x70), 
            I2C0,   8, 
            I2C1,   8, 
            I2C2,   8, 
            I2C3,   8, 
            URT0,   8, 
            URT1,   8
        }

        Method (DSPI, 0, NotSerialized)
        {
            INTA (0x1F)
            INTB (0x1F)
            INTC (0x1F)
            INTD (0x1F)
            PIRE = 0x1F
            PIRF = 0x1F
            PIRG = 0x1F
            PIRH = 0x1F
        }

        Method (INTA, 1, NotSerialized)
        {
            PIRA = Arg0
            If (PICM)
            {
                HDAD = Arg0
                SDCL = Arg0
            }
        }

        Method (INTB, 1, NotSerialized)
        {
            PIRB = Arg0
        }

        Method (INTC, 1, NotSerialized)
        {
            PIRC = Arg0
            If (PICM)
            {
                USB1 = Arg0
                USB3 = Arg0
            }
        }

        Method (INTD, 1, NotSerialized)
        {
            PIRD = Arg0
            If (PICM)
            {
                SATA = Arg0
            }
        }

        Name (PRS1, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,5,6,10,11}
        })
        Name (BUFA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {15}
        })
        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRA && (PIRA != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTA (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRA) /* \_SB_.PIRA */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRA = Local0
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRB && (PIRB != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTB (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRB) /* \_SB_.PIRB */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRB = Local0
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRC && (PIRC != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTC (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRC) /* \_SB_.PIRC */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRC = Local0
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRD && (PIRD != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                INTD (0x1F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRD) /* \_SB_.PIRD */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRD = Local0
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRE && (PIRE != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRE = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRE) /* \_SB_.PIRE */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRE = Local0
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRF && (PIRF != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRF = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRF) /* \_SB_.PIRF */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRF = Local0
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRG && (PIRG != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRG = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRG) /* \_SB_.PIRG */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRG = Local0
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PIRH && (PIRH != 0x1F)))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (0x09)
                }
            }

            Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
            {
                Return (PRS1) /* \_SB_.PRS1 */
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                PIRH = 0x1F
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUFA, One, IRQX)
                IRQX = (One << PIRH) /* \_SB_.PIRH */
                Return (BUFA) /* \_SB_.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, One, IRA)
                FindSetRightBit (IRA, Local0)
                Local0--
                PIRH = Local0
            }
        }

        Method (GSMI, 1, NotSerialized)
        {
            APMD = Arg0
            APMC = 0xE4
            Sleep (0x02)
        }

        Method (S80H, 1, NotSerialized)
        {
            P80H = Arg0
        }

        Method (BSMI, 1, NotSerialized)
        {
            APMD = Arg0
            APMC = 0xBE
            Sleep (One)
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (RHRW, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x17, 
                    0x03
                })
            }
        }

        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Name (LIDF, Zero)
            Name (WMIF, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (^^PCI0.LPC0.EC.ECOK)
                {
                    Return (^^PCI0.LPC0.EC.LSTE) /* \_SB_.PCI0.LPC0.EC__.LSTE */
                }
                Else
                {
                    Return (One)
                }
            }

            Method (RHRW, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x17, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (^^PCI0.LPC0.EC.ECOK)
                {
                    ^^PCI0.LPC0.EC.LWKE = Arg0
                }
            }
        }
    }

    Name (TSOS, 0x75)
    If (CondRefOf (\_OSI))
    {
        If (_OSI ("Windows 2009"))
        {
            TSOS = 0x50
        }

        If (_OSI ("Windows 2015"))
        {
            TSOS = 0x70
        }
    }

    Scope (_SB)
    {
        OperationRegion (SMIC, SystemMemory, 0xFED80000, 0x00800000)
        Field (SMIC, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36A), 
            SMIB,   8
        }

        OperationRegion (SSMI, SystemIO, SMIB, 0x02)
        Field (SSMI, AnyAcc, NoLock, Preserve)
        {
            SMIW,   16
        }

        OperationRegion (ECMC, SystemIO, 0x72, 0x02)
        Field (ECMC, AnyAcc, NoLock, Preserve)
        {
            ECMI,   8, 
            ECMD,   8
        }

        IndexField (ECMI, ECMD, ByteAcc, NoLock, Preserve)
        {
            Offset (0x08), 
            FRTB,   32
        }

        OperationRegion (FRTP, SystemMemory, FRTB, 0x0100)
        Field (FRTP, AnyAcc, NoLock, Preserve)
        {
            PEBA,   32, 
                ,   5, 
            IC0E,   1, 
            IC1E,   1, 
            IC2E,   1, 
            IC3E,   1, 
            IC4E,   1, 
            IC5E,   1, 
            UT0E,   1, 
            UT1E,   1, 
                ,   1, 
                ,   1, 
            ST_E,   1, 
            UT2E,   1, 
                ,   1, 
            EMMD,   2, 
                ,   3, 
            XHCE,   1, 
                ,   1, 
                ,   1, 
            UT3E,   1, 
            ESPI,   1, 
            EMME,   1, 
            HFPE,   1, 
            Offset (0x08), 
            PCEF,   1, 
                ,   4, 
            IC0D,   1, 
            IC1D,   1, 
            IC2D,   1, 
            IC3D,   1, 
            IC4D,   1, 
            IC5D,   1, 
            UT0D,   1, 
            UT1D,   1, 
                ,   1, 
                ,   1, 
            ST_D,   1, 
            UT2D,   1, 
                ,   1, 
            EHCD,   1, 
                ,   4, 
            XHCD,   1, 
            SD_D,   1, 
                ,   1, 
            UT3D,   1, 
                ,   1, 
            EMD3,   1, 
                ,   2, 
            S03D,   1, 
            FW00,   16, 
            FW01,   32, 
            FW02,   16, 
            FW03,   32, 
            SDS0,   8, 
            SDS1,   8, 
            CZFG,   1, 
            Offset (0x20), 
            SD10,   32, 
            EH10,   32, 
            XH10,   32, 
            STBA,   32
        }

        OperationRegion (FCFG, SystemMemory, PEBA, 0x01000000)
        Field (FCFG, DWordAcc, NoLock, Preserve)
        {
            Offset (0xA3044), 
            IPDE,   32, 
            IMPE,   32, 
            Offset (0xA3078), 
                ,   2, 
            LDQ0,   1, 
            Offset (0xA30CB), 
                ,   7, 
            AUSS,   1
        }

        OperationRegion (IOMX, SystemMemory, 0xFED80D00, 0x0100)
        Field (IOMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0x15), 
            IM15,   8, 
            IM16,   8, 
            Offset (0x1F), 
            IM1F,   8, 
            IM20,   8, 
            Offset (0x44), 
            IM44,   8, 
            Offset (0x46), 
            IM46,   8, 
            Offset (0x4A), 
            IM4A,   8, 
            IM4B,   8, 
            Offset (0x57), 
            IM57,   8, 
            IM58,   8, 
            Offset (0x68), 
            IM68,   8, 
            IM69,   8, 
            IM6A,   8, 
            IM6B,   8, 
            Offset (0x6D), 
            IM6D,   8
        }

        OperationRegion (FACR, SystemMemory, 0xFED81E00, 0x0100)
        Field (FACR, AnyAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   28, 
            RD28,   1, 
                ,   1, 
            RQTY,   1, 
            Offset (0x84), 
                ,   28, 
            SD28,   1, 
                ,   1, 
            Offset (0xA0), 
            PG1A,   1
        }

        OperationRegion (EMMX, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMX, AnyAcc, NoLock, Preserve)
        {
            Offset (0xD0), 
                ,   17, 
            FC18,   1, 
            FC33,   1, 
                ,   7, 
            CD_T,   1, 
            WP_T,   1
        }

        OperationRegion (EMMB, SystemMemory, 0xFEDD5800, 0x0130)
        Field (EMMB, AnyAcc, NoLock, Preserve)
        {
            Offset (0xA4), 
            E0A4,   32, 
            E0A8,   32, 
            Offset (0xB0), 
            E0B0,   32, 
            Offset (0xD0), 
            E0D0,   32, 
            Offset (0x116), 
            E116,   32
        }

        Name (SVBF, Buffer (0x0100)
        {
             0x00                                             // .
        })
        CreateDWordField (SVBF, Zero, S0A4)
        CreateDWordField (SVBF, 0x04, S0A8)
        CreateDWordField (SVBF, 0x08, S0B0)
        CreateDWordField (SVBF, 0x0C, S0D0)
        CreateDWordField (SVBF, 0x10, S116)
        Method (SECR, 0, Serialized)
        {
            S116 = E116 /* \_SB_.E116 */
            RQTY = Zero
            RD28 = One
            Local0 = SD28 /* \_SB_.SD28 */
            While (Local0)
            {
                Local0 = SD28 /* \_SB_.SD28 */
            }
        }

        Method (RECR, 0, Serialized)
        {
            E116 = S116 /* \_SB_.S116 */
        }

        OperationRegion (LUIE, SystemMemory, 0xFEDC0020, 0x04)
        Field (LUIE, AnyAcc, NoLock, Preserve)
        {
            IER0,   1, 
            IER1,   1, 
            IER2,   1, 
            IER3,   1, 
            UOL0,   1, 
            UOL1,   1, 
            UOL2,   1, 
            UOL3,   1, 
            WUR0,   2, 
            WUR1,   2, 
            WUR2,   2, 
            WUR3,   2
        }

        Method (FRUI, 2, Serialized)
        {
            If ((Arg0 == Zero))
            {
                Arg1 = IUA0 /* \_SB_.IUA0 */
            }

            If ((Arg0 == One))
            {
                Arg1 = IUA1 /* \_SB_.IUA1 */
            }

            If ((Arg0 == 0x02))
            {
                Arg1 = IUA2 /* \_SB_.IUA2 */
            }

            If ((Arg0 == 0x03))
            {
                Arg1 = IUA3 /* \_SB_.IUA3 */
            }
        }

        Method (FUIO, 1, Serialized)
        {
            If ((IER0 == One))
            {
                If ((WUR0 == Arg0))
                {
                    Return (Zero)
                }
            }

            If ((IER1 == One))
            {
                If ((WUR1 == Arg0))
                {
                    Return (One)
                }
            }

            If ((IER2 == One))
            {
                If ((WUR2 == Arg0))
                {
                    Return (0x02)
                }
            }

            If ((IER3 == One))
            {
                If ((WUR3 == Arg0))
                {
                    Return (0x03)
                }
            }

            Return (0x0F)
        }

        Method (SRAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            ADIS = One
            ADSR = Zero
            Stall (Arg1)
            ADSR = One
            ADIS = Zero
            Stall (Arg1)
        }

        Method (DSAD, 2, Serialized)
        {
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg0 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.DSAD.ADDS */
                    }

                    ADTD = 0x03
                }
            }
        }

        Method (HSAD, 2, Serialized)
        {
            Local3 = (One << Arg0)
            Local0 = (Arg0 << One)
            Local0 += 0xFED81E40
            OperationRegion (ADCR, SystemMemory, Local0, 0x02)
            Field (ADCR, ByteAcc, NoLock, Preserve)
            {
                ADTD,   2, 
                ADPS,   1, 
                ADPD,   1, 
                ADSO,   1, 
                ADSC,   1, 
                ADSR,   1, 
                ADIS,   1, 
                ADDS,   3
            }

            If ((Arg1 != ADTD))
            {
                If ((Arg1 == Zero))
                {
                    PG1A = One
                    ADTD = Zero
                    ADPD = One
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != 0x07))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    RQTY = One
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (!Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }
                }

                If ((Arg1 == 0x03))
                {
                    RQTY = Zero
                    RD28 = One
                    Local0 = SD28 /* \_SB_.SD28 */
                    While (Local0)
                    {
                        Local0 = SD28 /* \_SB_.SD28 */
                    }

                    ADPD = Zero
                    Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    While ((Local0 != Zero))
                    {
                        Local0 = ADDS /* \_SB_.HSAD.ADDS */
                    }

                    ADTD = 0x03
                    PG1A = Zero
                }
            }
        }

        OperationRegion (FPIC, SystemIO, 0x0C00, 0x02)
        Field (FPIC, AnyAcc, NoLock, Preserve)
        {
            FPII,   8, 
            FPID,   8
        }

        IndexField (FPII, FPID, ByteAcc, NoLock, Preserve)
        {
            Offset (0xF4), 
            IUA0,   8, 
            IUA1,   8, 
            Offset (0xF8), 
            IUA2,   8, 
            IUA3,   8
        }

        Device (HFP1)
        {
            Name (_HID, "AMDI0060")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (HFPE)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFEC11000,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.HFP1._CRS.RBUF */
            }
        }

        Device (GPIO)
        {
            Name (_HID, "AMDI0030")  // _HID: Hardware ID
            Name (_CID, "AMDI0030")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000007,
                    }
                    Memory32Fixed (ReadWrite,
                        0xFED81500,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED81200,         // Address Base
                        0x00000100,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.GPIO._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR0)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {3}
                Memory32Fixed (ReadWrite,
                    0xFEDC9000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDC7000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT0E == One))
                    {
                        If ((FUIO (Zero) != 0x0F))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR1)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {4}
                Memory32Fixed (ReadWrite,
                    0xFEDCA000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDC8000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT1E == One))
                    {
                        If ((FUIO (One) != 0x0F))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR2)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {3}
                Memory32Fixed (ReadWrite,
                    0xFEDCE000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDCC000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT2E == One))
                    {
                        If ((FUIO (0x02) != 0x0F))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (FUR3)
        {
            Name (_HID, "AMDI0020")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {4}
                Memory32Fixed (ReadWrite,
                    0xFEDCF000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEDCD000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((UT3E == One))
                    {
                        If ((FUIO (0x03) != 0x0F))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (I2CA)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {10}
                Memory32Fixed (ReadWrite,
                    0xFEDC2000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC0E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x05, 0xC8)
            }
        }

        Device (I2CB)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {11}
                Memory32Fixed (ReadWrite,
                    0xFEDC3000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC1E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x06, 0xC8)
            }
        }

        Device (I2CC)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {4}
                Memory32Fixed (ReadWrite,
                    0xFEDC4000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC2E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x07, 0xC8)
            }
        }

        Device (I2CD)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {6}
                Memory32Fixed (ReadWrite,
                    0xFEDC5000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC3E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x08, 0xC8)
            }
        }

        Device (I2CE)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {14}
                Memory32Fixed (ReadWrite,
                    0xFEDC6000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC4E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x09, 0xC8)
            }
        }

        Device (I2CF)
        {
            Name (_HID, "AMDI0010")  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {15}
                Memory32Fixed (ReadWrite,
                    0xFEDCB000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If ((IC5E == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RSET, 0, NotSerialized)
            {
                SRAD (0x0A, 0xC8)
            }
        }

        Method (EPIN, 0, NotSerialized)
        {
            IPDE = Zero
            IMPE = Zero
            IM15 = One
            IM16 = One
            IM20 = One
            IM44 = One
            IM46 = One
            IM68 = One
            IM69 = One
            IM6A = One
            IM6B = One
            IM4A = One
            IM58 = One
            IM4B = One
            IM57 = One
            IM6D = One
            IM1F = One
            SECR ()
        }

        Name (NCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
        })
        Name (DCRS, ResourceTemplate ()
        {
            Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
            {
                0x00000005,
            }
            Memory32Fixed (ReadWrite,
                0xFEDD5000,         // Address Base
                0x00001000,         // Address Length
                )
            GpioInt (Edge, ActiveBoth, SharedAndWake, PullUp, 0x0BB8,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
            GpioIo (Shared, PullUp, 0x0000, 0x0000, IoRestrictionNone,
                "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0044
                }
        })
        Name (AHID, "AMDI0040")
        Name (ACID, "AMDI0040")
        Name (SHID, 0x400DD041)
        Name (SCID, "PCICC_080501")
        Device (EMM0)
        {
            Method (_HID, 0, Serialized)  // _HID: Hardware ID
            {
                If (EMMD)
                {
                    Return (SHID) /* \_SB_.SHID */
                }
                Else
                {
                    Return (AHID) /* \_SB_.AHID */
                }
            }

            Method (_CID, 0, Serialized)  // _CID: Compatible ID
            {
                If (EMMD)
                {
                    Return (SCID) /* \_SB_.SCID */
                }
                Else
                {
                    Return (ACID) /* \_SB_.ACID */
                }
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (EMD3)
                {
                    Return (DCRS) /* \_SB_.DCRS */
                }
                Else
                {
                    Return (NCRS) /* \_SB_.NCRS */
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((TSOS >= 0x70))
                {
                    If (EMME)
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (EMME)
                {
                    EPIN ()
                }
            }

            Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
            {
                If ((EMD3 && EMME))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, Zero)
                    RECR ()
                }
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                If ((EMD3 && EMME))
                {
                    HSAD (0x1C, 0x03)
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (UAR1)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DDN, "COM1")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((FUIO (Zero) != 0x0F))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02E8,             // Range Minimum
                        0x02E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y09)
                    IRQNoFlags (_Y0A)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y09._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR1._CRS._Y09._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR1._CRS._Y0A._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (Zero)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                Local1 = IUA0 /* \_SB_.IUA0 */
                IRQL = (One << (Local1 & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR1._CRS.BUF0 */
            }
        }

        Device (UAR2)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DDN, "COM2")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((FUIO (One) != 0x0F))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x02F8,             // Range Minimum
                        0x02F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y0B)
                    IRQNoFlags (_Y0C)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y0B._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR2._CRS._Y0B._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR2._CRS._Y0C._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (One)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                Local1 = IUA1 /* \_SB_.IUA1 */
                IRQL = (One << (Local1 & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR2._CRS.BUF0 */
            }
        }

        Device (UAR3)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DDN, "COM3")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((FUIO (0x02) != 0x0F))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03E8,             // Range Minimum
                        0x03E8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y0D)
                    IRQNoFlags (_Y0E)
                        {3}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y0D._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR3._CRS._Y0D._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR3._CRS._Y0E._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (0x02)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                Local1 = IUA2 /* \_SB_.IUA2 */
                IRQL = (One << (Local1 & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR3._CRS.BUF0 */
            }
        }

        Device (UAR4)
        {
            Name (_HID, EisaId ("PNP0500") /* Standard PC COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DDN, "COM4")  // _DDN: DOS Device Name
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((FUIO (0x03) != 0x0F))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x03F8,             // Range Minimum
                        0x03F8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        _Y0F)
                    IRQNoFlags (_Y10)
                        {4}
                })
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y0F._MIN, IOLO)  // _MIN: Minimum Base Address
                CreateByteField (BUF0, 0x03, IOHI)
                CreateByteField (BUF0, \_SB.PCI0.UAR4._CRS._Y0F._MAX, IORL)  // _MAX: Maximum Base Address
                CreateByteField (BUF0, 0x05, IORH)
                CreateWordField (BUF0, \_SB.PCI0.UAR4._CRS._Y10._INT, IRQL)  // _INT: Interrupts
                Local0 = FUIO (0x03)
                Switch (ToInteger (Local0))
                {
                    Case (Zero)
                    {
                        IOLO = 0xE8
                        IOHI = 0x02
                        IORL = 0xE8
                        IORH = 0x02
                    }
                    Case (One)
                    {
                        IOLO = 0xF8
                        IOHI = 0x02
                        IORL = 0xF8
                        IORH = 0x02
                    }
                    Case (0x02)
                    {
                        IOLO = 0xE8
                        IOHI = 0x03
                        IORL = 0xE8
                        IORH = 0x03
                    }
                    Case (0x03)
                    {
                        IOLO = 0xF8
                        IOHI = 0x03
                        IORL = 0xF8
                        IORH = 0x03
                    }

                }

                Local1 = IUA3 /* \_SB_.IUA3 */
                IRQL = (One << (Local1 & 0x0F))
                Return (BUF0) /* \_SB_.PCI0.UAR4._CRS.BUF0 */
            }
        }
    }

    Name (HIDG, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
    Method (HIDD, 5, Serialized)
    {
        If ((Arg0 == HIDG))
        {
            If ((Arg2 == Zero))
            {
                If ((Arg1 == One))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }
            }

            If ((Arg2 == One))
            {
                Return (Arg4)
            }
        }

        Return (Buffer (One)
        {
             0x00                                             // .
        })
    }

    Scope (_SB.I2CA)
    {
        Device (TPD2)
        {
            Name (HID2, One)
            Name (_HID, "ELAN0415")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.TPD2._CRS.RBUF */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Return (HIDD (Arg0, Arg1, Arg2, Arg3, One))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^^PCI0.LPC0.EC.TPFL == 0x02))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (TPD3)
        {
            Name (HID2, One)
            Name (_HID, "FTCS1000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0038, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2CA",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPIO", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0009
                        }
                })
                Return (RBUF) /* \_SB_.I2CA.TPD3._CRS.RBUF */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Return (HIDD (Arg0, Arg1, Arg2, Arg3, One))
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^^PCI0.LPC0.EC.TPFL == 0x03))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }
}

