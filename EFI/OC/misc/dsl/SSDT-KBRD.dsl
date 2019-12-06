/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-KBRD.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000155 (341)
 *     Revision         0x02
 *     Checksum         0xBE
 *     OEM ID           "T450"
 *     OEM Table ID     "BrightFN"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "BrightFN", 0x00000000)
{
    External (_SB_.PCI0.LPC_.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPC_.EC__.XQ14, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.EC__.XQ15, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPC_.KBD_, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPC.KBD, 0x0406)
                Notify (\_SB.PCI0.LPC.KBD, 0x10)
            }
            Else
            {
                \_SB.PCI0.LPC.EC.XQ14 ()
            }
        }

        Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query
        {
            If (_OSI ("Darwin"))
            {
                Notify (\_SB.PCI0.LPC.KBD, 0x0405)
                Notify (\_SB.PCI0.LPC.KBD, 0x20)
            }
            Else
            {
                \_SB.PCI0.LPC.EC.XQ15 ()
            }
        }
    }
}

