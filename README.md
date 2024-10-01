# Ethminer Autostart on Windows and Linux

This repository contains a comprehensive guide and scripts to set up `ethminer` with autostart functionality on both Windows and Linux systems. It includes instructions for configuring Nvidia and AMD GPUs, with separate scripts and configurations to enable smooth mining operations. 

The repository is organized into subfolders and provides setup instructions specific to the platform (Windows/Linux) and GPU (Nvidia/AMD). Follow the sections below to navigate to the appropriate setup guide based on your configuration.

> **Disclaimer**: Use these scripts and configurations at your own risk. We take no responsibility for any damage to your hardware or software.

## Repository Structure

The repository is organized as follows:

- **`/windows/`**: Contains scripts and instructions for setting up `ethminer` on Windows.
  - `README.md`: Detailed guide for Windows setup.
  - `mining.bat`: Batch file to configure and start mining on Windows.
  - `.src/`: Contains images and resources for the Windows setup guide.
  
- **`/linux/`**: Contains scripts and instructions for setting up `ethminer` on Linux.
  - `README.md`: Overview of Linux-specific configurations.
  - **`/linux/amd/`**: Contains instructions specific to AMD GPUs on Linux.
    - `README.md`: Guide for setting up `ethminer` on Linux with AMD GPUs.
  - **`/linux/nvidia/`**: Contains instructions specific to Nvidia GPUs on Linux.
    - `README.md`: Guide for setting up `ethminer` on Linux with Nvidia GPUs.
    - `mining.sh`: Bash script to start mining with Nvidia GPUs on Linux.

## Quick Navigation

Choose your configuration below to access the relevant instructions:

- **Windows Setup**
  - [Windows - Nvidia GPU](./windows/README.md)
  - [Windows - AMD GPU](./windows/README.md) (Note: Same guide for AMD/Nvidia on Windows)
  
- **Linux Setup**
  - [Linux - Nvidia GPU](./linux/nvidia/README.md)
  - [Linux - AMD GPU](./linux/amd/README.md)

## Windows Setup

The Windows setup guide provides instructions on configuring `ethminer` to start automatically with the operating system. It includes a batch file (`mining.bat`) that sets up MSI Afterburner profiles and restarts `ethminer` if it crashes. Follow the steps below to set up:

1. **Download and extract `ethminer`** from the [releases page](https://github.com/ethereum-mining/ethminer/releases).
2. **Install MSI Afterburner** to configure GPU settings (overclocking, undervolting).
3. Configure the **batch script** to set up and start `ethminer` with the correct profile.
4. Use **Windows Task Scheduler** to run the script with the required privileges.

Refer to the [Windows Setup Guide](./windows/README.md) for detailed steps and images.

## Linux Setup

The Linux setup guide provides separate instructions for Nvidia and AMD GPUs. The `mining.sh` script includes options for configuring GPU power settings and starting `ethminer` automatically on boot.

### Linux Nvidia

Follow the [Linux Nvidia Guide](./linux/nvidia/README.md) for steps to:

1. Download and extract `ethminer`.
2. Use `nvidia-smi` to set power limits.
3. Configure GPU settings using [GreenWithEnvy (GWE)](https://gitlab.com/leinardi/gwe).
4. Create a bash script (`mining.sh`) to automatically start and monitor `ethminer`.

### Linux AMD

Follow the [Linux AMD Guide](./linux/amd/README.md) for steps to:

1. Download and extract `ethminer`.
2. Configure AMD GPU settings using the command line or tools like `amdgpu-pro`.
3. Set up a bash script to handle overclocking and start `ethminer`.

## Autostart Configuration

### Windows

To set up autostart on Windows, configure the batch script (`mining.bat`) to run on login. This can be done using the startup folder (`shell:startup`) or Task Scheduler.

### Linux

For Linux, you can set up autostart using systemd or your window manager's autostart configurations. 

- Use `systemd` to create a service that starts `mining.sh` on boot.
- If you are using a window manager like i3, add the script to your startup applications.

## Contributing

Contributions are welcome! If you have suggestions or want to improve the documentation, feel free to open an issue or create a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
