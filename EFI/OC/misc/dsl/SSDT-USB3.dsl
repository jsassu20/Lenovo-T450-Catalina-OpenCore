/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-USB3.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000230 (560)
 *     Revision         0x02
 *     Checksum         0x06
 *     OEM ID           "T450"
 *     OEM Table ID     "_HUBXHC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "_HUBXHC", 0x00000000)
{
    External (_SB_.PCI0.XHC_.URTH.HSP0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.HSP1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.HSP2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.HSP6, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.HSP7, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.SSP0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.SSP1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.URTH.SSP2, DeviceObj)    // (from opcode)

    Scope (\_SB.PCI0.XHC.URTH.HSP0)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.HSP1)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.HSP2)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.HSP6)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.HSP7)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.SSP0)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.SSP1)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, 
            Zero, 
            Zero
        })
    }

    Scope (\_SB.PCI0.XHC.URTH.SSP2)
    {
        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
        {
            0xFF, 
            0x03, 
            Zero, 
            Zero
        })
    }
}

