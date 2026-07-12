## 💪 Record GPG verification errors during system updates

### <u>System Environment</u>
- **Client:** Windows 10
- **Server:** Ubuntu 22 LTS (Virtual Box)
- **Connection:** SSH via Windows Terminal
---
### <u>Getting Started</u>
1. Encounter **NO_PUBKEY error** when running update command.
    ```bash
    yen@yen-Ubuntu22:~$ sudo apt-get update
    Hit:1 http://tw.archive.ubuntu.com/ubuntu jammy InRelease
    Hit:2 http://tw.archive.ubuntu.com/ubuntu jammy-updates InRelease
    Hit:3 http://tw.archive.ubuntu.com/ubuntu jammy-backports InRelease
    Get:4 https://dl.google.com/linux/chrome/deb stable InRelease [1825 B]
    Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
    Err:4 https://dl.google.com/linux/chrome/deb stable InRelease
    The following signatures couldn't be verified because the public key is not available: NO_PUBKEY XXXXXXXXXXXXXXX
    Reading package lists... Done
    W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: https://dl.google.com/linux/chrome/deb stable InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY XXXXXXXXXXXXXXX
    W: Failed to fetch https://dl.google.com/linux/chrome/deb/dists/stable/InRelease  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY XXXXXXXXXXXXXXX
    W: Some index files failed to download. They have been ignored, or old ones used instead.
    ```
2. Resolve by importing the missing key (use the key ID shown in the terminal error):
    ```bash
    yen@yen-Ubuntu22:~$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys XXXXXXXXXXXXXXX
    Warning: apt-key is deprecated. Manage keyring files in trusted.gpg.d instead (see apt-key(8)).
    Executing: /tmp/apt-key-gpghome.SYV6ioKfxC/gpg.1.sh --keyserver keyserver.ubuntu.com --recv-keys XXXXXXXXXXXXXXX
    gpg: key OOOOOOOOOOOO: 2 duplicate signatures removed
    gpg: key OOOOOOOOOOOO: "Google Inc. (Linux Packages Signing Authority) <linux-packages-keymaster@google.com>" 3 new signatures
    gpg: key OOOOOOOOOOOO: "Google Inc. (Linux Packages Signing Authority) <linux-packages-keymaster@google.com>" 2 new subkeys
    gpg: Total number processed: 1
    gpg:            new subkeys: 2
    gpg:         new signatures: 3
    ```
3. Run update command again to confirm the error is resolved.
    ```bash
    yen@yen-Ubuntu22:~$ sudo apt-get update
    Hit:1 http://tw.archive.ubuntu.com/ubuntu jammy InRelease
    Hit:2 http://tw.archive.ubuntu.com/ubuntu jammy-updates InRelease
    Hit:3 http://tw.archive.ubuntu.com/ubuntu jammy-backports InRelease
    Get:4 https://dl.google.com/linux/chrome/deb stable InRelease [1825 B]
    Hit:5 http://security.ubuntu.com/ubuntu jammy-security InRelease
    Get:6 https://dl.google.com/linux/chrome/deb stable/main amd64 Packages [1216 B]
    Fetched 1216 B in 1s (962 B/s)
    Reading package lists... Done
    ```
---  
**Author:** @[YenChen12](https://github.com/YenChen12)  
**Created:** 2026/07/13