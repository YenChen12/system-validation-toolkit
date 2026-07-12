## 💪 Set Vim as the default system editor (replacing nano)

### <u>Getting Started</u>
1. Configure system-wide default:
    ```bash
    sudo update-alternatives --config editor
    ```
    - Example Output:
    ```bash
    # Expected output and select the number 3
    There are 4 choices for the alternative editor (providing /usr/bin/editor).

    Selection    Path                Priority   Status

    ------------------------------------------------------------

    * 0            /bin/nano            40        auto mode

    1            /bin/ed             -100       manual mode

    2            /bin/nano            40        manual mode

    3            /usr/bin/vim.basic   30        manual mode

    4            /usr/bin/vim.tiny    15        manual mode



    Press <enter> to keep the current choice[*], or type selection number: 3

    update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/editor (editor) in manual mode
    ```
2. Ensure CLI tool compatibility:
    ```bash
    vim ~/.bashrc
    export EDITOR=vim    # Append this to the end of your file
    source ~/.bashrc
    ```
3. Verifying the default editor configuration
    ```bash
    echo $EDITOR    # Expected output: vim
    ```
    ```bash
    sudo visudo -c
    # Expected output:
    /etc/sudoers: parsed OK
    /etc/sudoers.d/README: parsed OK
    ```
4. Customizing Vim for better readability (enabling line numbers)
    ```bash
    vim ~/.vimrc
    set number    # Save and quit to apply changes
    ```
---  
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/12