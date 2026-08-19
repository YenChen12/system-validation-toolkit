## ✨ Practice through practical Linux tasks, including log processing, information extraction, error handling, and automation.

### <u>Module Overview</u>
shell_practice/  
├── [scripts/](./scripts/)    # Shell scripts  
├── [logs/](./logs/)       # Input log files   
└── [results/](./results/)    # Script output results  

---
### System Environment
- Operating System: Windows 10  
- Terminal: Windows Terminal  

---
### Practice 1 - Split system log
Continue the previous [`make_practice`](../make_practice/) and split the generated system log into individual command logs.
The script uses `sed` to remove log noise and `awk` to split the log
based on command sections.
- Test script: [split_log.sh](scripts/split_log.sh)
- Input log: [system_log.log](logs/system_log.log)
- Output results: [system_log_20260819_154059](results/system_log_20260819_154059/)
    ```text
    results/system_log_20260819_154059/
    ├── 01_lspci.log
    ├── 02_lsblk.log
    ├── 03_lsmem.log
    ├── 04_lscpu.log
    ├── 05_ip_addr.log
    └── 06_ip_route.log
    ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/08/19