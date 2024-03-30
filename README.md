## What's this?
This project is essentially a minimal Unity display. It’s designed to assist you in reproducing issues within the Unity Player using minimal code. The best part is that it runs with no Game Platform or System Platform. It can run on regular Ubuntu. (tested on Ubuntu 22.04.4 LTS.)

## How to Start
1. Build linux binary
    ```Builds/Linux/TouchTest.x86_64```
1. With KPU Game OS
    1. Run Upload.bat
    1. Start Windows Terminal
    1. Run the following commands:
    ```
    /mnt/Modules//TouchTest/TouchTest.x86_64 -screen-fullscreen 1 -monitor 1
    ```

1. With Ubuntu
    1. Copy over the binary files to the Ubuntu on EGM.
    1. Run `display-config.sh` script to layout displays and touch screens (edit the script as needed.)
    1. Run the `TouchTest.x86_64`.
