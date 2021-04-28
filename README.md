# Ethminer autostart windows and linux

This is a small tutorial on how to setup ethminer on windows or linux with a single nvidia gpu, undervolting and overclocking.

## Windows

### Ethminer

First go to the ethminer github and download the latest [release](https://github.com/ethereum-mining/ethminer/releases).
Extract `ethminer.exe` and the `kernels` folder into `C:\Ethminer`.

### MSI Afterburner

Download and install [MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards).
Then you have to lookup the right overlock and undervolt settings for your card and create a profile with it in MSI Afterburner.
You have to remember in which profile slot you configured your card for later.

### Windows tasks

Also copy `MSIAfterburnerResetDefault` and `MSIAfterburnerSetForMining` to `C:\Ethminer`.
These are shortcuts to a task which we have to create in windows. This is needed to run MSI Afterburner in a batch script.

- [ ] Add description on how to add task.

## Linux


