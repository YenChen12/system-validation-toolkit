## ✨First attempt with Makefile for organizing linux commands and automating log collection.

### <u>Module Overview</u>

make_practice/  
    ├── [`Makefile`](#makefile)     # Basic execution for individual checks  
    └── [`advanced.mk`](#advanced)    # Extended checks with banners, structured output, and logging    

---
### <u>System Environment</u>
- **Client:** Windows 10
- **Server:** Ubuntu 22.04 LTS (Virtual Box)
- **Connection:** SSH via Windows Terminal
---
### <u>Getting Started</u>
1. Create a `Makefile` or `<file_name>.mk`
    
2. Basic Makefile example:
    ```bash
    test:
        pwd
    
    cpu:
	    @lscpu
    ```

3. Run the Makefile and verify the output.
    1. `Makefile`  <a id="makefile"></a> 
        - Run an individual check:
            ```bash
            make pci
            
            # Expect output:
            lspci
            00:00.0 Host bridge: Intel Corporation 440FX - 82441FX PMC [Natoma] (rev 02)
            00:01.0 ISA bridge: Intel Corporation 82371SB PIIX3 ISA [Natoma/Triton II]
            00:01.1 IDE interface: Intel Corporation 82371AB/EB/MB PIIX4 IDE (rev 01)
            00:02.0 VGA compatible controller: VMware SVGA II Adapter
            00:03.0 Ethernet controller: Intel Corporation 82540EM Gigabit Ethernet Controller (rev 02)
            00:04.0 System peripheral: InnoTek Systemberatung GmbH VirtualBox Guest Service
            00:05.0 Multimedia audio controller: Intel Corporation 82801AA AC'97 Audio Controller (rev 01)
            00:06.0 USB controller: Apple Inc. KeyLargo/Intrepid USB
            00:07.0 Bridge: Intel Corporation 82371AB/EB/MB PIIX4 ACPI (rev 08)
            00:08.0 Ethernet controller: Intel Corporation 82540EM Gigabit Ethernet Controller (rev 02)
            00:0d.0 SATA controller: Intel Corporation 82801HM/HEM (ICH8M/ICH8M-E) SATA Controller [AHCI mode] (rev 02)
            ```

    2. `advanced.mk` <a id="advanced"></a>
        - Run an individual check with a banner:
            ```bash
            make -f advanced.mk pci

            # Expect output:
            ---------------
            >  lspci
            ---------------
            [Output]
            00:00.0 Host bridge: Intel Corporation 440FX - 82441FX PMC [Natoma] (rev 02)
            00:01.0 ISA bridge: Intel Corporation 82371SB PIIX3 ISA [Natoma/Triton II]
            00:01.1 IDE interface: Intel Corporation 82371AB/EB/MB PIIX4 IDE (rev 01)
            00:02.0 VGA compatible controller: VMware SVGA II Adapter
            00:03.0 Ethernet controller: Intel Corporation 82540EM Gigabit Ethernet Controller (rev 02)
            00:04.0 System peripheral: InnoTek Systemberatung GmbH VirtualBox Guest Service
            00:05.0 Multimedia audio controller: Intel Corporation 82801AA AC'97 Audio Controller (rev 01)
            00:06.0 USB controller: Apple Inc. KeyLargo/Intrepid USB
            00:07.0 Bridge: Intel Corporation 82371AB/EB/MB PIIX4 ACPI (rev 08)
            00:08.0 Ethernet controller: Intel Corporation 82540EM Gigabit Ethernet Controller (rev 02)
            00:0d.0 SATA controller: Intel Corporation 82801HM/HEM (ICH8M/ICH8M-E) SATA Controller [AHCI mode] (rev 02)

            ```
        - Run the full check and save the log:
            - For detailed output, see the [example log file](./log/20260814_144001.log).
            ```bash
            make -f advanced.mk log

            # Expect output:
            ...
            ---------------
            >  lsblk
            ---------------
            [Output]
            NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
            loop0    7:0    0 310.3M  1 loop /snap/code/164
            loop1    7:1    0     4K  1 loop /snap/bare/5
            ...
            ---------------
            >  lsmem
            ---------------
            [Output]
            RANGE                                  SIZE  STATE REMOVABLE BLOCK
            0x0000000000000000-0x00000000dfffffff  3.5G online       yes  0-27
            0x0000000100000000-0x00000002efffffff  7.8G online       yes 32-93

            Memory block size:       128M
            Total online memory:    11.3G
            Total offline memory:      0B

            ...
            ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/08/14