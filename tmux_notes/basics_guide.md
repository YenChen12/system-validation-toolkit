## 💪 Basic workflow for session, window and pane management

### <u>System Environment</u>
- **Client:** Windows 10
- **Server:** Ubuntu 22 LTS (Virtual Box)
- **Connection:** SSH via Windows Terminal
---
### <u>Getting Started</u>
1. Start and manage sessions
    - `tmux` # Start directly
    - `tmux new -s <session name>` # Start with a specific session name 
    - `Ctrl + b` + `$` # rename session
    - `Ctrl + b` + `d` # Detach
    - `tmux ls` # List all running sessions
    - `tmux attach -t <session name>` # Attach

2. Create and split
    - `Ctrl + b` + `c` # Create a window
    - `Ctrl + b` + `,` # Rename the current window
    - `Ctrl + b` + `%` # Split Vertical pane
    - `Ctrl + b` + `"` # Split horizontal pane
    - `Ctrl + b` + `!` # Break pane into a new window

3. Navigate
    - `Ctrl + b` + `n` # Swith next window
    - `Ctrl + b` + `p` # Swith previous window
    - `Ctrl + b` + `0-9` # Switch by number
    - `Ctrl + b` + `w` # Interactive menu to select windows
    - `Ctrl + b` + `arrow keys` # Swith pane

4. Search/Find
    - `Ctrl + b` + `f` # Search pane or window

5. kill/Close
    - `Ctrl + b` + `x` (Press y to confirm) # Kill pane
    - `Ctrl + b` + `&` (Press y to confirm) # Kill window
---  
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/13