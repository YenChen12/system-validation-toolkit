## ✨ Adding public key to the server for passwordless future logins.  

### <u>System Environment</u>
- **Client:** Windows 10
- **Server:** Ubuntu 20.04 LTS
- **Connection:** SSH via Windows Terminal
---
### <u>Getting Started</u>
1. Enter the SSH directory and generate a new SSH key pair:
    ```bash
    cd ~/.ssh/
    ssh-keygen
    # Next step: Press enter for all questions
    ```
2. Automatically generate both public and private keys.
    ```bash
    yenchen12@DESKTOP-0210V8M: ~/.ssh $ ls
    id_rsa  id_rsa.pub
    ```
3. Connect to the server and manually enter the password.
    ```bash
    # Output modified to hide sensitive credentials
    yenchen12@DESKTOP-0210V8M: ~/.ssh $ ssh yen@192.168.XXX.XXX
    The authenticity of host '192.168.XXX.XXX (192.168.XXX.XXX)' can't be established.
    ED25620 key fingerprint is SHA256:!@#$%^&*IO@#$%^&*()_+CVBGHJMK<L>:?”GHJMK<L.
    This key is not known by any other names.
    Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
    Warning: Permanently added '192.168.XXX.XXX' (ED25620) to the list of known hosts.
    yen@192.168.XXX.XXX's password:
    Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-139-generic x86_64)

    * Documentation:  https://help.ubuntu.com
    * Management:     https://landscape.canonical.com
    * Support:        https://ubuntu.com/pro

    Expanded Security Maintenance for Infrastructure is not enabled.

    0 updates can be applied immediately.

    268 additional security updates can be applied with ESM Infra.
    Learn more about enabling ESM Infra service for Ubuntu 20.04 at
    https://ubuntu.com/20-04

    New release '22.04.5 LTS' available.
    Run 'do-release-upgrade' to upgrade to it.

    Your Hardware Enablement Stack (HWE) is supported until April 2025.
    Last login: Tue Jul  7 15:35:25 2026 from 192.168.XXX.XXX
    Guest@yenling-env: ~ $ 
    ```
4. Create authorizeds keys and add it to the server.
    ```bash
    cd ~/.ssh
    echo "Your id_rsa.pub content" >> authorized_keys
    ```
5. Verify the manually created `authorized_keys`.
    ```bash
    Guest@yenling-env:~/.ssh$ ls
    authorized_keys
    ```
6. Log in to the server again to verify that no password is required for future logins.
    ```bash
    yenchen12@DESKTOP-0210V8M: ~/.ssh $ ssh yen@192.168.XXX.XXX
    Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.15.0-139-generic x86_64)

    * Documentation:  https://help.ubuntu.com
    * Management:     https://landscape.canonical.com
    * Support:        https://ubuntu.com/pro

    Expanded Security Maintenance for Infrastructure is not enabled.

    0 updates can be applied immediately.

    268 additional security updates can be applied with ESM Infra.
    Learn more about enabling ESM Infra service for Ubuntu 20.04 at
    https://ubuntu.com/20-04

    New release '22.04.5 LTS' available.
    Run 'do-release-upgrade' to upgrade to it.

    Your Hardware Enablement Stack (HWE) is supported until April 2025.
    Last login: Tue Jul  7 18:26:17 2026 from 192.168.XXX.XXX
    Guest@yenling-env:~$
    ```
7. Configure SSH directory and file permissions
    - Client side:
        ```bash
        chmod 700 ~/.ssh
        chmod 600 ~/.ssh/id_rsa
        chmod 644 ~/.ssh/known_hosts
        ```
    - Server side:
        ```bash
        chmod 700 ~/.ssh
        chmod 600 ~/.ssh/authorized_keys
        ```
---
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/07