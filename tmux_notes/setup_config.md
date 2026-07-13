## 💪 Enable mouse support to improve navigation efficiency

### <u>System Environment</u>
- **Client:** Windows 10
- **Server:** Ubuntu 22 LTS (Virtual Box)
- **Connection:** SSH via Windows Terminal
---
### <u>Getting Started</u>
1. Enable mouse to switch panes.
    ```bash
    vim ~/.tmux.conf
    set -g mouse on
    # save and quit
    tmux source-file ~/.tmux.conf
    ```
2. Verify tmux is active and confirm mouse stability.
    <div align="left">

    [Terminal Preview](./assets/tmux_default.jpg)

    </div>
    
    <video width="100%" controls>
      <source src="./assets/Tmux_Ubuntu22.04.mp4" type="video/mp4">
      Browser does not support this video.
    </video>
    ---  
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/13