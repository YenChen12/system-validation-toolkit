## 💪 Daily Workflow

### <u>Getting Started</u>
--- 
1. Repository Access  
    ```bash
    git clone git@github.com:USERID/repo.git    #SSH clone
    ```
2. Check Remote  
    ```bash
    git remote -v
    ```
3. Branch Management  
    ```bash
    git branch
    git checkout -b <branch_name>    # Create and switch
    git checkout <branch_name>    # Switch branch context
    ```
4. Remote sync
    1. fetch: Update the local reference of remote state
        ```bash
        git fetch <remote>
        # Manual Sync: review changes before merging
        git log origin/main..<local branch>
        git merge origin/main
        ```
    2. pull: Automatically **fetch** and **merge** remote changes into the local branch
        ```bash
        git pull <remote> <branch>
        ```   
    3. push: Upload the local commits to the remote repository
        ```bash
        git push <remote> <branch>
        ```
5. Commit Management
    1. Entire history
        ```bash
        git log    # Standard commit details
        git log --graph --oneline --all    # Commit graph (Best for tracking branches)
        ```
    2. Single commit details
        ```bash
        git show <commit hash>
        ```
    3. Local Staging and Commit
        ```bash
        # Create, stage and commit changes
        vim <file_name>
        git diff
        git add <file>    # Use `git add .` to stage all files
        git commit -m "commit message"
        ```
    4. Modify the recent commit by overwriting the previous node.
        ```bash
        git commit --amend    # Modify content/message and enter editor
        git commit --amend --no-edit    # Without changing the original message
        ```
6. History Control
    - Soft: Undo commit and keep changes staged (ready for new commit)
        ```bash
        git reset --soft HEAD~1
        ```
    - Hard: Undo commit and **destroy** all changes (use with caution!)
        ```bash
        git reset --hard HEAD~1
        ```
    - Mixed (Default): Undo commit and unstage changes, keep changes in working directory
        ```bash
        git reset HEAD~1
        ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/09