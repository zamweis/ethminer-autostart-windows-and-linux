# Ethminer autostart windows and linux

This is a small tutorial on how to setup ethminer on windows or linux with a single nvidia gpu, undervolting and overclocking.

## Windows

### Ethminer

First go to the ethminer github and download the latest [release](https://github.com/ethereum-mining/ethminer/releases).
Extract `ethminer.exe` and the `kernels` folder into `C:\Ethminer`.

### MSI Afterburner

Download and install [MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards).
Then you have to lookup the right overlock and undervolt settings for your gpu and save those settings in a profile within MSI Afterburner.
You have to remember in which profile slot you configured your card for later. Here we used **profile1**. Note that when you want to use your gpu (for gaming, ect), you might need to stop ethminer and reset your gpu settings.

### Windows task

We have do create a new task in windows so that we can execute MSI Afterburner with privileges. Else windows would always ask if you really want to open MSI Afterburner. This is very handy for the autostart of the batchfile.

Open the windows programm **Task Scheduler**.
Create a new folder to save your task in. Here we used the name `Mining`.

![Task Scheduler](./windows/.src/tasksch.jpeg).

Next create a new task (not basic task). Name it whatever you want. Here we used the name `MSIAfterburner`. Make sure to check the checkbox labeled **Run with highest privileges** like shown.

![Create task](./windows/.src/createtask.jpeg).

Now go to the **Actions** tab and create a new action **Start a program**.
Browse to where MSI Afterburner is installed and add it. Usually at `C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe`.
As argument, use the profile you used to save your config. As we used *Profile1*, our argument looks like this: `-Profile1 -m`.

![Create action](./windows/.src/action.jpeg).

Now we can add the task to the batchfile. This is the command needed `C:\Windows\System32\schtasks.exe /RUN /TN YourFolderName\YourTaskName`. It is located in the second line of the batchfile. Note that you might need to modify your foldername and taskname. Here we used `Mining` and `MSIAfterburner`.

## Autostart mining at login

You might want to autologin into your system so that you only need to turn on your computer. Here is a [link](https://docs.microsoft.com/en-us/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon) how it can be done.

To autostart the batchfile at login, you need to copy the batchfile to your windows startup folder. Simply press `windows+r` and enter `shell:startup` and hit enter. Copy the batchfile into the folder. You might also want to have a copy on your Desktop in case you need to restart the batchfile. 

And you're done...happy mining.

## Linux


