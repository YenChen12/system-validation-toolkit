## 💪 Applying patch files

### <u>Getting Started</u>
--- 
1. Create patches.
    ```bash
    git format-patch -1 <commit hash>    # Single patch
    git format-patch <Start commit hash>^..<End commit hash> # Range of commits (oldest to newest)
    ```
2. Apply patch files with 3 way merge conflict resolution.
    ```bash
    git am -3 *.patch
    ```
3. Archive patches after application.
    ```bash
    mkdir ~/_patches
    mv *.patch ~/_patches/
    ```
4. Apply patches from archive.
    ```bash
    git apply ~/_patches/<patch file>
    ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/10