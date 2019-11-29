![Screenshot](misc/logo/screenshot.png)

# macOS Catalina (Lenovo ThinkPad T450)

```  
- Intel 5th Generation Architecture (Broadwell)
- Intel HD Graphics 5500
- Intel Series 9 Chipset Family
- macOS Catalina Catalina
- OpenCore Based Configuration
- AirPort Extreme (Broadcom BCM94360CSAX & NGFF A/E Adapter) * Recommended Upgrade
- All native macOS Catalina features work as long as you upgrade the WiFi card to a supported configuration
```

#

# YOU MUST DISABLE CSM SUPPORT IN BIOS

- OpenCore will not boot if CSM support is enabled in the BIOS!!! This can be confusing because usually CSM is required to successfully boot Clover but it needs to be disabled for OpenCore.

- You must also remove the existing Clover configuration from your system as well in order for OpenCore to function properly. I suggest you back it up before hand as well as make a second USB installallation drive with the configuration and Clover in the EFI partition and do the same with an OpenCore drive as well.

### PayPal

- If you like my work then please feel free to donate. Every little bit helps! jsa55u@icloud.com | Paypal.me/Sass86oh

#

### iMessage (Contact me whenever for help)

- Jsass20@gmail.com (or Jsassu20@me.com)

#

# Credits 

- EchoEspirit - https://github.com/EchoEsprit/Hackintosh-Catalina-OpenCore-Lenovo-T450s-efi. His LenovoT450s OpenCore build is what I used as a base for this build as I'm still learning the ins and outs of proper building on OpenCore based systems since its a radically different approach compared with my previous venture into CLOVER based Hackintosh setups and whats required to build a successful one. Keep in mind the T450s is the same as the T450 in every important aspect in building a Hackintosh system so you can use this build of his as it is. The only thing that may need editing is the settings for proper battery reporting.

