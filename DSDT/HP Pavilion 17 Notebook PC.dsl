/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of dsdt.dat
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000105C5 (67013)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0xD0
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "1978    "
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "DSDT", 1, "HPQOEM", "1978    ", 0x00000000)
{
    /*
     * iASL Warning: There were 12 external control methods found during
     * disassembly, but only 0 were resolved (12 unresolved). Additional
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
    External (_PR_.CFGD, UnknownObj)
    External (_PR_.CPU0._PPC, IntObj)
    External (_PR_.CPU0._PSS, UnknownObj)
    External (_SB_.PCCD, UnknownObj)
    External (_SB_.PCCD.PENB, UnknownObj)
    External (_SB_.PCI0.B0D3.ABAR, IntObj)
    External (_SB_.PCI0.B0D3.BARA, UnknownObj)
    External (_SB_.PCI0.GFX0.CADL, UnknownObj)
    External (_SB_.PCI0.GFX0.CAL2, UnknownObj)
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)
    External (_SB_.PCI0.GFX0.DD1F, UnknownObj)
    External (_SB_.PCI0.GFX0.GHDS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.GLID, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.GSCI, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.GSSE, UnknownObj)
    External (_SB_.PCI0.GFX0.NADL, UnknownObj)
    External (_SB_.PCI0.GFX0.NDL2, UnknownObj)
    External (_SB_.PCI0.PAUD.PUAM, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG0, UnknownObj)
    External (_SB_.PCI0.PEG0.HPME, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG0.PEGP, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.EPON, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG1, UnknownObj)
    External (_SB_.PCI0.PEG1.HPME, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.PEG2, UnknownObj)
    External (_SB_.PCI0.PEG2.HPME, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.RP05.PEGP.EPON, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.XHC_.DUAM, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (D1F0, UnknownObj)
    External (D1F1, UnknownObj)
    External (D1F2, UnknownObj)
    External (GSMI, UnknownObj)
    External (IGDS, IntObj)
    External (LIDS, UnknownObj)
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)
    External (PS0X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (PS3X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (SGMD, UnknownObj)

    Name (SS1, Zero)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (SP2O, 0x4E)
    Name (SP1O, 0x2E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0600)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (HSCS, One)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x8000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x10)
    Name (PBLK, 0x1810)
    Name (PMBS, 0x1800)
    Name (PMLN, 0x0100)
    Name (LVL2, 0x1814)
    Name (LVL3, 0x1815)
    Name (LVL4, 0x1816)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0800)
    Name (GPLN, 0x0400)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x1830)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FEMD, 0x04)
    Name (BGR, One)
    Name (BFR, 0x02)
    Name (BBR, 0x03)
    Name (BWC, 0x04)
    Name (BGRP, 0x09)
    Name (BGRC, 0x0A)
    Name (BFRP, 0x0B)
    Name (BBRP, 0x0C)
    Name (BRPS, 0x10)
    Name (BRCS, 0x11)
    Name (BRDS, 0x12)
    Name (BR4S, 0x13)
    Name (BR5S, 0x14)
    Name (BWT1, 0x20)
    Name (BW1P, 0x21)
    Name (BW2C, 0x22)
    Name (BW2P, 0x23)
    Name (BSPC, 0x24)
    Name (BSPP, 0x25)
    Name (BTS, 0x26)
    Name (BICO, 0x27)
    Name (BICC, 0x28)
    Name (BHB, 0x30)
    Name (BFS2, 0x31)
    Name (BFS3, 0x32)
    Name (BFS4, 0x33)
    Name (BRH, 0x35)
    Name (BFHC, 0x40)
    Name (BFD1, 0x41)
    Name (BFD2, 0x42)
    Name (BFCC, 0x43)
    Name (BHCP, 0x44)
    Name (BCOC, 0x45)
    Name (BFHP, 0x46)
    Name (BFCP, 0x47)
    Name (BTDT, 0x50)
    Name (BTMB, 0x51)
    Name (BBGB, 0x52)
    Name (BHC2, 0x53)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (WDTE, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (PFTI, 0x04)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (DPPB, 0xFED98000)
    Name (DPPL, 0x8000)
    Name (KBWK, Zero)
    Name (TPWK, Zero)
    Name (SAV0, Zero)
    Name (SAV1, Zero)
    Name (PSVD, Zero)
    Name (SSOS, Zero)
    OperationRegion (GNVS, SystemMemory, 0x9CF7DA98, 0x000002F6)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x1E), 
        Offset (0x25), 
        REVN,   8, 
        Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        COMA,   8, 
        COMB,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x42), 
        MEFE,   8, 
        DSTS,   8, 
        Offset (0x48), 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    16, 
        PLID,   8, 
        ECTG,   8, 
        Offset (0x70), 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        Offset (0x7A), 
        DSEN,   8, 
        Offset (0x7C), 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        Offset (0x8F), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        Offset (0xB0), 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        XHCI,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        PCHD,   8, 
        PCHC,   8, 
        PCHH,   8, 
        CTDP,   8, 
        LPMP,   8, 
        LPMV,   8, 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        PFMA,   64, 
        PFMS,   8, 
        PFIA,   16, 
        ICNF,   8, 
        DSP0,   32, 
        DSP1,   32, 
        NFCE,   8, 
        CODS,   8, 
        SNHE,   8, 
        S0ID,   8, 
        CTDB,   8, 
        Offset (0x207), 
        PWRE,   8, 
        PWRP,   8, 
        XHPR,   8, 
        SDS0,   8, 
        SDS1,   16, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        Offset (0x212), 
        RIC0,   8, 
        PEPY,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        DSPD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        RWAG,   8, 
        I20D,   16, 
        I21D,   16, 
        Offset (0x231), 
        RCG0,   8, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        Offset (0x27E), 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        DOSD,   8, 
        USBH,   8, 
        BCV4,   8, 
        WTV0,   8, 
        WTV1,   8, 
        APFU,   8, 
        SOHP,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8, 
        PEPC,   16, 
        VRSD,   16, 
        PB1E,   8, 
        WAND,   8, 
        WWAT,   8, 
        WWPT,   8, 
        WWCT,   8, 
        WWHT,   8, 
        Offset (0x2AD), 
        MPLT,   16, 
        GR13,   8, 
        SPST,   8, 
        ECLP,   8, 
        Offset (0x2BC), 
        CCMD,   8, 
        COMD,   8, 
        LPT1,   8, 
        PSTP,   8, 
        WKMD,   8, 
        IDER,   8, 
        PIE0,   8, 
        PIE1,   8, 
        CSTS,   8, 
        PMEE,   8, 
        WOLE,   8, 
        NVAD,   32, 
        NVSZ,   32, 
        OPTF,   8, 
        IFSE,   8, 
        ISCT,   8, 
        S1C0,   16, 
        S1C1,   16, 
        S2C0,   16, 
        S2C1,   16, 
        SLPS,   8, 
        ALAT,   32, 
        HRAM,   8, 
        MDEN,   8, 
        TBEP,   8, 
        WIFD,   8, 
        WFAT,   8, 
        WFPT,   8, 
        WFCT,   8, 
        WFHT,   8, 
        SDEB,   8, 
        FGNE,   8, 
        MAUL,   8, 
        U2PR,   32, 
        U3SS,   8, 
        TBTC,   8, 
        TRPN,   8, 
        TBTM,   32, 
        ULTP,   8
    }

    OperationRegion (OGNS, SystemMemory, 0x9CF7B018, 0x000012FA)
    Field (OGNS, AnyAcc, Lock, Preserve)
    {
        SERN,   80, 
        RES1,   48, 
        WMAC,   48, 
        RS11,   16, 
        BMAC,   48, 
        RS12,   16, 
        MACA,   48, 
        RES2,   24, 
        NISC,   8, 
        RS21,   48, 
        MACF,   8, 
        RS31,   120, 
        MBNE,   128, 
        HWCN,   256, 
        CTNU,   152, 
        RES3,   8, 
        CLIM,   8, 
        FPSZ,   8, 
        WIN7,   8, 
        PFCY,   16, 
        PREV,   24, 
        WPCR,   8, 
        WINA,   8, 
        GPSA,   8, 
        KBMT,   8, 
        RES4,   32, 
        LCOD,   24, 
        RES5,   8, 
        GUID,   64, 
        UUID,   128, 
        ASTG,   160, 
        SKUN,   112, 
        MDID,   256, 
        ESTL,   8, 
        IMID,   8, 
        ODDC,   8, 
        TVFL,   8, 
        QPFL,   8, 
        QPSL,   8, 
        CHID,   8, 
        OSKU,   8, 
        WPFL,   8, 
        DBSW,   8, 
        EFOF,   8, 
        MSME,   8, 
        INFL,   16, 
        Offset (0x1000), 
        WSD0,   8, 
        WSD1,   8, 
        WSD2,   8, 
        WSD3,   8, 
        WSD4,   8, 
        WSD5,   8, 
        WSD6,   8, 
        WSD7,   8, 
        HWCT,   8, 
        HWBC,   8, 
        HWRC,   8, 
        HWBF,   1024, 
        EHWB,   4096, 
        IAOR,   8, 
        CDAT,   32, 
        WLVD,   16, 
        WLDD,   16, 
        WLSV,   16, 
        WLSS,   16, 
        BTVD,   16, 
        BTDD,   16, 
        WWVD,   16, 
        WWDD,   16, 
        GPVD,   16, 
        GPDD,   16, 
        FACM,   16, 
        SMA4,   8, 
        WIVD,   16, 
        WIDD,   16, 
        RCKP,   8, 
        HDSM,   16, 
        HD1H,   64, 
        HD2H,   64, 
        OD1H,   64, 
        EBUR,   8, 
        HD1P,   16, 
        HD1M,   16, 
        HD2P,   16, 
        HD2M,   16, 
        OD1P,   16, 
        OD1M,   16, 
        HBUP,   8, 
        HSIN,   8, 
        HRSV,   152, 
        OG00,   8, 
        OG01,   8, 
        OG02,   8, 
        OG03,   8, 
        OG04,   8, 
        OG05,   8, 
        OG06,   8, 
        OG07,   8, 
        OG08,   8, 
        OG09,   8, 
        OG10,   8, 
        ECON,   8, 
        TJMX,   8, 
        FNKY,   8, 
        CAME,   8, 
        VTDT,   8, 
        DPMD,   8, 
        LANW,   8
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Scope (\_SB)
        {
            Device (ACAD)
            {
                Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                {
                    _SB
                })
                Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                {
                    If ((^^PCI0.LPCB.EC0.ECOK == One))
                    {
                        Local0 = ^^PCI0.LPCB.EC0.SW2S /* \_SB_.PCI0.LPCB.EC0_.SW2S */
                    }
                    Else
                    {
                        Local0 = One
                    }

                    Return (Local0)
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (LID0)
            {
                Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
                Method (_LID, 0, NotSerialized)  // _LID: Lid Status
                {
                    If ((^^PCI0.LPCB.EC0.ECOK == One))
                    {
                        If ((^^PCI0.LPCB.EC0.ECLS == One))
                        {
                            Local0 = Zero
                        }
                        Else
                        {
                            Local0 = One
                        }
                    }
                    Else
                    {
                        Local0 = One
                    }

                    If ((OSKU != Zero))
                    {
                        ^^PCI0.LPCB.EC0.ULID (One)
                    }

                    Return (Local0)
                }
            }

            Device (PWRB)
            {
                Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Method (GBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            Arg2 = TIDX /* \_SB_.GBFE.TIDX */
        }

        Method (PBFE, 3, NotSerialized)
        {
            CreateByteField (Arg0, Arg1, TIDX)
            TIDX = Arg2
        }

        Method (ITOS, 1, NotSerialized)
        {
            Local0 = Buffer (0x05)
                {
                     0x20, 0x20, 0x20, 0x20, 0x20                     //      
                }
            Local7 = Buffer (0x11)
                {
                    "0123456789ABCDEF"
                }
            Local1 = 0x05
            Local2 = Zero
            Local3 = Zero
            While (Local1)
            {
                Local1--
                Local4 = ((Arg0 >> (Local1 << 0x02)) & 0x0F)
                GBFE (Local7, Local4, RefOf (Local5))
                PBFE (Local0, Local2, Local5)
                Local2++
            }

            Return (Local0)
        }

        Device (BAT0)
        {
            Name (FRST, One)
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
            {
                _SB
            })
            Name (PBIF, Package (0x0D)
            {
                One, 
                Ones, 
                Ones, 
                One, 
                Ones, 
                0xFA, 
                0x96, 
                0x0A, 
                0x19, 
                "BAT0", 
                " ", 
                " ", 
                " "
            })
            Name (PBST, Package (0x04)
            {
                Zero, 
                Ones, 
                Ones, 
                0x2710
            })
            Name (BAST, Zero)
            Name (B1ST, 0x0F)
            Name (B1WT, Zero)
            Name (FABL, Ones)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        B1ST = 0x1F
                    }
                    Else
                    {
                        B1ST = 0x0F
                    }
                }
                Else
                {
                    B1ST = 0x0F
                }

                Return (B1ST) /* \_SB_.BAT0.B1ST */
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UPBI ()
                    }
                    Else
                    {
                        IVBI ()
                    }
                }
                Else
                {
                    IVBI ()
                }

                Return (PBIF) /* \_SB_.BAT0.PBIF */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        UPBS ()
                    }
                    Else
                    {
                        IVBS ()
                    }
                }
                Else
                {
                    IVBS ()
                }

                Return (PBST) /* \_SB_.BAT0.PBST */
            }

            Method (UPBI, 0, NotSerialized)
            {
                Local5 = ^^PCI0.LPCB.EC0.BFCC /* \_SB_.PCI0.LPCB.EC0_.BFCC */
                If ((Local5 && !(Local5 & 0x8000)))
                {
                    Local5 >>= 0x05
                    Local5 <<= 0x05
                    PBIF [One] = Local5
                    PBIF [0x02] = Local5
                    Local2 = (Local5 / 0x64)
                    Local2 += One
                    Local0 = ^^PCI0.LPCB.EC0.BCLB /* \_SB_.PCI0.LPCB.EC0_.BCLB */
                    Local1 = ^^PCI0.LPCB.EC0.BCHB /* \_SB_.PCI0.LPCB.EC0_.BCHB */
                    Local1 <<= 0x08
                    Local0 |= Local1
                    If ((Local0 < 0x12C0))
                    {
                        Local4 = (Local2 * 0x0E)
                        PBIF [0x05] = (Local4 + 0x02)
                        Local4 = (Local2 * 0x09)
                        PBIF [0x06] = (Local4 + 0x02)
                        Local4 = (Local2 * 0x0B)
                    }
                    ElseIf ((SMA4 == One))
                    {
                        Local4 = (Local2 * 0x0C)
                        PBIF [0x05] = (Local4 + 0x02)
                        Local4 = (Local2 * 0x07)
                        PBIF [0x06] = (Local4 + 0x02)
                        Local4 = (Local2 * 0x09)
                    }
                    Else
                    {
                        Local4 = (Local2 * 0x0A)
                        PBIF [0x05] = (Local4 + 0x02)
                        Local4 = (Local2 * 0x05)
                        PBIF [0x06] = (Local4 + 0x02)
                        Local4 = (Local2 * 0x07)
                    }

                    FABL = (Local4 + 0x02)
                }

                If (^^PCI0.LPCB.EC0.MBNH)
                {
                    Local0 = ^^PCI0.LPCB.EC0.BVLB /* \_SB_.PCI0.LPCB.EC0_.BVLB */
                    Local1 = ^^PCI0.LPCB.EC0.BVHB /* \_SB_.PCI0.LPCB.EC0_.BVHB */
                    Local1 <<= 0x08
                    Local0 |= Local1
                    PBIF [0x04] = Local0
                    PBIF [0x09] = "OANI$"
                    PBIF [0x0B] = "NiMH"
                }
                Else
                {
                    Local0 = ^^PCI0.LPCB.EC0.BVLB /* \_SB_.PCI0.LPCB.EC0_.BVLB */
                    Local1 = ^^PCI0.LPCB.EC0.BVHB /* \_SB_.PCI0.LPCB.EC0_.BVHB */
                    Local1 <<= 0x08
                    Local0 |= Local1
                    PBIF [0x04] = Local0
                    Sleep (0x32)
                    PBIF [0x0B] = "LION"
                }

                PBIF [0x09] = "Primary"
                UPUM ()
                PBIF [Zero] = One
            }

            Method (UPUM, 0, NotSerialized)
            {
                Local0 = Buffer (0x0A)
                    {
                        /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x00, 0x00                                       // ..
                    }
                Local6 = Buffer (0x05)
                    {
                         0x36, 0x35, 0x35, 0x33, 0x35                     // 65535
                    }
                Local7 = Buffer (0x05)
                    {
                         0x31, 0x32, 0x33, 0x32, 0x31                     // 12321
                    }
                PBIF [0x0C] = "Hewlett-Packard"
            }

            Method (UPBS, 0, NotSerialized)
            {
                Local0 = ^^PCI0.LPCB.EC0.MCUR /* \_SB_.PCI0.LPCB.EC0_.MCUR */
                If ((Local0 & 0x8000))
                {
                    If ((Local0 == 0xFFFF))
                    {
                        PBST [One] = Ones
                    }
                    Else
                    {
                        Local1 = ~Local0
                        Local1++
                        Local3 = (Local1 & 0xFFFF)
                        PBST [One] = Local3
                    }
                }
                Else
                {
                    PBST [One] = Local0
                }

                Local5 = ^^PCI0.LPCB.EC0.MBRM /* \_SB_.PCI0.LPCB.EC0_.MBRM */
                If (!(Local5 & 0x8000))
                {
                    Local5 >>= 0x05
                    Local5 <<= 0x05
                    If ((Local5 != DerefOf (PBST [0x02])))
                    {
                        PBST [0x02] = Local5
                    }
                }

                If ((!^^PCI0.LPCB.EC0.SW2S && (^^PCI0.LPCB.EC0.BACR == One)))
                {
                    PBST [0x02] = FABL /* \_SB_.BAT0.FABL */
                }

                PBST [0x03] = ^^PCI0.LPCB.EC0.MBCV /* \_SB_.PCI0.LPCB.EC0_.MBCV */
                PBST [Zero] = ^^PCI0.LPCB.EC0.MBST /* \_SB_.PCI0.LPCB.EC0_.MBST */
            }

            Method (IVBI, 0, NotSerialized)
            {
                PBIF [One] = Ones
                PBIF [0x02] = Ones
                PBIF [0x04] = Ones
                PBIF [0x09] = "Bad"
                PBIF [0x0A] = "Bad"
                PBIF [0x0B] = "Bad"
                PBIF [0x0C] = "Bad"
            }

            Method (IVBS, 0, NotSerialized)
            {
                PBST [Zero] = Zero
                PBST [One] = Ones
                PBST [0x02] = Ones
                PBST [0x03] = 0x2710
            }
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Name (PR00, Package (0x25)
            {
                Package (0x04)
                {
                    0x0013FFFF, 
                    Zero, 
                    LNKH, 
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
                    0x0016FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    LNKG, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    LNKA, 
                    Zero
                }, 

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
                    0x0001FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    LNKC, 
                    Zero
                }
            })
            Name (AR00, Package (0x24)
            {
                Package (0x04)
                {
                    0x0014FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }, 

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
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x02, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0006FFFF, 
                    0x03, 
                    Zero, 
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.PCI0.AR00 */
                }

                Return (PR00) /* \_SB_.PCI0.PR00 */
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x54), 
                D0EN,   1, 
                D1F2,   1, 
                D1F1,   1, 
                D1F0,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x87), 
                Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y00)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic, DenseTranslation)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateWordField (BUF0, \_SB.PCI0._Y00._MAX, PBMX)  // _MAX: Maximum Base Address
                PBMX = ((PELN >> 0x14) - 0x02)
                CreateWordField (BUF0, \_SB.PCI0._Y00._LEN, PBLN)  // _LEN: Length
                PBLN = ((PELN >> 0x14) - One)
                If (PM1L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y01._LEN, C0LN)  // _LEN: Length
                    C0LN = Zero
                }

                If ((PM1L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y01._RW, C0RW)  // _RW_: Read-Write Status
                    C0RW = Zero
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y02._LEN, C4LN)  // _LEN: Length
                    C4LN = Zero
                }

                If ((PM1H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y02._RW, C4RW)  // _RW_: Read-Write Status
                    C4RW = Zero
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y03._LEN, C8LN)  // _LEN: Length
                    C8LN = Zero
                }

                If ((PM2L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y03._RW, C8RW)  // _RW_: Read-Write Status
                    C8RW = Zero
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y04._LEN, CCLN)  // _LEN: Length
                    CCLN = Zero
                }

                If ((PM2H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y04._RW, CCRW)  // _RW_: Read-Write Status
                    CCRW = Zero
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y05._LEN, D0LN)  // _LEN: Length
                    D0LN = Zero
                }

                If ((PM3L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y05._RW, D0RW)  // _RW_: Read-Write Status
                    D0RW = Zero
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y06._LEN, D4LN)  // _LEN: Length
                    D4LN = Zero
                }

                If ((PM3H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y06._RW, D4RW)  // _RW_: Read-Write Status
                    D4RW = Zero
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y07._LEN, D8LN)  // _LEN: Length
                    D8LN = Zero
                }

                If ((PM4L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y07._RW, D8RW)  // _RW_: Read-Write Status
                    D8RW = Zero
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y08._LEN, DCLN)  // _LEN: Length
                    DCLN = Zero
                }

                If ((PM4H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y08._RW, DCRW)  // _RW_: Read-Write Status
                    DCRW = Zero
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y09._LEN, E0LN)  // _LEN: Length
                    E0LN = Zero
                }

                If ((PM5L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y09._RW, E0RW)  // _RW_: Read-Write Status
                    E0RW = Zero
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0A._LEN, E4LN)  // _LEN: Length
                    E4LN = Zero
                }

                If ((PM5H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0A._RW, E4RW)  // _RW_: Read-Write Status
                    E4RW = Zero
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0B._LEN, E8LN)  // _LEN: Length
                    E8LN = Zero
                }

                If ((PM6L == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0B._RW, E8RW)  // _RW_: Read-Write Status
                    E8RW = Zero
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0C._LEN, ECLN)  // _LEN: Length
                    ECLN = Zero
                }

                If ((PM6H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0C._RW, ECRW)  // _RW_: Read-Write Status
                    ECRW = Zero
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, \_SB.PCI0._Y0D._LEN, F0LN)  // _LEN: Length
                    F0LN = Zero
                }

                If ((PM0H == One))
                {
                    CreateBitField (BUF0, \_SB.PCI0._Y0D._RW, F0RW)  // _RW_: Read-Write Status
                    F0RW = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._Y0E._LEN, M1LN)  // _LEN: Length
                M1MN = (TLUD << 0x14)
                M1LN = ((M1MX - M1MN) + One)
                Return (BUF0) /* \_SB_.PCI0.BUF0 */
            }

            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Name (XCNT, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (^XHC.CUID (Arg0))
                {
                    Return (^XHC.POSC (Arg1, Arg2, Arg3))
                }
                ElseIf ((OSYS >= 0x07DC))
                {
                    If ((XCNT == Zero))
                    {
                        ^XHC.XSEL ()
                        XCNT++
                    }
                }

                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & One))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
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
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    If (PMEE)
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            0x04
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0B, 
                            Zero
                        })
                    }
                }

                Name (PR01, Package (0x18)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        Zero, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x02, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x03, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        Zero, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        One, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x02, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x03, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        One, 
                        LNKH, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        LNKE, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        LNKG, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        LNKF, 
                        Zero
                    }
                })
                Name (AR01, Package (0x18)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        Zero, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x02, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0002FFFF, 
                        0x03, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        Zero, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        One, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x02, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0x0003FFFF, 
                        0x03, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        One, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0x0004FFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        One, 
                        Zero, 
                        0x14
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x02, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0x0005FFFF, 
                        0x03, 
                        Zero, 
                        0x15
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (PICM)
                    {
                        Return (AR01) /* \_SB_.PCI0.P0P1.AR01 */
                    }

                    Return (PR01) /* \_SB_.PCI0.P0P1.PR01 */
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, Zero, 0x0100)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x02), 
                        CDID,   16, 
                        Offset (0x08), 
                        CRID,   8, 
                        Offset (0x60), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                        Offset (0x68), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8, 
                        Offset (0xAC), 
                        Offset (0xAD), 
                        Offset (0xAE), 
                        XUSB,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0x78), 
                        ,   6, 
                    GR03,   2, 
                    Offset (0x7A), 
                    GR08,   2, 
                    GR09,   2, 
                    GR0A,   2, 
                    GR0B,   2, 
                    Offset (0x7C), 
                        ,   2, 
                    GR19,   2, 
                    Offset (0x80), 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                OperationRegion (GPIO, SystemIO, 0x0800, 0x60)
                Field (GPIO, ByteAcc, Lock, Preserve)
                {
                    Offset (0x0C), 
                        ,   4, 
                        ,   13, 
                    PI17,   1, 
                    Offset (0x38), 
                        ,   3, 
                    PO35,   1, 
                    PO36,   1, 
                    PI37,   1, 
                        ,   13, 
                    PO51,   1, 
                    PO52,   1, 
                    PO53,   1, 
                    PO54,   1
                }

                Name (TBST, One)
                Device (EC0)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (ZPDF, Zero)
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BFFR, ResourceTemplate ()
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
                        Return (BFFR) /* \_SB_.PCI0.LPCB.EC0_._CRS.BFFR */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    OperationRegion (ERAM, EmbeddedControl, Zero, 0xFF)
                    Field (ERAM, ByteAcc, Lock, Preserve)
                    {
                        SMPR,   8, 
                        SMST,   8, 
                        SMAD,   8, 
                        SMCM,   8, 
                        SMD0,   256, 
                        BCNT,   8, 
                        SMAA,   8, 
                        BATD,   16, 
                        Offset (0x40), 
                        SW2S,   1, 
                            ,   2, 
                        ACCC,   1, 
                        TRPM,   1, 
                        Offset (0x41), 
                        W7OS,   1, 
                            ,   1, 
                        RFLE,   1, 
                        SUSE,   1, 
                        RFLG,   1, 
                        PFN2,   1, 
                        WOLF,   1, 
                        PFLG,   1, 
                        Offset (0x43), 
                        BBDA,   1, 
                        CIRB,   1, 
                            ,   1, 
                        ACKY,   1, 
                            ,   2, 
                        NQLB,   1, 
                        Offset (0x44), 
                        NICL,   1, 
                        NICD,   1, 
                        Offset (0x45), 
                            ,   2, 
                        QUAD,   1, 
                        Offset (0x46), 
                        Offset (0x4E), 
                        LIDE,   1, 
                        Offset (0x52), 
                        ECLS,   1, 
                        WBSS,   1, 
                        Offset (0x58), 
                        RTMP,   8, 
                        ECT1,   8, 
                        ECT2,   8, 
                        RG5B,   8, 
                        FSPD,   16, 
                        Offset (0x5F), 
                        CFN2,   1, 
                        SFN2,   1, 
                        Offset (0x68), 
                            ,   3, 
                        PLGS,   1, 
                        Offset (0x69), 
                            ,   6, 
                        BTVD,   1, 
                        Offset (0x70), 
                        BCLB,   8, 
                        BCHB,   8, 
                        BFCC,   16, 
                        BVLB,   8, 
                        BVHB,   8, 
                        BDVO,   8, 
                        Offset (0x7E), 
                        BATP,   8, 
                        ECTB,   1, 
                        Offset (0x82), 
                        MBST,   8, 
                        MCUR,   16, 
                        MBRM,   16, 
                        MBCV,   16, 
                        Offset (0x8D), 
                            ,   5, 
                        MBFC,   1, 
                        Offset (0x92), 
                        SPSV,   8, 
                        AVGT,   8, 
                        GSSU,   1, 
                        GSMS,   1, 
                        Offset (0x95), 
                        MMST,   4, 
                        DMST,   4, 
                        Offset (0xA0), 
                        QBHK,   8, 
                        RTCE,   1, 
                        Offset (0xA2), 
                        QBBB,   8, 
                        SMTD,   8, 
                        MBTS,   1, 
                        MBTF,   1, 
                            ,   4, 
                        AD47,   1, 
                        BACR,   1, 
                        MBTC,   1, 
                            ,   2, 
                        MBNH,   1, 
                        Offset (0xA6), 
                        MBDC,   8, 
                        Offset (0xAA), 
                        ADIM,   1, 
                        SMSZ,   1, 
                            ,   5, 
                        RCDS,   1, 
                        Offset (0xAD), 
                        SADP,   8, 
                        Offset (0xB2), 
                        RPM1,   8, 
                        RPM2,   8, 
                        Offset (0xBA), 
                        CLOW,   8, 
                        CMAX,   8, 
                        Offset (0xCF), 
                        DLYC,   8, 
                        Offset (0xD4), 
                        PSHD,   8, 
                        PSLD,   8, 
                        DBPL,   8, 
                        Offset (0xDA), 
                        PSIN,   8, 
                        PSKB,   1, 
                        PSTP,   1, 
                        PSBA,   1, 
                        PWOL,   1, 
                        Offset (0xDF), 
                        ECBW,   1, 
                        Offset (0xE0), 
                        DLYT,   8, 
                        DLY2,   8, 
                        BRTL,   8, 
                        Offset (0xE6), 
                        SFHK,   8, 
                        Offset (0xE9), 
                        DTMT,   8, 
                        PL12,   8, 
                        ETMT,   8, 
                        Offset (0xF0), 
                            ,   7, 
                        TMPS,   1, 
                        Offset (0xF2), 
                        ZPOD,   1, 
                        Offset (0xF4), 
                        SFAN,   8, 
                        Offset (0xF8), 
                            ,   1, 
                        S3WF,   1, 
                        BAAE,   1
                    }

                    Name (ECOK, Zero)
                    Name (BATO, Zero)
                    Name (BATN, Zero)
                    Name (BATF, 0xC0)
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (((Arg0 == 0x03) && (Arg1 == One)))
                        {
                            ECOK = One
                            GBAS ()
                            ECMI ()
                        }
                    }

                    Method (BPOL, 1, NotSerialized)
                    {
                        DBPL = Arg0
                    }

                    Method (BPOM, 0, NotSerialized)
                    {
                        DBPL = Zero
                    }

                    Name (_GPE, 0x1D)  // _GPE: General Purpose Events
                    Method (GBAS, 0, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            BATF = Zero
                            Local0 = MBTS /* \_SB_.PCI0.LPCB.EC0_.MBTS */
                            Local1 = SW2S /* \_SB_.PCI0.LPCB.EC0_.SW2S */
                            Local0 <<= 0x06
                            Local1 <<= One
                            If (((BATO & 0x40) != Local0))
                            {
                                BATF |= 0x40
                            }

                            If (((BATO & 0x02) != Local1))
                            {
                                BATF |= 0x02
                            }

                            BATO = Zero
                            BATO = (Local0 | Local1)
                        }
                    }

                    Method (_Q09, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        BPOM ()
                        GBAS ()
                        Notify (BAT0, 0x80) // Status Change
                        Notify (BAT0, 0x81) // Information Change
                        Notify (ACAD, 0x80) // Status Change
                    }

                    Method (_Q20, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            CBCD ()
                            GBAS ()
                            Notify (BAT0, 0x81) // Information Change
                            Notify (BAT0, 0x80) // Status Change
                            If ((0x02 & BATF))
                            {
                                Notify (ACAD, 0x80) // Status Change
                                PWRS = SW2S /* \_SB_.PCI0.LPCB.EC0_.SW2S */
                                If (SW2S)
                                {
                                    ^^^^WMID.GWEV (0x03, Zero)
                                }
                            }

                            SASU ()
                            PNOT ()
                            ^^^ACEL.ADJT ()
                        }
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            BACR = Zero
                            Notify (BAT0, 0x80) // Status Change
                        }
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            Notify (BAT0, 0x81) // Information Change
                            Notify (BAT0, 0x80) // Status Change
                        }
                    }

                    Method (_Q33, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Local0 = ^^RTC.RTMN /* \_SB_.PCI0.LPCB.RTC_.RTMN */
                        FromBCD (Local0, Local0)
                        Local1 = ^^RTC.RTHR /* \_SB_.PCI0.LPCB.RTC_.RTHR */
                        FromBCD (Local1, Local1)
                        Local2 = ^^RTC.RTDY /* \_SB_.PCI0.LPCB.RTC_.RTDY */
                        Local3 = ^^RTC.RTSE /* \_SB_.PCI0.LPCB.RTC_.RTSE */
                        FromBCD (Local3, Local3)
                        If ((ECOK == One))
                        {
                            PSIN = 0xFF
                            Sleep (One)
                            PSLD = Local0
                            PSHD = Local1
                            PSIN = 0x1C
                            Sleep (One)
                            PSLD = Local2
                            PSHD = Local3
                            PSIN = 0x1D
                        }
                    }

                    Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x14)
                        Debug = "_Q80 : Temperature Up"
                        If (((\_TZ.HOTF == One) && (OSYS == 0x07DC)))
                        {
                            Return (Zero)
                        }

                        Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                    }

                    Method (_Q81, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x14)
                        Debug = "_Q81 : Temperature Down"
                        If (((\_TZ.HOTF == One) && (OSYS == 0x07DC)))
                        {
                            Return (Zero)
                        }

                        Notify (\_TZ.TZ01, 0x80) // Thermal Status Change
                    }

                    Method (_Q82, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x14)
                        Debug = "_Q82 : Temperature reachs for Turbo Mode OFF"
                        ECTB = One
                        TBMC (Zero)
                    }

                    Method (_Q83, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Sleep (0x14)
                        Debug = "_Q83 : Temperature reachs for Turbo Mode ON"
                        ECTB = Zero
                        TBMC (One)
                    }

                    Method (_Q8A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            If (LIDE)
                            {
                                Debug = "_Q8A : LID Switch Event"
                                LIDE = Zero
                                Sleep (0x14)
                                Notify (LID0, 0x80) // Status Change
                                ^^^ACEL.ADJT ()
                            }
                        }
                    }

                    Method (_Q0D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Debug = "_Q0D : Switch Display (Fn+F4)"
                        ^^^GFX0.GHDS (Zero)
                        Sleep (0xC8)
                    }

                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (^^^GFX0.DD1F, 0x87) // Device-Specific
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (^^^GFX0.DD1F, 0x86) // Device-Specific
                    }

                    Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Debug = "!!! Wireless Button pressed !!!"
                        If ((OSYS >= 0x07DC))
                        {
                            Notify (WLBT, 0x80) // Status Change
                        }
                        Else
                        {
                            If (BNLS)
                            {
                                BNLS = Zero
                                Local0 = Zero
                            }
                            Else
                            {
                                BNLS = One
                                Local0 = One
                            }

                            If ((^^^^WMID.WMIF == One))
                            {
                                If (((WWLS == One) & (WLDS == One)))
                                {
                                    WLOF = Local0
                                }

                                If (((WBTS == One) & (BTDS == One)))
                                {
                                    BTOF = Local0
                                }
                            }
                            Else
                            {
                                If ((WLDS == One))
                                {
                                    WLOF = Local0
                                }

                                If ((BTDS == One))
                                {
                                    BTOF = Local0
                                }
                            }

                            ^^^^WMID.GWEV (0x05, Zero)
                        }
                    }

                    Method (_Q8E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Local0 = \_PR.CPU0._PPC /* External reference */
                        Local1 = (PPCM - One)
                        If ((Local0 < Local1))
                        {
                            Local0++
                            CPUS (Local0)
                        }

                        CLOW = Local0
                    }

                    Method (_Q8F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Local0 = \_PR.CPU0._PPC /* External reference */
                        If (Local0)
                        {
                            Local0--
                            CPUS (Local0)
                        }

                        CLOW = Local0
                    }

                    Method (_Q91, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ZPDF == One))
                        {
                            ZPDF = Zero
                            If ((GL05 & 0x40))
                            {
                                Notify (SAT0, 0x80) // Status Change
                            }
                            Else
                            {
                                Notify (SAT0, 0x84) // Reserved
                            }

                            Sleep (0x03E8)
                        }

                        If ((GL05 & 0x40))
                        {
                            Notify (SAT0, 0x80) // Status Change
                        }
                        Else
                        {
                            Notify (SAT0, 0x84) // Reserved
                        }
                    }

                    Method (_Q92, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            If ((GSMS == One))
                            {
                                Local0 = MMST /* \_SB_.PCI0.LPCB.EC0_.MMST */
                            }
                            Else
                            {
                                Local0 = DMST /* \_SB_.PCI0.LPCB.EC0_.DMST */
                            }

                            If ((TRPM == Zero))
                            {
                                Switch (Local0)
                                {
                                    Case (Zero)
                                    {
                                        PSVD = Zero
                                    }
                                    Case (One)
                                    {
                                        PSVD = 0x0E
                                    }
                                    Case (0x02)
                                    {
                                        PSVD = 0x15
                                    }

                                }
                            }
                            Else
                            {
                                Switch (Local0)
                                {
                                    Case (Zero)
                                    {
                                        PSVD = Zero
                                    }
                                    Case (One)
                                    {
                                        PSVD = Zero
                                    }
                                    Case (0x02)
                                    {
                                        PSVD = 0x15
                                    }

                                }
                            }

                            Notify (\_TZ.TZ01, 0x81) // Thermal Trip Point Change
                        }
                    }

                    Method (_Q93, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            Local0 = MMST /* \_SB_.PCI0.LPCB.EC0_.MMST */
                            Local1 = DMST /* \_SB_.PCI0.LPCB.EC0_.DMST */
                            Switch (Local0)
                            {
                                Case (Zero)
                                {
                                    Switch (Local1)
                                    {
                                        Case (One)
                                        {
                                            PSVD = 0x08
                                        }
                                        Case (0x02)
                                        {
                                            PSVD = 0x05
                                        }

                                    }
                                }
                                Case (One)
                                {
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            PSVD = 0x08
                                        }
                                        Case (0x02)
                                        {
                                            PSVD = 0x1E
                                        }

                                    }
                                }
                                Case (0x02)
                                {
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            PSVD = 0x10
                                        }
                                        Case (One)
                                        {
                                            PSVD = 0x18
                                        }

                                    }
                                }

                            }

                            Notify (\_TZ.TZ01, 0x81) // Thermal Trip Point Change
                        }
                    }

                    Method (_Q94, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            Local0 = MMST /* \_SB_.PCI0.LPCB.EC0_.MMST */
                            Local1 = DMST /* \_SB_.PCI0.LPCB.EC0_.DMST */
                            Switch (Local0)
                            {
                                Case (Zero)
                                {
                                    Switch (Local1)
                                    {
                                        Case (One)
                                        {
                                            PSVD = 0x11
                                        }
                                        Case (0x02)
                                        {
                                            PSVD = 0x0B
                                        }

                                    }
                                }
                                Case (One)
                                {
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            PSVD = 0x04
                                        }
                                        Case (0x02)
                                        {
                                            PSVD = 0x1B
                                        }

                                    }
                                }
                                Case (0x02)
                                {
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            PSVD = 0x0B
                                        }
                                        Case (One)
                                        {
                                            PSVD = 0x1B
                                        }

                                    }
                                }

                            }

                            Notify (\_TZ.TZ01, 0x81) // Thermal Trip Point Change
                        }
                    }

                    Method (_Q95, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            Local0 = MMST /* \_SB_.PCI0.LPCB.EC0_.MMST */
                            Local1 = DMST /* \_SB_.PCI0.LPCB.EC0_.DMST */
                            Switch (Local0)
                            {
                                Case (Zero)
                                {
                                    Switch (Local1)
                                    {
                                        Case (One)
                                        {
                                            PSVD = 0x19
                                        }
                                        Case (0x02)
                                        {
                                            PSVD = 0x10
                                        }

                                    }
                                }
                                Case (One)
                                {
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            PSVD = 0x02
                                        }
                                        Case (0x02)
                                        {
                                            PSVD = 0x18
                                        }

                                    }
                                }
                                Case (0x02)
                                {
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            PSVD = 0x05
                                        }
                                        Case (One)
                                        {
                                            PSVD = 0x1E
                                        }

                                    }
                                }

                            }

                            Notify (\_TZ.TZ01, 0x81) // Thermal Trip Point Change
                        }
                    }

                    Method (_Q96, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((ECOK == One))
                        {
                            Local0 = DMST /* \_SB_.PCI0.LPCB.EC0_.DMST */
                            If ((TRPM == Zero))
                            {
                                Switch (Local0)
                                {
                                    Case (Zero)
                                    {
                                        PSVD = Zero
                                    }
                                    Case (One)
                                    {
                                        PSVD = 0x0E
                                    }
                                    Case (0x02)
                                    {
                                        PSVD = 0x15
                                    }

                                }
                            }
                            Else
                            {
                                Switch (Local0)
                                {
                                    Case (Zero)
                                    {
                                        PSVD = Zero
                                    }
                                    Case (One)
                                    {
                                        PSVD = Zero
                                    }
                                    Case (0x02)
                                    {
                                        PSVD = 0x15
                                    }

                                }
                            }

                            Notify (\_TZ.TZ01, 0x81) // Thermal Trip Point Change
                        }
                    }

                    Method (_Q99, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        TSMI (0xD5, One)
                    }

                    Method (_Q9A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        ^^^^WMID.GWEV (0x0B, One)
                    }

                    Method (_Q9B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        ^^^^WMID.GWEV (0x0B, Zero)
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        SMW0,   16
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        SMB0,   8
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD0,   64
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD1,   128
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD2,   192
                    }

                    Field (ERAM, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x04), 
                        FLD3,   256
                    }

                    Mutex (MUT0, 0x00)
                    Mutex (MUT1, 0x00)
                    Method (SMRD, 4, NotSerialized)
                    {
                        If (!ECOK)
                        {
                            Return (0xFF)
                        }

                        If ((Arg0 != 0x07))
                        {
                            If ((Arg0 != 0x09))
                            {
                                If ((Arg0 != 0x0B))
                                {
                                    If ((Arg0 != 0xC7))
                                    {
                                        Return (0x19)
                                    }
                                }
                            }
                        }

                        Acquire (MUT0, 0xFFFF)
                        Local0 = 0x04
                        While ((Local0 > One))
                        {
                            SMST &= 0x40
                            SMCM = Arg2
                            SMAD = Arg1
                            SMPR = Arg0
                            Local3 = Zero
                            While (!Local1 = (SMST & 0xBF))
                            {
                                Sleep (0x02)
                                Local3++
                                If ((Local3 == 0x32))
                                {
                                    SMST &= 0x40
                                    SMCM = Arg2
                                    SMAD = Arg1
                                    SMPR = Arg0
                                    Local3 = Zero
                                }
                            }

                            If ((Local1 == 0x80))
                            {
                                Local0 = Zero
                            }
                            Else
                            {
                                Local0--
                            }
                        }

                        If (Local0)
                        {
                            Local0 = (Local1 & 0x1F)
                        }
                        Else
                        {
                            If ((Arg0 == 0x07))
                            {
                                Arg3 = SMB0 /* \_SB_.PCI0.LPCB.EC0_.SMB0 */
                            }

                            If ((Arg0 == 0xC7))
                            {
                                Arg3 = SMB0 /* \_SB_.PCI0.LPCB.EC0_.SMB0 */
                            }

                            If ((Arg0 == 0x09))
                            {
                                Arg3 = SMW0 /* \_SB_.PCI0.LPCB.EC0_.SMW0 */
                            }

                            If ((Arg0 == 0x0B))
                            {
                                Local3 = BCNT /* \_SB_.PCI0.LPCB.EC0_.BCNT */
                                Local2 = (0x0100 >> 0x03)
                                If ((Local3 > Local2))
                                {
                                    Local3 = Local2
                                }

                                If ((Local3 < 0x11))
                                {
                                    Local2 = FLD1 /* \_SB_.PCI0.LPCB.EC0_.FLD1 */
                                }
                                ElseIf ((Local3 < 0x19))
                                {
                                    Local2 = FLD2 /* \_SB_.PCI0.LPCB.EC0_.FLD2 */
                                }
                                Else
                                {
                                    Local2 = FLD3 /* \_SB_.PCI0.LPCB.EC0_.FLD3 */
                                }

                                Local3++
                                Local4 = Buffer (Local3){}
                                Local3--
                                Local5 = Zero
                                While ((Local3 > Local5))
                                {
                                    GBFE (Local2, Local5, RefOf (Local6))
                                    PBFE (Local4, Local5, Local6)
                                    Local5++
                                }

                                PBFE (Local4, Local5, Zero)
                                Arg3 = Local4
                            }
                        }

                        Release (MUT0)
                        Return (Local0)
                    }

                    Method (SMWR, 4, NotSerialized)
                    {
                        If (!ECOK)
                        {
                            Return (0xFF)
                        }

                        If ((Arg0 != 0x06))
                        {
                            If ((Arg0 != 0x08))
                            {
                                If ((Arg0 != 0x0A))
                                {
                                    If ((Arg0 != 0xC6))
                                    {
                                        Return (0x19)
                                    }
                                }
                            }
                        }

                        Acquire (MUT0, 0xFFFF)
                        Local0 = 0x04
                        While ((Local0 > One))
                        {
                            If ((Arg0 == 0x06))
                            {
                                SMB0 = Arg3
                            }

                            If ((Arg0 == 0xC6))
                            {
                                SMB0 = Arg3
                            }

                            If ((Arg0 == 0x08))
                            {
                                SMW0 = Arg3
                            }

                            If ((Arg0 == 0x0A))
                            {
                                SMD0 = Arg3
                            }

                            SMST &= 0x40
                            SMCM = Arg2
                            SMAD = Arg1
                            SMPR = Arg0
                            Local3 = Zero
                            While (!Local1 = (SMST & 0xBF))
                            {
                                Sleep (0x02)
                                Local3++
                                If ((Local3 == 0x32))
                                {
                                    SMST &= 0x40
                                    SMCM = Arg2
                                    SMAD = Arg1
                                    SMPR = Arg0
                                    Local3 = Zero
                                }
                            }

                            If ((Local1 == 0x80))
                            {
                                Local0 = Zero
                            }
                            Else
                            {
                                Local0--
                            }
                        }

                        If (Local0)
                        {
                            Local0 = (Local1 & 0x1F)
                        }

                        Release (MUT0)
                        Return (Local0)
                    }

                    Method (GSHK, 0, Serialized)
                    {
                        If ((ECOK == One))
                        {
                            Local0 = SFHK /* \_SB_.PCI0.LPCB.EC0_.SFHK */
                        }

                        Return (Local0)
                    }

                    Method (SSHK, 1, Serialized)
                    {
                        If ((ECOK == One))
                        {
                            SFHK = Arg0
                        }
                    }

                    Method (CPUS, 1, NotSerialized)
                    {
                        \_PR.CPU0._PPC = Arg0
                        If ((TCNT == 0x08))
                        {
                            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU7, 0x80) // Performance Capability Change
                        }

                        If ((TCNT == 0x04))
                        {
                            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                        }

                        If ((TCNT == 0x02))
                        {
                            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                            Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                        }
                        Else
                        {
                            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                        }
                    }

                    Method (ECMI, 0, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            OSTD ()
                            CLOW = Zero
                            CMAX = (PPCM - One)
                            ACKY = FNKY /* \FNKY */
                            SASU ()
                            If ((SMA4 == One))
                            {
                                SMSZ = Zero
                            }
                            Else
                            {
                                SMSZ = One
                            }

                            If ((OSKU != Zero))
                            {
                                ULID (Zero)
                            }

                            _Q92 ()
                            ^^^ACEL.INIT ()
                        }
                        Else
                        {
                            W7OS = Zero
                            RFLG = Zero
                            SUSE = Zero
                        }
                    }

                    Method (SASU, 0, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            Local0 = \_PR.CPU0._PPC /* External reference */
                            Local1 = (PPCM - One)
                            If (((SW2S == Zero) || ((SADP >= One) & (
                                SADP <= 0x02))))
                            {
                                Local0 = Zero
                                CPUS (Local0)
                                CLOW = Local0
                            }

                            If ((SADP == 0x03))
                            {
                                If ((Local0 < Local1))
                                {
                                    Local0++
                                    CPUS (Local0)
                                    CLOW = Local0
                                }
                            }
                        }
                    }

                    Method (RENE, 2, NotSerialized)
                    {
                        Local0 = Zero
                        If ((ECOK == One))
                        {
                            EI01 = Arg0
                            EI02 = Arg1
                            Local0 = EI03 /* \EI03 */
                        }

                        Return (Local0)
                    }

                    Method (WENE, 3, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            EI01 = Arg0
                            EI02 = Arg1
                            EI03 = Arg2
                        }
                    }

                    Method (ECMD, 3, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            WENE (Arg0, Arg1, Arg2)
                            While (EI03)
                            {
                                Stall (0xFF)
                            }

                            Local0 = RENE (0xFB, Zero)
                            Return (Local0)
                        }
                    }

                    Method (TBMC, 1, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            Local0 = \_PR.CPU0._PPC /* External reference */
                            Local1 = (PPCM - One)
                            If (((TBST == One) && (Arg0 == Zero)))
                            {
                                If ((Local0 < Local1))
                                {
                                    Local0++
                                    CPUS (Local0)
                                    CLOW = Local0
                                }

                                TBST = Zero
                            }

                            If (((TBST == Zero) && (Arg0 == One)))
                            {
                                Local0 = Zero
                                CPUS (Local0)
                                CLOW = Local0
                                TBST = One
                            }
                        }
                    }

                    Method (CBCD, 0, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            Local0 = MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                            Local0 &= 0xE4
                            MBDC = Local0
                        }
                    }

                    Method (ULID, 1, NotSerialized)
                    {
                        If ((ECOK == One))
                        {
                            If ((ECLS == One))
                            {
                                Local0 = Zero
                            }
                            Else
                            {
                                Local0 = One
                            }

                            If (IGDS)
                            {
                                If ((Arg0 == One))
                                {
                                    If ((Local0 != LIDS))
                                    {
                                        If (^^^GFX0.GLID (Local0))
                                        {
                                            ^^^GFX0.CLID |= 0x80000000 /* External reference */
                                        }
                                    }
                                }
                            }

                            LIDS = Local0
                        }
                    }

                    Method (OSTD, 0, NotSerialized)
                    {
                        W7OS = Zero
                        SUSE = Zero
                        RFLG = Zero
                        If ((OSYS >= 0x07D0))
                        {
                            If ((OSYS >= 0x07D9))
                            {
                                W7OS = One
                            }
                        }
                        Else
                        {
                            If ((OSYS == 0x03E8))
                            {
                                RFLG = One
                            }

                            If ((OSYS == 0x03E9))
                            {
                                SUSE = One
                            }
                        }
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
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

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y0F)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y0F._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED01000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED02000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED03000
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
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
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x1800,             // Range Minimum
                            0x1800,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0454,             // Range Minimum
                            0x0454,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0380,             // Range Minimum
                            0x0380,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                    })
                }

                Device (LDR2)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    OperationRegion (CMS0, SystemCMOS, Zero, 0x40)
                    Field (CMS0, ByteAcc, NoLock, Preserve)
                    {
                        RTSE,   8, 
                        RTSA,   8, 
                        RTMN,   8, 
                        RTMA,   8, 
                        RTHR,   8, 
                        RTHA,   8, 
                        RTDY,   8, 
                        RTDE,   8
                    }
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                    Offset (0x02), 
                    Offset (0x03), 
                    Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If ((OSYS >= 0x07DC))
                        {
                            Return ("HPQ8001")
                        }
                        Else
                        {
                            Return ("PNP0303")
                        }
                    }

                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

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
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1F, 
                        0x03
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        KBWK = Arg0
                    }
                }

                Device (PS2M)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        Local0 = CMSR (0x42)
                        If ((Local0 == 0x03))
                        {
                            Return ("*SYN1E92")
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            Return ("*SYN1E91")
                        }
                        ElseIf ((Local0 == One))
                        {
                            Return ("*AUI1707")
                        }
                        ElseIf ((Local0 == Zero))
                        {
                            Return ("*AUI1707")
                        }
                        Else
                        {
                            Return ("*AUI1707")
                        }
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

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
                    Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                    {
                        Local0 = CMSR (0x42)
                        If (((Local0 == Zero) || (Local0 == One)))
                        {
                            Return (Package (0x03)
                            {
                                0x0017A906, 
                                0xA906, 
                                0x130FD041
                            })
                        }
                        Else
                        {
                            Return (Package (0x03)
                            {
                                0x001E2E4F, 
                                0x02002E4F, 
                                0x130FD041
                            })
                        }
                    }

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1F, 
                        0x03
                    })
                    Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                    {
                        TPWK = Arg0
                    }
                }
            }

            OperationRegion (ENEB, SystemIO, 0x0385, 0x03)
            Field (ENEB, ByteAcc, NoLock, Preserve)
            {
                ENE1,   8, 
                ENE2,   8, 
                ENE3,   8
            }

            Method (ENER, 2, NotSerialized)
            {
                ENE1 = Arg0
                ENE2 = Arg1
                Return (ENE3) /* \_SB_.PCI0.ENE3 */
            }

            Device (ACEL)
            {
                Name (DVPN, 0xFF)
                Name (CNST, 0xFF)
                Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                {
                    If ((PREV == 0x00303031))
                    {
                        Return (0x04001122)
                    }
                    Else
                    {
                        Return (0x07601122)
                    }
                }

                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Edge, ActiveLow, Exclusive, ,, )
                    {
                        0x00000015,
                    }
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((^^LPCB.EC0.ECOK == One))
                    {
                        If ((DVPN == 0xFF))
                        {
                            Local0 = 0x0F
                            Local2 = ^^LPCB.EC0.SMRD (0xC7, 0x50, 0x0F, RefOf (Local1))
                            If (((Local1 != 0x33) || (Local2 != Zero)))
                            {
                                Local0 = Zero
                            }

                            DVPN = Local0
                        }
                    }

                    Return (DVPN) /* \_SB_.PCI0.ACEL.DVPN */
                }

                Method (INIT, 0, Serialized)
                {
                    If (_STA ())
                    {
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x20, 0x5F)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x21, 0x32)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x32, 0x16)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x33, 0x02)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x30, 0x95)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x36, 0x09)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x37, 0x05)
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x34, 0x7F)
                        ^^LPCB.EC0.SMRD (0xC7, 0x50, 0x24, RefOf (Local0))
                        Local0 &= 0xBF
                        Local0 |= 0x02
                        ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x24, Local0)
                        CNST = 0xFF
                        ADJT ()
                        ^^LPCB.EC0.PLGS = One
                    }
                }

                Method (ADJT, 0, Serialized)
                {
                    If (_STA ())
                    {
                        If ((^^LPCB.EC0.ECOK == One))
                        {
                            Local0 = ^^LPCB.EC0.SW2S /* \_SB_.PCI0.LPCB.EC0_.SW2S */
                        }
                        Else
                        {
                            Local0 = PWRS /* \PWRS */
                        }

                        If (((^^^LID0._LID () == Zero) && (Local0 == Zero)))
                        {
                            If ((CNST != One))
                            {
                                CNST = One
                                ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x25, 0x02)
                                ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x22, 0x20)
                            }
                        }
                        ElseIf ((CNST != Zero))
                        {
                            CNST = Zero
                            ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x25, 0x02)
                            ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x22, 0x40)
                        }
                    }
                }

                Method (CLRI, 0, Serialized)
                {
                    Local0 = Zero
                    If ((^^LPCB.EC0.ECOK == One))
                    {
                        If ((^^LPCB.EC0.SW2S == Zero))
                        {
                            If ((^^^BAT0._STA () == 0x1F))
                            {
                                If ((^^LPCB.EC0.MBRM <= 0x96))
                                {
                                    Local0 = One
                                }
                            }
                        }
                    }

                    Return (Local0)
                }

                Method (ALRD, 1, Serialized)
                {
                    Local0 = Zero
                    If ((^^LPCB.EC0.ECOK == One))
                    {
                        If ((Arg0 == 0x29))
                        {
                            Local0 = ENER (0xF8, 0xB1)
                        }
                        ElseIf ((Arg0 == 0x2B))
                        {
                            Local0 = ENER (0xF8, 0xB2)
                        }
                        ElseIf ((Arg0 == 0x2D))
                        {
                            Local0 = ENER (0xF8, 0xB3)
                        }
                        Else
                        {
                            ^^LPCB.EC0.SMRD (0xC7, 0x50, Arg0, RefOf (Local0))
                        }
                    }

                    Return (Local0)
                }

                Method (ALWR, 2, Serialized)
                {
                    Local0 = Zero
                    If ((^^LPCB.EC0.ECOK == One))
                    {
                        Local0 = ^^LPCB.EC0.SMWR (0xC6, 0x50, Arg0, Arg1)
                    }

                    Return (Local0)
                }

                Method (ALED, 1, Serialized)
                {
                    If (Arg0)
                    {
                        GLED = Zero
                    }
                    Else
                    {
                        GLED = One
                    }
                }

                Method (ALID, 1, Serialized)
                {
                    Local1 = One
                    Local0 = ^^^LID0._LID ()
                    ^^LPCB.EC0.SMRD (0xC7, 0x50, 0x24, RefOf (Local1))
                    Local1 &= 0xBF
                    If ((Local0 == One))
                    {
                        Local1 |= 0x02
                    }
                    Else
                    {
                        Local1 &= 0xFD
                    }

                    ^^LPCB.EC0.SMWR (0xC6, 0x50, 0x24, Local1)
                    Return (Local0)
                }

                Method (ADSN, 0, Serialized)
                {
                    Local0 = Zero
                    Return (Local0)
                }
            }

            Device (WLBT)
            {
                Name (_HID, EisaId ("HPQ6001"))  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((OSYS >= 0x07DC))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }

        Device (WMID)
        {
            Name (WCDS, Package (0x38)
            {
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                0x04, 
                0x0C, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x08, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x04, 
                Zero, 
                Zero, 
                0x04, 
                0x80, 
                0x04, 
                0x04, 
                0x04, 
                0x04, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x80, 
                0x80, 
                0x04
            })
            Method (CSTA, 0, NotSerialized)
            {
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                IAOR = One
                SSMP = 0xC6
                If ((IAOR == One))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \IAOR */
                    DerefOf (Local0 [0x02]) [Zero] = (CDAT & 0xFF
                        )
                }

                Return (Local0)
            }

            Method (CACT, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x02
                CDAT = Arg0
                SSMP = 0xC6
                If ((IAOR == 0x02))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (CDAC, 1, NotSerialized)
            {
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                IAOR = 0x03
                CDAT = Arg0
                SSMP = 0xC6
                If ((IAOR == 0x03))
                {
                    Local0 [Zero] = 0x1C
                }
                Else
                {
                    Local0 [Zero] = IAOR /* \IAOR */
                }

                CDAT = Zero
                Return (Local0)
            }

            Method (HWMC, 2, NotSerialized)
            {
                CreateDWordField (Arg1, Zero, SGIN)
                CreateDWordField (Arg1, 0x04, COMD)
                CreateDWordField (Arg1, 0x08, CMDT)
                CreateDWordField (Arg1, 0x0C, DSZI)
                CreateByteField (Arg1, 0x10, D008)
                CreateByteField (Arg1, 0x11, D009)
                CreateDWordField (Arg1, 0x10, D032)
                If ((DSZI > Zero))
                {
                    CreateField (Arg1, 0x80, (DSZI * 0x08), D128)
                }

                If ((Arg0 == One))
                {
                    Local0 = Zero
                }

                If ((Arg0 == 0x02))
                {
                    Local0 = 0x04
                }

                If ((Arg0 == 0x03))
                {
                    Local0 = 0x80
                }

                If ((Arg0 == 0x04))
                {
                    Local0 = 0x0400
                }

                If ((Arg0 == 0x05))
                {
                    Local0 = 0x1000
                }

                Local1 = Buffer ((0x08 + Local0)){}
                CreateDWordField (Local1, Zero, SIOU)
                CreateDWordField (Local1, 0x04, RETC)
                Local5 = DSZI /* \_SB_.WMID.HWMC.DSZI */
                If ((DSZI > 0x02F0))
                {
                    Local5 = 0x02F0
                }

                CreateField (Arg1, Zero, ((Local5 + 0x10) * 0x08), DAIN)
                SIOU = 0x4C494146
                RETC = 0x02
                If ((SGIN == 0x55434553))
                {
                    RETC = 0x03
                    If ((COMD == One))
                    {
                        RETC = 0x04
                        If ((CMDT == 0x07))
                        {
                            If (DSZI)
                            {
                                Local3 = DerefOf (Arg1 [0x10])
                                Local2 = GBIF (Local3)
                                RETC = Zero
                            }
                            Else
                            {
                                RETC = 0x05
                            }
                        }

                        If ((CMDT == 0x08))
                        {
                            Local2 = GBBT ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x09))
                        {
                            Local2 = GHKS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0A))
                        {
                            Local2 = GHKF ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0C))
                        {
                            Local2 = GBBV ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0D))
                        {
                            Local2 = GFRC ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x0F))
                        {
                            Local2 = GSAS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x10))
                        {
                            Local2 = GWSD ()
                            RETC = Zero
                        }

                        If (((CMDT == 0x1B) && (OSYS < 0x07DC)))
                        {
                            Local2 = GWDI ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x1D))
                        {
                            Local2 = GSDC ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x1E))
                        {
                            Local2 = GBUS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x1F))
                        {
                            Local2 = GBCC ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x28))
                        {
                            If ((DSZI == 0x04))
                            {
                                If ((((((D008 >= Zero) && (D008 <= 
                                    0x06)) || ((D008 >= 0x10) && (D008 <= 0x15))) || ((
                                    D008 >= 0x20) && (D008 <= 0x25))) || (D008 == 0xAA)))
                                {
                                    Local2 = GTDC (D008)
                                    RETC = Zero
                                }
                                Else
                                {
                                    RETC = 0x06
                                }
                            }
                            Else
                            {
                                RETC = 0x05
                            }
                        }

                        If ((CMDT == 0x29))
                        {
                            Local2 = GFCS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x2A))
                        {
                            Local2 = GPES ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x2B))
                        {
                            Local2 = GBCO ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x2C))
                        {
                            Local2 = GTCS ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x36))
                        {
                            Local2 = GPST ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x37))
                        {
                            Local2 = GBCT ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x38))
                        {
                            Local2 = GBST ()
                            RETC = Zero
                        }
                    }

                    If ((COMD == 0x02))
                    {
                        RETC = 0x04
                        If (((CMDT > Zero) && (CMDT <= 0x38)))
                        {
                            If ((DSZI < DerefOf (WCDS [(CMDT - One)])))
                            {
                                RETC = 0x05
                            }
                            Else
                            {
                                CreateDWordField (Arg1, 0x10, DDWD)
                                If ((CMDT == 0x09))
                                {
                                    Local2 = SHKS (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x0A))
                                {
                                    Local2 = SHKF (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x10))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateField (Arg1, 0x80, 0x40, WSDB)
                                        Local2 = SWSD (WSDB)
                                        RETC = Zero
                                    }
                                }

                                If (((CMDT == 0x1B) && (OSYS < 0x07DC)))
                                {
                                    CreateByteField (Arg1, 0x10, SWD0)
                                    CreateByteField (Arg1, 0x11, SWD1)
                                    CreateByteField (Arg1, 0x12, SWD2)
                                    CreateByteField (Arg1, 0x13, SWD3)
                                    Local2 = SWDS (SWD0, SWD1, SWD2, SWD3)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x1D))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, SDC0)
                                        CreateByteField (Arg1, 0x11, SDC1)
                                        CreateByteField (Arg1, 0x12, SDC2)
                                        CreateByteField (Arg1, 0x13, SDC3)
                                        Local2 = SSDC (SDC0, SDC1, SDC2, SDC3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x1E))
                                {
                                    Local2 = SBUS (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x1F))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, BCC0)
                                        CreateByteField (Arg1, 0x11, BCC1)
                                        CreateByteField (Arg1, 0x12, BCC2)
                                        CreateByteField (Arg1, 0x13, BCC3)
                                        Local2 = SBCC (BCC0, BCC1, BCC2, BCC3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x28))
                                {
                                    If ((DSZI == 0x80))
                                    {
                                        If (((D009 <= One) & ((((D008 >= 
                                            0x10) && (D008 <= 0x15)) || ((D008 >= 0x20) && (D008 <= 
                                            0x25))) || (D008 == 0xAA))))
                                        {
                                            CreateField (Arg1, 0x80, 0x0400, TDBU)
                                            Local2 = STDC (D008, TDBU)
                                            RETC = Zero
                                        }
                                        Else
                                        {
                                            RETC = 0x06
                                        }
                                    }
                                    Else
                                    {
                                        RETC = 0x05
                                    }
                                }

                                If ((CMDT == 0x29))
                                {
                                    Local2 = SFCS (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x2A))
                                {
                                    Local2 = SPES (DDWD)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x2B))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, BCO0)
                                        CreateByteField (Arg1, 0x11, BCO1)
                                        CreateByteField (Arg1, 0x12, BCO2)
                                        CreateByteField (Arg1, 0x13, BCO3)
                                        Local2 = SBCO (BCO0, BCO1, BCO2, BCO3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x2C))
                                {
                                    If ((DSZI != DerefOf (WCDS [(CMDT - One)])))
                                    {
                                        RETC = 0x05
                                    }
                                    Else
                                    {
                                        CreateByteField (Arg1, 0x10, STC0)
                                        CreateByteField (Arg1, 0x11, STC1)
                                        CreateByteField (Arg1, 0x12, STC2)
                                        CreateByteField (Arg1, 0x13, STC3)
                                        Local2 = STCS (STC0, STC1, STC2, STC3)
                                        RETC = Zero
                                    }
                                }

                                If ((CMDT == 0x36))
                                {
                                    Local2 = SPST (D128)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x37))
                                {
                                    Local2 = SBCT (D128)
                                    RETC = Zero
                                }

                                If ((CMDT == 0x38))
                                {
                                    CreateByteField (Arg1, 0x10, BST0)
                                    CreateByteField (Arg1, 0x11, BST1)
                                    CreateByteField (Arg1, 0x12, BST2)
                                    CreateByteField (Arg1, 0x13, BST3)
                                    Local2 = SBST (BST0, BST1, BST2, BST3)
                                    RETC = Zero
                                }
                            }
                        }
                    }

                    If ((COMD == 0x00020002))
                    {
                        If ((CMDT == One))
                        {
                            Debug = "COMPUTRACE_GETSTATUS"
                            Debug = "Arg1:"
                            Debug = Arg1
                            Local2 = CSTA ()
                            RETC = Zero
                        }

                        If ((CMDT == 0x02))
                        {
                            Debug = "COMPUTRACE_ENABLE"
                            Debug = "Arg1:"
                            Debug = Arg1
                            Local2 = CACT (DAIN)
                            RETC = Zero
                        }

                        If ((CMDT == 0x03))
                        {
                            Debug = "COMPUTRACE_DISABLE"
                            Debug = "Arg1:"
                            Debug = Arg1
                            Local2 = CDAC (DAIN)
                            RETC = Zero
                        }
                    }
                }

                If ((RETC == Zero))
                {
                    RETC = DerefOf (Local2 [Zero])
                    If ((RETC == Zero))
                    {
                        If ((DerefOf (Local2 [One]) <= Local0))
                        {
                            Local0 = Zero
                            While ((Local0 < DerefOf (Local2 [One])))
                            {
                                Local1 [(Local0 + 0x08)] = DerefOf (DerefOf (
                                    Local2 [0x02]) [Local0])
                                Local0++
                            }

                            SIOU = 0x53534150
                            Debug = "pass"
                            Debug = "Local0:"
                            Debug = Local0
                            Debug = "Local2:"
                            Debug = Local2
                        }
                        Else
                        {
                            RETC = 0x05
                            Debug = "Fail"
                            Debug = "Local0:"
                            Debug = Local0
                            Debug = "Local2:"
                            Debug = Local2
                        }
                    }
                }

                Debug = "Return:"
                Debug = "Local1:"
                Debug = Local1
                Return (Local1)
            }

            Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (WMIF, Zero)
            Name (WEI0, Zero)
            Name (WED0, Zero)
            Name (WEI1, Zero)
            Name (WED1, Zero)
            Name (WEVI, Zero)
            Name (WEVD, Zero)
            Name (BUFF, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                           // ....
            })
            CreateByteField (BUFF, Zero, OB0)
            CreateByteField (BUFF, One, OB1)
            CreateByteField (BUFF, 0x02, OB2)
            CreateByteField (BUFF, 0x03, OB3)
            Name (WMBF, Buffer (0x80)
            {
                 0x00                                             // .
            })
            CreateByteField (WMBF, Zero, HWB0)
            CreateByteField (WMBF, One, HWB1)
            CreateByteField (WMBF, 0x02, HWB2)
            CreateByteField (WMBF, 0x03, HWB3)
            Name (_WDG, Buffer (0x0104)
            {
                /* 0000 */  0x34, 0xF0, 0xB7, 0x5F, 0x63, 0x2C, 0xE9, 0x45,  // 4.._c,.E
                /* 0008 */  0xBE, 0x91, 0x3D, 0x44, 0xE2, 0xC7, 0x07, 0xE4,  // ..=D....
                /* 0010 */  0x41, 0x44, 0x01, 0x02, 0x79, 0x42, 0xF2, 0x95,  // AD..yB..
                /* 0018 */  0x7B, 0x4D, 0x34, 0x43, 0x93, 0x87, 0xAC, 0xCD,  // {M4C....
                /* 0020 */  0xC6, 0x7E, 0xF6, 0x1C, 0x80, 0x00, 0x01, 0x08,  // .~......
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0038 */  0x41, 0x45, 0x01, 0x00, 0xD4, 0x2B, 0x99, 0xD0,  // AE...+..
                /* 0040 */  0x7C, 0xA4, 0xFE, 0x4E, 0xB0, 0x72, 0x32, 0x4A,  // |..N.r2J
                /* 0048 */  0xEC, 0x92, 0x29, 0x6C, 0x42, 0x43, 0x01, 0x00,  // ..)lBC..
                /* 0050 */  0xEB, 0x91, 0x4C, 0x1F, 0x5C, 0xDC, 0x0B, 0x46,  // ..L.\..F
                /* 0058 */  0x95, 0x1D, 0xC7, 0xCB, 0x9B, 0x4B, 0x8D, 0x5E,  // .....K.^
                /* 0060 */  0x42, 0x41, 0x01, 0x02, 0x49, 0x4B, 0x11, 0x2D,  // BA..IK.-
                /* 0068 */  0xFB, 0x2D, 0x30, 0x41, 0xB8, 0xFE, 0x4A, 0x3C,  // .-0A..J<
                /* 0070 */  0x09, 0xE7, 0x51, 0x33, 0x42, 0x4B, 0x0F, 0x00,  // ..Q3BK..
                /* 0078 */  0xE3, 0x08, 0x8D, 0x98, 0xF4, 0x68, 0x35, 0x4C,  // .....h5L
                /* 0080 */  0xAF, 0x3E, 0x6A, 0x1B, 0x81, 0x06, 0xF8, 0x3C,  // .>j....<
                /* 0088 */  0x42, 0x44, 0x00, 0x00, 0x46, 0x97, 0xEA, 0x14,  // BD..F...
                /* 0090 */  0x1F, 0xCE, 0x98, 0x40, 0xA0, 0xE0, 0x70, 0x45,  // ...@..pE
                /* 0098 */  0xCB, 0x4D, 0xA7, 0x45, 0x42, 0x45, 0x02, 0x00,  // .M.EBE..
                /* 00A0 */  0x28, 0x20, 0x2F, 0x32, 0x84, 0x0F, 0x01, 0x49,  // ( /2...I
                /* 00A8 */  0x98, 0x8E, 0x01, 0x51, 0x76, 0x04, 0x9E, 0x2D,  // ...Qv..-
                /* 00B0 */  0x42, 0x46, 0x01, 0x00, 0x3D, 0xDE, 0x32, 0x82,  // BF..=.2.
                /* 00B8 */  0x3D, 0x66, 0x27, 0x43, 0xA8, 0xF4, 0xE2, 0x93,  // =f'C....
                /* 00C0 */  0xAD, 0xB9, 0xBF, 0x05, 0x42, 0x47, 0x00, 0x00,  // ....BG..
                /* 00C8 */  0x36, 0x64, 0x1F, 0x8F, 0x42, 0x9F, 0xC8, 0x42,  // 6d..B..B
                /* 00D0 */  0xBA, 0xDC, 0x0E, 0x94, 0x24, 0xF2, 0x0C, 0x9A,  // ....$...
                /* 00D8 */  0x42, 0x48, 0x00, 0x00, 0x35, 0x64, 0x1F, 0x8F,  // BH..5d..
                /* 00E0 */  0x42, 0x9F, 0xC8, 0x42, 0xBA, 0xDC, 0x0E, 0x94,  // B..B....
                /* 00E8 */  0x24, 0xF2, 0x0C, 0x9A, 0x42, 0x49, 0x00, 0x00,  // $...BI..
                /* 00F0 */  0xB6, 0x63, 0x4E, 0xDF, 0xBC, 0x3B, 0x58, 0x48,  // .cN..;XH
                /* 00F8 */  0x97, 0x37, 0xC7, 0x4F, 0x82, 0xF8, 0x21, 0xF3,  // .7.O..!.
                /* 0100 */  0x42, 0x4A, 0x00, 0x00                           // BJ..
            })
            Method (WMAD, 3, Serialized)
            {
                Return (HWMC (Arg1, Arg2))
            }

            Method (GBIF, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x7 (BIOS Read)"
                Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                If (!^^PCI0.LPCB.EC0.ECOK)
                {
                    Local0 = Package (0x02)
                        {
                            0x0D, 
                            Zero
                        }
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                If (Arg0)
                {
                    Local0 = Package (0x02)
                        {
                            0x06, 
                            Zero
                        }
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                If (!^^PCI0.LPCB.EC0.MBTS)
                {
                    Local0 = Package (0x02)
                        {
                            0x34, 
                            Zero
                        }
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                If ((^^PCI0.LPCB.EC0.BTVD != One))
                {
                    Local0 = Package (0x02)
                        {
                            0x37, 
                            Zero
                        }
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }
                ElseIf (((^^PCI0.LPCB.EC0.MBDC & 0x10) == 0x10))
                {
                    Local0 = Package (0x02)
                        {
                            0x36, 
                            Zero
                        }
                    Sleep (0x96)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                    Return (Local0)
                }

                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x18, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [One])
                DerefOf (Local0 [0x02]) [Zero] = Local2
                Local1 = ^^PCI0.LPCB.EC0.BFCC /* \_SB_.PCI0.LPCB.EC0_.BFCC */
                Local1 >>= 0x05
                Local1 <<= 0x05
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x03])
                DerefOf (Local0 [0x02]) [0x02] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0F, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x05])
                DerefOf (Local0 [0x02]) [0x04] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0C, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x07])
                DerefOf (Local0 [0x02]) [0x06] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x17, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x09])
                DerefOf (Local0 [0x02]) [0x08] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x08, RefOf (Local1))
                Local1 -= 0x0AAA
                Divide (Local1, 0x0A, Local2, Local1)
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x0B])
                DerefOf (Local0 [0x02]) [0x0A] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x09, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x0D])
                DerefOf (Local0 [0x02]) [0x0C] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0A, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x0F])
                DerefOf (Local0 [0x02]) [0x0E] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x19, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x11])
                DerefOf (Local0 [0x02]) [0x10] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x16, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x13])
                DerefOf (Local0 [0x02]) [0x12] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3F, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x15])
                DerefOf (Local0 [0x02]) [0x14] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3E, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x17])
                DerefOf (Local0 [0x02]) [0x16] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3D, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x19])
                DerefOf (Local0 [0x02]) [0x18] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x3C, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x1B])
                DerefOf (Local0 [0x02]) [0x1A] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x1C, RefOf (Local1))
                Local3 = ITOS (ToBCD (Local1))
                Local2 = 0x1C
                Local4 = Zero
                Local1 = SizeOf (Local3)
                While (Local1)
                {
                    GBFE (Local3, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local1--
                    Local2++
                    Local4++
                }

                DerefOf (Local0 [0x02]) [Local2] = 0x20
                Local2++
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x1B, RefOf (Local1))
                Local7 = (Local1 & 0x1F)
                Local6 = ITOS (ToBCD (Local7))
                Local7 = (Local1 & 0x01E0)
                Local7 >>= 0x05
                Local5 = ITOS (ToBCD (Local7))
                Local7 = (Local1 >> 0x09)
                Local7 += 0x07BC
                Local4 = ITOS (ToBCD (Local7))
                Local1 = 0x02
                Local7 = 0x03
                While (Local1)
                {
                    GBFE (Local5, Local7, RefOf (Local3))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local3)
                    Local1--
                    Local2++
                    Local7++
                }

                DerefOf (Local0 [0x02]) [Local2] = "/"
                Local2++
                Local1 = 0x02
                Local7 = 0x03
                While (Local1)
                {
                    GBFE (Local6, Local7, RefOf (Local3))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local3)
                    Local1--
                    Local2++
                    Local7++
                }

                DerefOf (Local0 [0x02]) [Local2] = "/"
                Local2++
                Local1 = 0x04
                Local7 = One
                While (Local1)
                {
                    GBFE (Local4, Local7, RefOf (Local3))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local3)
                    Local1--
                    Local2++
                    Local7++
                }

                DerefOf (Local0 [0x02]) [Local2] = Zero
                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x20, RefOf (Local1))
                Local3 = SizeOf (Local1)
                Local2 = 0x2C
                Local4 = Zero
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x70, RefOf (Local1))
                GBFE (Local1, Zero, RefOf (Local5))
                If ((Local5 == 0x36))
                {
                    Local3 = SizeOf (Local1)
                    Local2 = 0x3E
                    Local4 = Zero
                }
                Else
                {
                    Local3 = 0x03
                    Local2 = 0x3E
                    Local4 = Zero
                    Local1 = Buffer (0x04)
                        {
                            "N/A"
                        }
                }

                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x21, RefOf (Local1))
                Local3 = SizeOf (Local1)
                Local2 = 0x4F
                Local4 = Zero
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                ^^PCI0.LPCB.EC0.SMRD (0x0B, 0x16, 0x22, RefOf (Local1))
                Local3 = SizeOf (Local1)
                Local2 = 0x56
                Local4 = Zero
                While (Local3)
                {
                    GBFE (Local1, Local4, RefOf (Local5))
                    PBFE (DerefOf (Local0 [0x02]), Local2, Local5)
                    Local3--
                    Local2++
                    Local4++
                }

                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, Zero, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x5B])
                DerefOf (Local0 [0x02]) [0x5A] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x1B, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x5D])
                DerefOf (Local0 [0x02]) [0x5C] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x14, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x5F])
                DerefOf (Local0 [0x02]) [0x5E] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x15, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x61])
                DerefOf (Local0 [0x02]) [0x60] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x0B, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x63])
                DerefOf (Local0 [0x02]) [0x62] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x11, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x65])
                DerefOf (Local0 [0x02]) [0x64] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x12, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x67])
                DerefOf (Local0 [0x02]) [0x66] = Local2
                ^^PCI0.LPCB.EC0.SMRD (0x09, 0x16, 0x13, RefOf (Local1))
                Divide (Local1, 0x0100, Local2, DerefOf (Local0 [0x02]) [0x69])
                DerefOf (Local0 [0x02]) [0x68] = Local2
                DerefOf (Local0 [0x02]) [0x6A] = One
                Sleep (0x96)
                Release (^^PCI0.LPCB.EC0.MUT1)
                Return (Local0)
            }

            Method (GBBT, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x8 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80)
                        {
                            /* 0000 */  0x31, 0x01, 0x9B, 0x01, 0xB6, 0x01, 0xB7, 0x01,  // 1.......
                            /* 0008 */  0xAE, 0x01, 0xFF, 0xFF, 0x00, 0x00               // ......
                        }
                    }
                Return (Local0)
            }

            Method (GHKS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x9 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    DerefOf (Local0 [0x02]) [Zero] = ^^PCI0.LPCB.EC0.GSHK ()
                    Release (^^PCI0.LPCB.EC0.MUT1)
                }

                Return (Local0)
            }

            Method (SHKS, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x9 (BIOS Write)"
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    ^^PCI0.LPCB.EC0.SSHK (Arg0)
                    Release (^^PCI0.LPCB.EC0.MUT1)
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GHKF, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0xA (BIOS Read)"
                Return (HKFR ())
            }

            Method (SHKF, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0xA (BIOS Write)"
                Local1 = (Arg0 & 0xFF)
                Local3 = (Arg0 & 0xFF00)
                Local2 = (Local3 >> 0x08)
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                DerefOf (Local0 [0x02]) [Zero] = Local1
                DerefOf (Local0 [0x02]) [One] = Local2
                If ((Arg0 == 0x01AE))
                {
                    If ((OSYS >= 0x07D9))
                    {
                        If ((^^PCI0.LPCB.EC0.ECOK == One))
                        {
                            ^^PCI0.LPCB.EC0.RCDS = One
                        }
                    }
                    ElseIf (IGDS)
                    {
                        Local3 = Zero
                        DerefOf (Local0 [0x02]) [Zero] = 0xAE
                        DerefOf (Local0 [0x02]) [One] = One
                        If (((^^PCI0.GFX0.CADL == 0x0100) || (^^PCI0.GFX0.CAL2 == 0x0100)))
                        {
                            Local3 |= 0x02
                        }

                        If (((^^PCI0.GFX0.CADL == 0x0400) || (^^PCI0.GFX0.CAL2 == 0x0400)))
                        {
                            Local3 |= One
                        }

                        If (((^^PCI0.GFX0.CADL == 0x0300) || (^^PCI0.GFX0.CAL2 == 0x0300)))
                        {
                            Local3 |= 0x10
                        }

                        DerefOf (Local0 [0x02]) [0x03] = Local3
                        Local3 = Zero
                        If (((^^PCI0.GFX0.NADL == 0x0100) || (^^PCI0.GFX0.NDL2 == 0x0100)))
                        {
                            Local3 |= 0x02
                        }

                        If (((^^PCI0.GFX0.NADL == 0x0400) || (^^PCI0.GFX0.NDL2 == 0x0400)))
                        {
                            Local3 |= One
                        }

                        If (((^^PCI0.GFX0.NADL == 0x0300) || (^^PCI0.GFX0.NDL2 == 0x0300)))
                        {
                            Local3 |= 0x10
                        }

                        DerefOf (Local0 [0x02]) [0x02] = Local3
                        ^^PCI0.GFX0.GHDS (Zero)
                    }
                }

                Return (Local0)
            }

            Method (HKFR, 0, NotSerialized)
            {
                Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    Local1 = ^^PCI0.LPCB.EC0.QBHK /* \_SB_.PCI0.LPCB.EC0_.QBHK */
                    ^^PCI0.LPCB.EC0.QBHK = Zero
                }

                Release (^^PCI0.LPCB.EC0.MUT1)
                If ((Local1 == 0x0D))
                {
                    Debug = "Fn+ESC Pressed"
                    DerefOf (Local0 [0x02]) [Zero] = 0x31
                    DerefOf (Local0 [0x02]) [One] = One
                }

                If ((Local1 == One))
                {
                    Debug = "Fn+F1 Pressed"
                    DerefOf (Local0 [0x02]) [Zero] = 0x9B
                    DerefOf (Local0 [0x02]) [One] = One
                }

                If ((Local1 == 0x02))
                {
                    Debug = "Fn+F2 Pressed"
                    Notify (^^PCI0.GFX0.DD1F, 0x87) // Device-Specific
                    Sleep (0x32)
                    DerefOf (Local0 [0x02]) [Zero] = 0xB6
                    DerefOf (Local0 [0x02]) [One] = One
                }

                If ((Local1 == 0x03))
                {
                    Debug = "Fn+F3 Pressed"
                    Notify (^^PCI0.GFX0.DD1F, 0x86) // Device-Specific
                    Sleep (0x32)
                    DerefOf (Local0 [0x02]) [Zero] = 0xB7
                    DerefOf (Local0 [0x02]) [One] = One
                }

                If ((Local1 == 0x04))
                {
                    Debug = "Fn+F4 Pressed"
                    If (IGDS)
                    {
                        Local3 = Zero
                        DerefOf (Local0 [0x02]) [Zero] = 0xAE
                        DerefOf (Local0 [0x02]) [One] = One
                        If (((^^PCI0.GFX0.CADL == 0x0100) || (^^PCI0.GFX0.CAL2 == 0x0100)))
                        {
                            Local3 |= 0x02
                        }

                        If (((^^PCI0.GFX0.CADL == 0x0400) || (^^PCI0.GFX0.CAL2 == 0x0400)))
                        {
                            Local3 |= One
                        }

                        If (((^^PCI0.GFX0.CADL == 0x0300) || (^^PCI0.GFX0.CAL2 == 0x0300)))
                        {
                            Local3 |= 0x10
                        }

                        DerefOf (Local0 [0x02]) [0x03] = Local3
                        Local3 = Zero
                        If (((^^PCI0.GFX0.NADL == 0x0100) || (^^PCI0.GFX0.NDL2 == 0x0100)))
                        {
                            Local3 |= 0x02
                        }

                        If (((^^PCI0.GFX0.NADL == 0x0400) || (^^PCI0.GFX0.NDL2 == 0x0400)))
                        {
                            Local3 |= One
                        }

                        If (((^^PCI0.GFX0.NADL == 0x0300) || (^^PCI0.GFX0.NDL2 == 0x0300)))
                        {
                            Local3 |= 0x10
                        }

                        DerefOf (Local0 [0x02]) [0x02] = Local3
                        ^^PCI0.GFX0.GHDS (Zero)
                    }
                }

                Return (Local0)
            }

            Method (GBBV, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0xC (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    Acquire (^^PCI0.LPCB.EC0.MUT1, 0xFFFF)
                    Local1 = ^^PCI0.LPCB.EC0.QBBB /* \_SB_.PCI0.LPCB.EC0_.QBBB */
                    ^^PCI0.LPCB.EC0.QBBB = Zero
                    If ((Local1 == 0x20))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x8D
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    If ((Local1 == 0x21))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x8E
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    If ((Local1 == 0x22))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x8F
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    If ((Local1 == 0x23))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x90
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    If ((Local1 == 0x24))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x91
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    If ((Local1 == 0x25))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x92
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    If ((Local1 == 0x26))
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0x93
                        DerefOf (Local0 [0x02]) [One] = 0x21
                    }

                    Release (^^PCI0.LPCB.EC0.MUT1)
                }

                Return (Local0)
            }

            Method (GFRC, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x0D (BIOS Read)"
                Local0 = Zero
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
                Local0 |= 0x02
                Local0 |= 0x10
                Local0 |= 0x20
                Local0 |= 0x80
                Local1 |= VTDT /* \VTDT */
                Local1 |= 0x08
                Local1 |= 0x10
                Local2 |= One
                Local2 |= 0x08
                Local3 |= 0x04
                Local4 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                DerefOf (Local4 [0x02]) [Zero] = Local0
                DerefOf (Local4 [0x02]) [One] = Local1
                DerefOf (Local4 [0x02]) [0x02] = Local2
                DerefOf (Local4 [0x02]) [0x03] = Local3
                Return (Local4)
            }

            Method (GSAS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x0F (BIOS Read)"
                Local0 = Zero
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If ((^^PCI0.LPCB.EC0.ACCC == One))
                    {
                        Local0 = ^^PCI0.LPCB.EC0.SADP /* \_SB_.PCI0.LPCB.EC0_.SADP */
                        If ((Local0 <= One))
                        {
                            Local0 = One
                            ^^PCI0.LPCB.EC0._Q83 ()
                        }
                        ElseIf ((Local0 == 0x02))
                        {
                            Local0 = 0x02
                            ^^PCI0.LPCB.EC0._Q82 ()
                        }
                        ElseIf ((Local0 == 0x03))
                        {
                            Local0 = 0x03
                            ^^PCI0.LPCB.EC0._Q82 ()
                        }
                        ElseIf ((Local0 >= 0x04))
                        {
                            Local0 = 0x04
                            ^^PCI0.LPCB.EC0._Q82 ()
                        }
                    }
                    Else
                    {
                        Local0 = One
                    }
                }

                Local1 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                DerefOf (Local1 [0x02]) [Zero] = Local0
                Return (Local1)
            }

            Method (GWSD, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x10 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                Local1 = CMSR (0x4B)
                If ((Local1 == 0x38))
                {
                    Local1 = (CMSR (0x4C) >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    Local1 = (CMSR (0x4C) & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [One] = Local1
                    Local1 = (CMSR (0x4D) >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x02] = Local1
                    Local1 = (CMSR (0x4D) & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x03] = Local1
                    Local1 = (CMSR (0x4E) >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x04] = Local1
                    Local1 = (CMSR (0x4E) & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x05] = Local1
                    Local1 = (CMSR (0x4F) >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x06] = Local1
                    Local1 = (CMSR (0x4F) & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x07] = Local1
                }
                ElseIf ((PREV >= 0x00303131))
                {
                    Local1 = (WSD0 >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    Local1 = (WSD0 & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [One] = Local1
                    Local1 = (WSD1 >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x02] = Local1
                    Local1 = (WSD1 & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x03] = Local1
                    Local1 = (WSD2 >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x04] = Local1
                    Local1 = (WSD2 & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x05] = Local1
                    Local1 = (WSD3 >> 0x04)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x06] = Local1
                    Local1 = (WSD3 & 0x0F)
                    Local1 += 0x30
                    DerefOf (Local0 [0x02]) [0x07] = Local1
                }
                Else
                {
                    DerefOf (Local0 [0x02]) [Zero] = WSD0 /* \WSD0 */
                    DerefOf (Local0 [0x02]) [One] = WSD1 /* \WSD1 */
                    DerefOf (Local0 [0x02]) [0x02] = WSD2 /* \WSD2 */
                    DerefOf (Local0 [0x02]) [0x03] = WSD3 /* \WSD3 */
                    DerefOf (Local0 [0x02]) [0x04] = WSD4 /* \WSD4 */
                    DerefOf (Local0 [0x02]) [0x05] = WSD5 /* \WSD5 */
                    DerefOf (Local0 [0x02]) [0x06] = WSD6 /* \WSD6 */
                    DerefOf (Local0 [0x02]) [0x07] = WSD7 /* \WSD7 */
                }

                Return (Local0)
            }

            Method (SWSD, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x10 (BIOS Write)"
                CMSW (0x4B, 0x38)
                Local0 = (DerefOf (Arg0 [Zero]) - 0x30)
                Local0 <<= 0x04
                Local1 = (DerefOf (Arg0 [One]) - 0x30)
                Local0 |= Local1
                CMSW (0x4C, Local0)
                Local0 = (DerefOf (Arg0 [0x02]) - 0x30)
                Local0 <<= 0x04
                Local1 = (DerefOf (Arg0 [0x03]) - 0x30)
                Local0 |= Local1
                CMSW (0x4D, Local0)
                Local0 = (DerefOf (Arg0 [0x04]) - 0x30)
                Local0 <<= 0x04
                Local1 = (DerefOf (Arg0 [0x05]) - 0x30)
                Local0 |= Local1
                CMSW (0x4E, Local0)
                Local0 = (DerefOf (Arg0 [0x06]) - 0x30)
                Local0 <<= 0x04
                Local1 = (DerefOf (Arg0 [0x07]) - 0x30)
                Local0 |= Local1
                CMSW (0x4F, Local0)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GWDI, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1B (BIOS Read)"
                WMIF = One
                Local0 = Buffer (0x10){}
                OB0 = 0x10
                OB1 = Zero
                Local0 [Zero] = One
                Local0 [One] = Zero
                Local0 [0x02] = Zero
                Local0 [0x03] = Zero
                Local0 [0x04] = Zero
                Local0 [0x05] = Zero
                Local1 = (WLDS + BTDS) /* \BTDS */
                Local0 [0x06] = Local1
                If ((CCDS == One))
                {
                    Local1 += One
                }

                If ((WMDS == One))
                {
                    Local1 += One
                }

                Local0 [0x07] = Local1
                Local0 [0x08] = Zero
                Local0 [0x09] = Zero
                Local0 [0x0A] = Zero
                Local0 [0x0B] = Zero
                Local0 [0x0C] = Zero
                Local0 [0x0D] = Zero
                Local0 [0x0E] = Zero
                Local0 [0x0F] = Zero
                If ((WLDS == One))
                {
                    Local1 = Buffer (0x10){}
                    Local1 [Zero] = Zero
                    Local1 [One] = Zero
                    Local1 [0x02] = (WLVD & 0xFF)
                    Local1 [0x03] = (WLVD >> 0x08)
                    Local1 [0x04] = (WLDD & 0xFF)
                    Local1 [0x05] = (WLDD >> 0x08)
                    Local1 [0x06] = (WLSV & 0xFF)
                    Local1 [0x07] = (WLSV >> 0x08)
                    Local1 [0x08] = (WLSS & 0xFF)
                    Local1 [0x09] = (WLSS >> 0x08)
                    Local1 [0x0A] = OB1 /* \_SB_.WMID.OB1_ */
                    Local2 = GPRD (0x0F)
                    If ((Local2 == Zero))
                    {
                        Local2 = One
                    }
                    Else
                    {
                        Local2 = Zero
                    }

                    Local2 |= (WWLS << One)
                    Local2 |= 0x04
                    Local2 |= (BNLS << 0x03)
                    Local1 [0x0B] = Local2
                    Local1 [0x0C] = Zero
                    Local1 [0x0D] = Zero
                    Local1 [0x0E] = Zero
                    Local1 [0x0F] = Zero
                    OB0 += 0x10
                    Concatenate (Local0, Local1, Local0)
                    If ((CCDS == One))
                    {
                        Local1 = Buffer (0x10){}
                        Local1 [Zero] = One
                        Local1 [One] = One
                        Local1 [0x02] = (BTVD & 0xFF)
                        Local1 [0x03] = (BTVD >> 0x08)
                        Local1 [0x04] = (BTDD & 0xFF)
                        Local1 [0x05] = (BTDD >> 0x08)
                        Local1 [0x06] = Zero
                        Local1 [0x07] = Zero
                        Local1 [0x08] = Zero
                        Local1 [0x09] = Zero
                        Local1 [0x0A] = OB1 /* \_SB_.WMID.OB1_ */
                        Local2 = GPRD (0x0F)
                        If ((Local2 == Zero))
                        {
                            Local2 = One
                        }
                        Else
                        {
                            Local2 = Zero
                        }

                        Local2 |= (WWLS << One)
                        Local2 |= 0x04
                        Local2 |= (BNLS << 0x03)
                        Local1 [0x0B] = Local2
                        Local1 [0x0C] = Zero
                        Local1 [0x0D] = Zero
                        Local1 [0x0E] = Zero
                        Local1 [0x0F] = Zero
                        OB0 += 0x10
                        Concatenate (Local0, Local1, Local0)
                    }

                    If ((WMDS == One))
                    {
                        Local1 = Buffer (0x10){}
                        Local1 [Zero] = 0x02
                        Local1 [One] = One
                        Local1 [0x02] = (WWVD & 0xFF)
                        Local1 [0x03] = (WWVD >> 0x08)
                        Local1 [0x04] = (WWDD & 0xFF)
                        Local1 [0x05] = (WWDD >> 0x08)
                        Local1 [0x06] = Zero
                        Local1 [0x07] = Zero
                        Local1 [0x08] = Zero
                        Local1 [0x09] = Zero
                        Local1 [0x0A] = OB1 /* \_SB_.WMID.OB1_ */
                        Local2 = GPRD (0x0F)
                        If ((Local2 == Zero))
                        {
                            Local2 = One
                        }
                        Else
                        {
                            Local2 = Zero
                        }

                        Local2 |= (WWLS << One)
                        Local2 |= 0x04
                        Local2 |= (BNLS << 0x03)
                        Local1 [0x0B] = Local2
                        Local1 [0x0C] = Zero
                        Local1 [0x0D] = Zero
                        Local1 [0x0E] = Zero
                        Local1 [0x0F] = Zero
                        OB0 += 0x10
                        Concatenate (Local0, Local1, Local0)
                    }

                    OB1++
                }

                If ((BTDS == One))
                {
                    Local1 = Buffer (0x10){}
                    Local1 [Zero] = One
                    Local1 [One] = One
                    Local1 [0x02] = (BTVD & 0xFF)
                    Local1 [0x03] = (BTVD >> 0x08)
                    Local1 [0x04] = (BTDD & 0xFF)
                    Local1 [0x05] = (BTDD >> 0x08)
                    Local1 [0x06] = Zero
                    Local1 [0x07] = Zero
                    Local1 [0x08] = Zero
                    Local1 [0x09] = Zero
                    Local1 [0x0A] = OB1 /* \_SB_.WMID.OB1_ */
                    Local2 = GPRD (0x08)
                    If ((Local2 == Zero))
                    {
                        Local2 = One
                    }
                    Else
                    {
                        Local2 = Zero
                    }

                    Local2 |= (WBTS << One)
                    Local2 |= 0x04
                    Local2 |= (BNLS << 0x03)
                    Local1 [0x0B] = Local2
                    Local1 [0x0C] = Zero
                    Local1 [0x0D] = Zero
                    Local1 [0x0E] = Zero
                    Local1 [0x0F] = Zero
                    OB0 += 0x10
                    Concatenate (Local0, Local1, Local0)
                    OB1++
                }

                Local1 = Package (0x03){}
                Local1 [Zero] = Zero
                Local1 [One] = OB0 /* \_SB_.WMID.OB0_ */
                Local1 [0x02] = Local0
                Return (Local1)
            }

            Method (SWDS, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x1B (BIOS Write)"
                Local0 = Zero
                If ((Arg3 == Zero))
                {
                    Local1 = One
                }
                Else
                {
                    Local1 = Zero
                }

                If ((BNLS == One))
                {
                    If ((WLDS == One))
                    {
                        If ((Arg2 == Local0))
                        {
                            WWLS = Arg3
                            GPWT (0x0F, Local1)
                        }

                        Local0++
                    }

                    If ((BTDS == One))
                    {
                        If ((Arg2 == Local0))
                        {
                            WBTS = Arg3
                            GPWT (0x08, Local1)
                        }

                        Local0++
                    }
                }

                If (((Arg2 == 0xFE) || (Arg2 == 0xFF)))
                {
                    WWLS = Arg3
                    GPWT (0x0F, Local1)
                    WBTS = Arg3
                    GPWT (0x08, Local1)
                    BNLS = Arg3
                }

                GWEV (0x05, Zero)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GSDC, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1D (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                HWCT = 0x1D
                HWBC = One
                TSMI (0xC3, One)
                WMBF = HWBF /* \HWBF */
                DerefOf (Local0 [0x02]) [Zero] = HWB0 /* \_SB_.WMID.HWB0 */
                DerefOf (Local0 [0x02]) [One] = HWB1 /* \_SB_.WMID.HWB1 */
                Return (Local0)
            }

            Method (SSDC, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x1D (BIOS Write)"
                HWB0 = Arg0
                HWCT = 0x1D
                HWBC = 0x02
                HWBF = WMBF /* \_SB_.WMID.WMBF */
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBUS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1E (BIOS Read)"
                Local2 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                HWCT = 0x1E
                HWBC = One
                TSMI (0xC3, One)
                WMBF = HWBF /* \HWBF */
                DerefOf (Local2 [0x02]) [Zero] = HWB0 /* \_SB_.WMID.HWB0 */
                DerefOf (Local2 [0x02]) [One] = HWB1 /* \_SB_.WMID.HWB1 */
                Return (Local2)
            }

            Method (SBUS, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x1E (BIOS Write)"
                HWCT = 0x1E
                HWBC = 0x02
                HWB0 = Arg0
                HWBF = WMBF /* \_SB_.WMID.WMBF */
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCC, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x1F (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        Local1 = Zero
                        Local2 = ^^PCI0.LPCB.EC0.MBST /* \_SB_.PCI0.LPCB.EC0_.MBST */
                        If (((Local2 & One) == One))
                        {
                            Local1 |= 0x02
                        }

                        If (((Local2 & 0x02) == 0x02))
                        {
                            Local1 |= One
                        }

                        If ((^^PCI0.LPCB.EC0.MBDC == Zero))
                        {
                            Local1 = Zero
                        }

                        DerefOf (Local0 [0x02]) [Zero] = Local1
                    }
                    Else
                    {
                        DerefOf (Local0 [0x02]) [Zero] = 0xFF
                    }

                    DerefOf (Local0 [0x02]) [One] = 0xFF
                }
                Else
                {
                    DerefOf (Local0 [Zero]) [Zero] = 0x35
                }

                Return (Local0)
            }

            Method (SBCC, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x1F (BIOS Write)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If (((Arg0 == Zero) && (^^PCI0.LPCB.EC0.MBTS == One)))
                    {
                        Local1 = ^^PCI0.LPCB.EC0.MBST /* \_SB_.PCI0.LPCB.EC0_.MBST */
                        Local1 &= 0x03
                        If (((Local1 & 0x02) & (Arg1 == One)))
                        {
                            Local0 [Zero] = 0x36
                        }
                        ElseIf (((Local1 & One) & (Arg1 == 0x02)))
                        {
                            Local0 [Zero] = 0x36
                        }
                        ElseIf (((^^PCI0.LPCB.EC0.ACCC == Zero) & (Arg1 == One)))
                        {
                            Local0 [Zero] = 0x35
                        }
                        Else
                        {
                            Local1 = ^^PCI0.LPCB.EC0.MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                            If ((Arg1 == Zero))
                            {
                                Local1 &= 0xE0
                                WEVD = One
                            }
                            ElseIf ((Arg1 == One))
                            {
                                Local1 &= 0xFFFFFFF9
                                Local1 |= 0x09
                                WEVD = One
                            }
                            ElseIf ((Arg1 == 0x02))
                            {
                                Local1 &= 0xFFFFFFFA
                                Local1 |= 0x0A
                                WEVD = One
                            }
                            Else
                            {
                                Local0 [Zero] = 0x06
                            }
                        }
                    }
                    ElseIf ((Arg0 == One))
                    {
                        Local0 [Zero] = 0x34
                    }
                    ElseIf ((Arg0 == 0x63))
                    {
                        If ((^^PCI0.LPCB.EC0.ACCC == One))
                        {
                            Local1 = ^^PCI0.LPCB.EC0.MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                            If ((Arg1 == Zero))
                            {
                                Local1 &= 0xE0
                                WEVD = One
                            }
                            ElseIf ((Arg1 == One))
                            {
                                Local1 &= 0xFFFFFFFA
                                Local1 |= 0x0A
                                WEVD = One
                            }
                            ElseIf ((Arg1 == 0x02))
                            {
                                Local1 &= 0xFFFFFFFC
                                Local1 |= 0x0C
                                WEVD = One
                            }
                            Else
                            {
                                Local0 [Zero] = 0x06
                            }
                        }
                        Else
                        {
                            Local0 [Zero] = 0x35
                        }
                    }
                    Else
                    {
                        Local0 [Zero] = 0x06
                    }

                    If ((WEVD == One))
                    {
                        ^^PCI0.LPCB.EC0.MBDC = Local1
                        Sleep (0x64)
                        Local1 = ^^PCI0.LPCB.EC0.MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                        If ((Arg1 == Zero))
                        {
                            While (((Local1 & Zero) != Zero))
                            {
                                Sleep (0x64)
                                Local1 = ^^PCI0.LPCB.EC0.MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                            }
                        }
                        Else
                        {
                            While (((Local1 & 0x10) != 0x10))
                            {
                                Sleep (0x64)
                                Local1 = ^^PCI0.LPCB.EC0.MBDC /* \_SB_.PCI0.LPCB.EC0_.MBDC */
                            }
                        }
                    }
                }
                Else
                {
                    Local0 [Zero] = 0x35
                }

                WEVD = Zero
                Return (Local0)
            }

            Method (GTDC, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x28 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                HWCT = 0x28
                HWBC = One
                HWB0 = Arg0
                HWBF = WMBF /* \_SB_.WMID.WMBF */
                TSMI (0xC3, One)
                Local0 [0x02] = HWBF /* \HWBF */
                Return (Local0)
            }

            Method (STDC, 2, NotSerialized)
            {
                Debug = "HP WMI Command 0x28 (BIOS Write)"
                HWCT = 0x28
                HWBC = 0x02
                HWBF = Arg1
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GFCS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x29 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                HWCT = 0x29
                HWBC = One
                DerefOf (Local0 [0x02]) [Zero] = FACM /* \FACM */
                Return (Local0)
            }

            Method (SFCS, 1, Serialized)
            {
                Debug = "HP WMI Command 0x29 (BIOS Write)"
                HWCT = 0x29
                HWBC = 0x02
                HWB0 = Arg0
                FACM = Arg0
                HWBF = WMBF /* \_SB_.WMID.WMBF */
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPES, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x2A (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                HWCT = 0x2A
                HWBC = One
                TSMI (0xC3, One)
                WMBF = HWBF /* \HWBF */
                DerefOf (Local0 [0x02]) [Zero] = HWB0 /* \_SB_.WMID.HWB0 */
                DerefOf (Local0 [0x02]) [One] = HWB1 /* \_SB_.WMID.HWB1 */
                DerefOf (Local0 [0x02]) [0x02] = HWB2 /* \_SB_.WMID.HWB2 */
                DerefOf (Local0 [0x02]) [0x03] = HWB3 /* \_SB_.WMID.HWB3 */
                Return (Local0)
            }

            Method (SPES, 1, Serialized)
            {
                Debug = "HP WMI Command 0x2A (BIOS Write)"
                HWB0 = Arg0
                HWCT = 0x2A
                HWBC = 0x02
                HWBF = WMBF /* \_SB_.WMID.WMBF */
                TSMI (0xC3, One)
                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GBCO, 0, Serialized)
            {
                Debug = "HP WMI Command 0x2B (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If (^^PCI0.LPCB.EC0.MBTS)
                    {
                        If (^^PCI0.LPCB.EC0.BTVD)
                        {
                            If (^^PCI0.LPCB.EC0.ACCC)
                            {
                                Local2 = ^^PCI0.LPCB.EC0.MBST /* \_SB_.PCI0.LPCB.EC0_.MBST */
                                Local2 &= 0x03
                                Switch (Local2)
                                {
                                    Case (Zero)
                                    {
                                        Local1 = ^^PCI0.LPCB.EC0.BDVO /* \_SB_.PCI0.LPCB.EC0_.BDVO */
                                        If ((Local1 == 0xC5))
                                        {
                                            Local1 = 0x04
                                        }
                                        Else
                                        {
                                            Local1 = Zero
                                        }
                                    }
                                    Case (One)
                                    {
                                        Local1 = 0x02
                                    }
                                    Case (0x02)
                                    {
                                        Local2 = ^^PCI0.LPCB.EC0.MCUR /* \_SB_.PCI0.LPCB.EC0_.MCUR */
                                        Local3 = 0xC3
                                        If (((Local2 <= 0x0200) & (^^PCI0.LPCB.EC0.BDVO == Local3)))
                                        {
                                            Local1 = 0x03
                                        }
                                        Else
                                        {
                                            Local1 = One
                                        }
                                    }
                                    Default
                                    {
                                        DerefOf (Local0 [Zero]) [Zero] = 0x37
                                    }

                                }
                            }
                            Else
                            {
                                Local1 = 0x02
                            }
                        }
                        Else
                        {
                            DerefOf (Local0 [Zero]) [Zero] = 0x37
                        }
                    }
                    Else
                    {
                        Local1 = 0xFF
                    }

                    DerefOf (Local0 [0x02]) [Zero] = Local1
                    DerefOf (Local0 [0x02]) [One] = 0xFF
                }
                Else
                {
                    DerefOf (Local0 [Zero]) [Zero] = 0x35
                }

                Return (Local0)
            }

            Method (SBCO, 4, Serialized)
            {
                Debug = "HP WMI Command 0x2B (BIOS Write)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Buffer (0x04){}
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    If ((Arg0 == Zero))
                    {
                        If (^^PCI0.LPCB.EC0.MBTS)
                        {
                            If (^^PCI0.LPCB.EC0.BTVD)
                            {
                                Local1 = ^^PCI0.LPCB.EC0.MBST /* \_SB_.PCI0.LPCB.EC0_.MBST */
                                Switch (Arg1)
                                {
                                    Case (Zero)
                                    {
                                        Local1 = 0x40
                                        WEVD = One
                                    }
                                    Case (One)
                                    {
                                        If ((^^PCI0.LPCB.EC0.ACCC == Zero))
                                        {
                                            Local0 [Zero] = 0x35
                                        }
                                        ElseIf (^^PCI0.LPCB.EC0.MBFC)
                                        {
                                            Local0 [Zero] = 0x35
                                        }
                                        Else
                                        {
                                            Local1 = 0x41
                                            WEVD = One
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        If ((Local1 & One))
                                        {
                                            Local0 [Zero] = 0x36
                                        }
                                        Else
                                        {
                                            Local1 = 0x42
                                            WEVD = One
                                        }
                                    }
                                    Case (0x03)
                                    {
                                        If ((^^PCI0.LPCB.EC0.ACCC == Zero))
                                        {
                                            Local0 [Zero] = 0x35
                                        }

                                        If (^^PCI0.LPCB.EC0.MBFC)
                                        {
                                            Local0 [Zero] = 0x35
                                        }
                                        Else
                                        {
                                            Local1 = 0x43
                                            WEVD = One
                                        }
                                    }
                                    Case (0x04)
                                    {
                                        Local1 = 0x44
                                        WEVD = One
                                    }
                                    Case (0x05)
                                    {
                                        Local1 = 0x45
                                        WEVD = One
                                    }
                                    Default
                                    {
                                        Local0 [Zero] = 0x06
                                    }

                                }

                                If ((WEVD == One))
                                {
                                    ^^PCI0.LPCB.EC0.BDVO = Local1
                                    Sleep (0x64)
                                    Local1 = ^^PCI0.LPCB.EC0.BDVO /* \_SB_.PCI0.LPCB.EC0_.BDVO */
                                    While (((Local1 & 0x80) != 0x80))
                                    {
                                        Sleep (0x64)
                                        Local1 = ^^PCI0.LPCB.EC0.BDVO /* \_SB_.PCI0.LPCB.EC0_.BDVO */
                                    }

                                    Local1 &= 0x30
                                    Switch (Local1)
                                    {
                                        Case (Zero)
                                        {
                                            Local0 [Zero] = Zero
                                        }
                                        Case (0x10)
                                        {
                                            Local0 [Zero] = 0x35
                                        }
                                        Case (0x20)
                                        {
                                            Local0 [Zero] = 0x35
                                        }
                                        Case (0x30)
                                        {
                                            Local0 [Zero] = 0x37
                                        }
                                        Default
                                        {
                                            Local0 [Zero] = 0x37
                                        }

                                    }
                                }
                            }
                            Else
                            {
                                Local0 [Zero] = 0x37
                            }
                        }
                        Else
                        {
                            Local0 [Zero] = 0x34
                        }
                    }
                    ElseIf ((Arg0 == One))
                    {
                        Local0 [Zero] = 0x34
                    }
                    Else
                    {
                        Local0 [Zero] = 0x06
                    }
                }
                Else
                {
                    Local0 [Zero] = 0x35
                }

                WEVD = Zero
                Return (Local0)
            }

            Method (GTCS, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x2C (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    Local2 = 0x04
                    Local1 = ^^PCI0.LPCB.EC0.GSMS /* \_SB_.PCI0.LPCB.EC0_.GSMS */
                    Local1 <<= One
                    Local2 |= Local1
                    Local2 |= ^^PCI0.LPCB.EC0.GSSU
                    DerefOf (Local0 [0x02]) [Zero] = Local2
                    Local1 = ^^PCI0.LPCB.EC0.MMST /* \_SB_.PCI0.LPCB.EC0_.MMST */
                    DerefOf (Local0 [0x02]) [One] = Local1
                    Local1 = ^^PCI0.LPCB.EC0.DMST /* \_SB_.PCI0.LPCB.EC0_.DMST */
                    DerefOf (Local0 [0x02]) [0x02] = Local1
                }

                Return (Local0)
            }

            Method (STCS, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x2C (BIOS Write)"
                If ((^^PCI0.LPCB.EC0.ECOK == One))
                {
                    ^^PCI0.LPCB.EC0.MMST = Arg1
                    ^^PCI0.LPCB.EC0.DMST = Arg2
                    If ((^^PCI0.LPCB.EC0.GSMS == One))
                    {
                        ^^PCI0.LPCB.EC0._Q92 ()
                    }
                    Else
                    {
                        ^^PCI0.LPCB.EC0._Q96 ()
                    }

                    Local0 = ((Arg2 << 0x04) | Arg1)
                }

                Return (Package (0x02)
                {
                    Zero, 
                    Zero
                })
            }

            Method (GPST, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x36 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                HWBF = BUFS /* \_SB_.WMID.GPST.BUFS */
                HWCT = 0x36
                HWBC = One
                TSMI (0xC3, One)
                BUFS = HWBF /* \HWBF */
                Return (Local0)
            }

            Method (SPST, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x36 (BIOS Write)"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                HWBF = Arg0
                HWCT = 0x36
                HWBC = 0x02
                TSMI (0xC3, One)
                Local0 [Zero] = HWRC /* \HWRC */
                Return (Local0)
            }

            Method (GBCT, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x37 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x80, 
                        Buffer (0x80){}
                    }
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x0400, BUFS)
                HWBF = BUFS /* \_SB_.WMID.GBCT.BUFS */
                HWCT = 0x37
                HWBC = One
                TSMI (0xC3, One)
                BUFS = HWBF /* \HWBF */
                Return (Local0)
            }

            Method (SBCT, 1, NotSerialized)
            {
                Debug = "HP WMI Command 0x37 (BIOS Write)"
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                HWBF = Arg0
                HWCT = 0x37
                HWBC = 0x02
                TSMI (0xC3, One)
                Local0 [Zero] = HWRC /* \HWRC */
                Return (Local0)
            }

            Method (GBST, 0, NotSerialized)
            {
                Debug = "HP WMI Command 0x38 (BIOS Read)"
                Local0 = Package (0x03)
                    {
                        Zero, 
                        0x04, 
                        Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }
                    }
                HWCT = 0x38
                HWBC = One
                TSMI (0xC3, One)
                CreateField (DerefOf (Local0 [0x02]), Zero, 0x20, BUFS)
                Local1 = Buffer (0x80){}
                Local1 = HWBF /* \HWBF */
                CreateDWordField (Local1, Zero, HWD1)
                BUFS = HWD1 /* \_SB_.WMID.GBST.HWD1 */
                Return (Local0)
            }

            Method (SBST, 4, NotSerialized)
            {
                Debug = "HP WMI Command 0x38 (BIOS Write)"
                Local0 = Buffer (0x04){}
                Local0 [Zero] = Arg0
                Local0 [One] = Arg1
                Local0 [0x02] = Arg2
                Local0 [0x03] = Arg3
                HWBF = Local0
                HWCT = 0x38
                HWBC = 0x02
                TSMI (0xC3, One)
                Local0 = Package (0x02)
                    {
                        Zero, 
                        Zero
                    }
                Local0 [Zero] = HWRC /* \HWRC */
                Return (Local0)
            }

            Method (GWEV, 2, NotSerialized)
            {
                If ((WEI0 == Zero))
                {
                    WEI0 = Arg0
                    WED0 = Arg1
                }
                Else
                {
                    WEI1 = Arg0
                    WED1 = Arg1
                }

                Notify (WMID, 0x80) // Status Change
            }

            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
            {
                Local0 = Buffer (0x08)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                    }
                CreateDWordField (Local0, Zero, EVID)
                CreateDWordField (Local0, 0x04, EVDA)
                EVID = WEI0 /* \_SB_.WMID.WEI0 */
                EVDA = WED0 /* \_SB_.WMID.WED0 */
                If ((WEI1 != Zero))
                {
                    WEI0 = WEI1 /* \_SB_.WMID.WEI1 */
                    WED0 = WED1 /* \_SB_.WMID.WED1 */
                    EVID = WEI0 /* \_SB_.WMID.WEI0 */
                    EVDA = WED0 /* \_SB_.WMID.WED0 */
                    WEI1 = Zero
                    WED1 = Zero
                    If ((WEVI == Zero))
                    {
                        WEVI = One
                        Notify (WMID, 0x80) // Status Change
                    }
                }
                Else
                {
                    WEI0 = Zero
                    WED0 = Zero
                }

                Return (Local0)
            }

            Method (WMBA, 3, NotSerialized)
            {
                Name (DBUF, Buffer (0x0200){})
                If ((Arg1 == One))
                {
                    Local0 = Arg2
                    Local1 = SizeOf (Local0)
                    Local4 = DerefOf (Local0 [Zero])
                    Local2 = 0x02
                    Local3 = Zero
                    Local5 = Zero
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    Local3 = Zero
                    Local4 = DerefOf (Local0 [Local2])
                    Local2 += 0x02
                    Local5++
                    While ((Local3 != Local4))
                    {
                        If ((Local5 >= 0x0200))
                        {
                            Return (0x02)
                        }

                        DBUF [Local5] = DerefOf (Local0 [Local2])
                        Local2 += 0x02
                        Local3 += 0x02
                        Local5++
                    }

                    DBUF [Local5] = Zero
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFD
                    SSMP = 0xD7
                    Return (HWRC) /* \HWRC */
                }
                ElseIf ((Arg1 == 0x02))
                {
                    DBUF = Arg2
                    EHWB = DBUF /* \_SB_.WMID.WMBA.DBUF */
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFC
                    SSMP = 0xD7
                    Return (HWRC) /* \HWRC */
                }

                Return (One)
            }

            Method (WQBK, 1, NotSerialized)
            {
                Local0 = Arg0
                HWBF = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xFE
                SSMP = 0xD7
                If ((Zero == HWRC))
                {
                    Local1 = Buffer (0x80){}
                    Local1 = HWBF /* \HWBF */
                    CreateWordField (Local1, Zero, NSTL)
                    CreateField (Local1, 0x10, (0x08 * NSTL), NSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBK.NSTL */
                    CreateWordField (Local1, Local0, VSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * VSTL), VSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBK.NSTL */
                    Local0 += 0x02
                    Local0 += VSTL /* \_SB_.WMID.WQBK.VSTL */
                    CreateWordField (Local1, Local0, CSTL)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * CSTL), CSTR)
                    Local0 = (0x02 + NSTL) /* \_SB_.WMID.WQBK.NSTL */
                    Local0 += 0x02
                    Local0 += VSTL /* \_SB_.WMID.WQBK.VSTL */
                    Local0 += 0x02
                    Local0 += CSTL /* \_SB_.WMID.WQBK.CSTL */
                    CreateWordField (Local1, Local0, NOPV)
                    Local0 += 0x02
                    CreateWordField (Local1, Local0, PBL1)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL1), PBV1)
                    Local0 += PBL1
                    CreateWordField (Local1, Local0, PBL2)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL2), PBV2)
                    Local0 += PBL2
                    CreateWordField (Local1, Local0, PBL3)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL3), PBV3)
                    Local0 += PBL3
                    CreateWordField (Local1, Local0, PBL4)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL4), PBV4)
                    Local0 += PBL4
                    CreateWordField (Local1, Local0, PBL5)
                    Local0 += 0x02
                    CreateField (Local1, (0x08 * Local0), (0x08 * PBL5), PBV5)
                    Local0 += PBL5
                    Name (BERP, Package (0x18)
                    {
                        "Name", 
                        "Value", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        "Enable", 
                        0x0C, 
                        "Enable", 
                        "Disable", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    Name (BF2S, Buffer (0x46){})
                    Name (STRB, "                                                                      ")
                    BF2S = NSTR /* \_SB_.WMID.WQBK.NSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [Zero] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = VSTR /* \_SB_.WMID.WQBK.VSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [One] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = CSTR /* \_SB_.WMID.WQBK.CSTR */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [0x0A] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = PBV1 /* \_SB_.WMID.WQBK.PBV1 */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [0x0C] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = PBV2 /* \_SB_.WMID.WQBK.PBV2 */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [0x0D] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = PBV3 /* \_SB_.WMID.WQBK.PBV3 */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [0x0E] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = PBV4 /* \_SB_.WMID.WQBK.PBV4 */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [0x0F] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BF2S = PBV5 /* \_SB_.WMID.WQBK.PBV5 */
                    STRB = BF2S /* \_SB_.WMID.WQBK.BF2S */
                    BERP [0x10] = STRB /* \_SB_.WMID.WQBK.STRB */
                    BERP [0x06] = Arg0
                    Return (BERP) /* \_SB_.WMID.WQBK.BERP */
                }

                Return (Package (0x18)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    " ", 
                    Zero, 
                    " ", 
                    0x0C, 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " ", 
                    " "
                })
            }

            Method (WQBD, 1, NotSerialized)
            {
                Return (One)
            }

            Method (WQBE, 1, NotSerialized)
            {
                EHWB = Zero
                Local0 = Arg0
                EHWB = Local0
                HWRC = 0x02
                HWCT = Zero
                HWBC = 0xFB
                SSMP = 0xD7
                If ((Zero == HWRC))
                {
                    Name (BPTR, Zero)
                    Name (BF2S, Buffer (0xC8){})
                    Name (STB1, "                                                                                                    ")
                    Name (STB2, "                                                                                                    ")
                    Concatenate (STB1, STB2, STB1) /* \_SB_.WMID.WQBE.STB1 */
                    Local1 = Buffer (0x0200){}
                    Local1 = EHWB /* \EHWB */
                    CreateByteField (Local1, BPTR, CNSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CNSL), CNST)
                    BPTR += CNSL /* \_SB_.WMID.WQBE.CNSL */
                    CreateByteField (Local1, BPTR, CVSL)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * CVSL), CVST)
                    BPTR += CVSL /* \_SB_.WMID.WQBE.CVSL */
                    CreateByteField (Local1, BPTR, TSL1)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL1), TSR1)
                    BPTR += TSL1 /* \_SB_.WMID.WQBE.TSL1 */
                    CreateByteField (Local1, BPTR, TSL2)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL2), TSR2)
                    BPTR += TSL2 /* \_SB_.WMID.WQBE.TSL2 */
                    CreateByteField (Local1, BPTR, TSL3)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL3), TSR3)
                    BPTR += TSL3 /* \_SB_.WMID.WQBE.TSL3 */
                    CreateByteField (Local1, BPTR, TSL4)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL4), TSR4)
                    BPTR += TSL4 /* \_SB_.WMID.WQBE.TSL4 */
                    CreateByteField (Local1, BPTR, TSL5)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL5), TSR5)
                    BPTR += TSL5 /* \_SB_.WMID.WQBE.TSL5 */
                    CreateByteField (Local1, BPTR, TSL6)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL6), TSR6)
                    BPTR += TSL6 /* \_SB_.WMID.WQBE.TSL6 */
                    CreateByteField (Local1, BPTR, TSL7)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL7), TSR7)
                    BPTR += TSL7 /* \_SB_.WMID.WQBE.TSL7 */
                    CreateByteField (Local1, BPTR, TSL8)
                    BPTR++
                    CreateField (Local1, (0x08 * BPTR), (0x08 * TSL8), TSR8)
                    BPTR += TSL8 /* \_SB_.WMID.WQBE.TSL8 */
                    Name (OLRP, Package (0x13)
                    {
                        "Name", 
                        "Value", 
                        "Path", 
                        Zero, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        " ", 
                        Zero, 
                        0x08, 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " ", 
                        " "
                    })
                    BF2S = CNST /* \_SB_.WMID.WQBE.CNST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [Zero] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = CVST /* \_SB_.WMID.WQBE.CVST */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [One] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR1 /* \_SB_.WMID.WQBE.TSR1 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0B] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR2 /* \_SB_.WMID.WQBE.TSR2 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0C] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR3 /* \_SB_.WMID.WQBE.TSR3 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0D] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR4 /* \_SB_.WMID.WQBE.TSR4 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0E] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR5 /* \_SB_.WMID.WQBE.TSR5 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x0F] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR6 /* \_SB_.WMID.WQBE.TSR6 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x10] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR7 /* \_SB_.WMID.WQBE.TSR7 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x11] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    BF2S = TSR8 /* \_SB_.WMID.WQBE.TSR8 */
                    STB1 = BF2S /* \_SB_.WMID.WQBE.BF2S */
                    OLRP [0x12] = STB1 /* \_SB_.WMID.WQBE.STB1 */
                    OLRP [0x06] = Arg0
                    Return (OLRP) /* \_SB_.WMID.WQBE.OLRP */
                }

                Return (HWRC) /* \HWRC */
            }

            Method (WQBF, 1, NotSerialized)
            {
                Local0 = Arg0
                If ((Local0 == Zero))
                {
                    HWBF = Local0
                    HWRC = 0x02
                    HWCT = Zero
                    HWBC = 0xFA
                    SSMP = 0xD7
                    If ((Zero == HWRC))
                    {
                        Local0 = Buffer (0x80){}
                        Local0 = HWBF /* \HWBF */
                        CreateDWordField (Local0, Zero, PSET)
                        Name (PWDP, Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x08, 
                            "utf-16", 
                            "", 
                            Zero, 
                            One
                        })
                        Name (BF2S, Buffer (0x46){})
                        Name (STRB, "                                                                      ")
                        PWDP [0x0E] = PSET /* \_SB_.WMID.WQBF.PSET */
                        PWDP [0x06] = Arg0
                        Return (PWDP) /* \_SB_.WMID.WQBF.PWDP */
                    }
                    Else
                    {
                        Return (Package (0x10)
                        {
                            "Setup Password", 
                            " ", 
                            "Path", 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            One, 
                            " ", 
                            Zero, 
                            One, 
                            0x08, 
                            "utf-16", 
                            "", 
                            One, 
                            One
                        })
                    }
                }

                Return (Package (0x10)
                {
                    "", 
                    "", 
                    "", 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    "0", 
                    Zero, 
                    Zero, 
                    Zero, 
                    "", 
                    "", 
                    Zero, 
                    Zero
                })
            }

            Method (WQBG, 0, NotSerialized)
            {
            }

            Method (WQBH, 0, NotSerialized)
            {
            }

            Method (WQBI, 0, NotSerialized)
            {
            }

            Name (WQAE, Buffer (0x2135)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x25, 0x21, 0x00, 0x00, 0xB0, 0xCB, 0x00, 0x00,  // %!......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x28, 0x27, 0xA1, 0x00, 0x01, 0x06, 0x18, 0x42,  // ('.....B
                /* 0020 */  0x10, 0x4D, 0x10, 0x92, 0x46, 0x62, 0x02, 0x89,  // .M..Fb..
                /* 0028 */  0x80, 0x90, 0x18, 0x18, 0x14, 0x81, 0x85, 0x00,  // ........
                /* 0030 */  0x49, 0x02, 0x88, 0xC4, 0x41, 0xE1, 0x20, 0xD4,  // I...A. .
                /* 0038 */  0x9F, 0x40, 0x7E, 0x05, 0x20, 0x74, 0x28, 0x40,  // .@~. t(@
                /* 0040 */  0xA6, 0x00, 0x83, 0x02, 0x9C, 0x22, 0x88, 0xA0,  // ....."..
                /* 0048 */  0x57, 0x01, 0x36, 0x05, 0x98, 0x14, 0x60, 0x51,  // W.6...`Q
                /* 0050 */  0x80, 0x76, 0x01, 0x96, 0x05, 0xE8, 0x16, 0x20,  // .v..... 
                /* 0058 */  0x1D, 0x96, 0x88, 0x04, 0x47, 0x89, 0x01, 0x47,  // ....G..G
                /* 0060 */  0xE9, 0xC4, 0x16, 0x6E, 0xD8, 0xE0, 0x85, 0xA2,  // ...n....
                /* 0068 */  0x68, 0x06, 0x51, 0x12, 0x94, 0x8B, 0x20, 0x5D,  // h.Q... ]
                /* 0070 */  0x10, 0x52, 0x2E, 0xC0, 0x37, 0x82, 0x06, 0x10,  // .R..7...
                /* 0078 */  0xA5, 0x77, 0x01, 0xB6, 0x05, 0x98, 0x86, 0x27,  // .w.....'
                /* 0080 */  0xD2, 0x20, 0xE4, 0x60, 0x08, 0x54, 0xCE, 0x80,  // . .`.T..
                /* 0088 */  0x20, 0x69, 0x44, 0x21, 0x1E, 0xA7, 0x44, 0x08,  //  iD!..D.
                /* 0090 */  0x0A, 0x84, 0x90, 0xD4, 0xF1, 0xA0, 0xA0, 0x71,  // .......q
                /* 0098 */  0x88, 0xAD, 0xCE, 0x46, 0x93, 0xA9, 0x74, 0x7E,  // ...F..t~
                /* 00A0 */  0x48, 0x82, 0x70, 0xC6, 0x2A, 0x7E, 0x3A, 0x9A,  // H.p.*~:.
                /* 00A8 */  0xD0, 0xD9, 0x9C, 0x60, 0xE7, 0x18, 0x72, 0x3C,  // ...`..r<
                /* 00B0 */  0x48, 0xF4, 0x20, 0xB8, 0x00, 0x0F, 0x1C, 0x2C,  // H. ....,
                /* 00B8 */  0x34, 0x84, 0x22, 0x6B, 0x80, 0xC1, 0x8C, 0xDD,  // 4."k....
                /* 00C0 */  0x63, 0xB1, 0x0B, 0x4E, 0x0A, 0xEC, 0x61, 0xB3,  // c..N..a.
                /* 00C8 */  0x01, 0x19, 0xA2, 0x24, 0x38, 0xD4, 0x11, 0xC0,  // ...$8...
                /* 00D0 */  0x12, 0x05, 0x98, 0x1F, 0x87, 0x0C, 0x0F, 0x95,  // ........
                /* 00D8 */  0x8C, 0x25, 0x24, 0x1B, 0xAB, 0x87, 0xC2, 0xA5,  // .%$.....
                /* 00E0 */  0x40, 0x68, 0x6C, 0x27, 0xED, 0x19, 0x45, 0x2C,  // @hl'..E,
                /* 00E8 */  0x79, 0x4A, 0x82, 0x49, 0xE0, 0x51, 0x44, 0x36,  // yJ.I.QD6
                /* 00F0 */  0x1A, 0x27, 0x28, 0x1B, 0x1A, 0x25, 0x03, 0x42,  // .'(..%.B
                /* 00F8 */  0x9E, 0x05, 0x58, 0x07, 0x26, 0x04, 0x76, 0x2F,  // ..X.&.v/
                /* 0100 */  0xC0, 0x9A, 0x00, 0x73, 0xB3, 0x90, 0xB1, 0xB9,  // ...s....
                /* 0108 */  0xE8, 0xFF, 0x0F, 0x71, 0xB0, 0x31, 0xDA, 0x9A,  // ...q.1..
                /* 0110 */  0xAE, 0x90, 0xC2, 0xC4, 0x88, 0x12, 0x2C, 0x5E,  // ......,^
                /* 0118 */  0xC5, 0xC3, 0x10, 0xCA, 0x93, 0x42, 0xA8, 0x48,  // .....B.H
                /* 0120 */  0x95, 0xA1, 0x68, 0xB4, 0x51, 0x2A, 0x14, 0xE0,  // ..h.Q*..
                /* 0128 */  0x4C, 0x80, 0x30, 0x5C, 0x1D, 0x03, 0x82, 0x46,  // L.0\...F
                /* 0130 */  0x88, 0x15, 0x29, 0x56, 0xFB, 0x83, 0x20, 0xF1,  // ..)V.. .
                /* 0138 */  0x2D, 0x40, 0x54, 0x01, 0xA2, 0x48, 0xA3, 0x41,  // -@T..H.A
                /* 0140 */  0x9D, 0x03, 0x3C, 0x5C, 0x0F, 0xF5, 0xF0, 0x3D,  // ..<\...=
                /* 0148 */  0xF6, 0x93, 0x0C, 0x72, 0x90, 0x67, 0xF1, 0xA8,  // ...r.g..
                /* 0150 */  0x70, 0x9C, 0x06, 0x49, 0xE0, 0x0B, 0x80, 0x4F,  // p..I...O
                /* 0158 */  0x08, 0x1E, 0x38, 0xDE, 0x35, 0xA0, 0x66, 0x7C,  // ..8.5.f|
                /* 0160 */  0xBC, 0x4C, 0x10, 0x1C, 0x6A, 0x88, 0x1E, 0x68,  // .L..j..h
                /* 0168 */  0xB8, 0x13, 0x38, 0x44, 0x06, 0xE8, 0x49, 0x3D,  // ..8D..I=
                /* 0170 */  0x52, 0x60, 0x07, 0x77, 0x32, 0xEF, 0x01, 0xAF,  // R`.w2...
                /* 0178 */  0x0A, 0xCD, 0x5E, 0x12, 0x08, 0xC1, 0xF1, 0xF8,  // ..^.....
                /* 0180 */  0x7E, 0xC0, 0x26, 0x9C, 0xC0, 0xF2, 0x07, 0x81,  // ~.&.....
                /* 0188 */  0x1A, 0x99, 0xA1, 0x3D, 0xCA, 0xD3, 0x8A, 0x19,  // ...=....
                /* 0190 */  0xF2, 0x31, 0xC1, 0x04, 0x16, 0x0B, 0x21, 0x05,  // .1....!.
                /* 0198 */  0x10, 0x1A, 0x0F, 0xF8, 0x6F, 0x00, 0x8F, 0x17,  // ....o...
                /* 01A0 */  0xBE, 0x12, 0xC4, 0xF6, 0x80, 0x12, 0x0C, 0x0B,  // ........
                /* 01A8 */  0x21, 0x23, 0xAB, 0xF0, 0x78, 0xE8, 0x28, 0x7C,  // !#..x.(|
                /* 01B0 */  0x95, 0x38, 0x9C, 0xD3, 0x8A, 0x67, 0x82, 0xE1,  // .8...g..
                /* 01B8 */  0x20, 0xF4, 0x05, 0x90, 0x00, 0x51, 0xE7, 0x0C,  //  ....Q..
                /* 01C0 */  0xD4, 0x61, 0xC1, 0xE7, 0x04, 0x76, 0x33, 0x38,  // .a...v38
                /* 01C8 */  0x83, 0x47, 0x00, 0x8F, 0xE4, 0x84, 0xFC, 0x2B,  // .G.....+
                /* 01D0 */  0xF1, 0xC0, 0xE0, 0x03, 0xE2, 0xEF, 0x1F, 0xA7,  // ........
                /* 01D8 */  0xEC, 0x11, 0x9C, 0xA9, 0x01, 0x7D, 0x1C, 0xF0,  // .....}..
                /* 01E0 */  0xFF, 0x7F, 0x28, 0x7C, 0x88, 0x1E, 0xDF, 0x29,  // ..(|...)
                /* 01E8 */  0x1F, 0xAF, 0x4F, 0x17, 0x96, 0x35, 0x4E, 0xE8,  // ..O..5N.
                /* 01F0 */  0x77, 0x08, 0x9F, 0x38, 0x7C, 0x64, 0x71, 0x44,  // w..8|dqD
                /* 01F8 */  0x08, 0x39, 0x39, 0x05, 0xA0, 0x81, 0x4F, 0xF7,  // .99...O.
                /* 0200 */  0xEC, 0x22, 0x9C, 0xAE, 0x27, 0xE5, 0x40, 0xC3,  // ."..'.@.
                /* 0208 */  0xA0, 0xE3, 0x04, 0xC7, 0x79, 0x00, 0x1C, 0xE3,  // ....y...
                /* 0210 */  0x84, 0x7F, 0x2E, 0x80, 0x3F, 0x40, 0x7E, 0xCA,  // ....?@~.
                /* 0218 */  0x78, 0xC5, 0x48, 0xE0, 0x98, 0x23, 0x44, 0x9F,  // x.H..#D.
                /* 0220 */  0x6B, 0x3C, 0x42, 0x2C, 0xFC, 0x53, 0x45, 0xE1,  // k<B,.SE.
                /* 0228 */  0x03, 0x21, 0x63, 0x04, 0x17, 0xA0, 0xC7, 0x08,  // .!c.....
                /* 0230 */  0x7C, 0x03, 0x8E, 0x11, 0x7D, 0x94, 0xE0, 0xEA,  // |...}...
                /* 0238 */  0x0F, 0x1A, 0x74, 0x80, 0xB8, 0xFF, 0xFF, 0x00,  // ..t.....
                /* 0240 */  0xE1, 0x83, 0x7A, 0x80, 0xC0, 0x37, 0xFA, 0xD1,  // ..z..7..
                /* 0248 */  0x03, 0x3D, 0x2E, 0x8B, 0x3E, 0x0F, 0xC8, 0xF8,  // .=..>...
                /* 0250 */  0x89, 0x46, 0xF3, 0xE2, 0xA7, 0x03, 0x7E, 0xF8,  // .F....~.
                /* 0258 */  0x00, 0x0F, 0xA8, 0x87, 0x84, 0x03, 0xC5, 0x4C,  // .......L
                /* 0260 */  0x9B, 0x83, 0x3E, 0xBB, 0x1C, 0x3A, 0x76, 0xB8,  // ..>..:v.
                /* 0268 */  0xE0, 0x3F, 0x81, 0x80, 0x4B, 0xDE, 0x21, 0x0C,  // .?..K.!.
                /* 0270 */  0x14, 0x23, 0xC6, 0x9F, 0x83, 0x7C, 0x0A, 0x03,  // .#...|..
                /* 0278 */  0xFF, 0xFF, 0xFF, 0x14, 0x06, 0xFE, 0xE1, 0xF0,  // ........
                /* 0280 */  0x20, 0x4F, 0x07, 0x9F, 0xB6, 0xA8, 0x74, 0x18,  //  O....t.
                /* 0288 */  0xD4, 0x81, 0x0B, 0xB0, 0x32, 0x89, 0x08, 0xCF,  // ....2...
                /* 0290 */  0x12, 0xB5, 0x41, 0xE8, 0xD4, 0xF0, 0x36, 0xF1,  // ..A...6.
                /* 0298 */  0xB6, 0xE5, 0x5B, 0x40, 0x9C, 0xD3, 0xEC, 0xED,  // ..[@....
                /* 02A0 */  0xC0, 0x45, 0x30, 0x22, 0xD4, 0x0C, 0x45, 0x4E,  // .E0"..EN
                /* 02A8 */  0x5A, 0x11, 0x63, 0x44, 0x79, 0xDC, 0x32, 0xCA,  // Z.cDy.2.
                /* 02B0 */  0xDB, 0xD6, 0x0B, 0x40, 0xBC, 0x13, 0x7B, 0xDE,  // ...@..{.
                /* 02B8 */  0x32, 0x46, 0xF0, 0xC8, 0x0F, 0x5C, 0x2C, 0xC6,  // 2F...\,.
                /* 02C0 */  0xEA, 0xF5, 0x5F, 0xF3, 0x81, 0x0B, 0x70, 0xF6,  // .._...p.
                /* 02C8 */  0xFF, 0x3F, 0x70, 0x01, 0x1C, 0x0A, 0x7A, 0x18,  // .?p...z.
                /* 02D0 */  0x42, 0x0F, 0xC3, 0x53, 0x39, 0x97, 0x87, 0xC8,  // B..S9...
                /* 02D8 */  0x53, 0x89, 0x18, 0x35, 0x4C, 0xD4, 0x67, 0x28,  // S..5L.g(
                /* 02E0 */  0xDF, 0x2D, 0x7C, 0x20, 0x02, 0xDF, 0x99, 0x0B,  // .-| ....
                /* 02E8 */  0xF8, 0xFD, 0xFF, 0x0F, 0x44, 0x70, 0x8E, 0x29,  // ....Dp.)
                /* 02F0 */  0xB8, 0x33, 0x0D, 0x78, 0x7C, 0xCE, 0x40, 0x20,  // .3.x|.@ 
                /* 02F8 */  0xA7, 0xE2, 0x43, 0x0D, 0x60, 0x41, 0xF4, 0x13,  // ..C.`A..
                /* 0300 */  0xC2, 0x27, 0x1A, 0x2A, 0x13, 0x06, 0x75, 0xA8,  // .'.*..u.
                /* 0308 */  0x01, 0xAC, 0x5C, 0x61, 0x9E, 0x46, 0xCF, 0xF9,  // ..\a.F..
                /* 0310 */  0x59, 0xC6, 0xA7, 0x1A, 0x1F, 0x4A, 0x8D, 0x63,  // Y....J.c
                /* 0318 */  0x88, 0x97, 0x99, 0x87, 0x1A, 0x1F, 0x0B, 0x5E,  // .......^
                /* 0320 */  0x49, 0x7D, 0xA8, 0x31, 0x54, 0x9C, 0x87, 0x1A,  // I}.1T...
                /* 0328 */  0x0F, 0x37, 0x50, 0xD4, 0x37, 0x9B, 0x67, 0x1B,  // .7P.7.g.
                /* 0330 */  0xA3, 0xC7, 0xF7, 0x0D, 0xD5, 0x10, 0x0F, 0x35,  // .......5
                /* 0338 */  0x4C, 0xF2, 0x4A, 0x35, 0x16, 0x1F, 0x6A, 0xC0,  // L.J5..j.
                /* 0340 */  0xF1, 0xFF, 0x3F, 0xD4, 0x00, 0xFC, 0xFF, 0xFF,  // ..?.....
                /* 0348 */  0x1F, 0x6A, 0x00, 0x47, 0x47, 0x03, 0x38, 0x47,  // .j.GG.8G
                /* 0350 */  0x46, 0xDC, 0xD1, 0x00, 0x5C, 0x87, 0x52, 0xE0,  // F...\.R.
                /* 0358 */  0x70, 0x34, 0x00, 0x1E, 0x47, 0x21, 0x30, 0x5F,  // p4..G!0_
                /* 0360 */  0x68, 0x7C, 0x14, 0x02, 0x16, 0xFF, 0xFF, 0xA3,  // h|......
                /* 0368 */  0x10, 0xF8, 0x65, 0x9F, 0x83, 0x50, 0x42, 0x8F,  // ..e..PB.
                /* 0370 */  0x42, 0x80, 0xA0, 0xDB, 0xCF, 0x53, 0xC4, 0xB3,  // B....S..
                /* 0378 */  0x8F, 0x2F, 0x3F, 0x0F, 0x04, 0x11, 0x5E, 0xF3,  // ./?...^.
                /* 0380 */  0x7D, 0x0A, 0xF2, 0x21, 0xDF, 0x47, 0x21, 0x06,  // }..!.G!.
                /* 0388 */  0x63, 0x28, 0x5F, 0x83, 0x7C, 0x14, 0x62, 0x50,  // c(_.|.bP
                /* 0390 */  0xAF, 0x41, 0xBE, 0xEF, 0x1B, 0xE4, 0xF1, 0x22,  // .A....."
                /* 0398 */  0x48, 0xEC, 0x67, 0x02, 0x1F, 0x85, 0x98, 0xE8,  // H.g.....
                /* 03A0 */  0xA3, 0x10, 0xA0, 0xF0, 0xFF, 0x7F, 0x14, 0x02,  // ........
                /* 03A8 */  0xF8, 0xFF, 0xFF, 0x3F, 0x0A, 0x01, 0xCE, 0x02,  // ...?....
                /* 03B0 */  0x1C, 0x0D, 0x40, 0x37, 0xAD, 0x47, 0x21, 0xF0,  // ..@7.G!.
                /* 03B8 */  0xDE, 0x59, 0x4E, 0xFB, 0x04, 0x7C, 0x16, 0x02,  // .YN..|..
                /* 03C0 */  0xCC, 0xFE, 0xFF, 0xCF, 0x42, 0xC0, 0xEC, 0x28,  // ....B..(
                /* 03C8 */  0x74, 0x14, 0x67, 0xF9, 0x2A, 0xF4, 0x04, 0xF0,  // t.g.*...
                /* 03D0 */  0x02, 0x10, 0x23, 0xCC, 0x3B, 0xD0, 0x4B, 0x26,  // ..#.;.K&
                /* 03D8 */  0xBB, 0x8B, 0x1B, 0xE7, 0xC9, 0xE5, 0x2C, 0x9E,  // ......,.
                /* 03E0 */  0xC4, 0x7D, 0x09, 0xF2, 0x81, 0xE2, 0x59, 0xC8,  // .}....Y.
                /* 03E8 */  0x50, 0xA7, 0x1B, 0xF4, 0x8D, 0xDC, 0x03, 0x8B,  // P.......
                /* 03F0 */  0x19, 0x3F, 0xC4, 0xF3, 0x90, 0x21, 0x9E, 0x85,  // .?...!..
                /* 03F8 */  0x00, 0x76, 0xFD, 0xFF, 0xCF, 0x42, 0x00, 0xFF,  // .v...B..
                /* 0400 */  0xFF, 0xFF, 0x47, 0x03, 0xF8, 0x2F, 0x00, 0x9F,  // ..G../..
                /* 0408 */  0x85, 0x80, 0xE7, 0x09, 0xE0, 0x41, 0xDB, 0x67,  // .....A.g
                /* 0410 */  0x21, 0x80, 0x33, 0x87, 0xCB, 0xF3, 0x7F, 0x05,  // !.3.....
                /* 0418 */  0x3A, 0x96, 0xF7, 0x08, 0xCF, 0xFA, 0x24, 0x5F,  // :.....$_
                /* 0420 */  0x2F, 0x3D, 0xD3, 0x87, 0x82, 0x67, 0x21, 0x86,  // /=...g!.
                /* 0428 */  0x75, 0x18, 0x3E, 0x0B, 0x31, 0x88, 0x17, 0x4D,  // u.>.1..M
                /* 0430 */  0x43, 0xBC, 0x70, 0xFA, 0x30, 0xE0, 0xFF, 0x3F,  // C.p.0..?
                /* 0438 */  0x5E, 0xE0, 0x57, 0x4E, 0x03, 0x05, 0x09, 0xF4,  // ^.WN....
                /* 0440 */  0x2C, 0x04, 0x30, 0xFE, 0xFF, 0x7F, 0x16, 0x02,  // ,.0.....
                /* 0448 */  0xC8, 0xB8, 0x46, 0x9D, 0x85, 0x80, 0xE5, 0x6D,  // ..F....m
                /* 0450 */  0xE5, 0x19, 0xDB, 0xA7, 0x95, 0x04, 0xFF, 0xFF,  // ........
                /* 0458 */  0x67, 0x21, 0xC0, 0x41, 0x2E, 0x23, 0x07, 0x21,  // g!.A.#.!
                /* 0460 */  0x4C, 0xC4, 0x87, 0x83, 0x8F, 0x99, 0x80, 0x9E,  // L.......
                /* 0468 */  0x29, 0xBE, 0xB8, 0x1B, 0xE3, 0x09, 0xE0, 0x45,  // )......E
                /* 0470 */  0xE2, 0x31, 0x93, 0x1D, 0x35, 0x0D, 0xF3, 0x2C,  // .1..5..,
                /* 0478 */  0x64, 0xBC, 0xB3, 0x78, 0x0D, 0x78, 0x82, 0xF7,  // d..x.x..
                /* 0480 */  0xE4, 0x9F, 0x85, 0x18, 0xD8, 0x61, 0x05, 0x7B,  // .....a.{
                /* 0488 */  0x14, 0x32, 0xA8, 0xC1, 0x63, 0x87, 0x08, 0x13,  // .2..c...
                /* 0490 */  0xE8, 0x59, 0x88, 0xC5, 0x7D, 0xAE, 0xE8, 0x3C,  // .Y..}..<
                /* 0498 */  0xE1, 0xB3, 0x10, 0xF0, 0xFE, 0xFF, 0x9F, 0x25,  // .......%
                /* 04A0 */  0xE0, 0x5E, 0x0D, 0x9E, 0x85, 0x00, 0x13, 0x87,  // .^......
                /* 04A8 */  0x0D, 0x9F, 0x35, 0xC0, 0x33, 0x7C, 0x8F, 0xEA,  // ..5.3|..
                /* 04B0 */  0x1C, 0x1E, 0x8F, 0x81, 0x7F, 0x56, 0x1D, 0xE7,  // .....V..
                /* 04B8 */  0x04, 0x96, 0x7B, 0xD1, 0xB2, 0x71, 0xA0, 0xA1,  // ..{..q..
                /* 04C0 */  0x23, 0xB2, 0x3A, 0x20, 0x8D, 0x0D, 0x73, 0x29,  // #.: ..s)
                /* 04C8 */  0x89, 0x7C, 0x72, 0x6C, 0xD4, 0x56, 0x04, 0xA7,  // .|rl.V..
                /* 04D0 */  0x33, 0x93, 0x4F, 0x00, 0xD6, 0x42, 0x21, 0x05,  // 3.O..B!.
                /* 04D8 */  0x34, 0x1A, 0x8B, 0xE1, 0x9D, 0xF9, 0xE8, 0x44,  // 4......D
                /* 04E0 */  0x41, 0x0C, 0xE8, 0xE3, 0x90, 0x6D, 0x1C, 0x0A,  // A....m..
                /* 04E8 */  0x50, 0x7B, 0xD1, 0x14, 0xC8, 0x39, 0x07, 0xA3,  // P{...9..
                /* 04F0 */  0x7F, 0x76, 0x74, 0x36, 0xBE, 0x13, 0x70, 0x0D,  // .vt6..p.
                /* 04F8 */  0x10, 0x3A, 0x25, 0x18, 0xDA, 0x6A, 0x04, 0xFC,  // .:%..j..
                /* 0500 */  0xFF, 0x67, 0x89, 0x01, 0x33, 0xFE, 0x53, 0x8C,  // .g..3.S.
                /* 0508 */  0x09, 0x7C, 0x8E, 0xC1, 0x1F, 0x0C, 0xF0, 0x03,  // .|......
                /* 0510 */  0x7F, 0x31, 0xA8, 0xFA, 0x5E, 0xA0, 0xFB, 0x82,  // .1..^...
                /* 0518 */  0xD5, 0xDD, 0x64, 0x20, 0xCC, 0xC8, 0x04, 0xF5,  // ..d ....
                /* 0520 */  0x9D, 0x0E, 0x40, 0x01, 0xE4, 0x0B, 0x81, 0xCF,  // ..@.....
                /* 0528 */  0x51, 0x0F, 0x05, 0x6C, 0x22, 0x21, 0xC2, 0x44,  // Q..l"!.D
                /* 0530 */  0x33, 0x3A, 0x62, 0xC2, 0xA8, 0xE8, 0x13, 0xA6,  // 3:b.....
                /* 0538 */  0x20, 0x9E, 0xB0, 0x63, 0x4D, 0x18, 0x3D, 0x13,  //  ..cM.=.
                /* 0540 */  0x5F, 0x74, 0xD8, 0x88, 0x31, 0x21, 0xAE, 0x1E,  // _t..1!..
                /* 0548 */  0xD0, 0x26, 0x18, 0xD4, 0x97, 0x22, 0x58, 0x43,  // .&..."XC
                /* 0550 */  0xE6, 0x63, 0xF1, 0x05, 0x02, 0x37, 0x65, 0x30,  // .c...7e0
                /* 0558 */  0xCE, 0x89, 0x5D, 0x13, 0x7C, 0xD9, 0xC1, 0xCD,  // ..].|...
                /* 0560 */  0x19, 0x8C, 0xF0, 0x98, 0xBB, 0x18, 0xBF, 0x3A,  // .......:
                /* 0568 */  0x79, 0x74, 0xFC, 0xA0, 0xE0, 0x1B, 0x0E, 0xC3,  // yt......
                /* 0570 */  0x7E, 0x32, 0xF3, 0x8C, 0xDE, 0xCB, 0x7C, 0x8D,  // ~2....|.
                /* 0578 */  0xC3, 0xC0, 0x7A, 0xBC, 0x1C, 0xD6, 0x68, 0x61,  // ..z...ha
                /* 0580 */  0x0F, 0xED, 0x3D, 0xC4, 0xFF, 0xFF, 0x43, 0x8C,  // ..=...C.
                /* 0588 */  0xCF, 0x13, 0xC6, 0x08, 0xEB, 0xDB, 0x0B, 0x38,  // .......8
                /* 0590 */  0xEE, 0x59, 0xF0, 0xEF, 0x1A, 0xE0, 0xB9, 0x84,  // .Y......
                /* 0598 */  0xF8, 0xAE, 0x01, 0x30, 0xF0, 0xFF, 0x7F, 0xD7,  // ...0....
                /* 05A0 */  0x00, 0x4E, 0xD7, 0x04, 0xDF, 0x35, 0x80, 0xF7,  // .N...5..
                /* 05A8 */  0xD0, 0x7D, 0xD7, 0x00, 0xAE, 0xD9, 0xEF, 0x1A,  // .}......
                /* 05B0 */  0xA8, 0x63, 0x80, 0x15, 0xDE, 0x35, 0xA0, 0x5D,  // .c...5.]
                /* 05B8 */  0xD9, 0xDE, 0xD7, 0x9E, 0xB0, 0xAC, 0xE9, 0xB2,  // ........
                /* 05C0 */  0x81, 0x52, 0x73, 0xD9, 0x00, 0x14, 0xFC, 0xFF,  // .Rs.....
                /* 05C8 */  0x2F, 0x1B, 0x80, 0x01, 0x29, 0x13, 0x46, 0x85,  // /...).F.
                /* 05D0 */  0x9F, 0x30, 0x05, 0xF1, 0x84, 0x1D, 0xEC, 0xB2,  // .0......
                /* 05D8 */  0x01, 0x8A, 0x18, 0x97, 0x0D, 0xD0, 0x8F, 0xED,  // ........
                /* 05E0 */  0x65, 0x03, 0x18, 0xDC, 0x13, 0xF8, 0x6D, 0x03,  // e.....m.
                /* 05E8 */  0x78, 0x43, 0xFA, 0xB6, 0x01, 0xD6, 0xFF, 0xFF,  // xC......
                /* 05F0 */  0x6D, 0x03, 0xAC, 0xF9, 0x6F, 0x1B, 0x28, 0x0E,  // m...o.(.
                /* 05F8 */  0xAB, 0xBC, 0x6D, 0x40, 0x3C, 0xC9, 0x33, 0x02,  // ..m@<.3.
                /* 0600 */  0xAB, 0xBA, 0x6E, 0xA0, 0xF4, 0x5C, 0x37, 0x00,  // ..n..\7.
                /* 0608 */  0x12, 0x88, 0x99, 0x30, 0x2A, 0xFE, 0x84, 0x29,  // ...0*..)
                /* 0610 */  0x88, 0x27, 0xEC, 0x68, 0xD7, 0x0D, 0x50, 0x04,  // .'.h..P.
                /* 0618 */  0xB9, 0x6E, 0x80, 0x7E, 0x5E, 0x09, 0xFE, 0xFF,  // .n.~^...
                /* 0620 */  0xAF, 0x1B, 0xC0, 0xE0, 0xA2, 0x80, 0xB9, 0x6F,  // .......o
                /* 0628 */  0x00, 0x6F, 0x58, 0x7E, 0xDF, 0x00, 0x7C, 0xDC,  // .oX~..|.
                /* 0630 */  0xC4, 0x31, 0xF7, 0x0D, 0xC0, 0xCC, 0xFF, 0xFF,  // .1......
                /* 0638 */  0xBE, 0x01, 0xB0, 0xE7, 0xA2, 0x80, 0xBB, 0x6F,  // .......o
                /* 0640 */  0x00, 0xEF, 0x8B, 0xB4, 0xEF, 0x1B, 0x60, 0xFE,  // ......`.
                /* 0648 */  0xFF, 0xDF, 0x37, 0xC0, 0x28, 0x6D, 0xFD, 0x1E,  // ..7.(m..
                /* 0650 */  0x1C, 0x3D, 0x21, 0x78, 0x7C, 0xB8, 0xFB, 0xA5,  // .=!x|...
                /* 0658 */  0xC7, 0xE7, 0xBB, 0x39, 0x38, 0x06, 0x79, 0x8C,  // ...98.y.
                /* 0660 */  0x87, 0x76, 0xC0, 0xAF, 0xEF, 0x9E, 0x98, 0xEF,  // .v......
                /* 0668 */  0xE6, 0xC0, 0xFF, 0x4C, 0x70, 0x3C, 0x18, 0x68,  // ...Lp<.h
                /* 0670 */  0x1C, 0x62, 0xAB, 0x97, 0x06, 0x72, 0x34, 0x38,  // .b...r48
                /* 0678 */  0x3F, 0xDC, 0x19, 0x81, 0x61, 0x15, 0x7F, 0xF2,  // ?...a...
                /* 0680 */  0x47, 0x38, 0xC7, 0xD0, 0xD9, 0xE1, 0x20, 0xB1,  // G8.... .
                /* 0688 */  0x83, 0xE0, 0xC1, 0x56, 0x6D, 0x02, 0x85, 0x86,  // ...Vm...
                /* 0690 */  0x50, 0x14, 0x18, 0x14, 0x8B, 0x0F, 0x18, 0xF8,  // P.......
                /* 0698 */  0x61, 0xB3, 0xB3, 0x00, 0x93, 0x04, 0x87, 0x3A,  // a......:
                /* 06A0 */  0x02, 0xF8, 0x3E, 0xD1, 0xFC, 0x38, 0x74, 0x37,  // ..>..8t7
                /* 06A8 */  0x38, 0x54, 0x8F, 0xE5, 0xA1, 0x80, 0x9E, 0x01,  // 8T......
                /* 06B0 */  0x71, 0xC7, 0x0C, 0x32, 0x69, 0xCF, 0x28, 0xE2,  // q..2i.(.
                /* 06B8 */  0x53, 0xC2, 0x29, 0x85, 0x49, 0xE0, 0xF3, 0x03,  // S.).I...
                /* 06C0 */  0x43, 0xE3, 0x04, 0xAF, 0x0D, 0xA1, 0xF9, 0xFF,  // C.......
                /* 06C8 */  0xFF, 0xA4, 0xC0, 0x3C, 0xDF, 0x31, 0x04, 0x6C,  // ...<.1.l
                /* 06D0 */  0x02, 0xBB, 0xBF, 0x64, 0xC8, 0xDA, 0xC0, 0x75,  // ...d...u
                /* 06D8 */  0x4B, 0x32, 0x44, 0x6F, 0x38, 0xB2, 0x85, 0xA2,  // K2Do8...
                /* 06E0 */  0xE9, 0x44, 0x79, 0xDF, 0x88, 0x62, 0x67, 0x08,  // .Dy..bg.
                /* 06E8 */  0xC2, 0x88, 0x12, 0x2C, 0xC8, 0xA3, 0x42, 0xAC,  // ...,..B.
                /* 06F0 */  0x28, 0x2F, 0x05, 0x46, 0x88, 0x18, 0xE2, 0x95,  // (/.F....
                /* 06F8 */  0x23, 0xD0, 0x09, 0x87, 0x0F, 0xF2, 0xD8, 0x14,  // #.......
                /* 0700 */  0xA7, 0xFD, 0x41, 0x90, 0x58, 0x4F, 0x02, 0x8D,  // ..A.XO..
                /* 0708 */  0xC5, 0x91, 0x46, 0x83, 0x3A, 0x07, 0x78, 0xB8,  // ..F.:.x.
                /* 0710 */  0x3E, 0xC4, 0x78, 0xF8, 0x0F, 0x21, 0x06, 0x39,  // >.x..!.9
                /* 0718 */  0xC8, 0x73, 0x7B, 0x54, 0x38, 0x4E, 0x5F, 0x25,  // .s{T8N_%
                /* 0720 */  0x4C, 0xF0, 0x02, 0xE0, 0x83, 0x0A, 0x1C, 0xD7,  // L.......
                /* 0728 */  0x80, 0x9A, 0xF1, 0x33, 0x06, 0x58, 0x8E, 0xE3,  // ...3.X..
                /* 0730 */  0x3E, 0xA9, 0xC0, 0x1D, 0x8F, 0xEF, 0x07, 0x6C,  // >......l
                /* 0738 */  0xC2, 0x09, 0x2C, 0x7F, 0x10, 0xA8, 0xE3, 0x0C,  // ..,.....
                /* 0740 */  0x9F, 0xE7, 0x0B, 0x8B, 0x21, 0x1F, 0x13, 0x4C,  // ....!..L
                /* 0748 */  0x60, 0xB1, 0x27, 0x1B, 0x3A, 0x1E, 0xF0, 0xDF,  // `.'.:...
                /* 0750 */  0x63, 0x1E, 0x2F, 0x7C, 0x32, 0xF1, 0x7C, 0x4D,  // c./|2.|M
                /* 0758 */  0x30, 0x22, 0x84, 0x9C, 0x8C, 0x07, 0x7D, 0x87,  // 0"....}.
                /* 0760 */  0xC0, 0x5C, 0x6F, 0xD8, 0xB9, 0x85, 0x8B, 0x3A,  // .\o....:
                /* 0768 */  0x68, 0xA0, 0x4E, 0x0B, 0x3E, 0x28, 0xB0, 0x9B,  // h.N.>(..
                /* 0770 */  0x11, 0xE6, 0xB8, 0xCE, 0xCF, 0x2A, 0x60, 0xF8,  // .....*`.
                /* 0778 */  0xFF, 0x9F, 0x55, 0x60, 0x8F, 0x10, 0xFE, 0xED,  // ..U`....
                /* 0780 */  0xC1, 0xF3, 0xF2, 0x95, 0xE1, 0xD5, 0x21, 0x81,  // ......!.
                /* 0788 */  0x43, 0x8E, 0x10, 0x3D, 0x2E, 0x8F, 0x10, 0x73,  // C..=...s
                /* 0790 */  0x3E, 0xC2, 0x0C, 0x11, 0x5C, 0x67, 0x01, 0x70,  // >...\g.p
                /* 0798 */  0x0C, 0x11, 0xF8, 0x1C, 0x70, 0xC0, 0x71, 0x69,  // ....p.qi
                /* 07A0 */  0xE2, 0x03, 0xF5, 0x01, 0x07, 0x70, 0x70, 0x4D,  // .....ppM
                /* 07A8 */  0xC3, 0x1D, 0x70, 0xC0, 0x71, 0x16, 0x60, 0xFF,  // ..p.q.`.
                /* 07B0 */  0xFF, 0xC3, 0x0D, 0x2C, 0x49, 0x26, 0x0E, 0x23,  // ...,I&.#
                /* 07B8 */  0x18, 0x11, 0x30, 0x28, 0x02, 0x02, 0xA4, 0xB3,  // ..0(....
                /* 07C0 */  0x80, 0x0F, 0x29, 0x00, 0x1F, 0xAE, 0x0C, 0x0F,  // ..).....
                /* 07C8 */  0x29, 0xD8, 0x93, 0x86, 0x07, 0x8E, 0x1B, 0x85,  // ).......
                /* 07D0 */  0x07, 0x8D, 0x0B, 0x30, 0x68, 0x7A, 0xE2, 0x80,  // ...0hz..
                /* 07D8 */  0x7F, 0x4C, 0xF0, 0x19, 0x05, 0x1C, 0xE3, 0x06,  // .L......
                /* 07E0 */  0xDF, 0x2A, 0x0C, 0xFC, 0xFF, 0x3F, 0x30, 0xCC,  // .*...?0.
                /* 07E8 */  0xE1, 0xC2, 0x63, 0x39, 0x8A, 0xA0, 0x07, 0x1E,  // ..c9....
                /* 07F0 */  0xD4, 0xF7, 0x8C, 0x33, 0xF7, 0x24, 0x8F, 0xD1,  // ...3.$..
                /* 07F8 */  0x51, 0x0F, 0x27, 0xF4, 0xE4, 0x85, 0x3B, 0x57,  // Q.'...;W
                /* 0800 */  0xF9, 0x0A, 0x71, 0x14, 0x18, 0xB8, 0x77, 0x29,  // ..q...w)
                /* 0808 */  0x8F, 0xCF, 0x17, 0x2B, 0xC3, 0x63, 0x46, 0xFB,  // ...+.cF.
                /* 0810 */  0x1E, 0x72, 0xD6, 0x11, 0x02, 0xE2, 0x2F, 0x75,  // .r..../u
                /* 0818 */  0x6C, 0xC0, 0x60, 0x39, 0x18, 0x00, 0x87, 0x01,  // l.`9....
                /* 0820 */  0xE3, 0x13, 0x0D, 0x58, 0x67, 0x1B, 0x3C, 0xF4,  // ...Xg.<.
                /* 0828 */  0x69, 0x31, 0xC4, 0xE3, 0x0B, 0xFB, 0x56, 0x61,  // i1....Va
                /* 0830 */  0x82, 0xEA, 0x41, 0x75, 0x12, 0xF4, 0xD0, 0xC0,  // ..Au....
                /* 0838 */  0x01, 0xE8, 0xA1, 0xC1, 0x3F, 0xB9, 0x90, 0xFB,  // ....?...
                /* 0840 */  0x2B, 0x1D, 0x82, 0xB5, 0xE2, 0x69, 0xDE, 0x47,  // +....i.G
                /* 0848 */  0x1E, 0xF3, 0xDC, 0xA2, 0xBC, 0x0D, 0x3C, 0x07,  // ......<.
                /* 0850 */  0xF0, 0xD3, 0x82, 0x87, 0xE3, 0x63, 0x81, 0xC7,  // .....c..
                /* 0858 */  0xE9, 0x4B, 0x58, 0x82, 0xF7, 0x1A, 0x9F, 0x6C,  // .KX....l
                /* 0860 */  0x1E, 0x5C, 0x58, 0xB2, 0x21, 0xA0, 0x06, 0xEB,  // .\X.!...
                /* 0868 */  0x21, 0x60, 0xA6, 0x9A, 0xC0, 0x49, 0x46, 0x80,  // !`...IF.
                /* 0870 */  0xCA, 0x00, 0xA1, 0x1B, 0xCB, 0xE9, 0x3E, 0x8B,  // ......>.
                /* 0878 */  0x84, 0x38, 0xCD, 0x47, 0x99, 0xC7, 0x02, 0x8F,  // .8.G....
                /* 0880 */  0xF5, 0xC1, 0xC0, 0xFF, 0x7F, 0xCD, 0x23, 0xD4,  // ......#.
                /* 0888 */  0x7D, 0xCD, 0x33, 0x7B, 0x3A, 0xC0, 0xAC, 0x22,  // }.3{:.."
                /* 0890 */  0xDC, 0x7B, 0xCE, 0x1B, 0x86, 0xD1, 0x9E, 0x2D,  // .{.....-
                /* 0898 */  0x7C, 0xCD, 0x78, 0xD6, 0x34, 0x42, 0x38, 0x76,  // |.x.4B8v
                /* 08A0 */  0x83, 0xF3, 0x48, 0x8C, 0xF0, 0x82, 0xC0, 0x4E,  // ..H....N
                /* 08A8 */  0x0C, 0x0F, 0x30, 0xC6, 0x39, 0x79, 0xC3, 0xFA,  // ..0.9y..
                /* 08B0 */  0xC2, 0xCB, 0x40, 0x83, 0x19, 0xDB, 0x97, 0x01,  // ..@.....
                /* 08B8 */  0x36, 0x2A, 0xDF, 0x88, 0xC0, 0x97, 0xFC, 0x62,  // 6*.....b
                /* 08C0 */  0x00, 0x65, 0x16, 0xBE, 0x9E, 0xF8, 0xA0, 0xC4,  // .e......
                /* 08C8 */  0x2E, 0x06, 0x2C, 0xE5, 0xC5, 0x00, 0x54, 0x37,  // ..,...T7
                /* 08D0 */  0x0C, 0x5F, 0x0C, 0xE0, 0x5F, 0x89, 0x5E, 0x0C,  // ._.._.^.
                /* 08D8 */  0xC0, 0x70, 0x71, 0xF2, 0x3D, 0xC0, 0x1E, 0xEE,  // .pq.=...
                /* 08E0 */  0xA3, 0x74, 0x9C, 0xBE, 0xFD, 0xBD, 0x19, 0xF8,  // .t......
                /* 08E8 */  0x6C, 0xC0, 0x60, 0x3C, 0xC3, 0x30, 0xC6, 0x08,  // l.`<.0..
                /* 08F0 */  0xE3, 0x51, 0x86, 0x31, 0xC1, 0xDC, 0xB7, 0x03,  // .Q.1....
                /* 08F8 */  0xE8, 0x39, 0x87, 0x81, 0x4A, 0x78, 0x3B, 0x80,  // .9..Jx;.
                /* 0900 */  0x72, 0x0E, 0xE8, 0xF2, 0x68, 0x42, 0x4F, 0x01,  // r...hBO.
                /* 0908 */  0x4F, 0x07, 0x3E, 0x29, 0x1A, 0xA2, 0xAF, 0xB1,  // O.>)....
                /* 0910 */  0x0A, 0x26, 0x50, 0xC4, 0x07, 0x0D, 0x3E, 0xB5,  // .&P...>.
                /* 0918 */  0x28, 0x3E, 0x15, 0x78, 0x2D, 0xCF, 0x4E, 0xE1,  // (>.x-.N.
                /* 0920 */  0xE2, 0x9C, 0x89, 0xA7, 0x6A, 0x38, 0x03, 0xBD,  // ....j8..
                /* 0928 */  0xE6, 0x86, 0x63, 0xFF, 0x7F, 0x38, 0xFC, 0xA9,  // ..c..8..
                /* 0930 */  0xE0, 0x35, 0x80, 0x1D, 0x24, 0x3D, 0x2D, 0x23,  // .5..$=-#
                /* 0938 */  0xC2, 0x38, 0xA4, 0x3C, 0x32, 0xF8, 0xB6, 0x18,  // .8.<2...
                /* 0940 */  0xC7, 0x90, 0x0F, 0x91, 0xBE, 0x13, 0x18, 0xF2,  // ........
                /* 0948 */  0x21, 0xEF, 0x79, 0xC7, 0xC0, 0xAF, 0x08, 0x71,  // !.y....q
                /* 0950 */  0x9E, 0xB2, 0x7C, 0x67, 0xF0, 0x65, 0x01, 0x7C,  // ..|g.e.|
                /* 0958 */  0x91, 0x2E, 0x0B, 0x68, 0x68, 0x9F, 0x64, 0x7C,  // ...hh.d|
                /* 0960 */  0x41, 0x30, 0xEC, 0x89, 0xB3, 0x00, 0x77, 0x05,  // A0....w.
                /* 0968 */  0x50, 0x81, 0xFA, 0xAE, 0x00, 0xFF, 0x42, 0xF0,  // P.....B.
                /* 0970 */  0xAE, 0x00, 0x86, 0x79, 0xF9, 0x56, 0xC0, 0x35,  // ...y.V.5
                /* 0978 */  0x1D, 0x4A, 0xD0, 0x67, 0x12, 0x5F, 0x17, 0x70,  // .J.g._.p
                /* 0980 */  0x53, 0x64, 0xA9, 0x8E, 0x0A, 0xD0, 0x53, 0x4C,  // Sd....SL
                /* 0988 */  0x02, 0x75, 0x47, 0xF7, 0x51, 0x01, 0xC6, 0x4D,  // .uG.Q..M
                /* 0990 */  0xD9, 0x07, 0x54, 0x76, 0x5A, 0x60, 0x67, 0x21,  // ..TvZ`g!
                /* 0998 */  0x76, 0x1D, 0xC1, 0x5D, 0x49, 0x18, 0xCA, 0xB3,  // v..]I...
                /* 09A0 */  0x81, 0x2F, 0x59, 0xFC, 0x70, 0x00, 0x03, 0xDC,  // ./Y.p...
                /* 09A8 */  0xB3, 0x38, 0xC4, 0x08, 0xB1, 0xD9, 0x81, 0xEB,  // .8......
                /* 09B0 */  0x75, 0xD2, 0x70, 0x2F, 0x44, 0xEC, 0xFF, 0x7F,  // u.p/D...
                /* 09B8 */  0x32, 0x00, 0xE3, 0x51, 0x1B, 0x1C, 0x27, 0x9D,  // 2..Q..'.
                /* 09C0 */  0xF0, 0x91, 0x9E, 0x59, 0xF8, 0x49, 0x19, 0x30,  // ...Y.I.0
                /* 09C8 */  0x71, 0xF2, 0x03, 0xE3, 0xC9, 0x1A, 0xC6, 0x00,  // q.......
                /* 09D0 */  0xB8, 0xBC, 0x57, 0x95, 0x81, 0xFC, 0x43, 0x90,  // ..W...C.
                /* 09D8 */  0x20, 0x18, 0xD4, 0x29, 0x19, 0x38, 0x1C, 0xC5,  //  ..).8..
                /* 09E0 */  0x70, 0xA7, 0x64, 0x78, 0x50, 0xF8, 0xC3, 0x00,  // p.dxP...
                /* 09E8 */  0xE6, 0x46, 0xE8, 0x7B, 0x82, 0xA1, 0xDE, 0x93,  // .F.{....
                /* 09F0 */  0x0E, 0xE3, 0x91, 0xD0, 0x04, 0x3E, 0x2D, 0xC3,  // .....>-.
                /* 09F8 */  0xFA, 0xFF, 0x9F, 0x96, 0xF9, 0x39, 0x21, 0xFE,  // .....9!.
                /* 0A00 */  0x53, 0xCE, 0xFB, 0xC5, 0x83, 0xB2, 0x31, 0xA2,  // S.....1.
                /* 0A08 */  0xBC, 0x2A, 0xFB, 0x9C, 0x69, 0x14, 0x76, 0x4B,  // .*..i.vK
                /* 0A10 */  0x7E, 0x73, 0x78, 0x55, 0xF6, 0x69, 0xF9, 0xDC,  // ~sxU.i..
                /* 0A18 */  0x22, 0xBD, 0x2F, 0x7B, 0xE4, 0x31, 0xE3, 0xC4,  // "./{.1..
                /* 0A20 */  0x0A, 0x12, 0xE8, 0x7D, 0x23, 0x4A, 0xD8, 0x18,  // ...}#J..
                /* 0A28 */  0xE1, 0x02, 0x3D, 0x2D, 0xB3, 0x63, 0xBB, 0x87,  // ..=-.c..
                /* 0A30 */  0xEC, 0xB3, 0x02, 0xEE, 0xEC, 0x00, 0x77, 0x7A,  // ......wz
                /* 0A38 */  0xFC, 0xF4, 0x00, 0x38, 0x01, 0x7A, 0x7A, 0x00,  // ...8.zz.
                /* 0A40 */  0xDB, 0x79, 0x03, 0xEE, 0x81, 0x00, 0x71, 0xFC,  // .y....q.
                /* 0A48 */  0x47, 0x05, 0xBF, 0xB2, 0x50, 0x38, 0x7E, 0x6C,  // G...P8~l
                /* 0A50 */  0xE7, 0xC7, 0x12, 0xDC, 0xE1, 0xC0, 0x47, 0x06,  // ......G.
                /* 0A58 */  0x1F, 0x20, 0x71, 0x43, 0xF1, 0xA1, 0x02, 0x79,  // . qC...y
                /* 0A60 */  0x16, 0x00, 0xC5, 0xE8, 0xD9, 0x08, 0xD8, 0x0D,  // ........
                /* 0A68 */  0xE6, 0xA5, 0x25, 0xCA, 0xFF, 0xFF, 0xBD, 0x81,  // ..%.....
                /* 0A70 */  0x9D, 0x52, 0x70, 0x07, 0x01, 0xF0, 0x1D, 0x03,  // .Rp.....
                /* 0A78 */  0xC0, 0x3B, 0x18, 0x2E, 0x6B, 0xCC, 0x28, 0x21,  // .;..k.(!
                /* 0A80 */  0x30, 0x1A, 0x33, 0xEE, 0x10, 0xC2, 0x4F, 0x04,  // 0.3...O.
                /* 0A88 */  0xB8, 0x31, 0x7B, 0xDC, 0x1E, 0x33, 0xEE, 0x38,  // .1{..3.8
                /* 0A90 */  0xCB, 0x47, 0xF5, 0x94, 0x11, 0xCA, 0x07, 0x0E,  // .G......
                /* 0A98 */  0x76, 0xCE, 0x78, 0x23, 0xE0, 0x43, 0x07, 0x1E,  // v.x#.C..
                /* 0AA0 */  0x07, 0x18, 0xDC, 0x91, 0x02, 0x8C, 0x97, 0x03,  // ........
                /* 0AA8 */  0x36, 0x76, 0x70, 0x07, 0x21, 0xA7, 0x40, 0x96,  // 6vp.!.@.
                /* 0AB0 */  0x0E, 0xA3, 0xB1, 0xE3, 0x64, 0x03, 0xE9, 0x18,  // ....d...
                /* 0AB8 */  0xE3, 0x43, 0xAE, 0xC7, 0x8E, 0x1B, 0xAC, 0xC7,  // .C......
                /* 0AC0 */  0x8E, 0x3B, 0xBE, 0x60, 0xFF, 0xFF, 0xC7, 0x17,  // .;.`....
                /* 0AC8 */  0x30, 0x8C, 0x81, 0x8B, 0x1F, 0x06, 0xFA, 0xE6,  // 0.......
                /* 0AD0 */  0xE7, 0xD1, 0x19, 0xDC, 0xC3, 0xF6, 0x09, 0x26,  // .......&
                /* 0AD8 */  0xC6, 0x1B, 0x4C, 0x88, 0x47, 0x96, 0x97, 0x96,  // ..L.G...
                /* 0AE0 */  0x08, 0x0F, 0x2D, 0xBE, 0xB9, 0xBC, 0xB4, 0xF8,  // ..-.....
                /* 0AE8 */  0x16, 0x63, 0x94, 0x10, 0x11, 0x0E, 0x26, 0xCE,  // .c....&.
                /* 0AF0 */  0x13, 0x8C, 0x11, 0x0E, 0x3C, 0x8A, 0x21, 0x22,  // ....<.!"
                /* 0AF8 */  0x9C, 0x40, 0x88, 0x93, 0x3E, 0xD9, 0x20, 0xE1,  // .@..>. .
                /* 0B00 */  0x63, 0x84, 0x8D, 0x16, 0xE5, 0x09, 0x86, 0x8D,  // c.......
                /* 0B08 */  0x85, 0x9F, 0x57, 0x3C, 0x78, 0x7E, 0x5A, 0xF3,  // ..W<x~Z.
                /* 0B10 */  0x5D, 0xD0, 0x93, 0x39, 0xC7, 0x87, 0x2C, 0x4F,  // ]..9..,O
                /* 0B18 */  0xED, 0x71, 0xD2, 0x87, 0x59, 0xDC, 0xA0, 0x1E,  // .q..Y...
                /* 0B20 */  0x1C, 0xD9, 0x5D, 0xC7, 0xC7, 0x6B, 0xEC, 0x29,  // ..]..k.)
                /* 0B28 */  0xC8, 0x43, 0xE0, 0x27, 0x02, 0x5F, 0x10, 0x3D,  // .C.'._.=
                /* 0B30 */  0x59, 0xDF, 0xF5, 0xD8, 0xBD, 0xCC, 0x18, 0xD5,  // Y.......
                /* 0B38 */  0x4F, 0x01, 0x75, 0x4C, 0x39, 0x83, 0x57, 0x08,  // O.uL9.W.
                /* 0B40 */  0x76, 0xCF, 0xF3, 0x21, 0xDB, 0x77, 0x49, 0x36,  // v..!.wI6
                /* 0B48 */  0x0A, 0xDC, 0x21, 0xC1, 0x67, 0x24, 0x7E, 0xAA,  // ..!.g$~.
                /* 0B50 */  0xF0, 0x30, 0x3C, 0x0A, 0x18, 0x33, 0x78, 0x47,  // .0<..3xG
                /* 0B58 */  0x38, 0xB4, 0x10, 0x07, 0xFC, 0xBE, 0xCB, 0x86,  // 8.......
                /* 0B60 */  0x1A, 0xE3, 0xF4, 0x7C, 0xFE, 0x60, 0x83, 0x80,  // ...|.`..
                /* 0B68 */  0x0F, 0x75, 0xA8, 0x1E, 0xE6, 0x51, 0xBD, 0x14,  // .u...Q..
                /* 0B70 */  0x32, 0x9C, 0xB3, 0x83, 0x3B, 0x08, 0xEC, 0xF1,  // 2...;...
                /* 0B78 */  0xC3, 0x83, 0xE0, 0x37, 0x4B, 0x3E, 0x08, 0x76,  // ...7K>.v
                /* 0B80 */  0xBE, 0x79, 0x83, 0x33, 0xC8, 0xFF, 0xFF, 0x18,  // .y.3....
                /* 0B88 */  0x60, 0x9F, 0xA9, 0x7C, 0x34, 0x41, 0x1C, 0x01,  // `..|4A..
                /* 0B90 */  0xD1, 0xE7, 0x0F, 0x8F, 0xE1, 0x4D, 0x8E, 0x0F,  // .....M..
                /* 0B98 */  0x07, 0x7B, 0xF4, 0xC0, 0x9D, 0x44, 0xE0, 0x1E,  // .{...D..
                /* 0BA0 */  0xBB, 0x0E, 0xDA, 0xD7, 0x38, 0x5F, 0xB4, 0x60,  // ....8_.`
                /* 0BA8 */  0xDC, 0xF7, 0x9E, 0x45, 0xC0, 0x8F, 0xF1, 0xD8,  // ...E....
                /* 0BB0 */  0x02, 0x8E, 0x43, 0x09, 0xB8, 0x83, 0x1D, 0xD7,  // ..C.....
                /* 0BB8 */  0x38, 0x84, 0xA2, 0xC0, 0xE8, 0x50, 0x82, 0x8B,  // 8....P..
                /* 0BC0 */  0x01, 0x24, 0x18, 0xC7, 0x38, 0xA3, 0xA1, 0x2F,  // .$..8../
                /* 0BC8 */  0x91, 0x3E, 0xA4, 0xC1, 0x19, 0x34, 0xEC, 0x79,  // .>...4.y
                /* 0BD0 */  0x3E, 0xA1, 0x70, 0x7B, 0x02, 0x14, 0x9D, 0x50,  // >.p{...P
                /* 0BD8 */  0x40, 0x86, 0xFB, 0x0C, 0x82, 0x3D, 0x21, 0xF0,  // @....=!.
                /* 0BE0 */  0x33, 0x08, 0xFB, 0xFF, 0x1F, 0x1C, 0x3D, 0xEE,  // 3.....=.
                /* 0BE8 */  0xF7, 0x46, 0x9F, 0x1A, 0xD9, 0xDC, 0x1F, 0x02,  // .F......
                /* 0BF0 */  0x4E, 0xE0, 0xDC, 0xD9, 0xA9, 0x19, 0x77, 0x66,  // N.....wf
                /* 0BF8 */  0xC0, 0x9E, 0x3F, 0x3C, 0x04, 0x7E, 0x2E, 0xF0,  // ..?<.~..
                /* 0C00 */  0xF0, 0x3D, 0x04, 0xFC, 0xE0, 0x1F, 0x98, 0x0D,  // .=......
                /* 0C08 */  0x0E, 0xC6, 0x53, 0x84, 0xAF, 0x1D, 0x1C, 0x9C,  // ..S.....
                /* 0C10 */  0x9F, 0x06, 0x0C, 0xCE, 0x5F, 0xA1, 0x3E, 0xCF,  // ...._.>.
                /* 0C18 */  0x33, 0x70, 0xEC, 0xA9, 0xD7, 0xF7, 0x0E, 0xCF,  // 3p......
                /* 0C20 */  0xD7, 0x87, 0x0A, 0xFC, 0x4D, 0xCF, 0x87, 0x0A,  // ....M...
                /* 0C28 */  0x70, 0x1C, 0x1E, 0xF8, 0x61, 0x85, 0x0D, 0xE1,  // p...a...
                /* 0C30 */  0x51, 0x00, 0x7F, 0x6A, 0xF1, 0xF1, 0x2F, 0xCE,  // Q..j../.
                /* 0C38 */  0x53, 0x04, 0xBB, 0x8D, 0x60, 0x0F, 0x17, 0x80,  // S...`...
                /* 0C40 */  0xA3, 0x68, 0x67, 0x31, 0x54, 0x98, 0xB3, 0x18,  // .hg1T...
                /* 0C48 */  0xF9, 0xFF, 0x9F, 0xA3, 0x50, 0x67, 0x31, 0x7A,  // ....Pg1z
                /* 0C50 */  0xB8, 0x00, 0x5C, 0x08, 0x3E, 0x1E, 0x80, 0xE6,  // ..\.>...
                /* 0C58 */  0x20, 0xF0, 0xB8, 0xE0, 0x0B, 0xC1, 0x91, 0x1C,  //  .......
                /* 0C60 */  0xC8, 0xD3, 0x01, 0xE0, 0x53, 0x1E, 0x09, 0x3D,  // ....S..=
                /* 0C68 */  0x1F, 0x59, 0x10, 0x0C, 0xEA, 0x7C, 0xE0, 0x13,  // .Y...|..
                /* 0C70 */  0x8A, 0x8F, 0x1D, 0xFC, 0x6C, 0xE0, 0x1B, 0xB9,  // ....l...
                /* 0C78 */  0x87, 0xCA, 0x4F, 0xCD, 0x3E, 0x69, 0xF3, 0xE0,  // ..O.>i..
                /* 0C80 */  0x3F, 0x69, 0xD9, 0x80, 0x51, 0xA0, 0x61, 0xA0,  // ?i..Q.a.
                /* 0C88 */  0x46, 0xE4, 0x23, 0xD2, 0xFF, 0xFF, 0xB9, 0x0D,  // F.#.....
                /* 0C90 */  0x1B, 0x60, 0x68, 0xF4, 0x1C, 0x0E, 0xE3, 0x80,  // .`h.....
                /* 0C98 */  0xEB, 0x73, 0x38, 0x76, 0x40, 0x3E, 0x87, 0xC3,  // .s8v@>..
                /* 0CA0 */  0x3F, 0x47, 0xC3, 0x1F, 0x1B, 0x3B, 0xDD, 0xF3,  // ?G...;..
                /* 0CA8 */  0x81, 0xC1, 0xBA, 0x7E, 0x63, 0x06, 0x06, 0xB6,  // ...~c...
                /* 0CB0 */  0x6F, 0x91, 0x07, 0x06, 0x1C, 0x51, 0xCF, 0xC6,  // o....Q..
                /* 0CB8 */  0x57, 0x08, 0x0F, 0x0C, 0x6C, 0x80, 0x1E, 0x18,  // W...l...
                /* 0CC0 */  0xF0, 0x89, 0x05, 0x21, 0x27, 0x03, 0x43, 0x9D,  // ...!'.C.
                /* 0CC8 */  0x32, 0x8C, 0x1C, 0xF3, 0x89, 0xC3, 0xC3, 0xF0,  // 2.......
                /* 0CD0 */  0xA1, 0x22, 0xEA, 0x33, 0xC0, 0x23, 0x1E, 0x1B,  // .".3.#..
                /* 0CD8 */  0x1B, 0xFB, 0xFF, 0x8F, 0x0D, 0x2C, 0xC7, 0x16,  // .....,..
                /* 0CE0 */  0x8F, 0x0D, 0xFC, 0x47, 0x78, 0xFC, 0xD8, 0xE0,  // ...Gx...
                /* 0CE8 */  0x8C, 0xE5, 0xD1, 0xC4, 0x97, 0x99, 0x23, 0x3B,  // ......#;
                /* 0CF0 */  0x8D, 0x33, 0x7B, 0x0D, 0xF1, 0xD1, 0xEE, 0xF1,  // .3{.....
                /* 0CF8 */  0xDB, 0x63, 0x03, 0x97, 0x85, 0xB1, 0x01, 0xA5,  // .c......
                /* 0D00 */  0x90, 0x63, 0x43, 0x1F, 0x52, 0x7C, 0x0A, 0xB0,  // .cC.R|..
                /* 0D08 */  0x71, 0x54, 0x32, 0x0F, 0x1F, 0xAF, 0x7C, 0x62,  // qT2...|b
                /* 0D10 */  0x38, 0xBA, 0x20, 0x6F, 0xE8, 0xBE, 0x5C, 0xF8,  // 8. o..\.
                /* 0D18 */  0x48, 0x63, 0x30, 0x5F, 0x5A, 0x7C, 0x06, 0xE5,  // Hc0_Z|..
                /* 0D20 */  0x43, 0x04, 0x97, 0x86, 0x21, 0x02, 0xA5, 0x50,  // C...!..P
                /* 0D28 */  0x43, 0x44, 0x8F, 0xE7, 0xFF, 0xFF, 0x08, 0xE6,  // CD......
                /* 0D30 */  0x21, 0xB2, 0xA1, 0x81, 0xF7, 0x1B, 0xA3, 0xA1,  // !.......
                /* 0D38 */  0x01, 0xA1, 0x70, 0x43, 0x43, 0x1F, 0xD6, 0x7C,  // ..pCC..|
                /* 0D40 */  0x08, 0x60, 0x10, 0xBE, 0x0D, 0xB0, 0xAB, 0x80,  // .`......
                /* 0D48 */  0xAF, 0x42, 0x1E, 0xE0, 0x93, 0x28, 0x1B, 0x1E,  // .B...(..
                /* 0D50 */  0xF8, 0x06, 0xE5, 0xE1, 0x01, 0x9F, 0xF0, 0xC0,  // ........
                /* 0D58 */  0x5E, 0x85, 0x87, 0x47, 0xCF, 0x4A, 0x1E, 0x1E,  // ^..G.J..
                /* 0D60 */  0x3C, 0x90, 0xC7, 0x08, 0x76, 0x0E, 0xF1, 0xE0,  // <...v...
                /* 0D68 */  0xC0, 0x61, 0x62, 0x70, 0xA0, 0x38, 0xFA, 0xE3,  // .abp.8..
                /* 0D70 */  0x86, 0xC0, 0x2E, 0xB3, 0x9E, 0x38, 0xBF, 0xB2,  // .....8..
                /* 0D78 */  0x78, 0x50, 0xF8, 0xFF, 0xFF, 0x11, 0x00, 0xD6,  // xP......
                /* 0D80 */  0x71, 0x06, 0x7C, 0xC1, 0x0E, 0x07, 0xE8, 0x63,  // q.|....c
                /* 0D88 */  0x22, 0x1B, 0xC3, 0x43, 0xC4, 0x83, 0xAB, 0x07,  // "..C....
                /* 0D90 */  0xE2, 0x6B, 0xC7, 0x6B, 0x31, 0xEE, 0x68, 0x00,  // .k.k1.h.
                /* 0D98 */  0x2E, 0x15, 0x47, 0x03, 0xA0, 0x74, 0xB0, 0x05,  // ..G..t..
                /* 0DA0 */  0xC7, 0x3D, 0xCD, 0x47, 0x3B, 0xCC, 0x1C, 0x3D,  // .=.G;..=
                /* 0DA8 */  0x80, 0xE7, 0x37, 0x8F, 0x96, 0x9F, 0xDF, 0x00,  // ..7.....
                /* 0DB0 */  0x47, 0x41, 0x0F, 0xB6, 0x74, 0xE0, 0x8E, 0x06,  // GA..t...
                /* 0DB8 */  0x83, 0x3A, 0xBF, 0x61, 0xFE, 0xFF, 0xE7, 0x37,  // .:.a...7
                /* 0DC0 */  0x30, 0x44, 0x00, 0xD7, 0x99, 0xC6, 0xE7, 0x17,  // 0D......
                /* 0DC8 */  0x38, 0x43, 0x3D, 0x68, 0x5F, 0x13, 0x3C, 0x6B,  // 8C=h_.<k
                /* 0DD0 */  0xDF, 0xB8, 0xD8, 0x39, 0x01, 0x5C, 0x03, 0xF2,  // ...9.\..
                /* 0DD8 */  0x49, 0x07, 0x38, 0x02, 0x9F, 0xC4, 0x03, 0xFE,  // I.8.....
                /* 0DE0 */  0xA1, 0x81, 0x79, 0x58, 0x1E, 0x1A, 0xF0, 0x39,  // ..yX...9
                /* 0DE8 */  0x1A, 0xE0, 0x4E, 0x14, 0xE0, 0xB9, 0x8D, 0xE0,  // ..N.....
                /* 0DF0 */  0x0E, 0x14, 0xC0, 0xE2, 0xFF, 0x7F, 0xA0, 0x00,  // ........
                /* 0DF8 */  0x56, 0x47, 0x7C, 0x8F, 0x8B, 0x43, 0xE3, 0x10,  // VG|..C..
                /* 0E00 */  0x1F, 0xD2, 0xCE, 0xD9, 0xE7, 0xAF, 0x33, 0xC5,  // ......3.
                /* 0E08 */  0x9D, 0x45, 0xC0, 0x70, 0xA2, 0x47, 0xBC, 0xD3,  // .E.p.G..
                /* 0E10 */  0x0C, 0xE4, 0x07, 0x86, 0x84, 0xC0, 0xA0, 0x4E,  // .......N
                /* 0E18 */  0x40, 0x1E, 0x8A, 0x0F, 0x06, 0x1C, 0xD8, 0x47,  // @......G
                /* 0E20 */  0x04, 0x76, 0x2E, 0x60, 0x07, 0x28, 0xC3, 0xF1,  // .v.`.(..
                /* 0E28 */  0xB3, 0x80, 0x4F, 0x09, 0x0F, 0x35, 0xC7, 0xF1,  // ..O..5..
                /* 0E30 */  0xB8, 0xE9, 0xBB, 0x99, 0x21, 0xD9, 0xD5, 0xE0,  // ....!...
                /* 0E38 */  0xF9, 0x07, 0x7B, 0xDA, 0x85, 0x73, 0xC4, 0x05,  // ..{..s..
                /* 0E40 */  0x17, 0x81, 0xCF, 0x3A, 0x1E, 0x05, 0x3F, 0x3D,  // ...:..?=
                /* 0E48 */  0x78, 0x8E, 0x6F, 0x0C, 0x3E, 0x3D, 0x30, 0xF7,  // x.o.>=0.
                /* 0E50 */  0x02, 0xCC, 0x1D, 0xBA, 0x85, 0x70, 0x4C, 0xAF,  // .....pL.
                /* 0E58 */  0x0F, 0x31, 0x8E, 0xFA, 0xB1, 0xA1, 0x2D, 0x01,  // .1....-.
                /* 0E60 */  0xDA, 0x50, 0x74, 0x07, 0x78, 0x19, 0x88, 0x12,  // .Pt.x...
                /* 0E68 */  0xE2, 0x08, 0x22, 0xB5, 0x86, 0xA2, 0x99, 0x47,  // .."....G
                /* 0E70 */  0x8A, 0x12, 0x30, 0x9E, 0x61, 0x1A, 0x9B, 0x8C,  // ..0.a...
                /* 0E78 */  0x20, 0x63, 0x84, 0x8E, 0x13, 0x2C, 0x4A, 0xB4,  //  c...,J.
                /* 0E80 */  0x57, 0x80, 0xF6, 0x47, 0xCB, 0x56, 0xAC, 0xB1,  // W..G.V..
                /* 0E88 */  0x38, 0xD2, 0xC9, 0x12, 0x3D, 0x6C, 0x1F, 0xB3,  // 8...=l..
                /* 0E90 */  0xF1, 0xA7, 0x55, 0xCC, 0xFF, 0x9F, 0xE0, 0x55,  // ..U....U
                /* 0E98 */  0xC5, 0x07, 0x05, 0x1F, 0x00, 0xF0, 0x2E, 0x01,  // ........
                /* 0EA0 */  0x75, 0x75, 0xF4, 0xB8, 0x7D, 0xDE, 0x00, 0xFF,  // uu..}...
                /* 0EA8 */  0xF5, 0x02, 0x4B, 0x50, 0xFE, 0x20, 0x50, 0x23,  // ..KP. P#
                /* 0EB0 */  0x33, 0xB4, 0xC7, 0xF9, 0x36, 0x63, 0xC8, 0x27,  // 3...6c.'
                /* 0EB8 */  0x27, 0x13, 0x58, 0xEC, 0x09, 0x15, 0x68, 0x0C,  // '.X...h.
                /* 0EC0 */  0xFE, 0x69, 0xC3, 0xD7, 0x76, 0xCF, 0xD7, 0xE7,  // .i..v...
                /* 0EC8 */  0x38, 0x80, 0x0F, 0xFF, 0xFF, 0x73, 0x1C, 0x60,  // 8....s.`
                /* 0ED0 */  0x68, 0x38, 0xB8, 0xA3, 0x0F, 0xDC, 0x2B, 0x09,  // h8....+.
                /* 0ED8 */  0x3F, 0xFC, 0x00, 0xCE, 0x80, 0x1E, 0x7E, 0xC0,  // ?.....~.
                /* 0EE0 */  0x3E, 0x54, 0xDC, 0x10, 0x78, 0x84, 0x15, 0xD1,  // >T..x...
                /* 0EE8 */  0xC3, 0x80, 0x45, 0xC3, 0xA0, 0xCE, 0x6B, 0xD8,  // ..E...k.
                /* 0EF0 */  0xFF, 0xFF, 0x79, 0x0D, 0xB6, 0x38, 0x70, 0x1D,  // ..y..8p.
                /* 0EF8 */  0x54, 0x7D, 0x36, 0x86, 0x33, 0xA8, 0xD3, 0xEE,  // T}6.3...
                /* 0F00 */  0xFD, 0xAE, 0x40, 0x2E, 0x22, 0x1E, 0xF4, 0xF9,  // ..@."...
                /* 0F08 */  0x3C, 0x3B, 0xB0, 0x03, 0x1B, 0xF0, 0x1F, 0x1B,  // <;......
                /* 0F10 */  0x9C, 0x1B, 0xC0, 0x53, 0x74, 0x84, 0x63, 0x03,  // ...St.c.
                /* 0F18 */  0xFB, 0x89, 0x0D, 0x38, 0x9D, 0xED, 0xE0, 0x5C,  // ...8...\
                /* 0F20 */  0xA1, 0xD8, 0x6D, 0x1F, 0x37, 0x34, 0xB0, 0xD9,  // ..m.74..
                /* 0F28 */  0x18, 0x1A, 0xC8, 0xFE, 0xFF, 0x87, 0x4F, 0xE0,  // ......O.
                /* 0F30 */  0x75, 0xE8, 0xE2, 0x97, 0x8A, 0xE7, 0x2F, 0x7E,  // u...../~
                /* 0F38 */  0xB8, 0x03, 0x9C, 0x4B, 0x3B, 0xD9, 0xA1, 0xC4,  // ...K;...
                /* 0F40 */  0x1C, 0xEE, 0x00, 0x29, 0xFF, 0xFF, 0xC3, 0x1D,  // ...)....
                /* 0F48 */  0xB8, 0xEE, 0x72, 0xEF, 0x0C, 0x2F, 0x0D, 0x9E,  // ..r../..
                /* 0F50 */  0xD3, 0xBB, 0x9D, 0x31, 0x5E, 0xEA, 0x8C, 0x10,  // ...1^...
                /* 0F58 */  0x85, 0xDD, 0x06, 0xA2, 0xD9, 0xDB, 0xE1, 0x8E,  // ........
                /* 0F60 */  0x9C, 0xF0, 0x38, 0x66, 0xA4, 0x27, 0xBD, 0x60,  // ..8f.'.`
                /* 0F68 */  0x91, 0x22, 0x1E, 0x4E, 0x94, 0x10, 0xC1, 0x5E,  // .".N...^
                /* 0F70 */  0x27, 0x9E, 0xF2, 0x1E, 0xEE, 0x98, 0x90, 0xC3,  // '.......
                /* 0F78 */  0x1D, 0xD0, 0x71, 0x7D, 0xB8, 0x03, 0x2A, 0x27,  // ..q}..*'
                /* 0F80 */  0x2A, 0xFC, 0xE1, 0x0E, 0x30, 0xFB, 0xFF, 0x3F,  // *...0..?
                /* 0F88 */  0xDC, 0x01, 0x8C, 0x3A, 0xA3, 0xE1, 0x0E, 0x77,  // ...:...w
                /* 0F90 */  0x60, 0x3B, 0xFD, 0x00, 0xE7, 0xFF, 0xFF, 0xE9,  // `;......
                /* 0F98 */  0x07, 0x78, 0x8F, 0x15, 0xC6, 0x18, 0x78, 0xB4,  // .x....x.
                /* 0FA0 */  0x25, 0x51, 0x20, 0x87, 0x81, 0x41, 0x11, 0x38,  // %Q ..A.8
                /* 0FA8 */  0xC8, 0xA1, 0x8E, 0x06, 0x3B, 0xBD, 0x40, 0x99,  // ....;.@.
                /* 0FB0 */  0xCB, 0x81, 0x9E, 0xC2, 0x33, 0x82, 0x0F, 0x60,  // ....3..`
                /* 0FB8 */  0x60, 0x3F, 0xD5, 0x01, 0x87, 0x53, 0x03, 0x3E,  // `?...S.>
                /* 0FC0 */  0xD0, 0x09, 0x05, 0x3D, 0x0A, 0x9F, 0x4D, 0xC0,  // ...=..M.
                /* 0FC8 */  0x7B, 0xA4, 0x03, 0x36, 0xFF, 0xFF, 0xB3, 0x09,  // {..6....
                /* 0FD0 */  0x7B, 0x35, 0xFA, 0x6C, 0x82, 0x63, 0x31, 0xEA,  // {5.l.c1.
                /* 0FD8 */  0x1B, 0xC4, 0x21, 0xBE, 0x74, 0xF8, 0xDC, 0xF8,  // ..!.t...
                /* 0FE0 */  0x4E, 0xE3, 0x4B, 0x00, 0xE6, 0xFA, 0x61, 0x82,  // N.K...a.
                /* 0FE8 */  0x31, 0x21, 0xF4, 0xC9, 0xF2, 0xA9, 0x0E, 0x38,  // 1!.....8
                /* 0FF0 */  0x1D, 0x4E, 0xE0, 0x8D, 0x1E, 0x77, 0x5A, 0xF0,  // .N...wZ.
                /* 0FF8 */  0x70, 0x38, 0xB8, 0x67, 0xF3, 0x2C, 0xF1, 0x44,  // p8.g.,.D
                /* 1000 */  0xE4, 0x71, 0xF8, 0x74, 0x02, 0xBC, 0x0E, 0x18,  // .q.t....
                /* 1008 */  0x98, 0x19, 0x84, 0x7F, 0x08, 0x61, 0xA7, 0x4F,  // .....a.O
                /* 1010 */  0x1F, 0x99, 0x3C, 0xF7, 0x77, 0x23, 0x9F, 0x4E,  // ..<.w#.N
                /* 1018 */  0x00, 0x5F, 0xFF, 0xFF, 0xA3, 0x1E, 0xB0, 0x90,  // ._......
                /* 1020 */  0xA8, 0xE1, 0x9C, 0x87, 0x11, 0x05, 0x83, 0x3A,  // .......:
                /* 1028 */  0xEA, 0x01, 0xD6, 0x2E, 0x7A, 0x36, 0x86, 0xA0,  // ....z6..
                /* 1030 */  0x8B, 0xC0, 0x19, 0x84, 0x78, 0xBC, 0x7B, 0xC5,  // ....x.{.
                /* 1038 */  0x8B, 0xE4, 0x3B, 0x40, 0x9C, 0x47, 0x3D, 0x83,  // ..;@.G=.
                /* 1040 */  0xBD, 0x7D, 0x3C, 0x48, 0x44, 0x89, 0xF3, 0xA8,  // .}<HD...
                /* 1048 */  0xE7, 0xD1, 0x87, 0xF2, 0xE4, 0x43, 0x9D, 0x7E,  // .....C.~
                /* 1050 */  0xAC, 0xB0, 0x81, 0x9E, 0xF8, 0x5E, 0xF4, 0x42,  // .....^.B
                /* 1058 */  0x1A, 0xE1, 0x51, 0x8F, 0x09, 0x7A, 0x79, 0xE8,  // ..Q..zy.
                /* 1060 */  0x70, 0xE5, 0xA3, 0x1E, 0x60, 0xE5, 0xFF, 0x7F,  // p...`...
                /* 1068 */  0xD4, 0x03, 0xF8, 0xFF, 0xFF, 0x3F, 0xEA, 0x81,  // .....?..
                /* 1070 */  0xF9, 0xF4, 0x04, 0xF8, 0x3F, 0xD6, 0xE0, 0x8E,  // ....?...
                /* 1078 */  0x8A, 0x60, 0x3B, 0x3F, 0x01, 0x2E, 0xFE, 0xFF,  // .`;?....
                /* 1080 */  0xE7, 0x27, 0x30, 0x0D, 0xDD, 0xE7, 0x27, 0x30,  // .'0...'0
                /* 1088 */  0x8F, 0x16, 0xE6, 0x01, 0x01, 0x71, 0x56, 0x44,  // .....qVD
                /* 1090 */  0x85, 0x7F, 0xC8, 0x18, 0x0E, 0x15, 0x1C, 0x48,  // .......H
                /* 1098 */  0xBF, 0x28, 0x1F, 0x01, 0x81, 0xCB, 0x51, 0x11,  // .(....Q.
                /* 10A0 */  0x38, 0x9C, 0x59, 0xF0, 0x42, 0x4E, 0x1D, 0xE8,  // 8.Y.BN..
                /* 10A8 */  0xF1, 0x18, 0xF4, 0x95, 0xC3, 0x57, 0x02, 0x7E,  // .....W.~
                /* 10B0 */  0xE4, 0x60, 0xA1, 0x8F, 0x1C, 0xA0, 0x3A, 0x2C,  // .`....:,
                /* 10B8 */  0x82, 0xEF, 0xC8, 0x01, 0x8E, 0xEB, 0x55, 0x60,  // ......U`
                /* 10C0 */  0xFE, 0xFF, 0x07, 0x66, 0xB7, 0x83, 0xD7, 0x4F,  // ...f...O
                /* 10C8 */  0x4F, 0xE2, 0x31, 0xEA, 0x38, 0x43, 0x14, 0x8E,  // O.1.8C..
                /* 10D0 */  0x49, 0x0E, 0x06, 0x91, 0xDE, 0xC1, 0xD8, 0x00,  // I.......
                /* 10D8 */  0x5F, 0x5E, 0x7C, 0xA8, 0xF2, 0x31, 0x10, 0x18,  // _^|..1..
                /* 10E0 */  0x42, 0x9C, 0x0D, 0x3F, 0x5D, 0x18, 0xF3, 0x74,  // B..?]..t
                /* 10E8 */  0xF8, 0x31, 0x10, 0xB0, 0x2E, 0xF5, 0x0C, 0x88,  // .1......
                /* 10F0 */  0x12, 0x77, 0x0C, 0x04, 0x52, 0xFF, 0xFF, 0x63,  // .w..R..c
                /* 10F8 */  0x20, 0x70, 0xBD, 0x04, 0x7A, 0xCC, 0x67, 0xFC,  //  p..z.g.
                /* 1100 */  0xE6, 0xF7, 0xE4, 0x17, 0xA5, 0xB6, 0xEB, 0x9F,  // ........
                /* 1108 */  0xEE, 0x06, 0xC6, 0x7A, 0x08, 0x78, 0x02, 0xF4,  // ...z.x..
                /* 1110 */  0xFD, 0xCF, 0xC7, 0x8A, 0x28, 0x01, 0xA3, 0xC4,  // ....(...
                /* 1118 */  0x7A, 0x11, 0x34, 0x66, 0x8C, 0x60, 0xEF, 0x80,  // z.4f.`..
                /* 1120 */  0x31, 0x1F, 0x09, 0x3D, 0xC2, 0x68, 0xC1, 0x0D,  // 1..=.h..
                /* 1128 */  0xF4, 0x18, 0xC8, 0x84, 0x1D, 0x03, 0x01, 0x12,  // ........
                /* 1130 */  0xFD, 0xFF, 0x8F, 0x81, 0x00, 0x23, 0x4F, 0x50,  // .....#OP
                /* 1138 */  0xC0, 0xF6, 0xFF, 0x7F, 0x82, 0x02, 0x0C, 0x1D,  // ........
                /* 1140 */  0x05, 0xC1, 0x7C, 0x86, 0x02, 0xAC, 0x1D, 0x05,  // ..|.....
                /* 1148 */  0xC1, 0x3E, 0x5A, 0x98, 0xA3, 0xE0, 0x31, 0x5F,  // .>Z...1_
                /* 1150 */  0x1E, 0x06, 0xA2, 0xC1, 0x24, 0xFC, 0xFF, 0x8F,  // ....$...
                /* 1158 */  0x82, 0xD8, 0x50, 0x40, 0x3A, 0x77, 0x38, 0xD4,  // ..P@:w8.
                /* 1160 */  0xE9, 0x05, 0x7D, 0x50, 0xF0, 0xB0, 0x9F, 0x0A,  // ..}P....
                /* 1168 */  0x3C, 0x89, 0x53, 0xF5, 0xB5, 0xE0, 0x28, 0x9E,  // <.S...(.
                /* 1170 */  0x00, 0x7C, 0x18, 0x04, 0xFE, 0x43, 0x83, 0x35,  // .|...C.5
                /* 1178 */  0x89, 0xE2, 0x87, 0x06, 0xEA, 0xB3, 0x07, 0xF8,  // ........
                /* 1180 */  0x86, 0x06, 0x8E, 0xA8, 0x67, 0x1C, 0xF4, 0x89,  // ....g...
                /* 1188 */  0xC8, 0x67, 0x83, 0x98, 0x6F, 0x1E, 0x11, 0x9E,  // .g..o...
                /* 1190 */  0x3C, 0x7C, 0x7D, 0x60, 0x27, 0x4F, 0x9F, 0x9A,  // <|}`'O..
                /* 1198 */  0x02, 0x45, 0x79, 0xDF, 0xE0, 0x71, 0x4E, 0x39,  // .Ey..qN9
                /* 11A0 */  0xA0, 0x3A, 0xFC, 0x82, 0xE3, 0xC0, 0x0B, 0xE3,  // .:......
                /* 11A8 */  0xFF, 0x7F, 0xE0, 0x65, 0xC7, 0x29, 0x1F, 0x4B,  // ...e.).K
                /* 11B0 */  0xC0, 0x77, 0x26, 0x85, 0x73, 0x73, 0xF1, 0x1D,  // .w&.ss..
                /* 11B8 */  0x8F, 0x9D, 0x06, 0xC0, 0xA6, 0xE3, 0x34, 0x00,  // ......4.
                /* 11C0 */  0x94, 0x62, 0x0D, 0x0C, 0x7D, 0x54, 0x31, 0x6A,  // .b..}T1j
                /* 11C8 */  0xEF, 0x93, 0xD0, 0xC4, 0xD8, 0x75, 0xE4, 0x25,  // .....u.%
                /* 11D0 */  0xC5, 0xD7, 0x93, 0x67, 0x2D, 0xF0, 0xF9, 0x18,  // ...g-...
                /* 11D8 */  0x1B, 0x50, 0x3A, 0x81, 0xF1, 0xA3, 0x27, 0x98,  // .P:...'.
                /* 11E0 */  0x60, 0x0E, 0xE6, 0x55, 0xDC, 0x83, 0x7C, 0x12,  // `..U..|.
                /* 11E8 */  0x62, 0xA7, 0x1C, 0xF0, 0xFE, 0xFF, 0x0F, 0x9E,  // b.......
                /* 11F0 */  0x80, 0x3D, 0x11, 0xA7, 0x4E, 0x54, 0xEC, 0x37,  // .=..NT.7
                /* 11F8 */  0x97, 0x0F, 0x9E, 0x80, 0xBC, 0x3B, 0x83, 0x11,  // .....;..
                /* 1200 */  0xCE, 0x3F, 0xC4, 0x03, 0x44, 0x88, 0x67, 0x4E,  // .?..D.gN
                /* 1208 */  0x83, 0xC4, 0x09, 0xF2, 0x32, 0xF0, 0xE0, 0xE9,  // ....2...
                /* 1210 */  0x7B, 0x67, 0x9C, 0x67, 0xCF, 0x28, 0x6F, 0x9E,  // {g.g.(o.
                /* 1218 */  0x46, 0x38, 0xFA, 0x78, 0x06, 0x7A, 0xE7, 0x0C,  // F8.x.z..
                /* 1220 */  0xF1, 0xD6, 0xF9, 0x0C, 0xFA, 0xEA, 0x69, 0xB4,  // ......i.
                /* 1228 */  0x58, 0xC1, 0x8F, 0xF1, 0xC1, 0x93, 0x45, 0x3E,  // X.....E>
                /* 1230 */  0x23, 0xD1, 0x83, 0x27, 0xEC, 0xFF, 0xFF, 0xC1,  // #..'....
                /* 1238 */  0x13, 0xE0, 0xFF, 0xFF, 0xFF, 0xE0, 0x09, 0x18,  // ........
                /* 1240 */  0x3B, 0x83, 0x01, 0xC7, 0x13, 0x1B, 0x38, 0xCE,  // ;.....8.
                /* 1248 */  0x60, 0xC0, 0xE5, 0xE8, 0x0F, 0x9E, 0x93, 0x26,  // `......&
                /* 1250 */  0x8C, 0x23, 0x13, 0xF8, 0xFF, 0xFF, 0x47, 0x26,  // .#....G&
                /* 1258 */  0xC0, 0xD5, 0x58, 0x61, 0x8C, 0x81, 0x27, 0x7B,  // ..Xa..'{
                /* 1260 */  0x1A, 0xD0, 0xE3, 0x80, 0x45, 0x1D, 0x98, 0x04,  // ....E...
                /* 1268 */  0xC3, 0x59, 0x7C, 0x58, 0xF0, 0x11, 0x81, 0x1F,  // .Y|X....
                /* 1270 */  0x16, 0x3C, 0x82, 0x8A, 0xC7, 0x49, 0x8F, 0x45,  // .<...I.E
                /* 1278 */  0x3E, 0x77, 0xB2, 0x43, 0x82, 0x0F, 0x21, 0x1E,  // >w.C..!.
                /* 1280 */  0xA4, 0x0F, 0xB3, 0xE0, 0x39, 0x58, 0xC1, 0xBB,  // ....9X..
                /* 1288 */  0x2E, 0xC1, 0x39, 0x15, 0x00, 0x66, 0xFE, 0xFF,  // ..9..f..
                /* 1290 */  0x04, 0xB5, 0xAB, 0x38, 0x5D, 0xB0, 0x00, 0x07,  // ...8]...
                /* 1298 */  0x30, 0xD9, 0x38, 0x86, 0x50, 0x0E, 0x1F, 0x5D,  // 0.8.P..]
                /* 12A0 */  0x3D, 0x4D, 0x76, 0x24, 0x83, 0x19, 0x0B, 0x52,  // =Mv$...R
                /* 12A8 */  0x27, 0x01, 0x0F, 0xC0, 0x81, 0x60, 0xA4, 0x9D,  // '....`..
                /* 12B0 */  0x44, 0xA3, 0x31, 0x9C, 0xD5, 0xC2, 0x08, 0xCE,  // D.1.....
                /* 12B8 */  0x20, 0x3E, 0x8E, 0x38, 0xD7, 0x91, 0x0A, 0xBD,  //  >.8....
                /* 12C0 */  0x1B, 0x1D, 0xA7, 0x50, 0x41, 0xEE, 0x25, 0x74,  // ...PA.%t
                /* 12C8 */  0xDE, 0xBE, 0x1B, 0xF0, 0x77, 0x9A, 0xC7, 0x62,  // ....w..b
                /* 12D0 */  0x60, 0xDF, 0x4E, 0xC0, 0x31, 0x17, 0xAB, 0x01,  // `.N.1...
                /* 12D8 */  0x45, 0x0D, 0xC0, 0x68, 0x98, 0x53, 0xC0, 0x53,  // E..h.S.S
                /* 12E0 */  0x09, 0xB8, 0x82, 0xCD, 0x0D, 0x7D, 0x61, 0xB1,  // .....}a.
                /* 12E8 */  0xD6, 0xA9, 0xE8, 0xF8, 0xF4, 0x3E, 0x70, 0x70,  // .....>pp
                /* 12F0 */  0xC0, 0x63, 0xF6, 0x1E, 0x1C, 0x2C, 0x34, 0x0F,  // .c...,4.
                /* 12F8 */  0x0E, 0x6C, 0xD9, 0x06, 0x87, 0x56, 0x72, 0x17,  // .l...Vr.
                /* 1300 */  0x21, 0x87, 0x0F, 0xFC, 0xEC, 0x60, 0xFC, 0xFF,  // !....`..
                /* 1308 */  0x67, 0x07, 0x46, 0x40, 0xCF, 0x0E, 0x16, 0x92,  // g.F@....
                /* 1310 */  0x67, 0x07, 0x36, 0x7D, 0x67, 0x11, 0x50, 0x00,  // g.6}g.P.
                /* 1318 */  0xF9, 0xDE, 0xE1, 0x73, 0xCB, 0xB3, 0x07, 0x1B,  // ...s....
                /* 1320 */  0xC3, 0xA3, 0x8B, 0xD1, 0x8C, 0xCE, 0x35, 0xDD,  // ......5.
                /* 1328 */  0x26, 0x50, 0x2A, 0x6E, 0x13, 0x14, 0xC4, 0x37,  // &P*n...7
                /* 1330 */  0x00, 0x27, 0xA4, 0xD1, 0x3D, 0x0D, 0x37, 0x13,  // .'..=.7.
                /* 1338 */  0xE3, 0x3F, 0x62, 0xF8, 0x88, 0x70, 0x48, 0x67,  // .?b..pHg
                /* 1340 */  0x6B, 0x82, 0x79, 0x20, 0xF5, 0x7E, 0xF4, 0x65,  // k.y .~.e
                /* 1348 */  0x0F, 0x3F, 0xFB, 0x90, 0x0F, 0x2E, 0x9E, 0x86,  // .?......
                /* 1350 */  0xAF, 0x37, 0xE4, 0xDE, 0x41, 0xA7, 0xED, 0x33,  // .7..A..3
                /* 1358 */  0x03, 0xE6, 0x30, 0xED, 0xEB, 0x54, 0x02, 0xCB,  // ..0..T..
                /* 1360 */  0xBA, 0x4A, 0x50, 0x0F, 0x17, 0x10, 0x7A, 0xA1,  // .JP...z.
                /* 1368 */  0xF1, 0xBD, 0x30, 0xC1, 0xC3, 0x99, 0x6F, 0x67,  // ..0...og
                /* 1370 */  0xEF, 0x25, 0xEC, 0x70, 0x98, 0xE0, 0xDD, 0x30,  // .%.p...0
                /* 1378 */  0xC1, 0xBC, 0x83, 0x40, 0x8D, 0xCA, 0x83, 0xC0,  // ...@....
                /* 1380 */  0x1C, 0xBF, 0x4C, 0x30, 0xDF, 0x18, 0x50, 0xC9,  // ..L0..P.
                /* 1388 */  0x2E, 0x5A, 0xF4, 0x0C, 0xF3, 0x0E, 0xE3, 0x4B,  // .Z.....K
                /* 1390 */  0x82, 0xAF, 0x1F, 0x3E, 0xB7, 0x78, 0x01, 0xAF,  // ...>.x..
                /* 1398 */  0x5B, 0x30, 0x08, 0x9E, 0x81, 0x5E, 0x5D, 0x0C,  // [0...^].
                /* 13A0 */  0x15, 0x27, 0xF0, 0xAB, 0xC0, 0x1B, 0x4D, 0x88,  // .'....M.
                /* 13A8 */  0x60, 0x86, 0x3D, 0xFC, 0x90, 0x6F, 0x31, 0x3E,  // `.=..o1>
                /* 13B0 */  0x5F, 0xFA, 0x06, 0x10, 0xEB, 0x75, 0xC4, 0xFF,  // _....u..
                /* 13B8 */  0xFF, 0x91, 0xF2, 0x63, 0xCB, 0x01, 0x45, 0x7A,  // ...c..Ez
                /* 13C0 */  0xEB, 0xF3, 0x04, 0x7C, 0x96, 0xF1, 0x71, 0xF0,  // ...|..q.
                /* 13C8 */  0xA4, 0x7C, 0xAF, 0x34, 0xFA, 0x2B, 0x84, 0x0F,  // .|.4.+..
                /* 13D0 */  0x3F, 0x46, 0xF6, 0x39, 0x87, 0x1D, 0x0C, 0xD9,  // ?F.9....
                /* 13D8 */  0xA0, 0x38, 0xE2, 0x03, 0xC3, 0x4B, 0x8D, 0xA7,  // .8...K..
                /* 13E0 */  0xC2, 0xCE, 0x5D, 0x30, 0x0E, 0x0E, 0xEC, 0x58,  // ..]0...X
                /* 13E8 */  0x84, 0x39, 0xEA, 0x81, 0xEB, 0x64, 0xE3, 0x93,  // .9...d..
                /* 13F0 */  0x03, 0x98, 0xE1, 0x31, 0x87, 0x6B, 0x9F, 0x37,  // ...1.k.7
                /* 13F8 */  0x7C, 0x33, 0xF0, 0xB8, 0xF8, 0x91, 0xC3, 0xC7,  // |3......
                /* 1400 */  0x3B, 0x86, 0x7D, 0x9A, 0x3E, 0x1A, 0xBD, 0xBC,  // ;.}.>...
                /* 1408 */  0xF9, 0xF4, 0x82, 0x81, 0xF5, 0xA5, 0x81, 0xC3,  // ........
                /* 1410 */  0x1A, 0x2D, 0xEC, 0x63, 0xC0, 0x99, 0xFB, 0x42,  // .-.c...B
                /* 1418 */  0x84, 0x3B, 0x75, 0x82, 0x05, 0x10, 0x7F, 0x2B,  // .;u....+
                /* 1420 */  0x79, 0xE4, 0xF0, 0x04, 0x0C, 0xC8, 0x72, 0xAF,  // y.....r.
                /* 1428 */  0x4B, 0x07, 0x22, 0x7E, 0xCA, 0xB3, 0xBA, 0x03,  // K."~....
                /* 1430 */  0x11, 0x02, 0xE3, 0x71, 0xF4, 0xF1, 0xC3, 0xB3,  // ...q....
                /* 1438 */  0xF1, 0x51, 0xC0, 0xC7, 0x28, 0xCF, 0xFC, 0x8C,  // .Q..(...
                /* 1440 */  0x22, 0xBD, 0x32, 0x58, 0xCB, 0x89, 0x08, 0xA5,  // ".2X....
                /* 1448 */  0x02, 0x46, 0x81, 0x69, 0x74, 0xE7, 0xE0, 0x11,  // .F.it...
                /* 1450 */  0x61, 0x04, 0x67, 0x10, 0x8F, 0xD6, 0x37, 0x17,  // a.g...7.
                /* 1458 */  0x18, 0xFF, 0xFF, 0x9B, 0x0B, 0xF0, 0x3A, 0x13,  // ......:.
                /* 1460 */  0x01, 0x97, 0xEB, 0xA5, 0x67, 0x87, 0xBB, 0x2C,  // ....g..,
                /* 1468 */  0xB2, 0x69, 0x1B, 0xF7, 0x15, 0xD5, 0xA7, 0x63,  // .i.....c
                /* 1470 */  0x4F, 0xFC, 0xB4, 0x61, 0x9C, 0x8C, 0x00, 0x1F,  // O..a....
                /* 1478 */  0x77, 0x1D, 0xC0, 0xC9, 0xFF, 0xFF, 0xAE, 0x03,  // w.......
                /* 1480 */  0xF0, 0xFF, 0xFF, 0x7F, 0xD7, 0xE1, 0xF7, 0x07,  // ........
                /* 1488 */  0xDF, 0x75, 0x80, 0x6B, 0xA4, 0x55, 0x51, 0x11,  // .u.k.UQ.
                /* 1490 */  0xBF, 0x05, 0x85, 0x80, 0x41, 0x8D, 0xCE, 0xD7,  // ....A...
                /* 1498 */  0x0A, 0xFC, 0xB1, 0x84, 0x81, 0xB3, 0xF3, 0x8A,  // ........
                /* 14A0 */  0xE1, 0xF8, 0xC0, 0x3D, 0xBE, 0xD7, 0x95, 0xD3,  // ...=....
                /* 14A8 */  0x7A, 0x36, 0xF0, 0x8D, 0xC5, 0x90, 0xEC, 0x82,  // z6......
                /* 14B0 */  0x8A, 0xBB, 0x5F, 0xF8, 0x46, 0xED, 0xA9, 0xBE,  // .._.F...
                /* 14B8 */  0x28, 0xBC, 0x27, 0xF8, 0x8E, 0xC0, 0xA0, 0x60,  // (.'....`
                /* 14C0 */  0xDC, 0x51, 0x31, 0x07, 0x54, 0x38, 0x04, 0x67,  // .Q1.T8.g
                /* 14C8 */  0x7C, 0x14, 0x98, 0x41, 0xFA, 0x90, 0xF2, 0x7A,  // |..A...z
                /* 14D0 */  0xE0, 0xC1, 0x32, 0xF7, 0xC7, 0x0D, 0x5D, 0x22,  // ..2...]"
                /* 14D8 */  0x1E, 0x36, 0x9E, 0x0C, 0x9A, 0x43, 0xD1, 0x99,  // .6...C..
                /* 14E0 */  0xE0, 0x14, 0xDA, 0x1A, 0x96, 0x70, 0xDE, 0x37,  // .....p.7
                /* 14E8 */  0x42, 0x44, 0x09, 0xF6, 0xC2, 0xF1, 0xC6, 0xF0,  // BD......
                /* 14F0 */  0x34, 0x1B, 0x25, 0x5E, 0xA4, 0x80, 0xD1, 0xA2,  // 4.%^....
                /* 14F8 */  0x04, 0xEB, 0x0D, 0x42, 0xA0, 0x91, 0x42, 0x04,  // ...B..B.
                /* 1500 */  0x0C, 0x51, 0x1C, 0x96, 0xE0, 0xA2, 0xB7, 0x7F,  // .Q......
                /* 1508 */  0x8D, 0x67, 0x6F, 0x02, 0x1D, 0x65, 0x1C, 0xE9,  // .go..e..
                /* 1510 */  0xB8, 0x83, 0x1E, 0xB6, 0x6F, 0xAC, 0xFC, 0x7C,  // ....o..|
                /* 1518 */  0xEF, 0x71, 0xF9, 0x02, 0x8A, 0x21, 0x78, 0xCD,  // .q...!x.
                /* 1520 */  0xF0, 0x17, 0xC0, 0x07, 0x00, 0xBC, 0x6B, 0x40,  // ......k@
                /* 1528 */  0xCD, 0xFC, 0xB1, 0x00, 0xD6, 0xFF, 0xFF, 0x46,  // .......F
                /* 1530 */  0x0F, 0xBE, 0xEB, 0x35, 0x5E, 0xFE, 0x20, 0x50,  // ...5^. P
                /* 1538 */  0x97, 0x19, 0x7E, 0xF6, 0xF0, 0xCD, 0xD5, 0xF7,  // ..~.....
                /* 1540 */  0x80, 0xC3, 0x62, 0xB7, 0x6E, 0x3E, 0x1E, 0xF0,  // ..b.n>..
                /* 1548 */  0x0F, 0xFD, 0xA5, 0xD7, 0x87, 0x0A, 0xCF, 0xD7,  // ........
                /* 1550 */  0x57, 0x5F, 0xDF, 0xBE, 0xC1, 0x7B, 0x39, 0x06,  // W_...{9.
                /* 1558 */  0xEC, 0x09, 0xBE, 0x81, 0x83, 0x7C, 0xBC, 0xD8,  // .....|..
                /* 1560 */  0xFF, 0xFF, 0x78, 0xE1, 0x8C, 0x83, 0x2B, 0x27,  // ..x...+'
                /* 1568 */  0xA1, 0xC7, 0x02, 0x6B, 0x85, 0x41, 0xDD, 0xC2,  // ...k.A..
                /* 1570 */  0xC1, 0xA5, 0x09, 0x5C, 0x57, 0x65, 0x1F, 0x6A,  // ...\We.j
                /* 1578 */  0x7C, 0x08, 0xC6, 0x9F, 0x2F, 0x70, 0x01, 0x86,  // |.../p..
                /* 1580 */  0x4C, 0x4F, 0x65, 0x30, 0xAE, 0x29, 0x3E, 0x95,  // LOe0.)>.
                /* 1588 */  0x61, 0xEE, 0x0E, 0x1E, 0x90, 0x8F, 0x18, 0xC0,  // a.......
                /* 1590 */  0x67, 0x15, 0x1E, 0x18, 0xEE, 0xB4, 0xE0, 0x9B,  // g.......
                /* 1598 */  0x92, 0x41, 0xCF, 0x31, 0xA8, 0x8F, 0x3C, 0x27,  // .A.1..<'
                /* 15A0 */  0xEF, 0x7B, 0xC2, 0xE3, 0x84, 0xA3, 0x9E, 0x83,  // .{......
                /* 15A8 */  0xE8, 0xD8, 0xC0, 0x71, 0xDC, 0x00, 0xC7, 0xE1,  // ...q....
                /* 15B0 */  0x06, 0x77, 0xCE, 0x63, 0xE3, 0xC2, 0xC0, 0x3D,  // .w.c...=
                /* 15B8 */  0x17, 0x78, 0x18, 0xBE, 0xE9, 0x78, 0x44, 0x98,  // .x...xD.
                /* 15C0 */  0xF1, 0x3F, 0xEA, 0x19, 0x21, 0x20, 0xFE, 0x62,  // .?..! .b
                /* 15C8 */  0xC4, 0x06, 0x0C, 0xA6, 0xFF, 0xFF, 0x80, 0xF9,  // ........
                /* 15D0 */  0xAD, 0xCD, 0xD7, 0x37, 0xDC, 0x80, 0x7D, 0x75,  // ...7..}u
                /* 15D8 */  0xF0, 0x05, 0xC3, 0x27, 0x30, 0xA3, 0xBF, 0xC0,  // ...'0...
                /* 15E0 */  0x3C, 0x89, 0xF9, 0xD8, 0x40, 0x2E, 0x70, 0x74,  // <...@.pt
                /* 15E8 */  0xC0, 0xE0, 0x00, 0xF4, 0x80, 0xE1, 0x1F, 0x2E,  // ........
                /* 15F0 */  0xDE, 0xE5, 0xC0, 0x70, 0x15, 0xF4, 0x71, 0xC1,  // ...p..q.
                /* 15F8 */  0xC7, 0x1E, 0x2B, 0xBA, 0xCB, 0xA1, 0x6F, 0x72,  // ..+...or
                /* 1600 */  0x86, 0x89, 0x63, 0x88, 0x37, 0x30, 0x76, 0x97,  // ..c.70v.
                /* 1608 */  0x20, 0x87, 0x39, 0xA8, 0x77, 0x09, 0xCF, 0x81,  //  .9.w...
                /* 1610 */  0x9F, 0x2D, 0x7C, 0x82, 0xF3, 0xCD, 0x27, 0xC4,  // .-|...'.
                /* 1618 */  0xA9, 0x3E, 0x5A, 0xBD, 0x07, 0xF8, 0xE8, 0xF1,  // .>Z.....
                /* 1620 */  0xDE, 0xE5, 0xB3, 0x13, 0xBB, 0x08, 0xF8, 0xC8,  // ........
                /* 1628 */  0x65, 0x1C, 0x4F, 0xD3, 0x57, 0x40, 0x0F, 0xD9,  // e.O.W@..
                /* 1630 */  0x60, 0xAF, 0x1A, 0x3E, 0x81, 0xF9, 0xE8, 0x86,  // `..>....
                /* 1638 */  0x3B, 0x46, 0x79, 0x26, 0x9E, 0xBE, 0xEF, 0x20,  // ;Fy&... 
                /* 1640 */  0xEC, 0x48, 0x72, 0xD4, 0xA1, 0xAE, 0xE9, 0x11,  // .Hr.....
                /* 1648 */  0xE5, 0x84, 0x0E, 0xC4, 0xB7, 0x36, 0x70, 0x46,  // .....6pF
                /* 1650 */  0xBB, 0x7F, 0xA0, 0xB7, 0xE9, 0x91, 0x61, 0x8E,  // ......a.
                /* 1658 */  0x06, 0xB0, 0x2E, 0x21, 0x60, 0xF9, 0xFF, 0xDF,  // ...!`...
                /* 1660 */  0x0C, 0xD8, 0x1D, 0xC3, 0x97, 0x10, 0xE0, 0x13,  // ........
                /* 1668 */  0xF4, 0x12, 0x81, 0xBE, 0x66, 0x78, 0x74, 0x8F,  // ....fxt.
                /* 1670 */  0x00, 0x98, 0x2B, 0x06, 0x3B, 0x16, 0xF8, 0xB0,  // ..+.;...
                /* 1678 */  0xE1, 0x6B, 0x00, 0xBB, 0x17, 0x38, 0xCC, 0x3D,  // .k...8.=
                /* 1680 */  0x02, 0x54, 0xA0, 0x1E, 0x1E, 0x7C, 0xB5, 0xF7,  // .T...|..
                /* 1688 */  0x08, 0x50, 0x9C, 0x2C, 0x7D, 0x68, 0xF0, 0x40,  // .P.,}h.@
                /* 1690 */  0xAD, 0xEA, 0x8C, 0x09, 0xE5, 0x88, 0xC9, 0xA1,  // ........
                /* 1698 */  0xA2, 0xB1, 0x5B, 0x01, 0xBB, 0x5D, 0xFA, 0x26,  // ..[..].&
                /* 16A0 */  0x01, 0x37, 0xCF, 0x2C, 0x50, 0x49, 0x6E, 0x12,  // .7.,PIn.
                /* 16A8 */  0xD0, 0x61, 0xBA, 0xBC, 0xCC, 0xD0, 0xF9, 0x1F,  // .a......
                /* 16B0 */  0xB8, 0x6F, 0x75, 0x1E, 0xA1, 0x0F, 0x11, 0x0C,  // .ou.....
                /* 16B8 */  0xE5, 0x3D, 0xCF, 0xA7, 0x30, 0x7E, 0x86, 0xF0,  // .=..0~..
                /* 16C0 */  0x01, 0x93, 0x9D, 0x29, 0xF8, 0x59, 0x13, 0x77,  // ...).Y.w
                /* 16C8 */  0x07, 0x30, 0xCA, 0x9B, 0xA7, 0x27, 0xC0, 0xCE,  // .0...'..
                /* 16D0 */  0x9F, 0x46, 0x7E, 0x37, 0x78, 0x17, 0xF0, 0xF4,  // .F~7x...
                /* 16D8 */  0x7D, 0x2F, 0xE2, 0x87, 0x04, 0xF6, 0xFF, 0x3F,  // }/.....?
                /* 16E0 */  0x51, 0x80, 0x29, 0xD8, 0x9D, 0x0E, 0x0A, 0xF4,  // Q.).....
                /* 16E8 */  0x09, 0x79, 0x44, 0x46, 0xF5, 0x11, 0x81, 0x5F,  // .yDF..._
                /* 16F0 */  0x92, 0xC0, 0x78, 0x24, 0xF1, 0x81, 0x02, 0x08,  // ..x$....
                /* 16F8 */  0xDD, 0x0B, 0x50, 0xA7, 0x0F, 0x7E, 0x78, 0xF6,  // ..P..~x.
                /* 1700 */  0x05, 0xD5, 0x98, 0xEF, 0x56, 0x8F, 0x70, 0x9E,  // ....V.p.
                /* 1708 */  0x1C, 0xE6, 0x72, 0xC0, 0xE2, 0x5C, 0x93, 0x40,  // ..r..\.@
                /* 1710 */  0x75, 0xDC, 0xE5, 0xA3, 0x83, 0x7B, 0x6D, 0xC5,  // u....{m.
                /* 1718 */  0x0F, 0xEE, 0x9D, 0xE5, 0x9D, 0xCF, 0x50, 0x1E,  // ......P.
                /* 1720 */  0x24, 0xF8, 0xAE, 0xAD, 0xE0, 0xB8, 0xAA, 0xC1,  // $.......
                /* 1728 */  0x38, 0xB6, 0xF0, 0x4B, 0x1E, 0xBC, 0xFF, 0xFF,  // 8..K....
                /* 1730 */  0x25, 0x0F, 0xB0, 0x30, 0x2C, 0x2E, 0xF8, 0xEF,  // %..0,...
                /* 1738 */  0x61, 0x20, 0x2A, 0x11, 0x06, 0x45, 0x60, 0x79,  // a *..E`y
                /* 1740 */  0xF7, 0x56, 0x0A, 0x7F, 0xC8, 0x60, 0xBC, 0x29,  // .V...`.)
                /* 1748 */  0xF0, 0x49, 0x63, 0x47, 0x0D, 0xD8, 0x19, 0x2A,  // .IcG...*
                /* 1750 */  0xEE, 0xA6, 0x08, 0xD6, 0xA9, 0x62, 0x86, 0xC0,  // .....b..
                /* 1758 */  0x83, 0x3D, 0x00, 0x7C, 0xBE, 0xF2, 0x19, 0x40,  // .=.|...@
                /* 1760 */  0x51, 0x60, 0xC8, 0xFF, 0x1F, 0x86, 0x1D, 0xDA,  // Q`......
                /* 1768 */  0xE1, 0xDC, 0x86, 0x01, 0x07, 0x23, 0xC6, 0x5D,  // .....#.]
                /* 1770 */  0x0A, 0xE1, 0x4E, 0xF9, 0x1D, 0x25, 0xF6, 0x73,  // ..N..%.s
                /* 1778 */  0x39, 0x9B, 0x2E, 0xEE, 0x6A, 0xEE, 0xD3, 0x09,  // 9...j...
                /* 1780 */  0xBB, 0x20, 0xC3, 0x38, 0x0B, 0x3C, 0x02, 0xBC,  // . .8.<..
                /* 1788 */  0x9A, 0xF3, 0x0B, 0xF2, 0x0B, 0xF1, 0x0B, 0xC1,  // ........
                /* 1790 */  0x1B, 0xB2, 0x6F, 0x4A, 0xCF, 0x06, 0x2F, 0x3B,  // ..oJ../;
                /* 1798 */  0x31, 0xDE, 0x8D, 0x7D, 0x4A, 0xF6, 0x79, 0xE7,  // 1..}J.y.
                /* 17A0 */  0x05, 0xD9, 0x18, 0x47, 0x13, 0x31, 0xCA, 0xB9,  // ...G.1..
                /* 17A8 */  0x3D, 0x0C, 0xBC, 0x26, 0x1B, 0xE5, 0xFD, 0xE4,  // =..&....
                /* 17B0 */  0x85, 0x20, 0x62, 0x34, 0x43, 0x04, 0x8D, 0x11,  // . b4C...
                /* 17B8 */  0xE8, 0x7D, 0xD9, 0x78, 0x2F, 0xC8, 0x4C, 0xE0,  // .}.x/.L.
                /* 17C0 */  0x5B, 0x41, 0x07, 0x17, 0x5F, 0x90, 0x01, 0x43,  // [A.._..C
                /* 17C8 */  0xFF, 0xFF, 0x0B, 0x32, 0xB0, 0x3F, 0x19, 0x01,  // ...2.?..
                /* 17D0 */  0x3E, 0x4F, 0x1C, 0xB8, 0x4B, 0x35, 0xF8, 0x4E,  // >O..K5.N
                /* 17D8 */  0x36, 0xC0, 0xFA, 0xFF, 0x7F, 0xB2, 0x01, 0xFB,  // 6.......
                /* 17E0 */  0xD0, 0x7D, 0xB2, 0x01, 0xF7, 0x68, 0xE1, 0x1D,  // .}...h..
                /* 17E8 */  0x4D, 0x10, 0x27, 0x1B, 0x0A, 0xE4, 0xE0, 0xEB,  // M.'.....
                /* 17F0 */  0xA2, 0x70, 0x3C, 0xF4, 0x49, 0x84, 0x1E, 0x9D,  // .p<.I...
                /* 17F8 */  0x7C, 0x94, 0xC4, 0x9D, 0x19, 0x3C, 0x91, 0x77,  // |....<.w
                /* 1800 */  0x16, 0x8F, 0xE2, 0x65, 0xD0, 0xF7, 0x82, 0x13,  // ...e....
                /* 1808 */  0x79, 0x7D, 0xB0, 0x9C, 0x63, 0x24, 0xA8, 0x46,  // y}..c$.F
                /* 1810 */  0xE2, 0xE3, 0x03, 0xFC, 0xEB, 0x8B, 0x8F, 0x91,  // ........
                /* 1818 */  0xF0, 0xF9, 0xFC, 0xC3, 0xF2, 0x60, 0x0C, 0xE9,  // .....`..
                /* 1820 */  0x53, 0x24, 0x07, 0x79, 0x76, 0x79, 0x0C, 0xE1,  // S$.yvy..
                /* 1828 */  0x17, 0x48, 0xB8, 0xA7, 0x99, 0x03, 0xC0, 0xC8,  // .H......
                /* 1830 */  0xBA, 0x3C, 0xA2, 0xCF, 0x8E, 0x1C, 0x23, 0xAE,  // .<....#.
                /* 1838 */  0x2F, 0x8A, 0xBE, 0x02, 0xFB, 0x20, 0x70, 0x3E,  // /.... p>
                /* 1840 */  0xCF, 0x89, 0xE0, 0xFA, 0xFF, 0x9F, 0x13, 0x31,  // .......1
                /* 1848 */  0xA3, 0xE6, 0x47, 0x1B, 0x3E, 0x7E, 0x0E, 0xFE,  // ..G.>~..
                /* 1850 */  0x56, 0xF0, 0x40, 0xE9, 0x63, 0x51, 0x88, 0x47,  // V.@.cQ.G
                /* 1858 */  0x24, 0x7E, 0x4E, 0x04, 0x97, 0x89, 0x73, 0x22,  // $~N...s"
                /* 1860 */  0x90, 0x38, 0xF4, 0xC2, 0x38, 0x2D, 0xE0, 0x06,  // .8..8-..
                /* 1868 */  0xE2, 0x33, 0x25, 0x76, 0xCA, 0x27, 0xC2, 0xCE,  // .3%v.'..
                /* 1870 */  0x25, 0x98, 0xD1, 0x81, 0xEB, 0x72, 0xEF, 0xD1,  // %....r..
                /* 1878 */  0x81, 0xFF, 0x24, 0x80, 0xC7, 0x7A, 0xBC, 0x03,  // ..$..z..
                /* 1880 */  0xDF, 0x49, 0xDD, 0x77, 0x13, 0x5F, 0x64, 0x7C,  // .I.w._d|
                /* 1888 */  0x28, 0x7A, 0x6C, 0x01, 0x56, 0xFF, 0xFF, 0xF3,  // (zl.V...
                /* 1890 */  0x1D, 0x60, 0x2A, 0xDC, 0xE1, 0x0E, 0x15, 0xE7,  // .`*.....
                /* 1898 */  0x7C, 0x07, 0x50, 0xE3, 0x6C, 0xFD, 0x7C, 0x07,  // |.P.l.|.
                /* 18A0 */  0xAE, 0xFF, 0xFF, 0xF9, 0x0E, 0x86, 0xC8, 0xF3,  // ........
                /* 18A8 */  0x1D, 0x40, 0xF6, 0xFF, 0xFF, 0x19, 0x00, 0x73,  // .@.....s
                /* 18B0 */  0x46, 0xC3, 0x9D, 0xEF, 0xC0, 0x76, 0xB4, 0x01,  // F....v..
                /* 18B8 */  0xCC, 0x4D, 0xE3, 0xD1, 0x06, 0xDC, 0xC3, 0x85,  // .M......
                /* 18C0 */  0x3D, 0x0C, 0x9E, 0xE1, 0x0D, 0xE5, 0x43, 0x01,  // =.....C.
                /* 18C8 */  0x95, 0x74, 0xCA, 0xA6, 0x30, 0x66, 0xF1, 0x91,  // .t..0f..
                /* 18D0 */  0xC1, 0x07, 0x05, 0x7E, 0x64, 0xF0, 0x39, 0xE1,  // ...~d.9.
                /* 18D8 */  0xF1, 0xE1, 0x50, 0xD9, 0x11, 0xC6, 0x97, 0x10,  // ..P.....
                /* 18E0 */  0x1F, 0x15, 0x58, 0xF4, 0x71, 0xD2, 0x13, 0x14,  // ..X.q...
                /* 18E8 */  0x18, 0x87, 0xF8, 0xC8, 0xE7, 0x41, 0x3C, 0xD9,  // .....A<.
                /* 18F0 */  0xC0, 0x3A, 0x17, 0xFC, 0xFF, 0x9F, 0x0B, 0x00,  // .:......
                /* 18F8 */  0x33, 0x3A, 0x9F, 0x6F, 0x1A, 0xB9, 0x35, 0x82,  // 3:.o..5.
                /* 1900 */  0xC8, 0xC6, 0x51, 0x84, 0x72, 0x38, 0xC9, 0xE2,  // ..Q.r8..
                /* 1908 */  0x74, 0x11, 0xF4, 0x09, 0xC9, 0xD7, 0x8B, 0x53,  // t......S
                /* 1910 */  0x39, 0x55, 0xFC, 0x55, 0xC4, 0xCA, 0x21, 0x05,  // 9U.U..!.
                /* 1918 */  0xEF, 0xE3, 0x8A, 0x35, 0xC3, 0x28, 0xDE, 0x6B,  // ...5.(.k
                /* 1920 */  0x44, 0xA3, 0xF1, 0x08, 0x1C, 0x08, 0x46, 0x70,  // D.....Fp
                /* 1928 */  0x06, 0xF1, 0x49, 0xC4, 0xD9, 0x8E, 0x3A, 0x68,  // ..I...:h
                /* 1930 */  0x25, 0xE7, 0x3D, 0x32, 0x06, 0x76, 0xD0, 0xC1,  // %.=2.v..
                /* 1938 */  0x04, 0xB9, 0x9E, 0xD0, 0x99, 0xFB, 0x72, 0xC0,  // ......r.
                /* 1940 */  0x35, 0x40, 0xE8, 0x00, 0x62, 0x70, 0x5F, 0x52,  // 5@..bp_R
                /* 1948 */  0x60, 0x5C, 0xA8, 0x7C, 0x49, 0xC1, 0x9C, 0x8D,  // `\.|I...
                /* 1950 */  0x3C, 0x1B, 0xAB, 0x01, 0x45, 0x0D, 0xC0, 0x68,  // <...E..h
                /* 1958 */  0x98, 0x73, 0xC0, 0xC3, 0x09, 0xB8, 0x72, 0x5D,  // .s....r]
                /* 1960 */  0xF8, 0xD0, 0x2F, 0x09, 0xDF, 0x2D, 0x1E, 0x6C,  // ../..-.l
                /* 1968 */  0xD8, 0xDC, 0xC0, 0xF5, 0xFF, 0x9F, 0x1B, 0xCC,  // ........
                /* 1970 */  0xF1, 0x7B, 0x6E, 0xB0, 0xD0, 0x3C, 0x37, 0xF8,  // .{n..<7.
                /* 1978 */  0xF7, 0x3D, 0xEC, 0xE1, 0x10, 0x8F, 0xCC, 0xE6,  // .=......
                /* 1980 */  0xF6, 0x1C, 0x10, 0xE1, 0x15, 0xC1, 0x97, 0x1C,  // ........
                /* 1988 */  0x8F, 0x0E, 0x38, 0x00, 0x7A, 0x74, 0xB0, 0x90,  // ..8.zt..
                /* 1990 */  0x3C, 0x3A, 0xB0, 0x25, 0x1C, 0x1D, 0x5A, 0x0F,  // <:.%..Z.
                /* 1998 */  0x88, 0x5C, 0x9E, 0xB1, 0xC8, 0xC9, 0xE4, 0xF4,  // .\......
                /* 19A0 */  0x4E, 0xE6, 0x99, 0xE0, 0xEC, 0x9E, 0x2E, 0x82,  // N.......
                /* 19A8 */  0x04, 0x8A, 0x13, 0xFD, 0xD9, 0xC4, 0x13, 0x04,  // ........
                /* 19B0 */  0x0E, 0x03, 0xF0, 0x04, 0x61, 0xA1, 0x79, 0x82,  // ....a.y.
                /* 19B8 */  0x60, 0x8B, 0x78, 0xCD, 0x40, 0xDF, 0x3C, 0x61,  // `.x.@.<a
                /* 19C0 */  0x60, 0xFF, 0xFF, 0x5F, 0xE7, 0x98, 0xF7, 0xDB,  // `.._....
                /* 19C8 */  0x0D, 0xB9, 0x11, 0x00, 0x8F, 0x4B, 0xA1, 0x47,  // .....K.G
                /* 19D0 */  0x08, 0x0B, 0xCD, 0x47, 0x0D, 0xB0, 0xC5, 0x1B,  // ...G....
                /* 19D8 */  0x21, 0x7A, 0x58, 0xBE, 0x95, 0x9C, 0xDF, 0xC9,  // !zX.....
                /* 19E0 */  0x1D, 0x1F, 0xB0, 0x02, 0xF6, 0xF8, 0x60, 0xA1,  // ......`.
                /* 19E8 */  0x78, 0x7C, 0x60, 0xD3, 0x77, 0x37, 0x02, 0x05,  // x|`.w7..
                /* 19F0 */  0x90, 0x4F, 0x42, 0x3E, 0x9F, 0xBC, 0x0C, 0xB1,  // .OB>....
                /* 19F8 */  0x31, 0xBC, 0x4D, 0x19, 0xCD, 0xE8, 0x3C, 0xD3,  // 1.M...<.
                /* 1A00 */  0x96, 0x74, 0xBE, 0xE1, 0x29, 0x60, 0x74, 0x76,  // .t..)`tv
                /* 1A08 */  0x31, 0x88, 0x6F, 0x24, 0x56, 0x08, 0xA2, 0x63,  // 1.o$V..c
                /* 1A10 */  0x08, 0xFE, 0xBA, 0xEB, 0x19, 0xBD, 0x29, 0x78,  // ......)x
                /* 1A18 */  0xB6, 0x26, 0xA8, 0x07, 0x52, 0x27, 0x4F, 0x38,  // .&..R'O8
                /* 1A20 */  0xB7, 0x0B, 0xF6, 0xFF, 0x3F, 0x48, 0xB1, 0xBB,  // ....?H..
                /* 1A28 */  0xB5, 0xCF, 0xD8, 0xF0, 0x0F, 0x99, 0x1E, 0x8F,  // ........
                /* 1A30 */  0x6D, 0x1C, 0x8C, 0xE8, 0x09, 0xCB, 0x87, 0x6C,  // m......l
                /* 1A38 */  0x7E, 0x98, 0x78, 0x52, 0x62, 0xE7, 0xC9, 0x04,  // ~.xRb...
                /* 1A40 */  0x6F, 0x94, 0x09, 0x7A, 0x3B, 0x5F, 0xD3, 0x9B,  // o..z;_..
                /* 1A48 */  0xB6, 0x21, 0xA3, 0x32, 0x58, 0x43, 0x3C, 0xF3,  // .!.2XC<.
                /* 1A50 */  0x32, 0x7D, 0xEB, 0xD3, 0x71, 0x1B, 0xAE, 0x1E,  // 2}..q...
                /* 1A58 */  0x40, 0x8D, 0x85, 0x2B, 0x81, 0xD1, 0xA0, 0xC3,  // @..+....
                /* 1A60 */  0x3D, 0x5D, 0xBD, 0x5D, 0xF9, 0xB2, 0xE0, 0x0B,  // =].]....
                /* 1A68 */  0x83, 0x2F, 0x54, 0x3E, 0x7C, 0x1A, 0xEC, 0xBC,  // ./T>|...
                /* 1A70 */  0x22, 0xBC, 0x30, 0xF8, 0x36, 0xC5, 0x8E, 0xD7,  // ".0.6...
                /* 1A78 */  0x0C, 0x32, 0x54, 0x9C, 0xC0, 0x6F, 0xD7, 0x1C,  // .2T..o..
                /* 1A80 */  0x2C, 0xEC, 0x63, 0xC0, 0xE3, 0x86, 0xEF, 0x65,  // ,.c....e
                /* 1A88 */  0xEC, 0x26, 0x10, 0xEB, 0x31, 0xC9, 0x23, 0xE6,  // .&..1.#.
                /* 1A90 */  0xF7, 0xA9, 0x03, 0x8A, 0xF4, 0xFC, 0xE3, 0x09,  // ........
                /* 1A98 */  0xF8, 0x92, 0xE5, 0xFB, 0xE3, 0x49, 0xF9, 0xAC,  // .....I..
                /* 1AA0 */  0x6A, 0xF4, 0x57, 0x09, 0x5F, 0xCA, 0x8C, 0xEC,  // j.W._...
                /* 1AA8 */  0x13, 0x18, 0xBB, 0x49, 0xB2, 0x41, 0xF1, 0xAB,  // ...I.A..
                /* 1AB0 */  0xA9, 0x0F, 0x21, 0x9E, 0x0A, 0xBB, 0x3F, 0x61,  // ..!...?a
                /* 1AB8 */  0xC0, 0x8E, 0xC0, 0xA7, 0x43, 0x7E, 0x74, 0x09,  // ....C~t.
                /* 1AC0 */  0x14, 0xA5, 0x78, 0x4C, 0xDD, 0x1C, 0x3C, 0x43,  // ..xL..<C
                /* 1AC8 */  0x83, 0x62, 0xE0, 0x0F, 0x92, 0xCD, 0x2E, 0xAE,  // .b......
                /* 1AD0 */  0xB1, 0x7C, 0x2F, 0x31, 0x22, 0x76, 0x40, 0x0C,  // .|/1"v@.
                /* 1AD8 */  0xE5, 0x3D, 0xD2, 0xEA, 0x51, 0xC8, 0x1C, 0x3C,  // .=..Q..<
                /* 1AE0 */  0x22, 0xCF, 0xC6, 0xD3, 0x61, 0xA7, 0x0E, 0xFC,  // "...a...
                /* 1AE8 */  0x24, 0x7C, 0x6A, 0xF2, 0xC1, 0xCE, 0x03, 0xF2,  // $|j.....
                /* 1AF0 */  0x50, 0xF8, 0x14, 0x19, 0xB0, 0xFF, 0xFF, 0xC0,  // P.......
                /* 1AF8 */  0x78, 0x98, 0x97, 0x00, 0x06, 0xED, 0xE1, 0x33,  // x......3
                /* 1B00 */  0xF4, 0x17, 0x23, 0xA3, 0xF3, 0xF3, 0xCE, 0xE9,  // ..#.....
                /* 1B08 */  0xF8, 0x1C, 0xEA, 0xA3, 0x86, 0xEF, 0x01, 0x98,  // ........
                /* 1B10 */  0x33, 0x99, 0x4F, 0x00, 0x3E, 0xB3, 0x31, 0xA0,  // 3.O.>.1.
                /* 1B18 */  0x47, 0x7B, 0x06, 0xF2, 0xBE, 0xCA, 0x2E, 0x3F,  // G{.....?
                /* 1B20 */  0x18, 0xA4, 0x77, 0x5D, 0x9F, 0x7E, 0x30, 0xF7,  // ..w].~0.
                /* 1B28 */  0x33, 0x0E, 0x16, 0xE8, 0x58, 0xF9, 0x64, 0xE2,  // 3...X.d.
                /* 1B30 */  0x79, 0xC2, 0x1E, 0x29, 0x9C, 0xDB, 0x26, 0x8C,  // y..)..&.
                /* 1B38 */  0x2B, 0x2F, 0xBF, 0x06, 0xF2, 0x5B, 0x39, 0xB8,  // +/...[9.
                /* 1B40 */  0xAE, 0x18, 0x3E, 0x99, 0x80, 0x19, 0x1E, 0x13,  // ..>.....
                /* 1B48 */  0xE8, 0x3C, 0x43, 0x65, 0x8D, 0x0B, 0x75, 0xA4,  // .<Ce..u.
                /* 1B50 */  0xF1, 0x35, 0x95, 0x61, 0x3F, 0x0C, 0x78, 0xD2,  // .5.a?.x.
                /* 1B58 */  0x87, 0x79, 0x82, 0x2F, 0x6B, 0x18, 0x58, 0x5F,  // .y./k.X_
                /* 1B60 */  0x4A, 0x38, 0xAC, 0xD1, 0xC2, 0xBE, 0x0E, 0x18,  // J8......
                /* 1B68 */  0xF6, 0x11, 0x10, 0x77, 0xFD, 0x05, 0x0B, 0x20,  // ...w... 
                /* 1B70 */  0xFE, 0x92, 0xF0, 0x60, 0xE0, 0x09, 0x18, 0x90,  // ...`....
                /* 1B78 */  0xC5, 0x59, 0x15, 0x15, 0xB1, 0x1C, 0x05, 0x80,  // .Y......
                /* 1B80 */  0x41, 0xFD, 0xFF, 0x47, 0xE7, 0xFB, 0x37, 0xE0,  // A..G..7.
                /* 1B88 */  0xE4, 0xB2, 0x8D, 0xBF, 0x47, 0xBC, 0x1E, 0x78,  // ....G..x
                /* 1B90 */  0xB0, 0xEC, 0xB2, 0xFD, 0x20, 0xF3, 0x80, 0xF0,  // .... ...
                /* 1B98 */  0x1C, 0xF3, 0x0E, 0xF3, 0x50, 0xF0, 0x2E, 0x13,  // ....P...
                /* 1BA0 */  0x21, 0xC8, 0x53, 0xF6, 0x3B, 0x42, 0x84, 0x50,  // !.S.;B.P
                /* 1BA8 */  0x81, 0x5E, 0xB6, 0x8D, 0x17, 0xF4, 0x65, 0x22,  // .^....e"
                /* 1BB0 */  0x4A, 0x9C, 0x28, 0x11, 0x42, 0x19, 0xE3, 0x5C,  // J.(.B..\
                /* 1BB8 */  0x9E, 0x0E, 0x5E, 0x6A, 0xC2, 0x3D, 0x26, 0x04,  // ..^j.=&.
                /* 1BC0 */  0x7E, 0x72, 0x88, 0x12, 0xD8, 0x63, 0x7C, 0xD9,  // ~r...c|.
                /* 1BC8 */  0x66, 0xE2, 0x2F, 0x32, 0xBA, 0x27, 0xF9, 0xB2,  // f./2.'..
                /* 1BD0 */  0x0D, 0x38, 0xFF, 0xFF, 0x5F, 0xB6, 0xC1, 0x75,  // .8.._..u
                /* 1BD8 */  0x71, 0x06, 0xF3, 0x8D, 0x16, 0x30, 0x77, 0x71,  // q....0wq
                /* 1BE0 */  0x06, 0xFB, 0x70, 0x61, 0x0F, 0x83, 0x87, 0x79,  // ..pa...y
                /* 1BE8 */  0x4F, 0xF8, 0x50, 0x42, 0xE5, 0xC3, 0xA0, 0xCE,  // O.PB....
                /* 1BF0 */  0x25, 0xC0, 0xF1, 0xFF, 0x7F, 0x2E, 0x01, 0x46,  // %......F
                /* 1BF8 */  0x33, 0x7A, 0x03, 0x78, 0x15, 0x38, 0xED, 0x47,  // 3z.x.8.G
                /* 1C00 */  0x91, 0x87, 0x92, 0x43, 0x88, 0xF1, 0x3E, 0x12,  // ...C..>.
                /* 1C08 */  0xC4, 0x08, 0x87, 0xFE, 0x5C, 0xE2, 0xEB, 0xC8,  // ....\...
                /* 1C10 */  0x93, 0x5B, 0x88, 0x28, 0xEF, 0x27, 0x4F, 0x28,  // .[.(.'O(
                /* 1C18 */  0x86, 0x88, 0x12, 0x2C, 0x46, 0xB0, 0xD0, 0x4F,  // ...,F..O
                /* 1C20 */  0x25, 0xC6, 0x60, 0x87, 0x94, 0x20, 0xE1, 0x9E,  // %.`.. ..
                /* 1C28 */  0x4B, 0x98, 0xF4, 0xEF, 0x9D, 0xCE, 0xB9, 0x3E,  // K......>
                /* 1C30 */  0x97, 0x00, 0xFC, 0x08, 0x77, 0xB7, 0x45, 0x9F,  // ....w.E.
                /* 1C38 */  0x1B, 0x7C, 0x4C, 0xF0, 0xF9, 0xC0, 0x10, 0x8D,  // .|L.....
                /* 1C40 */  0x5F, 0x0C, 0xC8, 0xF5, 0xCD, 0x77, 0x04, 0x1F,  // _....w..
                /* 1C48 */  0x13, 0x5E, 0xE0, 0x18, 0x81, 0xFF, 0xFF, 0x01,  // .^......
                /* 1C50 */  0x86, 0x4E, 0xCF, 0x9D, 0xE0, 0x18, 0x94, 0x87,  // .N......
                /* 1C58 */  0x07, 0xFE, 0x03, 0x19, 0x3E, 0xFC, 0x75, 0x12,  // ....>.u.
                /* 1C60 */  0x75, 0x4C, 0xE0, 0xC3, 0x83, 0x77, 0xFA, 0x73,  // uL...w.s
                /* 1C68 */  0xC8, 0xA3, 0x18, 0x1D, 0x1C, 0x38, 0x9E, 0xEF,  // .....8..
                /* 1C70 */  0x1A, 0x1C, 0x08, 0x0E, 0x27, 0x0F, 0x1E, 0xD8,  // ....'...
                /* 1C78 */  0xC3, 0x19, 0x9B, 0x38, 0x1F, 0xC2, 0xD1, 0xF8,  // ...8....
                /* 1C80 */  0x08, 0x00, 0x8E, 0xB3, 0x03, 0xF8, 0xA2, 0x0E,  // ........
                /* 1C88 */  0x17, 0x7D, 0x38, 0xF0, 0x1D, 0x13, 0x06, 0xFA,  // .}8.....
                /* 1C90 */  0x6B, 0x86, 0x6F, 0x6F, 0x46, 0xE7, 0x71, 0x06,  // k.ooF.q.
                /* 1C98 */  0x0C, 0xAA, 0xC1, 0x7A, 0xC0, 0xF0, 0xFF, 0xFF,  // ...z....
                /* 1CA0 */  0x67, 0x40, 0xFC, 0x0C, 0x5E, 0x2E, 0x9E, 0x2C,  // g@..^..,
                /* 1CA8 */  0xF8, 0x28, 0xC1, 0x77, 0xE2, 0xF3, 0x89, 0x02,  // .(.w....
                /* 1CB0 */  0x37, 0x18, 0x9F, 0xEA, 0x31, 0x67, 0x09, 0xB0,  // 7...1g..
                /* 1CB8 */  0x5D, 0x57, 0x7D, 0x96, 0x00, 0x3E, 0xF2, 0x0E,  // ]W}..>..
                /* 1CC0 */  0x58, 0xA0, 0x39, 0x20, 0xC1, 0x38, 0x59, 0x01,  // X.9 .8Y.
                /* 1CC8 */  0x76, 0xC6, 0xF1, 0x64, 0x05, 0xE6, 0xFF, 0xFF,  // v..d....
                /* 1CD0 */  0xF0, 0x7C, 0x04, 0xC7, 0x8F, 0x81, 0x2B, 0xB4,  // .|....+.
                /* 1CD8 */  0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65, 0x6A,  // .S.Q..ej
                /* 1CE0 */  0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6, 0x8C,  // .iP.O...
                /* 1CE8 */  0x09, 0x3B, 0x55, 0x29, 0xE0, 0xB3, 0x41, 0x03,  // .;U)..A.
                /* 1CF0 */  0xB3, 0x3C, 0x0A, 0x81, 0x58, 0xCC, 0x9B, 0x42,  // .<..X..B
                /* 1CF8 */  0x20, 0x0E, 0x0B, 0x42, 0x23, 0x1D, 0x8E, 0x04,  //  ..B#...
                /* 1D00 */  0x62, 0xC9, 0x47, 0x2C, 0x81, 0x58, 0xAE, 0x07,  // b.G,.X..
                /* 1D08 */  0x10, 0x16, 0xF0, 0x4D, 0x22, 0x70, 0xF2, 0x46,  // ...M"p.F
                /* 1D10 */  0x12, 0x38, 0x79, 0x26, 0x08, 0xC4, 0x91, 0x41,  // .8y&...A
                /* 1D18 */  0xA8, 0x50, 0x1D, 0x20, 0x2C, 0x26, 0x08, 0x0D,  // .P. ,&..
                /* 1D20 */  0xE5, 0x03, 0x84, 0x49, 0x7F, 0x1A, 0x08, 0x90,  // ...I....
                /* 1D28 */  0x18, 0x01, 0x61, 0xE1, 0x1E, 0x12, 0x02, 0xB1,  // ..a.....
                /* 1D30 */  0xB4, 0xE7, 0x83, 0x40, 0x2C, 0xC4, 0x0A, 0x08,  // ...@,...
                /* 1D38 */  0x8B, 0x0B, 0x42, 0xC3, 0x69, 0x01, 0x61, 0x92,  // ..B.i.a.
                /* 1D40 */  0xCC, 0x80, 0xB0, 0x40, 0x20, 0x54, 0xFE, 0x2B,  // ...@ T.+
                /* 1D48 */  0x5D, 0x20, 0x16, 0xE9, 0x06, 0x90, 0x2E, 0x5D,  // ] .....]
                /* 1D50 */  0x20, 0x0E, 0xA2, 0x07, 0x84, 0xC9, 0xF0, 0x03,  //  .......
                /* 1D58 */  0xC2, 0x42, 0x83, 0xD0, 0x68, 0xEF, 0x09, 0x01,  // .B..h...
                /* 1D60 */  0x12, 0x43, 0x20, 0x2C, 0xBE, 0x23, 0x10, 0x26,  // .C ,.#.&
                /* 1D68 */  0xFE, 0x69, 0x22, 0x10, 0xE7, 0xB7, 0x04, 0x71,  // .i"....q
                /* 1D70 */  0x53, 0x1A, 0x62, 0x4D, 0x40, 0x4C, 0x83, 0x27,  // S.bM@L.'
                /* 1D78 */  0x20, 0xA6, 0x08, 0x44, 0x40, 0x8E, 0xFD, 0xD2,  //  ..D@...
                /* 1D80 */  0x10, 0x90, 0x35, 0x98, 0x02, 0x62, 0xD1, 0x41,  // ..5..b.A
                /* 1D88 */  0x04, 0x64, 0x21, 0xAA, 0x80, 0x58, 0x5E, 0x57,  // .d!..X^W
                /* 1D90 */  0x40, 0x2C, 0x3C, 0x88, 0x80, 0x9C, 0xF9, 0xCD,  // @,<.....
                /* 1D98 */  0x2A, 0x20, 0x2B, 0x78, 0x74, 0x3D, 0x04, 0xB0,  // * +xt=..
                /* 1DA0 */  0xAF, 0xBC, 0x80, 0x9C, 0x1C, 0x44, 0x40, 0x0E,  // .....D@.
                /* 1DA8 */  0xEC, 0x0B, 0x88, 0xC5, 0x07, 0x11, 0x90, 0xB3,  // ........
                /* 1DB0 */  0xFE, 0xC1, 0x05, 0xE4, 0xE0, 0x20, 0x1A, 0x04,  // ..... ..
                /* 1DB8 */  0xF9, 0x68, 0x08, 0xC8, 0xE9, 0x41, 0x04, 0x44,  // .h...A.D
                /* 1DC0 */  0x7E, 0xE4, 0x02, 0xB1, 0xDA, 0x2F, 0xB9, 0x40,  // ~..../.@
                /* 1DC8 */  0xAC, 0xE7, 0x4F, 0xAE, 0xA1, 0x10, 0x10, 0xAA,  // ..O.....
                /* 1DD0 */  0x5C, 0xDD, 0x49, 0x85, 0xFD, 0xFF, 0x73, 0x80,  // \.I...s.
                /* 1DD8 */  0xD0, 0x5C, 0x20, 0x02, 0xB3, 0x0A, 0x77, 0x40,  // .\ ...w@
                /* 1DE0 */  0x4C, 0x15, 0x88, 0x80, 0x9C, 0x00, 0x88, 0xA6,  // L.......
                /* 1DE8 */  0x02, 0xA1, 0x29, 0xC1, 0xA8, 0xAE, 0x37, 0x88,  // ..)...7.
                /* 1DF0 */  0x80, 0x9C, 0x00, 0x84, 0xA6, 0x02, 0xA1, 0x29,  // .......)
                /* 1DF8 */  0x41, 0x04, 0x68, 0x55, 0xF6, 0x80, 0x98, 0x52,  // A.hU...R
                /* 1E00 */  0x10, 0xAA, 0x1C, 0x84, 0xA6, 0x03, 0xA1, 0xB2,  // ........
                /* 1E08 */  0xDF, 0xFD, 0x3A, 0x2C, 0x10, 0x10, 0x01, 0x39,  // ..:,...9
                /* 1E10 */  0x3A, 0x08, 0x15, 0xEE, 0x0F, 0x84, 0xE9, 0x7D,  // :......}
                /* 1E18 */  0x66, 0x08, 0xD0, 0xE9, 0x40, 0x04, 0xE4, 0xC4,  // f...@...
                /* 1E20 */  0x20, 0x54, 0xC1, 0x0F, 0x23, 0x08, 0x11, 0x0B,  //  T..#...
                /* 1E28 */  0x42, 0x15, 0xFC, 0x30, 0x82, 0x12, 0x2D, 0x2F,  // B..0..-/
                /* 1E30 */  0x0E, 0x01, 0x59, 0x1F, 0x08, 0xD5, 0x0B, 0x22,  // ..Y...."
                /* 1E38 */  0x30, 0x67, 0x03, 0xA2, 0x79, 0x41, 0x68, 0x7E,  // 0g..yAh~
                /* 1E40 */  0x30, 0xAA, 0xD5, 0x28, 0x10, 0xD3, 0x0F, 0x42,  // 0..(...B
                /* 1E48 */  0xF3, 0x80, 0x08, 0xCC, 0x0A, 0xDE, 0x1E, 0x07,  // ........
                /* 1E50 */  0xCC, 0x40, 0xA8, 0x4A, 0x10, 0x81, 0x39, 0x17,  // .@.J..9.
                /* 1E58 */  0x10, 0xCD, 0x0A, 0x42, 0xB3, 0x83, 0x51, 0xED,  // ...B..Q.
                /* 1E60 */  0x9F, 0x10, 0x0D, 0x80, 0x80, 0xD0, 0x7C, 0x20,  // ......| 
                /* 1E68 */  0x3A, 0x0C, 0x90, 0xE7, 0xA0, 0x80, 0xAC, 0x11,  // :.......
                /* 1E70 */  0x84, 0x6A, 0x06, 0xD1, 0xF1, 0x80, 0x00, 0xD1,  // .j......
                /* 1E78 */  0xFC, 0x20, 0x54, 0xCF, 0xC7, 0x24, 0x18, 0xC9,  // . T..$..
                /* 1E80 */  0x00, 0x22, 0x20, 0x6B, 0xF9, 0xF2, 0x07, 0x22,  // ." k..."
                /* 1E88 */  0xFA, 0x41, 0x04, 0xE4, 0x4C, 0x20, 0x34, 0x23,  // .A..L 4#
                /* 1E90 */  0x18, 0x55, 0xFB, 0x2E, 0xD2, 0x71, 0x80, 0x80,  // .U...q..
                /* 1E98 */  0xD0, 0x44, 0x20, 0x1A, 0x1E, 0x79, 0xED, 0x1C,  // .D ..y..
                /* 1EA0 */  0x1E, 0x03, 0xA1, 0x2A, 0x41, 0x04, 0x66, 0x8D,  // ...*A.f.
                /* 1EA8 */  0x0F, 0x4C, 0x81, 0x38, 0x21, 0x08, 0x55, 0x6F,  // .L.8!.Uo
                /* 1EB0 */  0xF7, 0xC0, 0x40, 0xF5, 0x82, 0xB0, 0xFF, 0xBF,  // ..@.....
                /* 1EB8 */  0x5A, 0xC1, 0x83, 0xA0, 0x20, 0x34, 0x11, 0x88,  // Z... 4..
                /* 1EC0 */  0x0E, 0x19, 0xE4, 0xD5, 0x12, 0x88, 0xE8, 0x02,  // ........
                /* 1EC8 */  0xA1, 0x3A, 0x41, 0x34, 0x64, 0x02, 0x44, 0xB3,  // .:A4d.D.
                /* 1ED0 */  0x82, 0xD0, 0xEC, 0x60, 0x34, 0xFB, 0xF3, 0x45,  // ...`4..E
                /* 1ED8 */  0xC3, 0x20, 0x5F, 0x25, 0x1D, 0x18, 0xC8, 0xE3,  // . _%....
                /* 1EE0 */  0x31, 0x08, 0x51, 0xF4, 0x6D, 0x12, 0x88, 0x73,  // 1.Q.m..s
                /* 1EE8 */  0x3F, 0x80, 0x34, 0x50, 0xF2, 0x29, 0x0A, 0x42,  // ?.4P.).B
                /* 1EF0 */  0xB4, 0x81, 0x08, 0xCC, 0x39, 0x80, 0x68, 0x36,  // ....9.h6
                /* 1EF8 */  0x10, 0x9A, 0x15, 0x8C, 0x66, 0x55, 0x7D, 0xC4,  // ....fU}.
                /* 1F00 */  0xA0, 0x4F, 0x9F, 0x43, 0x63, 0x2F, 0x3D, 0x81,  // .O.Cc/=.
                /* 1F08 */  0x58, 0xC9, 0xCB, 0xE6, 0xD1, 0x82, 0xFD, 0xBC,  // X.......
                /* 1F10 */  0x82, 0xB0, 0x4F, 0x59, 0x60, 0xF6, 0x32, 0xD2,  // ..OY`.2.
                /* 1F18 */  0x31, 0x80, 0x80, 0x50, 0x3D, 0xCF, 0x33, 0x1D,  // 1..P=.3.
                /* 1F20 */  0x01, 0x08, 0x88, 0x8E, 0x00, 0x04, 0x84, 0x66,  // .......f
                /* 1F28 */  0x04, 0xA1, 0xD9, 0x41, 0xA8, 0xAE, 0xA7, 0xA3,  // ...A....
                /* 1F30 */  0x40, 0xAD, 0xED, 0xBF, 0x13, 0x84, 0x24, 0x03,  // @.....$.
                /* 1F38 */  0xA1, 0xAA, 0x7F, 0xF3, 0x41, 0x88, 0xE2, 0xB7,  // ....A...
                /* 1F40 */  0xA3, 0x86, 0x49, 0x9E, 0x6A, 0x0F, 0x01, 0xEC,  // ..I.j...
                /* 1F48 */  0xA5, 0x28, 0x70, 0xEB, 0x06, 0xA1, 0x39, 0x40,  // .(p...9@
                /* 1F50 */  0x34, 0x50, 0x02, 0x44, 0xB5, 0xFC, 0x2E, 0x35,  // 4P.D...5
                /* 1F58 */  0x50, 0x02, 0x22, 0x30, 0x67, 0x02, 0xA2, 0x39,  // P."0g..9
                /* 1F60 */  0x41, 0xA8, 0x0A, 0xFD, 0xC3, 0xA0, 0x20, 0x02,  // A..... .
                /* 1F68 */  0x72, 0x0A, 0x10, 0x9A, 0x0A, 0x8C, 0xEA, 0xF0,  // r.......
                /* 1F70 */  0x3F, 0x00, 0x0A, 0x42, 0xB5, 0x82, 0xE8, 0x70,  // ?..B...p
                /* 1F78 */  0x41, 0x12, 0x80, 0xB0, 0xA4, 0x20, 0x34, 0x45,  // A.... 4E
                /* 1F80 */  0x83, 0x83, 0x09, 0x8D, 0x00, 0x48, 0x2B, 0x1C,  // .....H+.
                /* 1F88 */  0x6E, 0x68, 0x08, 0x70, 0x16, 0x0A, 0x84, 0x06,  // nh.p....
                /* 1F90 */  0x05, 0xD1, 0xB1, 0xC5, 0xA9, 0x41, 0x04, 0x68,  // .....A.h
                /* 1F98 */  0x81, 0x25, 0x0E, 0x20, 0x14, 0x84, 0xFE, 0xFF,  // .%. ....
                /* 1FA0 */  0x03, 0x80, 0x08, 0xD0, 0x69, 0x40, 0x74, 0x44,  // ....i@tD
                /* 1FA8 */  0x20, 0x60, 0x54, 0x47, 0x8A, 0x21, 0x51, 0x10,  //  `TG.!Q.
                /* 1FB0 */  0x01, 0x5A, 0x28, 0x88, 0x8E, 0x3E, 0xA4, 0x05,  // .Z(..>..
                /* 1FB8 */  0x18, 0x13, 0x05, 0x42, 0xC5, 0x83, 0x50, 0xAD,  // ...B..P.
                /* 1FC0 */  0x31, 0x40, 0x99, 0x72, 0x10, 0x81, 0x3A, 0x39,  // 1@.r..:9
                /* 1FC8 */  0x88, 0x8E, 0x04, 0xA4, 0xC6, 0xA1, 0x82, 0x82,  // ........
                /* 1FD0 */  0x50, 0xD5, 0x20, 0x54, 0x4E, 0x0E, 0x10, 0x26,  // P. TN..&
                /* 1FD8 */  0x0D, 0x84, 0xCA, 0x05, 0xD1, 0x00, 0xAC, 0x1D,  // ........
                /* 1FE0 */  0x44, 0xC7, 0x26, 0x02, 0x46, 0xE3, 0x83, 0x50,  // D.&.F..P
                /* 1FE8 */  0x49, 0x3D, 0x00, 0x99, 0x3E, 0x10, 0x01, 0x3A,  // I=..>..:
                /* 1FF0 */  0x3D, 0x88, 0x0E, 0x03, 0x24, 0xC8, 0x41, 0x84,  // =...$.A.
                /* 1FF8 */  0x82, 0x50, 0x89, 0x45, 0x40, 0x99, 0x60, 0x10,  // .P.E@.`.
                /* 2000 */  0x1D, 0x7F, 0x08, 0x88, 0xC0, 0x2C, 0x23, 0x09,  // .....,#.
                /* 2008 */  0x08, 0x13, 0x07, 0x42, 0xC5, 0x82, 0x50, 0x21,  // ...B..P!
                /* 2010 */  0x51, 0x40, 0x59, 0x0C, 0x10, 0x1A, 0x24, 0x0B,  // Q@Y...$.
                /* 2018 */  0x18, 0x0B, 0x07, 0x42, 0xC3, 0x82, 0xE8, 0x78,  // ...B...x
                /* 2020 */  0x45, 0xBA, 0x00, 0x31, 0xC9, 0x20, 0x34, 0x02,  // E..1. 4.
                /* 2028 */  0x08, 0x0D, 0x0B, 0x22, 0x40, 0x12, 0x06, 0x90,  // ..."@...
                /* 2030 */  0x82, 0xD0, 0x08, 0x20, 0x34, 0x2B, 0x08, 0xD5,  // ... 4+..
                /* 2038 */  0x5E, 0x06, 0x94, 0x25, 0x06, 0xD1, 0x91, 0x81,  // ^..%....
                /* 2040 */  0xA4, 0x39, 0x9C, 0x50, 0x10, 0x81, 0x39, 0x0D,  // .9.P..9.
                /* 2048 */  0x10, 0x4D, 0x08, 0x42, 0x13, 0x83, 0x50, 0x79,  // .M.B..Py
                /* 2050 */  0x6D, 0x40, 0x58, 0x7A, 0x10, 0x1D, 0x1F, 0xC8,  // m@Xz....
                /* 2058 */  0x83, 0x51, 0xC7, 0x07, 0x02, 0x42, 0x53, 0x81,  // .Q...BS.
                /* 2060 */  0xE8, 0xC0, 0x43, 0xEA, 0x1C, 0x78, 0x28, 0x08,  // ..C..x(.
                /* 2068 */  0x55, 0x0F, 0xA2, 0xC3, 0x03, 0x29, 0x04, 0xC2,  // U....)..
                /* 2070 */  0x74, 0x26, 0x3A, 0xD6, 0xD0, 0x46, 0x07, 0x03,  // t&:..F..
                /* 2078 */  0xFA, 0x08, 0x16, 0xA8, 0xFF, 0xFF, 0x6A, 0x2A,  // ......j*
                /* 2080 */  0x81, 0x30, 0x75, 0x20, 0x54, 0x3F, 0x08, 0xCD,  // .0u T?..
                /* 2088 */  0x0A, 0x22, 0x50, 0xEB, 0xCB, 0x74, 0x10, 0xA0,  // ."P..t..
                /* 2090 */  0x20, 0x34, 0x03, 0x88, 0x06, 0x40, 0x80, 0xA8,  //  4...@..
                /* 2098 */  0x9A, 0x4E, 0x03, 0xA0, 0x20, 0x3A, 0xA4, 0x90,  // .N.. :..
                /* 20A0 */  0x54, 0xC7, 0x12, 0xDA, 0x0A, 0x84, 0xA5, 0x05,  // T.......
                /* 20A8 */  0xA1, 0xC2, 0x7A, 0x81, 0x32, 0x91, 0x20, 0x54,  // ..z.2. T
                /* 20B0 */  0x38, 0x88, 0x8E, 0x06, 0x4E, 0x01, 0xA2, 0xA3,  // 8...N...
                /* 20B8 */  0x0A, 0x01, 0xA3, 0xD9, 0x41, 0xA8, 0x9E, 0x60,  // ....A..`
                /* 20C0 */  0x80, 0x4C, 0x1C, 0x88, 0x00, 0x9D, 0x04, 0x44,  // .L.....D
                /* 20C8 */  0x83, 0x25, 0x20, 0x34, 0x29, 0x20, 0x8D, 0x0D,  // .% 4) ..
                /* 20D0 */  0x48, 0xA5, 0x16, 0x3B, 0x46, 0x51, 0x10, 0x1A,  // H..;FQ..
                /* 20D8 */  0x05, 0x44, 0x80, 0xCE, 0x05, 0xA2, 0xC3, 0x1C,  // .D......
                /* 20E0 */  0x49, 0x76, 0xCA, 0xA4, 0x20, 0x54, 0x2C, 0x88,  // Iv.. T,.
                /* 20E8 */  0x0E, 0x17, 0x04, 0x44, 0x80, 0x8E, 0x0A, 0x46,  // ...D...F
                /* 20F0 */  0x63, 0x83, 0x50, 0x29, 0xCD, 0x00, 0x99, 0x2E,  // c.P)....
                /* 20F8 */  0x10, 0x01, 0x3A, 0x35, 0x88, 0xC0, 0xAC, 0x21,  // ..:5...!
                /* 2100 */  0xDA, 0x21, 0x81, 0x82, 0xD0, 0x68, 0xD9, 0x40,  // .!...h.@
                /* 2108 */  0x59, 0x50, 0x10, 0x1D, 0xED, 0x48, 0x37, 0x30,  // YP...H70
                /* 2110 */  0x26, 0x1F, 0x84, 0x86, 0x02, 0xA1, 0x21, 0x41,  // &.....!A
                /* 2118 */  0x68, 0x80, 0x72, 0x87, 0x38, 0x0A, 0x42, 0xE5,  // h.r.8.B.
                /* 2120 */  0xD4, 0x03, 0x61, 0x61, 0x40, 0xA8, 0xD0, 0x7C,  // ..aa@..|
                /* 2128 */  0x47, 0x3B, 0xDA, 0x0F, 0x90, 0x06, 0x04, 0x61,  // G;.....a
                /* 2130 */  0xF1, 0x40, 0xE8, 0xFF, 0x1F                     // .@...
            })
        }
    }

    OperationRegion (CMS1, SystemIO, 0x72, 0x02)
    Field (CMS1, ByteAcc, NoLock, Preserve)
    {
        CMSI,   8, 
        CMSD,   8
    }

    IndexField (CMSI, CMSD, ByteAcc, NoLock, Preserve)
    {
        Offset (0x02), 
        HSDC,   8, 
        HSDS,   8, 
        HBUC,   8, 
        HBUS,   8, 
        Offset (0x40), 
        WLDS,   1, 
        BTDS,   1, 
        CCDS,   1, 
        WMDS,   1, 
        BNLS,   1, 
        WWLS,   1, 
        WBTS,   1, 
        Offset (0x49), 
        FMOD,   1, 
        HTS4,   1, 
        Offset (0x4A), 
        WAKF,   8, 
        Offset (0x60), 
        AC60,   8, 
        AC61,   8, 
        AC62,   8, 
        AC63,   8, 
        AC64,   8, 
        AC65,   8, 
        Offset (0x74), 
        ACMS,   8
    }

    Method (CMSW, 2, NotSerialized)
    {
        CMSI = Arg0
        CMSD = Arg1
    }

    Method (CMSR, 1, NotSerialized)
    {
        CMSI = Arg0
        Return (CMSD) /* \CMSD */
    }

    Method (GPRD, 1, NotSerialized)
    {
        If ((Arg0 <= 0x5E))
        {
            Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
            OperationRegion (LGPI, SystemIO, Local0, 0x04)
            Field (LGPI, ByteAcc, NoLock, Preserve)
            {
                    ,   2, 
                GPSE,   1, 
                    ,   27, 
                GPIL,   1, 
                GPOL,   1
            }

            If ((GPSE == One))
            {
                Return (GPIL) /* \GPRD.GPIL */
            }
            Else
            {
                Return (GPOL) /* \GPRD.GPOL */
            }
        }
    }

    Method (GPWT, 2, NotSerialized)
    {
        If ((Arg0 <= 0x5E))
        {
            Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
            OperationRegion (LGPI, SystemIO, Local0, 0x04)
            Field (LGPI, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                TEMP,   1
            }

            TEMP = Arg1
        }
    }

    Mutex (MUTX, 0x00)
    Mutex (OSUM, 0x00)
    Mutex (WFDM, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 3, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        If ((Arg0 == 0x04))
        {
            P80D = ((P80D & Zero) | Arg1)
        }

        If ((Arg2 == Zero)){}
        If ((Arg2 == One))
        {
            P80H = P80D /* \P80D */
        }
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8, 
        SSMQ,   8
    }

    Method (TSMI, 2, NotSerialized)
    {
        SSMQ = Arg1
        SSMP = Arg0
        Stall (0xFF)
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0, Zero)
        SLPS = Arg0
        If (((Arg0 >= 0x03) || (Arg0 <= 0x05)))
        {
            S34E (Arg0)
        }

        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0x53, Zero)
            P8XH (0x04, 0x53, One)
            SAV0 = WLOF /* \WLOF */
            SAV1 = BTOF /* \BTOF */
            WLOF = Zero
            BTOF = Zero
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x1E)
            }
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0x54, Zero)
            P8XH (0x04, 0x54, One)
            CMSW (Zero, 0x03)
        }

        If ((Arg0 == 0x05))
        {
            P8XH (0x04, 0x55, Zero)
            P8XH (0x04, 0x55, One)
        }

        \_SB.PCI0.NPME ()
    }

    Method (MMRP, 0, NotSerialized)
    {
        Local0 = PEBS /* \PEBS */
        Local0 += 0x000E0000
        Local1 = (ToInteger (TBSE) - One)
        Local1 *= 0x1000
        Local0 += Local1
        Return (Local0)
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        SSMP = 0xC4
        P80D = Zero
        CMSW (Zero, Zero)
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP.EPON))
            {
                \_SB.PCI0.PEG0.PEGP.EPON ()
            }

            If (CondRefOf (\_SB.PCI0.RP05.PEGP.EPON))
            {
                \_SB.PCI0.RP05.PEGP.EPON ()
            }
        }

        If ((((\_SB.PCI0.B0D3.ABAR & 0xFFFFC004) != 0xFFFFC004) && ((
            \_SB.PCI0.B0D3.ABAR & 0xFFFFC000) != Zero)))
        {
            \_SB.PCI0.B0D3.BARA = \_SB.PCI0.B0D3.ABAR /* External reference */
        }

        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If ((Arg0 == 0x03))
        {
            P8XH (0x04, 0xE3, Zero)
            P8XH (0x04, 0xE3, One)
            SSMP = 0x70
            WLOF = SAV0 /* \SAV0 */
            BTOF = SAV1 /* \SAV1 */
            \_SB.PCI0.LPCB.EC0.RTCE = Zero
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((DTSE && (TCNT > One)))
            {
                TRAP (TRTD, 0x14)
            }

            If ((OSYS == 0x07D2))
            {
                If ((\_PR.CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }

            If ((RP1D == Zero))
            {
                Notify (\_SB.PCI0.RP01, Zero) // Bus Check
            }

            If ((RP2D == Zero))
            {
                Notify (\_SB.PCI0.RP02, Zero) // Bus Check
            }

            If ((RP3D == Zero))
            {
                Notify (\_SB.PCI0.RP03, Zero) // Bus Check
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.XHC.XWAK ()
        }

        If ((Arg0 == 0x04))
        {
            P8XH (0x04, 0xE4, Zero)
            P8XH (0x04, 0xE4, One)
        }

        If ((Arg0 == 0x05))
        {
            P8XH (0x04, 0xE5, Zero)
            P8XH (0x04, 0xE5, One)
        }

        S34W (Arg0)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (S34E, 1, NotSerialized)
    {
        If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
        {
            \_SB.PCI0.LPCB.EC0.PSKB = KBWK /* \KBWK */
            \_SB.PCI0.LPCB.EC0.PSTP = TPWK /* \TPWK */
            \_SB.PCI0.LPCB.EC0.PWOL = LANW /* \LANW */
            If ((Arg0 == 0x04))
            {
                \_TZ.HOTF = Zero
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                \_SB.PCI0.LPCB.EC0.ZPDF = One
            }
        }
    }

    Method (S34W, 1, NotSerialized)
    {
        If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
        {
            If ((\_SB.PCI0.LPCB.EC0.BACR == One))
            {
                Notify (\_SB.BAT0, 0x80) // Status Change
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.DLY2 = 0x32
            }

            \_SB.PCI0.LPCB.EC0.ACKY = FNKY /* \FNKY */
            If (((CMSR (0x49) & One) == One))
            {
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }
            ElseIf (((CMSR (0x4A) & 0x06) == Zero))
            {
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            \_SB.PCI0.ACEL.INIT ()
            If ((OSYS >= 0x07D9))
            {
                If ((SSOS == 0x03E9))
                {
                    \_SB.PCI0.LPCB.EC0.W7OS = Zero
                }
                Else
                {
                    \_SB.PCI0.LPCB.EC0.W7OS = One
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.W7OS = Zero
            }
        }
    }

    Method (GETB, 3, Serialized)
    {
        Local0 = (Arg0 * 0x08)
        Local1 = (Arg1 * 0x08)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3) /* \GETB.TBF3 */
    }

    Method (PNOT, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCCD.PENB))
        {
            Local0 = 0x82
        }
        Else
        {
            Local0 = 0x80
        }

        If ((TCNT > One))
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, Local0)
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, Local0)
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, Local0)
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, Local0)
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, Local0)
                If ((PDC4 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81) // C-State Change
                }
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, Local0)
                If ((PDC5 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81) // C-State Change
                }
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, Local0)
                If ((PDC6 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81) // C-State Change
                }
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, Local0)
                If ((PDC7 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, Local0)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    OperationRegion (MBAR, SystemMemory, ((\_SB.PCI0.MHBR << 0x0F) + 0x5000), 0x1000)
    Field (MBAR, ByteAcc, NoLock, Preserve)
    {
        Offset (0x938), 
        PWRU,   4, 
        Offset (0x9A0), 
        PPL1,   15, 
        PL1E,   1, 
        CLP1,   1
    }

    Name (CLMP, Zero)
    Name (PLEN, Zero)
    Name (PLSV, 0x8000)
    Name (CSEM, Zero)
    Method (SPL1, 0, Serialized)
    {
        Name (PPUU, Zero)
        If ((CSEM == One))
        {
            Return (Zero)
        }

        CSEM = One
        PLSV = PPL1 /* \PPL1 */
        PLEN = PL1E /* \PL1E */
        CLMP = CLP1 /* \CLP1 */
        If ((PWRU == Zero))
        {
            PPUU = One
        }
        Else
        {
            PPUU = (PWRU-- << 0x02)
        }

        Local0 = (PLVL * PPUU) /* \SPL1.PPUU */
        Local1 = (Local0 / 0x03E8)
        PPL1 = Local1
        PL1E = One
        CLP1 = One
    }

    Method (RPL1, 0, Serialized)
    {
        PPL1 = PLSV /* \PLSV */
        PL1E = PLEN /* \PLEN */
        CLP1 = CLMP /* \CLMP */
        CSEM = Zero
    }

    Name (DDPS, Zero)
    Name (UAMS, Zero)
    Method (GUAM, 1, Serialized)
    {
        If ((Arg0 != DDPS))
        {
            DDPS = Arg0
            UAMS = (Arg0 && ~PWRS)
            If (Arg0)
            {
                \_SB.PCI0.LPCB.EC0.ECMD (0xFF, 0x10, 0x2C)
                P8XH (Zero, 0xC5, Zero)
                P8XH (One, Zero, Zero)
                ADBG ("Enter CS")
                If (PSCP)
                {
                    If ((CondRefOf (\_PR.CPU0._PSS) && CondRefOf (\_PR.CPU0._PPC)))
                    {
                        \_PR.CPU0._PPC = (SizeOf (\_PR.CPU0._PSS) - One)
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    SPL1 ()
                }
            }
            Else
            {
                If ((ECNO == One))
                {
                    ADBG ("EC Notify")
                    If ((BID == BHB))
                    {
                        \_SB.WTGP (0x58, One)
                    }

                    \_SB.PCI0.LPCB.EC0.ECMD (0xFF, 0x10, 0x2D)
                }

                P8XH (Zero, 0xC5, Zero)
                P8XH (One, 0xAB, Zero)
                ADBG ("Exit CS")
                If (PSCP)
                {
                    If (CondRefOf (\_PR.CPU0._PPC))
                    {
                        \_PR.CPU0._PPC = Zero
                        PNOT ()
                    }
                }

                If (PLCS)
                {
                    RPL1 ()
                }
            }

            P_CS ()
        }
    }

    Method (P_CS, 0, Serialized)
    {
        If (CondRefOf (\_SB.PCI0.PAUD.PUAM))
        {
            \_SB.PCI0.PAUD.PUAM ()
        }

        If ((OSYS == 0x07DC))
        {
            If (CondRefOf (\_SB.PCI0.XHC.DUAM))
            {
                \_SB.PCI0.XHC.DUAM ()
            }
        }
    }

    Method (TRAP, 2, Serialized)
    {
        SMIF = Arg1
        If ((Arg0 == TRTD))
        {
            DTSF = Arg1
            TRPD = Zero
            Return (DTSF) /* \DTSF */
        }

        If ((Arg0 == TRTI))
        {
            TRPH = Zero
        }

        If ((Arg0 == PFTI))
        {
            TRPF = Zero
        }

        Return (SMIF) /* \SMIF */
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            CMSW (Zero, Zero)
            OSYS = 0x07D0
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                }

                If (_OSI ("Windows 2001"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    OSYS = 0x07D1
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    OSYS = 0x07D2
                }

                If (_OSI ("Windows 2001.1"))
                {
                    OSYS = 0x07D3
                }

                If (_OSI ("Windows 2006"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Windows 2006 SP1"))
                {
                    OSYS = 0x07D6
                }

                If (_OSI ("Linux"))
                {
                    OSYS = 0x03E8
                }

                If (_OSI ("NOT_WINP_KEY"))
                {
                    SSOS = 0x03E9
                }

                If (_OSI ("Windows 2009"))
                {
                    OSYS = 0x07D9
                }

                If (_OSI ("Windows 2012"))
                {
                    OSYS = 0x07DC
                }

                If (_OSI ("Windows 2013"))
                {
                    OSYS = 0x07DD
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
            ^RP01.HPEX = Zero
            ^RP02.HPEX = Zero
            ^RP03.HPEX = Zero
            ^RP01.HPSX = One
            ^RP02.HPSX = One
            ^RP03.HPSX = One
        }

        Method (NPME, 0, Serialized)
        {
            ^RP01.PMEX = Zero
            ^RP02.PMEX = Zero
            ^RP03.PMEX = Zero
            ^RP01.PMSX = One
            ^RP02.PMSX = One
            ^RP03.PMSX = One
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
    }

    Scope (_SB)
    {
        Name (OSCI, Zero)
        Name (OSCO, Zero)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    If ((CAP0 & 0x04))
                    {
                        OSCO = 0x04
                        If (((SGMD & 0x0F) != 0x02))
                        {
                            If ((RTD3 == Zero))
                            {
                                CAP0 &= 0x3B
                                STS0 |= 0x10
                            }
                        }
                    }

                    If ((CAP0 & 0x20))
                    {
                        If (CondRefOf (\_SB.PCCD.PENB))
                        {
                            If ((^PCCD.PENB == Zero))
                            {
                                CAP0 &= 0x1F
                                STS0 |= 0x10
                            }
                        }
                        Else
                        {
                            CAP0 &= 0x1F
                            STS0 |= 0x10
                        }
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        CAP0 |= 0x04
                        OSCI = STS0 /* \_SB_._OSC.STS0 */
                        OSCO = CAP0 /* \_SB_._OSC.CAP0 */
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }

        Device (PEPD)
        {
            Name (_HID, "INT33A1" /* Intel Power Engine */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x03)
            {
                0x02, 
                Package (0x01)
                {
                    "\\_SB.PCI0.GFX0"
                }, 

                Package (0x01)
                {
                    "\\_SB.PCI0.SAT0.PRT1"
                }
            })
            Name (DEVX, Package (0x08)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.UA01", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SDHC", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.I2C0", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.I2C1", 
                    Ones
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.XHC", 
                    Ones
                }, 

                Package (0x02)
                {
                    "HDAUDIO\\FUNC_01&VEN_10EC&DEV_0282&SUBSYS_00000000&REV_1000\\4&a02b74b&0&0001", 
                    Ones
                }
            })
            Name (DEVY, Package (0x12)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_PR.CPU3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            Zero
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x03)
                        {
                            0xFF, 
                            Zero, 
                            0x81
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA00", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.UA01", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.SDHC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C0", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.I2C1", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC", 
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            0xFF, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "HDAUDIO\\FUNC_01&VEN_10EC&DEV_0282*", 
                    One, 
                    Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }
                    }
                }, 

                Package (0x03)
                {
                    "\\_SB.PCI0.ADSP", 
                    One, 
                    Package (0x03)
                    {
                        Zero, 
                        Package (0x02)
                        {
                            Zero, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x05)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT0", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT1", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT2", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }, 

                Package (0x02)
                {
                    "\\_SB.PCI0.SAT0.PRT3", 
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                One, 
                                0x08, 
                                Zero, 
                                One, 
                                0xB2
                            }, 

                            Package (0x03)
                            {
                                Zero, 
                                0xCD, 
                                One
                            }, 

                            0x3E80
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OSYS >= 0x07DC))
                {
                    If (((CDID & 0xF000) == 0x9000))
                    {
                        If ((S0ID == One))
                        {
                            Return (0x0F)
                        }
                    }
                }

                Return (Zero)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("b8febfe0-baf8-454b-aecd-49fb91137b21") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        PEPP = One
                        Return (0x0F)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            Switch (PEPY)
                            {
                                Case (One)
                                {
                                    Return (Package (0x02)
                                    {
                                        One, 
                                        Package (0x01)
                                        {
                                            "\\_SB.PCI0.GFX0"
                                        }
                                    })
                                }
                                Case (0x02)
                                {
                                    Return (Package (0x02)
                                    {
                                        One, 
                                        Package (0x01)
                                        {
                                            "\\_SB.PCI0.SAT0.PRT1"
                                        }
                                    })
                                }
                                Case (0x03)
                                {
                                    Return (DEVS) /* \_SB_.PEPD.DEVS */
                                }
                                Default
                                {
                                    Return (Package (0x01)
                                    {
                                        Zero
                                    })
                                }

                            }
                        }

                        If ((Arg1 == One))
                        {
                            If (!(PEPY & One))
                            {
                                DerefOf (DEVX [Zero]) [One] = Zero
                            }

                            If (!(PEPY & 0x02))
                            {
                                DerefOf (DEVX [One]) [One] = Zero
                            }

                            If (!(PEPY & 0x04))
                            {
                                DerefOf (DEVX [0x02]) [One] = Zero
                            }

                            If (!(PEPY & 0x08))
                            {
                                DerefOf (DEVX [0x03]) [One] = Zero
                            }

                            If (!(PEPY & 0x10))
                            {
                                DerefOf (DEVX [0x04]) [One] = Zero
                            }

                            If (!(PEPY & 0x20))
                            {
                                DerefOf (DEVX [0x05]) [One] = Zero
                            }

                            If (!(PEPY & 0x40))
                            {
                                DerefOf (DEVX [0x06]) [One] = Zero
                            }

                            If (!(PEPY & 0x80))
                            {
                                DerefOf (DEVX [0x07]) [One] = Zero
                            }

                            Return (DEVX) /* \_SB_.PEPD.DEVX */
                        }
                    }
                }

                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        If (((PEPC & 0x03) != One))
                        {
                            DerefOf (DEVY [0x06]) [One] = Zero
                            DerefOf (DEVY [0x07]) [One] = Zero
                            DerefOf (DEVY [0x08]) [One] = Zero
                            DerefOf (DEVY [0x09]) [One] = Zero
                        }

                        If (((PEPC & 0x03) != 0x02))
                        {
                            DerefOf (DEVY [0x05]) [One] = Zero
                            If (!(SPST & One))
                            {
                                DerefOf (DEVY [0x06]) [One] = Zero
                            }

                            If (!(SPST & 0x02))
                            {
                                DerefOf (DEVY [0x07]) [One] = Zero
                            }

                            If (!(SPST & 0x04))
                            {
                                DerefOf (DEVY [0x08]) [One] = Zero
                            }

                            If (!(SPST & 0x08))
                            {
                                DerefOf (DEVY [0x09]) [One] = Zero
                            }
                        }

                        If (((PEPC & 0x04) == Zero))
                        {
                            DerefOf (DEVY [0x0A]) [One] = Zero
                        }

                        If (((PEPC & 0x08) == Zero))
                        {
                            DerefOf (DEVY [0x0B]) [One] = Zero
                        }

                        If (((PEPC & 0x10) == Zero))
                        {
                            DerefOf (DEVY [0x0C]) [One] = Zero
                        }

                        If (((PEPC & 0x20) == Zero))
                        {
                            DerefOf (DEVY [0x0D]) [One] = Zero
                        }

                        If (((PEPC & 0x40) == Zero))
                        {
                            DerefOf (DEVY [0x0E]) [One] = Zero
                        }

                        If (((PEPC & 0x80) == Zero))
                        {
                            DerefOf (DEVY [0x0F]) [One] = Zero
                        }

                        If (((PEPC & 0x0100) == Zero))
                        {
                            DerefOf (DEVY [0x10]) [One] = Zero
                        }

                        If (((PEPC & 0x0200) == Zero))
                        {
                            DerefOf (DEVY [0x11]) [One] = Zero
                        }

                        Return (DEVY) /* \_SB_.PEPD.DEVY */
                    }

                    If ((Arg2 == 0x02))
                    {
                        Return (BCCD) /* \_SB_.PEPD.BCCD */
                    }
                }

                Return (One)
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU0 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU0 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU0 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU1, 0x02, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU1 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU1 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU1 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU2, 0x03, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU2 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU2 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU2 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU3, 0x04, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU3 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU3 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU3 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU4, 0x05, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU4 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU4 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU4 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU5, 0x06, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU5 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU5 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU5 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU6, 0x07, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU6 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU6 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU6 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }

        Processor (CPU7, 0x08, 0x00001810, 0x06)
        {
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("CPU7 DEP Call")
                If ((S0ID == One))
                {
                    ADBG ("CPU7 DEP")
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
                Else
                {
                    ADBG ("CPU7 DEP NULL")
                    Return (Package (0x00){})
                }
            }
        }
    }

    Scope (_TZ)
    {
        Name (TPTM, 0x4B)
        Name (T085, Buffer (0x03)
        {
             0x54, 0x56, 0x52                                 // TVR
        })
        Name (T090, Buffer (0x03)
        {
             0x78, 0x78, 0x78                                 // xxx
        })
        Name (T100, Buffer (0x03)
        {
             0x63, 0x65, 0x52                                 // ceR
        })
        Name (T105, Buffer (0x03)
        {
             0x78, 0x78, 0x78                                 // xxx
        })
        Name (S4TP, 0x64)
        Name (HOTF, Zero)
        ThermalZone (TZ01)
        {
            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                If ((OSYS >= 0x07D6))
                {
                    Switch (TJMX)
                    {
                        Case (0x55)
                        {
                            S4TP = DerefOf (T085 [One])
                            Return ((0x0AAC + (DerefOf (T085 [One]) * 0x0A)))
                        }
                        Case (0x5A)
                        {
                            S4TP = DerefOf (T090 [One])
                            Return ((0x0AAC + (DerefOf (T090 [One]) * 0x0A)))
                        }
                        Case (0x64)
                        {
                            S4TP = DerefOf (T100 [One])
                            Return ((0x0AAC + (DerefOf (T100 [One]) * 0x0A)))
                        }
                        Case (0x69)
                        {
                            S4TP = DerefOf (T105 [One])
                            Return ((0x0AAC + (DerefOf (T105 [One]) * 0x0A)))
                        }
                        Default
                        {
                            S4TP = DerefOf (T100 [One])
                            Return ((0x0AAC + (DerefOf (T100 [One]) * 0x0A)))
                        }

                    }
                }
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If ((OSYS < 0x07D6))
                {
                    Switch (TJMX)
                    {
                        Case (0x55)
                        {
                            S4TP = DerefOf (T085 [One])
                            Return ((0x0AAC + (DerefOf (T085 [One]) * 0x0A)))
                        }
                        Case (0x5A)
                        {
                            S4TP = DerefOf (T090 [One])
                            Return ((0x0AAC + (DerefOf (T090 [One]) * 0x0A)))
                        }
                        Case (0x64)
                        {
                            S4TP = DerefOf (T100 [One])
                            Return ((0x0AAC + (DerefOf (T100 [One]) * 0x0A)))
                        }
                        Case (0x69)
                        {
                            S4TP = DerefOf (T105 [One])
                            Return ((0x0AAC + (DerefOf (T105 [One]) * 0x0A)))
                        }
                        Default
                        {
                            S4TP = DerefOf (T100 [One])
                            Return ((0x0AAC + (DerefOf (T100 [One]) * 0x0A)))
                        }

                    }
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (((HOTF == One) && (OSYS == 0x07DC)))
                {
                    Local0 = (S4TP - 0x0A)
                    If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                    {
                        If ((\_SB.PCI0.LPCB.EC0.RTMP <= Local0))
                        {
                            HOTF = Zero
                        }
                    }

                    Return ((0x0AAC + (TPTM * 0x0A)))
                }

                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.RTMP
                    If ((Local0 >= S4TP))
                    {
                        HOTF = One
                        HTS4 = One
                    }

                    Return ((0x0AAC + (Local0 * 0x0A)))
                }
                Else
                {
                    Return ((0x0AAC + (TPTM * 0x0A)))
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If ((TCNT == 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3, 
                        \_PR.CPU4, 
                        \_PR.CPU5, 
                        \_PR.CPU6, 
                        \_PR.CPU7
                    })
                }

                If ((TCNT == 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If ((TCNT == 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                If ((OSYS > 0x07D6))
                {
                    CTYP = Arg0
                    If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                    {
                        \_SB.PCI0.LPCB.EC0.TRPM = Arg0
                    }
                }
                Else
                {
                    CTYP = Zero
                    If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                    {
                        \_SB.PCI0.LPCB.EC0.TRPM = Zero
                    }
                }
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (CTYP)
                {
                    Local0 = (PPMF & One)
                    If (Local0)
                    {
                        Switch (TJMX)
                        {
                            Case (0x55)
                            {
                                Return ((0x0AAC + (DerefOf (T085 [0x02]) * 0x0A)))
                            }
                            Case (0x5A)
                            {
                                Return ((0x0AAC + (DerefOf (T090 [0x02]) * 0x0A)))
                            }
                            Case (0x64)
                            {
                                Local1 = (DerefOf (T100 [0x02]) - PSVD)
                                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.SPSV = Local1
                                }

                                Return ((0x0AAC + ((DerefOf (T100 [0x02]) - PSVD) * 
                                    0x0A)))
                            }
                            Case (0x69)
                            {
                                Local1 = (DerefOf (T105 [0x02]) - PSVD)
                                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.SPSV = Local1
                                }

                                Return ((0x0AAC + ((DerefOf (T105 [0x02]) - PSVD) * 
                                    0x0A)))
                            }
                            Default
                            {
                                Local1 = (DerefOf (T100 [0x02]) - PSVD)
                                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.SPSV = Local1
                                }

                                Return ((0x0AAC + ((DerefOf (T100 [0x02]) - PSVD) * 
                                    0x0A)))
                            }

                        }
                    }

                    Return ((0x0AAC + ((DerefOf (T100 [0x02]) - PSVD) * 
                        0x0A)))
                }
                Else
                {
                    Local0 = (PPMF & One)
                    If (Local0)
                    {
                        Switch (TJMX)
                        {
                            Case (0x55)
                            {
                                Return ((0x0AAC + (DerefOf (T085 [Zero]) * 0x0A)))
                            }
                            Case (0x5A)
                            {
                                Return ((0x0AAC + (DerefOf (T090 [Zero]) * 0x0A)))
                            }
                            Case (0x64)
                            {
                                Local1 = (DerefOf (T100 [Zero]) - PSVD)
                                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.SPSV = Local1
                                }

                                Return ((0x0AAC + ((DerefOf (T100 [Zero]) - PSVD) * 
                                    0x0A)))
                            }
                            Case (0x69)
                            {
                                Local1 = (DerefOf (T105 [Zero]) - PSVD)
                                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.SPSV = Local1
                                }

                                Return ((0x0AAC + ((DerefOf (T105 [Zero]) - PSVD) * 
                                    0x0A)))
                            }
                            Default
                            {
                                Local1 = (DerefOf (T100 [Zero]) - PSVD)
                                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                                {
                                    \_SB.PCI0.LPCB.EC0.SPSV = Local1
                                }

                                Return ((0x0AAC + ((DerefOf (T100 [Zero]) - PSVD) * 
                                    0x0A)))
                            }

                        }
                    }

                    Return ((0x0AAC + ((DerefOf (T100 [Zero]) - PSVD) * 
                        0x0A)))
                }
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (0x02)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (0x05)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (0x32)
            }

            Name (REGN, "Processor Thermal Zone")
            Name (FMAX, 0x1388)
            Name (FMIN, Zero)
            Method (FRSP, 0, NotSerialized)
            {
                Local2 = Zero
                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                {
                    Local0 = \_SB.PCI0.LPCB.EC0.RPM1
                    Local1 = \_SB.PCI0.LPCB.EC0.RPM2
                    Local1 <<= 0x08
                    Local0 |= Local1
                    If ((Local0 != Zero))
                    {
                        Divide (0x00075300, Local0, Local0, Local2)
                    }
                }

                Return (Local2)
            }

            Method (FSSP, 1, NotSerialized)
            {
                If ((\_SB.PCI0.LPCB.EC0.ECOK == One))
                {
                    If ((Arg0 != Zero))
                    {
                        \_SB.PCI0.LPCB.EC0.SFAN = Zero
                    }
                    Else
                    {
                        \_SB.PCI0.LPCB.EC0.SFAN = 0x02
                    }
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    _Y16)
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00010000,         // Address Length
                    _Y12)
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y10._BAS, RBR0)  // _BAS: Base Address
                RBR0 = (^^LPCB.RCBA << 0x0E)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._BAS, TBR0)  // _BAS: Base Address
                TBR0 = TBAB /* \TBAB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y11._LEN, TBLN)  // _LEN: Length
                If ((TBAB == Zero))
                {
                    TBLN = Zero
                }

                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y12._BAS, SNR0)  // _BAS: Base Address
                SNR0 = SRMB /* \SRMB */
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y13._BAS, MBR0)  // _BAS: Base Address
                MBR0 = (MHBR << 0x0F)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y14._BAS, DBR0)  // _BAS: Base Address
                DBR0 = (DIBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y15._BAS, EBR0)  // _BAS: Base Address
                EBR0 = (EPBR << 0x0C)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._BAS, XBR0)  // _BAS: Base Address
                XBR0 = (PXBR << 0x1A)
                CreateDWordField (BUF0, \_SB.PCI0.PDRC._Y16._LEN, XSZ0)  // _LEN: Length
                XSZ0 = (0x10000000 >> PXSZ) /* \_SB_.PCI0.PXSZ */
                Return (BUF0) /* \_SB_.PCI0.PDRC.BUF0 */
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.P0P1, 0x02) // Device Wake
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((RP1D == Zero))
            {
                \_SB.PCI0.RP01.HPME ()
                Notify (\_SB.PCI0.RP01, 0x02) // Device Wake
            }

            If ((RP2D == Zero))
            {
                \_SB.PCI0.RP02.HPME ()
                Notify (\_SB.PCI0.RP02, 0x02) // Device Wake
            }

            If ((RP3D == Zero))
            {
                \_SB.PCI0.RP03.HPME ()
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            }

            If ((D1F0 == One))
            {
                \_SB.PCI0.PEG0.HPME ()
                Notify (\_SB.PCI0.PEG0, 0x02) // Device Wake
                Notify (\_SB.PCI0.PEG0.PEGP, 0x02) // Device Wake
            }

            If ((D1F1 == One))
            {
                \_SB.PCI0.PEG1.HPME ()
                Notify (\_SB.PCI0.PEG1, 0x02) // Device Wake
            }

            If ((D1F2 == One))
            {
                \_SB.PCI0.PEG2.HPME ()
                Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
            }
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((\_SB.PCI0.EHC1.PMEE && \_SB.PCI0.EHC1.PMES))
            {
                Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
            }

            If ((\_SB.PCI0.EHC2.PMEE && \_SB.PCI0.EHC2.PMES))
            {
                Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
            }

            If ((\_SB.PCI0.XHC.PMEE && \_SB.PCI0.XHC.PMES))
            {
                Notify (\_SB.PCI0.XHC, 0x02) // Device Wake
            }

            If ((\_SB.PCI0.HDEF.PMEE && \_SB.PCI0.HDEF.PMES))
            {
                Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
            }
        }

        Method (_L01, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            L01C += One
            If (((RP1D == Zero) && \_SB.PCI0.RP01.HPSX))
            {
                P8XH (One, One, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    \_SB.PCI0.RP01.PDCX = One
                    \_SB.PCI0.RP01.HPSX = One
                    If (!\_SB.PCI0.RP01.PDSX)
                    {
                        \_SB.PCI0.RP01.L0SE = Zero
                    }
                }
                Else
                {
                    \_SB.PCI0.RP01.HPSX = One
                }
            }

            If (((RP2D == Zero) && \_SB.PCI0.RP02.HPSX))
            {
                P8XH (One, 0x02, One)
                P8XH (Zero, L01C, One)
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    \_SB.PCI0.RP02.PDCX = One
                    \_SB.PCI0.RP02.HPSX = One
                    If (!\_SB.PCI0.RP02.PDSX)
                    {
                        \_SB.PCI0.RP02.L0SE = Zero
                    }

                    Notify (\_SB.PCI0.RP02, Zero) // Bus Check
                }
                Else
                {
                    \_SB.PCI0.RP02.HPSX = One
                }
            }

            If (((RP3D == Zero) && \_SB.PCI0.RP03.HPSX))
            {
                P8XH (One, 0x03, One)
                P8XH (Zero, L01C, One)
                If (((BID != BICO) && (BID != BICC)))
                {
                    Sleep (0x64)
                }

                If (\_SB.PCI0.RP03.PDCX)
                {
                    \_SB.PCI0.RP03.PDCX = One
                    \_SB.PCI0.RP03.HPSX = One
                    If (!\_SB.PCI0.RP03.PDSX)
                    {
                        \_SB.PCI0.RP03.L0SE = Zero
                    }

                    If (((BID != BICO) && (BID != BICC)))
                    {
                        Notify (\_SB.PCI0.RP03, Zero) // Bus Check
                    }
                }
                Else
                {
                    \_SB.PCI0.RP03.HPSX = One
                }
            }
        }

        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            GPEC = Zero
            If (CondRefOf (DTSE))
            {
                If ((DTSE >= One)){}
            }

            If (CondRefOf (\_SB.PCCD.PENB))
            {
                If ((\_SB.PCCD.PENB == One))
                {
                    Notify (\_SB.PCCD, 0x80) // Status Change
                }
            }
        }

        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((\_SB.PCI0.GFX0.GSSE && !GSMI))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (OSUP, 1, NotSerialized)
        {
            Local0 = (Arg0 + 0x0548)
            OperationRegion (PXVD, SystemMemory, Local0, 0x08)
            Field (PXVD, DWordAcc, NoLock, Preserve)
            {
                TB2P,   32, 
                P2TB,   32
            }

            Local1 = 0x64
            P2TB = 0x0D
            While ((Local1 > Zero))
            {
                Local1 = (Local1 - One)
                Local2 = TB2P /* \_GPE.OSUP.TB2P */
                If ((Local2 == Ones))
                {
                    Return (0x02)
                }

                If ((Local2 & One))
                {
                    Break
                }

                Sleep (0x32)
            }

            P2TB = Zero
            Return (One)
        }

        Method (MMTB, 0, NotSerialized)
        {
            ADBG ("MMTB")
            Local0 = PEBS /* \PEBS */
            Local0 += 0x000E0000
            Local1 = (ToInteger (TBSE) - One)
            Local1 *= 0x1000
            Local0 += Local1
            OperationRegion (MMMM, SystemMemory, Local0, 0x1A)
            Field (MMMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x19), 
                SBUS,   8
            }

            Local2 = SBUS /* \_GPE.MMTB.SBUS */
            Local0 = PEBS /* \PEBS */
            Local2 *= 0x00100000
            Local0 += Local2
            Return (Local0)
        }

        Method (OSUW, 0, NotSerialized)
        {
            ADBG ("OSUW")
            Local0 = MMTB ()
            OperationRegion (PXVD, SystemMemory, Local0, 0x04)
            Field (PXVD, DWordAcc, NoLock, Preserve)
            {
                VEDI,   32
            }

            Local1 = VEDI /* \_GPE.OSUW.VEDI */
            If ((Local1 != Ones))
            {
                Return (OSUP (Local0))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (TBFF, 0, NotSerialized)
        {
            ADBG ("TBFF")
            Local0 = MMTB ()
            OperationRegion (PXVD, SystemMemory, Local0, 0x04)
            Field (PXVD, DWordAcc, NoLock, Preserve)
            {
                VEDI,   32
            }

            Local1 = VEDI /* \_GPE.TBFF.VEDI */
            If ((Local1 == Ones))
            {
                Return (OSUP (Local0))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (TSUB, 0, NotSerialized)
        {
            Local0 = PEBS /* \PEBS */
            Local0 += 0x000E0000
            Local1 = (ToInteger (TBSE) - One)
            Local1 *= 0x1000
            Local0 += Local1
            OperationRegion (MMMM, SystemMemory, Local0, 0x1A)
            Field (MMMM, AnyAcc, NoLock, Preserve)
            {
                Offset (0x19), 
                SBUS,   8
            }

            Return (SBUS) /* \_GPE.TSUB.SBUS */
        }

        Method (WSUB, 0, NotSerialized)
        {
            Local0 = Zero
            Local1 = Zero
            While (One)
            {
                Local1 = TSUB ()
                If (Local1)
                {
                    Break
                }
                Else
                {
                    Local0 += One
                    If ((Local0 > 0x03E8))
                    {
                        Sleep (0x03E8)
                        ADBG ("WSUB Deadlock")
                    }
                    Else
                    {
                        Sleep (0x10)
                    }
                }
            }
        }

        Method (WWAK, 0, NotSerialized)
        {
            Local0 = Zero
            Local1 = Zero
            While (One)
            {
                Acquire (WFDM, 0xFFFF)
                Local0 = WKFN /* \WKFN */
                Release (WFDM)
                If (Local0)
                {
                    Break
                }
                Else
                {
                    Local1 += One
                    If ((Local1 > 0x03E8))
                    {
                        Sleep (0x03E8)
                        ADBG ("WWAK Deadlock")
                    }
                    Else
                    {
                        Sleep (0x10)
                    }
                }
            }

            Return (Local1)
        }
    }

    Name (RPA0, 0x001C0000)
    Name (RPA1, 0x001C0001)
    Name (RPA2, 0x001C0002)
    Name (RPA3, 0x001C0003)
    Name (RPA4, 0x001C0004)
    Name (RPA5, 0x001C0005)
    Name (RPA6, 0x001C0006)
    Name (RPA7, 0x001C0007)
    Name (PCHS, 0x00000001)
    Name (SRMB, 0x9FA10000)
    Name (PML1, 0x00000000)
    Name (PML2, 0x00000000)
    Name (PML3, 0x00000000)
    Name (PML4, 0x00000000)
    Name (PML5, 0x00000000)
    Name (PML6, 0x00000000)
    Name (PML7, 0x00000000)
    Name (PML8, 0x00000000)
    Name (PNL1, 0x00000000)
    Name (PNL2, 0x00000000)
    Name (PNL3, 0x00000000)
    Name (PNL4, 0x00000000)
    Name (PNL5, 0x00000000)
    Name (PNL6, 0x00000000)
    Name (PNL7, 0x00000000)
    Name (PNL8, 0x00000000)
    Scope (\)
    {
        OperationRegion (ENE1, SystemIO, 0x0381, One)
        Field (ENE1, ByteAcc, NoLock, Preserve)
        {
            EI01,   8
        }

        OperationRegion (ENE2, SystemIO, 0x0382, One)
        Field (ENE2, ByteAcc, NoLock, Preserve)
        {
            EI02,   8
        }

        OperationRegion (ENE3, SystemIO, 0x0383, One)
        Field (ENE3, ByteAcc, NoLock, Preserve)
        {
            EI03,   8
        }

        OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
            Offset (0x04), 
            Offset (0x06), 
            Offset (0x08), 
            TRP0,   8, 
            Offset (0x0A), 
            Offset (0x0B), 
            Offset (0x0C), 
            Offset (0x0D), 
            Offset (0x0E), 
            Offset (0x0F), 
            Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x28), 
            Offset (0x2A), 
                ,   3, 
            GPE3,   1, 
                ,   7, 
            GPEB,   1, 
            Offset (0x3C), 
            PMEN,   1, 
            UPRW,   1, 
            Offset (0x42), 
                ,   1, 
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20), 
            Offset (0x22), 
                ,   3, 
            GPS3,   1, 
                ,   7, 
            GPSB,   1, 
            Offset (0x64), 
                ,   9, 
            SCIS,   1, 
            Offset (0x66)
        }

        OperationRegion (PMLP, SystemIO, (PMBS + 0x80), 0x20)
        Field (PMLP, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            Offset (0x11), 
            GE08,   1, 
                ,   8, 
            GE17,   1, 
                ,   27, 
            GE45,   1, 
                ,   5, 
            GE51,   1, 
            Offset (0x20)
        }

        Field (PMLP, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01), 
            GS08,   1, 
                ,   8, 
            GS17,   1, 
                ,   27, 
            GS45,   1, 
                ,   5, 
            GS51,   1, 
            Offset (0x10)
        }

        OperationRegion (GPR, SystemIO, GPBS, 0x0400)
        Field (GPR, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
            Offset (0x0C), 
            GL00,   8, 
            BTOF,   1, 
            GP09,   1, 
            GL01,   5, 
            WLOF,   1, 
            GL02,   8, 
            GP24,   1, 
                ,   2, 
            GP27,   1, 
            GP28,   1, 
            Offset (0x10), 
            Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
            Offset (0x2C), 
            GIV0,   8, 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   8, 
            GL05,   8, 
                ,   5, 
            GLED,   1, 
            Offset (0x3B), 
            GL07,   8, 
            Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   8, 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GL08,   8, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (GPRL, SystemIO, GPBS, 0x40)
        Field (GPRL, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            GO08,   1, 
            GO09,   1, 
                ,   3, 
            GO13,   1, 
            GO14,   1, 
                ,   2, 
            GO17,   1, 
                ,   27, 
            GO45,   1, 
                ,   5, 
            GO51,   1, 
            Offset (0x10), 
            Offset (0x30), 
            GR00,   32, 
            GR01,   32, 
            GR02,   32
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
            Offset (0x1000), 
            Offset (0x2330), 
            AFEA,   32, 
            AFED,   32, 
            AFES,   16, 
            AFER,   16, 
            Offset (0x3000), 
            Offset (0x331C), 
            Offset (0x331F), 
            PMFS,   1, 
            Offset (0x3320), 
            CKEN,   32, 
            Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
            Offset (0x3418), 
                ,   1, 
            ADSD,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
            Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
            Offset (0x359C), 
            UP0D,   1, 
            UP1D,   1, 
            UP2D,   1, 
            UP3D,   1, 
            UP4D,   1, 
            UP5D,   1, 
            UP6D,   1, 
            UP7D,   1, 
            UP8D,   1, 
            UP9D,   1, 
            UPAD,   1, 
            UPBD,   1, 
            UPCD,   1, 
            UPDD,   1, 
                ,   1, 
            Offset (0x359E)
        }

        OperationRegion (IO_P, SystemIO, 0x1000, 0x04)
        Field (IO_P, ByteAcc, NoLock, Preserve)
        {
            TRPF,   8
        }
    }

    Scope (_SB)
    {
        Method (RDGI, 1, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   30, 
                    TEMP,   1
                }

                Return (TEMP) /* \_SB_.RDGI.TEMP */
            }
        }

        Method (RDGP, 1, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                Return (TEMP) /* \_SB_.RDGP.TEMP */
            }
        }

        Method (WTGP, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   31, 
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (WTIN, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, ByteAcc, NoLock, Preserve)
                {
                        ,   3, 
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (WPGP, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0104) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   2
                }

                TEMP = Arg1
            }
        }

        Method (GP2N, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0100) + (Arg0 * 0x08))
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   1
                }

                TEMP = Arg1
            }
        }

        Method (GP2A, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = ((GPBS + 0x0104) + (Arg0 * 0x08))
                OperationRegion (LGP2, SystemIO, Local0, 0x04)
                Field (LGP2, AnyAcc, NoLock, Preserve)
                {
                    GPWP,   2, 
                    GPIS,   1
                }

                If ((Arg1 == One))
                {
                    GPIS = Zero
                    GPWP = Zero
                }
                Else
                {
                    GPWP = 0x02
                    GPIS = One
                }

                Local0 = (GPBS + 0x10)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If ((Arg0 >= 0x2D))
                {
                    Local1 = (Arg0 - 0x28)
                }
                ElseIf ((Arg0 <= 0x0A))
                {
                    Local1 = (Arg0 - 0x08)
                }
                Else
                {
                    Local1 = (Arg0 - 0x0A)
                }

                Local2 = (One << Local1)
                If (Arg1)
                {
                    TEMP |= Local2
                }
                Else
                {
                    TEMP &= ~Local2
                }
            }
        }

        Method (GP2B, 2, Serialized)
        {
            If ((Arg0 <= 0x5E))
            {
                Local0 = (GPBS + 0x10)
                OperationRegion (LGPI, SystemIO, Local0, 0x02)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                    TEMP,   16
                }

                If ((Arg0 >= 0x2D))
                {
                    Local1 = (Arg0 - 0x28)
                }
                ElseIf ((Arg0 <= 0x0A))
                {
                    Local1 = (Arg0 - 0x08)
                }
                Else
                {
                    Local1 = (Arg0 - 0x0A)
                }

                Local2 = (One << Local1)
                If (Arg1)
                {
                    TEMP |= Local2
                }
                Else
                {
                    TEMP &= ~Local2
                }
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Name (LTRE, Zero)
        Name (OBFF, Zero)
        Name (LMSL, Zero)
        Name (LNSL, Zero)
        Device (EHC1)
        {
            Name (_ADR, 0x001D0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x54, 0x12)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0x0E), 
                    ,   1, 
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If ((^^LPCB.EC0.ECOK == One))
                {
                    If ((Arg0 && ^^LPCB.EC0.SW2S))
                    {
                        PWUC = 0x03
                    }
                    Else
                    {
                        PWUC = Zero
                    }
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCA) /* \_SB_.PCI0.EHC1.HUBN.PR01._UPC.UPCA */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01._PLD.PLDP */
                    }

                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR11._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 1.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR11._PLD.PLDP */
                        }
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR12._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 1.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR12._PLD.PLDP */
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR13._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR13._PLD.PLDP */
                        }

                        Device (CAM0)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x0,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x1,
                                    PLD_Panel              = "FRONT",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "CENTER",
                                    PLD_Shape              = "UNKNOWN",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x0,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0xFFFF,
                                    PLD_HorizontalOffset   = 0xFFFF)

                            })
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR13.SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR15._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR15._PLD.PLDP */
                        }

                        Device (CAM1)
                        {
                            Name (_ADR, 0x05)  // _ADR: Address
                            Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                            {
                                ToPLD (
                                    PLD_Revision           = 0x2,
                                    PLD_IgnoreColor        = 0x1,
                                    PLD_Red                = 0x0,
                                    PLD_Green              = 0x0,
                                    PLD_Blue               = 0x0,
                                    PLD_Width              = 0x0,
                                    PLD_Height             = 0x0,
                                    PLD_UserVisible        = 0x0,
                                    PLD_Dock               = 0x0,
                                    PLD_Lid                = 0x1,
                                    PLD_Panel              = "FRONT",
                                    PLD_VerticalPosition   = "UPPER",
                                    PLD_HorizontalPosition = "CENTER",
                                    PLD_Shape              = "UNKNOWN",
                                    PLD_GroupOrientation   = 0x0,
                                    PLD_GroupToken         = 0x0,
                                    PLD_GroupPosition      = 0x0,
                                    PLD_Bay                = 0x0,
                                    PLD_Ejectable          = 0x0,
                                    PLD_EjectRequired      = 0x0,
                                    PLD_CabinetNumber      = 0x0,
                                    PLD_CardCageNumber     = 0x0,
                                    PLD_Reference          = 0x0,
                                    PLD_Rotation           = 0x0,
                                    PLD_Order              = 0x0,
                                    PLD_VerticalOffset     = 0xFFFF,
                                    PLD_HorizontalOffset   = 0xFFFF)

                            })
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \_SB_.PCI0.EHC1.HUBN.PR01.PR15.SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (EHC2)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            OperationRegion (PWKE, PCI_Config, 0x54, 0x12)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0x0E), 
                    ,   1, 
                PWUC,   6
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If ((^^LPCB.EC0.ECOK == One))
                {
                    If ((Arg0 && ^^LPCB.EC0.SW2S))
                    {
                        PWUC = 0x02
                    }
                    Else
                    {
                        PWUC = Zero
                    }
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCA, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Return (UPCA) /* \_SB_.PCI0.EHC2.HUBN.PR01._UPC.UPCA */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01._PLD.PLDP */
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                Zero, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR12._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x31, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 1.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR12._PLD.PLDP */
                        }

                        Alias (SBV1, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR12.SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR13._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x10)
                                {
                                    /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR13._PLD.PLDP */
                        }

                        Alias (SBV2, SDGV)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8") /* Unknown UUID */))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \_SB_.PCI0.EHC2.HUBN.PR01.PR13.SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (XHC)
        {
            Name (_ADR, 0x00140000)  // _ADR: Address
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                If ((S0ID == One))
                {
                    Return (Package (0x01)
                    {
                        PEPD
                    })
                }
                Else
                {
                    Return (Package (0x00){})
                }
            }

            OperationRegion (XPRT, PCI_Config, Zero, 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16, 
                Offset (0x74), 
                D0D3,   2, 
                Offset (0x75), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1, 
                Offset (0xB0), 
                    ,   13, 
                MB13,   1, 
                MB14,   1, 
                Offset (0xB4), 
                Offset (0xD0), 
                PR2,    32, 
                PR2M,   32, 
                PR3,    32, 
                PR3M,   32
            }

            OperationRegion (XHCP, SystemMemory, (PEBS + 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04), 
                PDBM,   16, 
                Offset (0x10), 
                MEMB,   64
            }

            Method (PR2S, 1, Serialized)
            {
                If (((CDID & 0xF000) == 0x8000))
                {
                    Switch (Arg0)
                    {
                        Case (One)
                        {
                            Return (One)
                        }
                        Case (0x02)
                        {
                            Return (0x02)
                        }
                        Case (0x03)
                        {
                            Return (0x04)
                        }
                        Case (0x04)
                        {
                            Return (0x08)
                        }
                        Case (0x05)
                        {
                            Return (0x0100)
                        }
                        Case (0x06)
                        {
                            Return (0x0200)
                        }
                        Case (0x07)
                        {
                            Return (0x0400)
                        }
                        Case (0x08)
                        {
                            Return (0x0800)
                        }
                        Case (0x09)
                        {
                            Return (0x10)
                        }
                        Case (0x0A)
                        {
                            Return (0x20)
                        }
                        Case (0x0B)
                        {
                            Return (0x1000)
                        }
                        Case (0x0C)
                        {
                            Return (0x2000)
                        }
                        Case (0x0D)
                        {
                            Return (0x40)
                        }
                        Case (0x0E)
                        {
                            Return (0x80)
                        }
                        Case (0x0F)
                        {
                            Return (0x4000)
                        }

                    }
                }
                Else
                {
                    Switch (Arg0)
                    {
                        Case (One)
                        {
                            Return (One)
                        }
                        Case (0x02)
                        {
                            Return (0x02)
                        }
                        Case (0x03)
                        {
                            Return (0x04)
                        }
                        Case (0x04)
                        {
                            Return (0x08)
                        }
                        Case (0x05)
                        {
                            Return (0x10)
                        }
                        Case (0x06)
                        {
                            Return (0x20)
                        }
                        Case (0x07)
                        {
                            Return (0x40)
                        }
                        Case (0x08)
                        {
                            Return (0x80)
                        }
                        Case (0x09)
                        {
                            Return (0x0100)
                        }

                    }
                }
            }

            Name (XRST, Zero)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                Local2 = MEMB /* \_SB_.PCI0.XHC_.MEMB */
                Local1 = PDBM /* \_SB_.PCI0.XHC_.PDBM */
                PDBM &= 0xFFFFFFF9
                MEMB = SRMB /* \SRMB */
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x510), 
                    R510,   32, 
                    Offset (0x520), 
                    R520,   32, 
                    Offset (0x530), 
                    R530,   32, 
                    Offset (0x540), 
                    R540,   32, 
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1
                }

                Local3 = D0D3 /* \_SB_.PCI0.XHC_.D0D3 */
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                }

                If ((PCHS == 0x02))
                {
                    MB13 = Zero
                    MB14 = Zero
                    CLK0 = Zero
                    CLK1 = Zero
                }

                CLK2 = One
                If ((PCHS == 0x02))
                {
                    While (((((R510 & 0x03FB) == 0x02E0) || ((R520 & 
                        0x03FB) == 0x02E0)) || (((R530 & 0x03FB) == 0x02E0) || ((R540 & 
                        0x03FB) == 0x02E0))))
                    {
                        Stall (0x32)
                    }

                    Local0 = R510 /* \_SB_.PCI0.XHC_._PS0.R510 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R510 = (Local0 | 0x80000000)
                        While (((R510 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R510 & 0xFFFFFFFD)
                        R510 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R520 /* \_SB_.PCI0.XHC_._PS0.R520 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R520 = (Local0 | 0x80000000)
                        While (((R520 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R520 & 0xFFFFFFFD)
                        R520 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R530 /* \_SB_.PCI0.XHC_._PS0.R530 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R530 = (Local0 | 0x80000000)
                        While (((R530 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R530 & 0xFFFFFFFD)
                        R530 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R540 /* \_SB_.PCI0.XHC_._PS0.R540 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R540 = (Local0 | 0x80000000)
                        While (((R540 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R540 & 0xFFFFFFFD)
                        R540 = (Local0 | 0x00FE0000)
                    }

                    AX15 = One
                }

                If (CondRefOf (\_SB.PCI0.XHC.PS0X))
                {
                    PS0X ()
                }

                If ((Local3 == 0x03))
                {
                    D0D3 = 0x03
                }

                PDBM &= 0xFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                PMES = One
                PMEE = One
                Local2 = MEMB /* \_SB_.PCI0.XHC_.MEMB */
                Local1 = PDBM /* \_SB_.PCI0.XHC_.PDBM */
                PDBM &= 0xFFFFFFF9
                MEMB = SRMB /* \SRMB */
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x80E0), 
                        ,   15, 
                    AX15,   1, 
                    Offset (0x8154), 
                        ,   31, 
                    CLK2,   1, 
                    Offset (0x816C), 
                        ,   2, 
                    CLK0,   1, 
                        ,   11, 
                    CLK1,   1, 
                    Offset (0x8170)
                }

                Local3 = D0D3 /* \_SB_.PCI0.XHC_.D0D3 */
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                }

                If ((PCHS == 0x02))
                {
                    MB13 = One
                    MB14 = One
                    CLK0 = One
                    CLK1 = One
                }

                CLK2 = Zero
                If ((PCHS == 0x02))
                {
                    AX15 = Zero
                }

                If (CondRefOf (\_SB.PCI0.XHC.PS3X))
                {
                    PS3X ()
                }

                If ((Local3 == 0x03))
                {
                    D0D3 = 0x03
                }

                PDBM &= 0xFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (CUID, 1, Serialized)
            {
                If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71") /* Unknown UUID */))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Method (POSC, 3, Serialized)
            {
                CreateDWordField (Arg2, Zero, CDW1)
                CreateDWordField (Arg2, 0x08, CDW3)
                If ((XHCI == Zero))
                {
                    CDW1 |= 0x02
                }

                If (!(CDW1 & One))
                {
                    If ((CDW3 & One))
                    {
                        ESEL ()
                    }
                    ElseIf (((CDID & 0xF000) == 0x8000))
                    {
                        If ((Arg0 > One))
                        {
                            XSEL ()
                        }
                        Else
                        {
                            CDW1 |= 0x0A
                        }
                    }
                    ElseIf ((Arg0 > 0x02))
                    {
                        XSEL ()
                    }
                    Else
                    {
                        CDW1 |= 0x0A
                    }
                }

                Return (Arg2)
            }

            Method (XSEL, 0, Serialized)
            {
                If ((MAUL == One))
                {
                    If (((XHCI == 0x02) || (XHCI == 0x03)))
                    {
                        XUSB = One
                        XRST = One
                        PR3 = U3SS /* \U3SS */
                        PR2 = U2PR /* \U2PR */
                    }
                }
                ElseIf (((XHCI == 0x02) || (XHCI == 0x03)))
                {
                    XUSB = One
                    XRST = One
                    Local0 = Zero
                    Local0 = (PR3 & 0xFFFFFFC0)
                    PR3 = (Local0 | PR3M) /* \_SB_.PCI0.XHC_.PR3M */
                    Local0 = Zero
                    Local0 = (PR2 & 0xFFFF8000)
                    PR2 = (Local0 | PR2M) /* \_SB_.PCI0.XHC_.PR2M */
                }
            }

            Method (ESEL, 0, Serialized)
            {
                If (((XHCI == 0x02) || (XHCI == 0x03)))
                {
                    PR3 &= 0xFFFFFFC0
                    PR2 &= 0xFFFF8000
                    XUSB = Zero
                    XRST = Zero
                }
            }

            Method (XWAK, 0, Serialized)
            {
                If (((XUSB == One) || (XRST == One)))
                {
                    XSEL ()
                }
            }

            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
            {
                Return (0x02)
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (One) & PR2))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS01._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                                /* 0008 */  0x51, 0x11, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   // Q.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR2S (One) & PR2))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS01._PLD.PLDP */
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x02) & PR2))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS02._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                                /* 0008 */  0x51, 0x11, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   // Q.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR2S (0x02) & PR2))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS02._PLD.PLDP */
                    }
                }

                Device (HS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x06) & PR2))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS06._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x69, 0x0C, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00   // i.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR2S (0x06) & PR2))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS06._PLD.PLDP */
                    }
                }

                Device (HS07)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x07) & PR2))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS07._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x68, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   // h.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR2S (0x07) & PR2))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS07._PLD.PLDP */
                    }
                }

                Device (HS09)
                {
                    Name (_ADR, 0x09)  // _ADR: Address
                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR2S (0x09) & PR2))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS09._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x68, 0x0C, 0x80, 0x04, 0x00, 0x00, 0x00, 0x00   // h.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR2S (0x09) & PR2))
                        {
                            VIS &= Zero
                        }

                        If (((CDID & 0xF000) == 0x9000))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS09._PLD.PLDP */
                    }

                    Device (WCAM)
                    {
                        Name (_ADR, 0x09)  // _ADR: Address
                        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                        {
                            Name (UPCP, Package (0x04)
                            {
                                Zero, 
                                0xFF, 
                                Zero, 
                                Zero
                            })
                            Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.HS09.WCAM._UPC.UPCP */
                        }

                        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                        {
                            Name (PLDP, Package (0x01)
                            {
                                Buffer (0x14)
                                {
                                    /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // $.......
                                    /* 0010 */  0xC8, 0x00, 0xA0, 0x00                           // ....
                                }
                            })
                            Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.HS09.WCAM._PLD.PLDP */
                        }
                    }
                }

                Device (SSP1)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x10)
                        }
                        Else
                        {
                            Return (0x0A)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & One))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                                /* 0008 */  0x51, 0x11, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00   // Q.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR3 & One))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP1._PLD.PLDP */
                    }
                }

                Device (SSP2)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x11)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x02))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                                /* 0008 */  0x51, 0x11, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   // Q.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR3 & 0x02))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP2._PLD.PLDP */
                    }
                }

                Device (SSP3)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x12)
                        }
                        Else
                        {
                            Return (0x0C)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x04))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x70, 0x0C, 0x80, 0x02, 0x00, 0x00, 0x00, 0x00   // p.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR3 & 0x04))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP3._PLD.PLDP */
                    }
                }

                Device (SSP4)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((CDID & 0xF000) == 0x8000))
                        {
                            Return (0x13)
                        }
                        Else
                        {
                            Return (0x0D)
                        }
                    }

                    Name (_STA, 0x0F)  // _STA: Status
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            Zero, 
                            0x03, 
                            Zero, 
                            Zero
                        })
                        If (!(PR3 & 0x08))
                        {
                            UPCP [Zero] = Zero
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHC_.RHUB.SSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x10)
                            {
                                /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x70, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   // p.......
                            }
                        })
                        CreateBitField (DerefOf (PLDP [Zero]), 0x40, VIS)
                        If (!(PR3 & 0x08))
                        {
                            VIS &= Zero
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHC_.RHUB.SSP4._PLD.PLDP */
                    }
                }
            }

            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x0D, 
                0x03
            })
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1, 
                Offset (0x01), 
                DCKM,   1, 
                    ,   6, 
                DCKS,   1, 
                Offset (0x08), 
                Offset (0x09), 
                PMEE,   1, 
                    ,   6, 
                PMES,   1
            }
        }

        Device (RP01)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA0) /* \RPA0 */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR1 /* \LTR1 */
                LMSL = PML1 /* \PML1 */
                LNSL = PNL1 /* \PNL1 */
                OBFF = OBF1 /* \OBF1 */
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Switch (ToInteger (Arg0))
                {
                    Case (ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */){                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS) /* \_SB_.PCI0.RP01.OPTS */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Case (0x04)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Ones) || (LNSL == Ones)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP01.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                        }
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR05) /* \_SB_.PCI0.RP01.AR05 */
                }

                Return (PR05) /* \_SB_.PCI0.RP01.PR05 */
            }
        }

        Device (RP02)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA1) /* \RPA1 */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR2 /* \LTR2 */
                LMSL = PML2 /* \PML2 */
                LNSL = PNL2 /* \PNL2 */
                OBFF = OBF2 /* \OBF2 */
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Switch (ToInteger (Arg0))
                {
                    Case (ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */){                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS) /* \_SB_.PCI0.RP02.OPTS */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Case (0x04)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Ones) || (LNSL == Ones)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP02.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                        }
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x09, 
                    0x04
                })
            }

            Name (PR06, Package (0x04)
            {
                Package (0x04)
                {
                    0xFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    LNKA, 
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
                    0x11
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    One, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x02, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0xFFFF, 
                    0x03, 
                    Zero, 
                    0x10
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR06) /* \_SB_.PCI0.RP02.AR06 */
                }

                Return (PR06) /* \_SB_.PCI0.RP02.PR06 */
            }

            Device (PXSX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (PXCS, PCI_Config, Zero, 0x02)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    RVID,   16
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((RVID == 0xFFFF))
                    {
                        Return (Zero)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    LANW = Arg0
                }
            }
        }

        Device (RP03)
        {
            Method (_ADR, 0, NotSerialized)  // _ADR: Address
            {
                Return (RPA2) /* \RPA2 */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                LTRE = LTR3 /* \LTR3 */
                LMSL = PML3 /* \PML3 */
                LNSL = PNL3 /* \PNL3 */
                OBFF = OBF3 /* \OBF3 */
            }

            OperationRegion (PXCS, PCI_Config, Zero, 0x0380)
            Field (PXCS, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x50), 
                L0SE,   1, 
                    ,   3, 
                LDIS,   1, 
                Offset (0x51), 
                Offset (0x52), 
                    ,   13, 
                LASX,   1, 
                Offset (0x5A), 
                ABPX,   1, 
                    ,   2, 
                PDCX,   1, 
                    ,   2, 
                PDSX,   1, 
                Offset (0x5B), 
                Offset (0x60), 
                Offset (0x62), 
                PSPX,   1, 
                Offset (0xA4), 
                D3HT,   2, 
                Offset (0xD8), 
                    ,   30, 
                HPEX,   1, 
                PMEX,   1, 
                Offset (0xE2), 
                    ,   2, 
                L23E,   1, 
                L23R,   1, 
                Offset (0x324), 
                    ,   3, 
                LEDM,   1
            }

            Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
            {
                Offset (0xDC), 
                    ,   30, 
                HPSX,   1, 
                PMSX,   1
            }

            Name (LTRV, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Name (OPTS, Zero)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Switch (ToInteger (Arg0))
                {
                    Case (ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */){                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    OPTS = One
                                    If (LTRE)
                                    {
                                        OPTS |= 0x40
                                    }

                                    If (OBFF)
                                    {
                                        OPTS |= 0x10
                                    }

                                    Return (OPTS) /* \_SB_.PCI0.RP03.OPTS */
                                }
                                Else
                                {
                                    Return (Zero)
                                }
                            }
                            Case (0x04)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    If (OBFF)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 == 0x02))
                                {
                                    If (LTRE)
                                    {
                                        If (((LMSL == Ones) || (LNSL == Ones)))
                                        {
                                            If ((PCHS == One))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == 0x02))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [Zero] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [One] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP03.LTRV */
                                    }
                                    Else
                                    {
                                        Return (Zero)
                                    }
                                }
                            }

                        }
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (HPME, 0, Serialized)
            {
                If (PMSX)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        PMSX = One
                        If (PMSX)
                        {
                            Local0--
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }
                }
            }

            Name (PR07, Package (0x04)
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
            Name (AR07, Package (0x04)
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
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR07) /* \_SB_.PCI0.RP03.AR07 */
                }

                Return (PR07) /* \_SB_.PCI0.RP03.PR07 */
            }
        }

        Device (SAT0)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
            {
                ADBG ("SAT0 DEP Call")
                If ((OSYS >= 0x07DD))
                {
                    If (((S0ID == One) && ((PEPC & 0x03) != Zero)))
                    {
                        ADBG ("SAT0 DEP")
                        Return (Package (0x01)
                        {
                            PEPD
                        })
                    }
                }

                ADBG ("SAT0 DEP NULL")
                Return (Package (0x00){})
            }

            Device (PRT0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((GL05 & 0x40))
                    {
                        Return (0x0004FFFF)
                    }
                    Else
                    {
                        Return (0xFFFF)
                    }
                }

                Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
                {
                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV) /* \_SB_.PCI0.SAT0.FDEV */
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP) /* \_SB_.PCI0.SAT0.FDRP */
                }

                Method (_GTF, 0, Serialized)  // _GTF: Get Task File
                {
                    If ((((DVS0 == One) && ((FDEV & One) == One)) && 
                        ((FDRP & 0x80) == 0x80)))
                    {
                        Name (PIB1, Buffer (0x07)
                        {
                             0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF         // .......
                        })
                        Return (PIB1) /* \_SB_.PCI0.SAT0.PRT0._GTF.PIB1 */
                    }

                    Name (PIB2, Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00         // .......
                    })
                    Return (PIB2) /* \_SB_.PCI0.SAT0.PRT0._GTF.PIB2 */
                }
            }

            Device (PRT4)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    If ((GL05 & 0x40))
                    {
                        Return (0xFFFF)
                    }
                    Else
                    {
                        Return (0x0004FFFF)
                    }
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bdfaef30-aebb-11de-8a39-0800200c9a66") /* Unknown UUID */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Return (One)
                            }
                            Case (0x02)
                            {
                                If ((^^^LPCB.EC0.ZPOD == Zero))
                                {
                                    ^^^LPCB.EC0.ZPOD = One
                                }

                                Return (One)
                            }
                            Case (0x03)
                            {
                                If ((^^^LPCB.EC0.ZPOD == One))
                                {
                                    ^^^LPCB.EC0.ZPOD = Zero
                                }

                                Return (One)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)  // _ADR: Address
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, (SBAR << 0x05), 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCON = 0x44
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = Arg2
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x48
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT1 = (Arg2 & 0xFF)
                DAT0 = ((Arg2 >> 0x08) & 0xFF)
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                I2CE = Zero
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x4C
                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (((DAT0 << 0x08) | DAT1))
                }

                Return (Ones)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg3
                HSTS = 0xBF
                TXSA = Arg0
                HCOM = Arg1
                DAT0 = SizeOf (Arg2)
                Local1 = Zero
                HBDR = DerefOf (Arg2 [Zero])
                HCON = 0x54
                While ((SizeOf (Arg2) > Local1))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    HSTS = 0x80
                    Local1++
                    If ((SizeOf (Arg2) > Local1))
                    {
                        HBDR = DerefOf (Arg2 [Local1])
                    }
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100){})
                If (STRT ())
                {
                    Return (Zero)
                }

                I2CE = Arg2
                HSTS = 0xBF
                TXSA = (Arg0 | One)
                HCOM = Arg1
                HCON = 0x54
                Local0 = 0x0FA0
                While ((!(HSTS & 0x80) && Local0))
                {
                    Local0--
                    Stall (0x32)
                }

                If (!Local0)
                {
                    KILL ()
                    Return (Zero)
                }

                TBUF [Zero] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                HSTS = 0x80
                Local1 = One
                While ((Local1 < DerefOf (TBUF [Zero])))
                {
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                    HSTS = 0x80
                    Local1++
                }

                If (COMP ())
                {
                    HSTS |= 0xFF
                    Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Local0 = 0xC8
                While (Local0)
                {
                    If ((HSTS & 0x40))
                    {
                        Local0--
                        Sleep (One)
                        If ((Local0 == Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Local0 = Zero
                    }
                }

                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & One))
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Local0 = 0x0FA0
                While (Local0)
                {
                    If ((HSTS & 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Local0--
                        Stall (0x32)
                        If ((Local0 == Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                HCON |= 0x02
                HSTS |= 0xFF
            }
        }
    }

    Name (BUFN, Zero)
    Name (MBUF, Buffer (0x1000){})
    OperationRegion (MDBG, SystemMemory, 0x9CF78018, 0x00001004)
    Field (MDBG, AnyAcc, Lock, Preserve)
    {
        MDG0,   32768
    }

    Method (DB2H, 1, Serialized)
    {
        If (MDEN)
        {
            SHOW (Arg0)
            MDGC (0x20)
            MDG0 = MBUF /* \MBUF */
        }
        Else
        {
            Return (Zero)
        }
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
        If (MDEN)
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
        Else
        {
            Return (Zero)
        }
    }

    Method (ADBG, 1, Serialized)
    {
        If (MDEN)
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
        Else
        {
            Return (Zero)
        }
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

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS3)
    {
        Name (_S3, Package (0x04)  // _S3_: S3 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)  // _S4_: S4 System State
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Method (PTS, 1, NotSerialized)
    {
        If (Arg0){}
    }

    Method (WAK, 1, NotSerialized)
    {
    }
}

