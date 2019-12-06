/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-TEMP.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000248 (584)
 *     Revision         0x02
 *     Checksum         0x37
 *     OEM ID           "T450"
 *     OEM Table ID     "TEMPFANS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "TEMPFANS", 0x00000000)
{
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HFSP, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.HSPD, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.TMP0, FieldUnitObj)    // (from opcode)

    Scope (_SB.PCI0.LPC.EC)
    {
        OperationRegion (FRAM, EmbeddedControl, Zero, 0x0100)
        Field (FRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0x84), 
            HSP0,   8, 
            HSP1,   8
        }
    }

    Device (SMCD)
    {
        Name (_HID, "FAN00000")  // _HID: Hardware ID
        Name (TACH, Package (0x02)
        {
            "System Fan", 
            "FAN0"
        })
        Method (FAN0, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPC.EC.HSPD
            Return (Local0)
        }

        Method (TCPU, 0, NotSerialized)
        {
            Local0 = \_SB.PCI0.LPC.EC.TMP0
            If ((Local0 >= 0x55))
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x07
            }
            ElseIf ((Local0 >= 0x50))
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x06
            }
            ElseIf ((Local0 >= 0x4B))
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x05
            }
            ElseIf ((Local0 >= 0x46))
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x04
            }
            ElseIf ((Local0 >= 0x41))
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x03
            }
            ElseIf ((Local0 >= 0x3C))
            {
                \_SB.PCI0.LPC.EC.HFSP = 0x02
            }
            ElseIf ((Local0 >= One))
            {
                \_SB.PCI0.LPC.EC.HFSP = One
            }

            Return (Local0)
        }

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

