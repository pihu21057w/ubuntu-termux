<p align="center">
<img src="./distro/image.jpg">
</p>
<p align="center">
<img src="https://img.shields.io/badge/Version-3.0-blue?style=for-the-badge">
</p>
<p align="center">
<img src="https://img.shields.io/badge/Written%20In-Bash-darkgreen?style=flat-square">
<img src="https://img.shields.io/badge/Open%20Source-Yes-darkviolet?style=flat-square">
<img src="https://img.shields.io/github/stars/modded-ubuntu/modded-ubuntu?style=flat-square">
<img src="https://img.shields.io/github/issues/modded-ubuntu/modded-ubuntu?color=red&style=flat-square">
<img src="https://img.shields.io/github/forks/modded-ubuntu/modded-ubuntu?color=teal&style=flat-square">
</p>
<p align="center"><b>Run Ubuntu 26.04 GUI on your termux with much features.</b></p>

### Features

- Ubuntu 26.04 LTS (Noble Numbat) based
- Fixed Audio Output
- Lightweight {Requires at least 4GB Storage}
- **Multiple Browser Options:**
  - Firefox (Default)
  - Chromium
- **Development Environments:**
  - Visual Studio Code (buggy on arm)
  - Sublime Text Editor (arm64/aarch64 only)
- **Office Suite:** LibreOffice (Optional)
- **Graphics Editor:** GIMP (Optional)
- **Development Tools:**
  - Python 3 with pip
  - Node.js with npm
  - Java JDK
  - Go (Golang)
  - Rust with Cargo
  - C/C++ (gcc, g++, make, cmake)
- **System Utilities:**
  - Multiple file managers (Nemo, PCManFM, Nautilus)
  - System monitoring tools (htop, btop, neofetch)
  - Docker CLI & Docker Compose
  - Thunderbird Email Client
- **Media Players:**
  - VLC Media Player
  - MPV Media Player
- **Fonts:**
  - Bangla Fonts Support
  - Noto Fonts
  - JetBrains Mono
  - Fira Code
  - Cascadia Code
  - And more...
- **Themes & Customization:**
  - Cool pre-installed themes
  - XFCE4 Desktop Environment
- **Easy Management:**
  - Built-in utilities menu for system management
  - Extra features installer
  - VNC resolution changer
  - System cleaner and updater
- Easy for Beginners

### Installation
- Firstly install [Termux](https://termux.com) apk from [HERE](https://f-droid.org/repo/com.termux_118.apk)
- Secondly Clone the Repository & Run the setup File

  - `yes | pkg up`
  - `pkg install git wget -y`
  - `git clone --depth=1 https://github.com/modded-ubuntu/modded-ubuntu.git`
  - `cd modded-ubuntu`
  - `bash setup.sh`

- Then Restart your Termux & Type the following commands

   - `ubuntu`
   - `bash user.sh`

- Type your ubuntu root username. Must be lowercase & no space included.

- Then Again Restart your Termux & Type the following commands

   - `ubuntu`
   - `sudo bash gui.sh`

- **During gui.sh, you will be prompted to set a VNC password!**
- **The password will be visible as you type it (6-8 characters required)**
- **Remember this password - you'll need it to connect via VNC Viewer**

- Ubuntu 26.04 image is now successfully installed .

  - Type `vncstart` to run Vncserver
  - Type `vncstop` to stop Vncserver

- Install VNC VIEWER Apk on your Device. [Google Play Store](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android&hl=en)

- Open VNC VIEWER & Click on + Button & Enter the Address `localhost:1` & Name anything you like
- Set the Picture Quality to High for better Quality
- Click on Connect & Input the Password 
- Enjoy :D

### NOTE :

- **Type `ubuntu` to run Ubuntu CLI.**
- **Type `vncstart` to run Vncserver**
- **Type `vncstop` to stop Vncserver**
- **Type `bash utilities.sh` to open system management menu**
- **Type `bash extras.sh` to install additional features**
- **Type `bash remove.sh` to remove Ubuntu Modded OS**

### Available Commands Inside Ubuntu:

- **`sudo bash gui.sh`** - Initial GUI setup (first time only)
- **`sudo bash extras.sh`** - Install additional software (LibreOffice, GIMP, etc.)
- **`sudo bash utilities.sh`** - System management utilities menu
- **`vncstart`** - Start VNC server
- **`vncstop`** - Stop VNC server
- **`vncpasswd`** - Change VNC password anytime
- **`bash vnc-password-reset.sh`** - Reset VNC password with guided interface
- **`htop`** - Monitor system resources (if installed)
- **`neofetch`** - Display system information (if installed)

### Video Tutorial : 

[![Watch the Tutorial](./distro/image1.jpg)](https://mega.nz/embed/QvIC1TLQ#3z27MRNPwANAg6JTtx1Ei8kDouOZsZgk00bg4TsJMNQ!1m)

#
### Documentation

- 📋 [Complete Features Guide](./FEATURES.md) - Detailed list of all available features
- 📝 [Changelog](./CHANGELOG.md) - Version history and updates
- 🔄 [Upgrade Notes](./UPGRADE_NOTES.md) - Information about upgrading to 26.04

#

Licensed under [Apache License](./LICENSE)

#

### Credits : 

```
This Tool Uses the Ubuntu 26.04 image provided by the termux package `proot-distro` 

Full Credit of the Ubuntu image goes to them .

Termux Proot Distro - https://github.com/termux/proot-distro
```

### Maintainers

- [**Mustakim Ahmed**](https://github.com/BDhackers009)
- [**Tahmid Rayat**](https://github.com/htr-tech)
- [**0xBaryonyx**](https://github.com/Mahfuz-THBD)

## Contributers

- [**Superchavo**](https://github.com/Superchavo)

### If you like our work then dont forget to give a Star :)
