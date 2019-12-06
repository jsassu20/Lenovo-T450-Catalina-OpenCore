/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-USB2.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000002DF (735)
 *     Revision         0x02
 *     Checksum         0x64
 *     OEM ID           "T450"
 *     OEM Table ID     "_HUBEH01"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "_HUBEH01", 0x00000000)
{
    External (_SB_.PCI0.EH01.URTH.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT5, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT6, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.EH01.URTH.URMH.PRT7, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.EH01.URTH.URMH)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT0)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT1)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT2)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT3)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT4)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT5)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT6)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.EH01.URTH.URMH.PRT7)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Scope (_SB.PCI0.EH01.URTH.PRT3)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
    }
}

