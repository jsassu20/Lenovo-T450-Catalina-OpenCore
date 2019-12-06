/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-EXT3.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000005A (90)
 *     Revision         0x02
 *     Checksum         0xE3
 *     OEM ID           "T450"
 *     OEM Table ID     "EXT3"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "EXT3", 0x00000000)
{
    External (_SI_._SST, MethodObj)    // 1 Arguments (from opcode)

    Method (EXT3, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x03 == Arg0))
            {
                \_SI._SST (One)
            }
        }
    }
}

