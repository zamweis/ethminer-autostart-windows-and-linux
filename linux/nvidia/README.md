## Linux Nvidia

We are going to create a bash script which automatically enables mining settings for your gpu (undervolting and overclocking) and ensures that ethminer restarts if it crashes. A template for this script can be found in this directory. Note that we take no responsibility if you damage your system. Proceed at your own risk.

### Ethminer

First go to the ethminer github and download the latest [release](https://github.com/ethereum-mining/ethminer/releases).
Create a new directory and extract ethminer into it. We used **/opt/ethminer**.

    sudo mkdir /opt/ethminer
    sudo tar -xvf ethminer-0.18.0-cuda-9-linux-x86_64.tar.gz -C /opt/ethminer

### Nvidia-smi

[Nvidia-smi](https://developer.nvidia.com/nvidia-system-management-interface) is used to set the maximum power consumption of your gpu for power saving. Apperently it can also be used to overlock your gpu's memory ect, but unforutnately I wasn't able to get [this](https://wiki.archlinux.org/index.php/NVIDIA/Tips_and_tricks#Overclocking_and_cooling) working.
For that reason I use another tool called [GreenWithEnvy](https://gitlab.com/leinardi/gwe).

The command to regulate your power consumption is:

    sudo nvidia-smi -pl value

Where **value** is the **Thermal design power (TDP)** of your gpu. In this example we use a RXT 2070 super with a TDP of 175 W. We will set it to 107.5 W because it is the lowest possible value for this gpu.

### GreenWithEnvy

This tool is used to modify your gpu's baseclock and memory clock.
Install the program with you package manager.
You need to open the program and define a new profile for your gpu (base clock and memory clock). [Here](https://2miners.com/blog/how-to-overclock-nvidia-and-amd-graphics-cards-on-different-algorithms/) is a list of gpu settings.

If your miner is **instable**, reduce the amout you overclock your gpu.

Once you are done and the profile is activated, gwe should now automatically start with that profile.

### The script

Simply modify the script the way you want it (aka names, paths, ect). A template can be found in this folder. Make sure your script is executable, else it won't work.

    sudo chmod +x yourscript

Unfortunately you still need to enter your password when you execute the script because nvidia-smi need admin privileges. A workaround is to modify your `/etc/sudoers.d`. [This](https://wiki.archlinux.org/index.php/sudo#Configure_sudo_using_drop-in_files_in_/etc/sudoers.d) lets you start nvidia-smi without need of your password. 

## Autostart the script

You have a few [options](https://wiki.archlinux.org/index.php/autostarting) here:

- create a [system deamon](https://wiki.archlinux.org/index.php/systemd#Examples) which will execute your script at boot
- if you are using a window manager like i3 your can simply add it to your start applications in `~/.config/i3/config` like so:
        
        exec --no-startup-id gwe --hide-window
        exec --no-startup-id exec urxvt -e /opt/ethminer/mining.sh
     
     Here we used urxvt as terminal. This way you can choose your terminal.
- ...

And this should be it. Happy mining.
