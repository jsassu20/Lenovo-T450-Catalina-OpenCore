/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-DGPU.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AF (175)
 *     Revision         0x02
 *     Checksum         0x05
 *     OEM ID           "T450"
 *     OEM Table ID     "_DDGPU"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "_DDGPU", 0x00000000)
{
    External (_SB_.PCI0.PEG_.VID_.GPOF, MethodObj)    // 1 Arguments (from opcode)

    Device (RMD1)
    {
        Name (_HID, "RMD10000")  // _HID: Hardware ID
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_SB.PCI0.PEG.VID.GPOF))
            {
                \_SB.PCI0.PEG.VID.GPOF (Zero)
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

