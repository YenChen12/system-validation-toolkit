## 💪 Rewrite the history on top of the latest changes

### <u>Getting Started</u>
--- 
1. Get the latest status of remote.
    ```bash
    git fetch origin
    ```
2. Compare remote and local changes.
    ```bash
    git log origin/main..<local branch>    # Review commits to be merged
    git diff origin/main..<local branch>    # Inspect code changes for conflicts
    ```
3. If no conflicts, proceed to rebase.
    ```bash
    git rebase origin/main
    git status    # Verify the result
    ```
4. If conflicts occur, tried to conflict resolution.
    ```bash
    # Identify conflict lines
    git diff
    # Manually remove conflict markers and save file
    # Mark as resolved
    git add .
    # Resume the rebase process
    git rebase --continue

    # Cancel the rebase   
    git rebase --abort
    ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/10