# Ethminer Autostart on Windows and Linux

This repository provides a comprehensive guide and scripts to set up `ethminer` with autostart on both Windows and Linux systems. The guide includes configurations for both AMD and Nvidia GPUs, covering topics such as undervolting, overclocking, and automating the startup process. 

**Disclaimer**: We take no responsibility for any damage to your system. Use these scripts and configurations at your own risk.

## Table of Contents

1. [Overview](#overview)
2. [Requirements](#requirements)
3. [Installation and Setup](#installation-and-setup)
   - [Windows](#windows)
   - [Linux](#linux)
4. [Configuration](#configuration)
   - [GPU Settings](#gpu-settings)
   - [Autostart and Automation](#autostart-and-automation)
5. [Contributing](#contributing)
6. [License](#license)

## Overview

This repository provides detailed instructions and scripts for configuring `ethminer` to automatically start mining upon system boot. The setup includes scripts for Windows batch files and Linux bash scripts, targeting both Nvidia and AMD GPUs. 

The goal is to ensure that `ethminer` restarts if it crashes and that the GPU settings (e.g., overclocking and undervolting) are properly applied to maximize performance and efficiency.

## Requirements

Before you begin, make sure you have:

- A compatible Nvidia or AMD GPU
- `ethminer` (latest version can be found [here](https://github.com/ethereum-mining/ethminer/releases))
- (Windows) [MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards) for overclocking and undervolting
- (Linux) `nvidia-smi` and [GreenWithEnvy (GWE)](https://gitlab.com/leinardi/gwe) for Nvidia GPUs

## Installation and Setup

### Windows

1. **Download Ethminer**: 
   - Go to the [ethminer releases page](https://github.com/ethereum-mining/ethminer/releases) and download the latest version.
   - Extract `ethminer.exe` and the `kernels` folder into a directory, e.g., `C:\Ethminer`.

2. **Configure MSI Afterburner**:
   - Download and install [MSI Afterburner](https://www.msi.com/Landing/afterburner/graphics-cards).
   - Set up a profile with your desired GPU settings and save it.

3. **Create a Windows Task**:
   - Open Task Scheduler and create a new task with the following settings:
     - **Run with highest privileges**.
     - Set up an action to start MSI Afterburner with the desired profile using arguments like `-Profile1 -m`.

4. **Configure the Batch Script**:
   - Modify `mining.bat` to include paths and other customizations as needed.
   - Copy the batch file to the Windows startup folder to ensure it runs on login.

### Linux

1. **Download and Install Ethminer**:
   - Download the latest version of `ethminer` from the [releases page](https://github.com/ethereum-mining/ethminer/releases).
   - Extract it to a directory, e.g., `/opt/ethminer`.

2. **Install Nvidia-smi and GreenWithEnvy**:
   - Install `nvidia-smi` using your package manager.
   - Install GreenWithEnvy (GWE) for more control over GPU settings.

3. **Create a Bash Script**:
   - Use the provided template in `linux/nvidia/mining.sh` to create a bash script that sets GPU power limits, overclocking settings, and starts `ethminer`.
   - Ensure the script is executable: `sudo chmod +x mining.sh`.

4. **Autostart the Script**:
   - Configure the script to autostart using options like systemd or your window manager's startup applications.

## Configuration

### GPU Settings

- Adjust GPU settings using tools like MSI Afterburner on Windows or GWE on Linux.
- Suggested starting points:
  - **RTX 2070 Super**: Base clock -150, Memory Clock +1000. Achieves ~42MH/s at around 107.5 W power consumption.

### Autostart and Automation

For both Windows and Linux, ensure that the script or batch file is set to run at system boot. This can be done using Task Scheduler on Windows or systemd/autostart scripts on Linux.

## Contributing

We welcome contributions! If you'd like to improve this repository, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
