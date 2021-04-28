# Ethminer autostart windows and linux

This is a small tutorial on how to setup ethminer on windows or linux with a single nvidia gpu, undervolting and overclocking.

## Windows

### Ethminer

First go to the ethminer github and download the latest [release](https://github.com/ethereum-mining/ethminer/releases).
Extract `ethminer.exe` and the `kernels` folder into `C:\Ethminer`.

### MSI Afterburner

Download and install [MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards).
Then you have to lookup the right overlock and undervolt settings for your gpu and save those settings in a profile within MSI Afterburner.
You have to remember in which profile slot you configured your card for later. Here we use profile1.

### Windows task

Copy `init-miningconfig` to `C:\Ethminer`.
This is a shortcut to a task which we have to create in windows. This is needed to run MSI Afterburner with privileges within the batchfile without beeing asked if you really want to execute MSI Afterburner.

Open the windows programm [Task Scheduler].
Create a new folder to save your task in. Here we use the name "Mining".
[Task Scheduler](windows/.src/tasksch).

- [ ] Add description on how to add task.

## Linux


