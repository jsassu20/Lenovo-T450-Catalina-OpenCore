/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-MCHC.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000068 (104)
 *     Revision         0x02
 *     Checksum         0xEF
 *     OEM ID           "T450"
 *     OEM Table ID     "MCHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "MCHC", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
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
}

