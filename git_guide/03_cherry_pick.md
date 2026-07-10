## 💪 Porting specific commits

### <u>Getting Started</u>
--- 
1. Switch to a specific commit and create a new branch.
    ```bash
    git checkout <commit hash>
    git checkout -b <branch_name>
    ```
2. Apply commits from oldest to newest.
    ```bash
    git cherry-pick <commit hash A> <commit hash B>    # Pick specific commits
    git cherry-pick <Start commit hash>^..<End commit hash>    # Pick a range of commits
    ```
3. Handle conflicts.
    ```bash
    git cherry-pick --continue    # Fix conflict, stage files and continue
    git cherry-pick --abort    # Cancel and revert to original state
    git cherry-pick --skip    # Skip current commit and proceed    
    ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/10