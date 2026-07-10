## 💪 Undo bad commits while preserving project history

### <u>Getting Started</u>
--- 
1. Create a fix branch and revert the suspect commit:
    ```bash
    git checkout -b <fix branch>
    git revert <suspect commit>
    ```
    -  Revert multiple commits from newest to oldest to avoid conflicts.
        ```bash
        git revert <New suspect commit> <Old suspect commit>
        ```
2. After verifying the fix, merge the changes back into the main branch.
    ```bash
    git checkout main
    git merge <fix-branch>
    ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/10