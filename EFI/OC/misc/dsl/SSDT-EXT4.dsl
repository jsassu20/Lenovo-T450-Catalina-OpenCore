/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-EXT4.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000006B (107)
 *     Revision         0x02
 *     Checksum         0xA4
 *     OEM ID           "T450"
 *     OEM Table ID     "EXT4"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "EXT4", 0x00000000)
{
    External (_SB_.LID_, DeviceObj)    // (from opcode)

    Method (EXT4, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If ((0x03 == Arg0))
            {
                If (CondRefOf (\_SB.LID))
                {
                    Notify (\_SB.LID, 0x80)
                }
            }
        }
    }
}

