/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-PTWK.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000123 (291)
 *     Revision         0x02
 *     Checksum         0x3D
 *     OEM ID           "T450"
 *     OEM Table ID     "PTSWAK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "PTSWAK", 0x00000000)
{
    External (EXT1, MethodObj)    // 1 Arguments (from opcode)
    External (EXT2, MethodObj)    // 1 Arguments (from opcode)
    External (EXT3, MethodObj)    // 1 Arguments (from opcode)
    External (EXT4, MethodObj)    // 1 Arguments (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZWAK, MethodObj)    // 1 Arguments (from opcode)

    Scope (_SB)
    {
        Device (PCI9)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (FNOK, Zero)
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (_OSI ("Darwin"))
        {
            If ((\_SB.PCI9.FNOK == One))
            {
                Arg0 = 0x03
            }

            If (CondRefOf (EXT1))
            {
                EXT1 (Arg0)
            }

            If (CondRefOf (EXT2))
            {
                EXT2 (Arg0)
            }
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            If ((\_SB.PCI9.FNOK == One))
            {
                \_SB.PCI9.FNOK = Zero
                Arg0 = 0x03
            }

            If (CondRefOf (EXT3))
            {
                EXT3 (Arg0)
            }

            If (CondRefOf (EXT4))
            {
                EXT4 (Arg0)
            }
        }

        Local0 = ZWAK (Arg0)
        Return (Local0)
    }
}

