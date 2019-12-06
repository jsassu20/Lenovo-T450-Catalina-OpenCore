/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/james/Downloads/Lenovo-T450-Catalina-OpenCore-0.4/EFI/OC/ACPI/SSDT-TPAD.aml, Thu Dec  5 20:24:46 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000261 (609)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "T450"
 *     OEM Table ID     "ps2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "T450", "ps2", 0x00000000)
{
    External (_SB_.PCI0.LPC_.KBD_, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPC.KBD)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x04)
            {
                "RM,oem-id", 
                "LENOVO", 
                "RM,oem-table-id", 
                "Thinkpad_ClickPad"
            })
        }

        Name (RMCF, Package (0x04)
        {
            "Keyboard", 
            Package (0x02)
            {
                "Custom PS2 Map", 
                Package (0x02)
                {
                    Package (0x00){}, 
                    "e037=0"
                }
            }, 

            "Synaptics TouchPad", 
            Package (0x26)
            {
                "BogusDeltaThreshX", 
                0x0320, 
                "BogusDeltaThreshY", 
                0x0320, 
                "Clicking", 
                ">y", 
                "DragLockTempMask", 
                0x00040004, 
                "DynamicEWMode", 
                ">n", 
                "FakeMiddleButton", 
                ">n", 
                "HWResetOnStart", 
                ">y", 
                "PalmNoAction When Typing", 
                ">y", 
                "ScrollResolution", 
                0x0320, 
                "SmoothInput", 
                ">y", 
                "UnsmootInput", 
                ">y", 
                "Thinkpad", 
                ">y", 
                "EdgeBottom", 
                Zero, 
                "FingerZ", 
                0x1E, 
                "MaxTapTime", 
                0x05F5E100, 
                "MouseMultiplierX", 
                0x08, 
                "MouseMultiplierY", 
                0x08, 
                "MouseScrollMultiplierX", 
                0x08, 
                "MouseScrollMultiplierY", 
                0x08
            }
        })
    }
}

