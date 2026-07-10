## 💪 Apply binary search to manually pinpoint the bug commit

### <u>Getting Started</u>
--- 
1. Identify the last known good commit and the current bad state.
2. List all commits from oldest to newest within the range to establish the scope of the search.
    ```bash
    git log --oneline <Start commit hash>..<End commit hash> --date=local --format="%h,%cd,%an,%s"
    ```
    - Expect output:
    ```bash
    yenchen12@DESKTOP-0210V8M: ~/github/system-validation-toolkit/bashrc_custom $ git log --oneline be69691..9fa449b --date=local --format="%h,%cd,%an,%s"
    9fa449b,Wed Jul 8 21:21:15 2026,Yen Ling,Initialize root README.md with overview (#6)
    5693034,Wed Jul 8 14:47:21 2026,Yen Ling,[vscode_setup] Add VSCode Remote SSH connection guide (#5)
    a308059,Tue Jul 7 20:37:18 2026,Yen Ling,[ssh_passwordless] Adding public key to the server for passwordless future logins (#3)
    a824c84,Tue Jul 7 16:05:22 2026,Yen Ling,[bashrc_custom] Update and complete the scripts and readme (#2)
    1072d88,Mon Jul 6 17:19:35 2026,Yen Ling,[bashrc_custom] Add initial scripts (#1)
    be69691,Mon Jul 6 16:49:27 2026,Yen Ling,Initial commit
    ```
3. Analyze and review the changes and prioritize the commits most likely to have caused the bug.
4. Test each targeted and suspect commit accordingly.
5. Record the test results in the sheet.
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/10