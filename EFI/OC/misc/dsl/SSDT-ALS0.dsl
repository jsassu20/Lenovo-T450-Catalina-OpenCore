/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-ALS0.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000082 (130)
 *     Revision         0x02
 *     Checksum         0x4A
 *     OEM ID           "T450"
 *     OEM Table ID     "ALS0"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "ALS0", 0x00000000)
{
    Device (_SB.ALS0)
    {
        Name (_HID, "ACPI0008")  // _HID: Hardware ID
        Name (_CID, "smc-als")  // _CID: Compatible ID
        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
        Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
        {
            Package (0x02)
            {
                0x64, 
                0x012C
            }
        })
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

