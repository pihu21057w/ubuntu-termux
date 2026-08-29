# Ubuntu 26.04 Modded - Complete Features Guide

## 📋 Table of Contents
- [Core Features](#core-features)
- [Extra Features](#extra-features)
- [System Utilities](#system-utilities)
- [How to Use](#how-to-use)
- [Feature Details](#feature-details)

---

## 🎯 Core Features

These features are installed by default during the initial setup:

### Desktop Environment
- **XFCE4 Desktop** - Lightweight and customizable desktop environment
- **XFCE4 Goodies** - Additional XFCE applications and plugins
- **Thunar File Manager** - Default XFCE file manager
- **XFCE Terminal** - Feature-rich terminal emulator

### Display & Remote Access
- **TigerVNC Server** - High-performance VNC server
- **VNC Tools** - Complete VNC toolkit
- Custom VNC scripts (`vncstart` and `vncstop`)

### System Tools
- **Sudo** - Administrative privileges
- **Git** - Version control system
- **Nano** - Text editor
- **Curl & Wget** - Download utilities
- **Dialog** - Create user-friendly dialogs
- **Network Tools** - inetutils-tools for network management

### Theming & Fonts
- Custom pre-configured themes
- Breeze Hacked cursor theme
- Kora Icon Theme
- Bengali/Bangla fonts support
- Beautiful wallpapers collection

---

## 🚀 Extra Features

Install these optional features using the **extras.sh** menu:

### 📦 Office Suite
**LibreOffice**
- Writer (Word processor)
- Calc (Spreadsheet)
- Impress (Presentations)
- Draw (Vector graphics)
- GTK3 integration
- Breeze style

### 🎨 Graphics & Design
**GIMP Image Editor**
- Professional photo editing
- Advanced image manipulation
- Extensive plugin support
- GIMP data extras included

### 🌐 Web Browsers
**Firefox**
- Latest Firefox version
- Optimized for proot environment
- Custom sandbox configuration

**Chromium**
- Open-source browser
- Google Chrome alternative
- Fast and efficient

### 💻 Development Tools

**IDEs & Editors:**
- **Visual Studio Code** - Full-featured IDE (buggy on ARM)
- **Sublime Text** - Fast text editor (ARM64 only)

**Programming Languages & Tools:**
- **Python 3** - Latest Python with pip and venv
- **Node.js** - JavaScript runtime with npm
- **Java JDK** - Java Development Kit
- **Go** - Golang compiler
- **Rust** - Rust compiler with Cargo
- **C/C++** - GCC, G++, Make, CMake, GDB
- **Build Tools** - Essential compilation tools

### 📧 Communication
**Thunderbird Email Client**
- Full-featured email client
- Calendar integration
- Contact management
- RSS feed reader

### 🐳 Containerization
**Docker CLI & Docker Compose**
- Docker command-line interface
- Docker Compose for multi-container apps
- Docker Buildx for multi-platform builds
- Note: Daemon cannot run in proot (CLI only for remote Docker)

### 🎬 Media Players
**VLC Media Player**
- Plays virtually all media formats
- Network streaming support
- Advanced controls

**MPV Media Player**
- Lightweight video player
- Minimal interface
- High performance

### 📁 File Managers
**Additional Options:**
- **Nemo** - Cinnamon desktop file manager
- **PCManFM** - Extremely lightweight
- **Nautilus** - GNOME Files manager
- **Thunar** - Already included (XFCE default)

### 📊 System Monitoring Tools
- **htop** - Interactive process viewer
- **btop** - Beautiful resource monitor
- **neofetch** - System information with ASCII art
- **screenfetch** - System info alternative
- **net-tools** - Network configuration tools
- **iotop** - I/O monitoring
- **iftop** - Network bandwidth monitoring
- **ncdu** - Disk usage analyzer with ncurses interface

### 🔤 Extended Fonts
- **Noto Fonts** - Google's font family
- **Noto Color Emoji** - Emoji support
- **Liberation Fonts** - Microsoft font alternatives
- **DejaVu Fonts** - Popular open-source fonts
- **Roboto** - Android system font
- **Ubuntu Fonts** - Ubuntu's signature fonts
- **Fira Code** - Programming font with ligatures
- **Cascadia Code** - Microsoft's coding font
- **JetBrains Mono** - JetBrains IDE font

---

## 🛠️ System Utilities

Access via `sudo bash utilities.sh`:

### 📊 System Information
- Display comprehensive system information
- Shows OS version, kernel, architecture
- Memory and disk usage statistics
- Integration with neofetch if installed

### 🔄 System Updater
- Update package lists
- Upgrade installed packages
- Full system upgrade
- Automatic cleanup after update

### 🧹 System Cleaner
- Remove unused packages
- Clean package cache
- Delete old log files
- Free up disk space
- Show disk usage statistics

### 💾 Settings Backup
- Backup XFCE4 settings
- Backup VNC configuration
- Backup shell configurations (.bashrc, .bash_profile)
- Timestamped backup directories

### 🖥️ VNC Configuration
**Resolution Presets:**
- 1920x1080 (Full HD)
- 1600x900
- 1366x768 (Laptop standard)
- 1280x720 (HD)
- 1080x1080 (Square - Recommended for mobile)
- 1080x700 (Compact)
- 800x600 (Low resolution)
- Custom resolution option

### ℹ️ VNC Quick Help
- Quick start/stop commands
- Connection information
- Recommended settings
- Troubleshooting tips

---

## 📖 How to Use

### Initial Setup
```bash
# After installing Ubuntu
ubuntu
bash user.sh
# Restart Termux, then:
ubuntu
sudo bash gui.sh
```

### Installing Extra Features
```bash
# Open extras menu
sudo bash extras.sh

# Or install specific features directly:
sudo bash /home/username/softwares/libreoffice.sh
sudo bash /home/username/softwares/gimp.sh
sudo bash /home/username/softwares/development-tools.sh
```

### Using System Utilities
```bash
# Open utilities menu
sudo bash utilities.sh
```

### VNC Management
```bash
# Start VNC server
vncstart

# Stop VNC server
vncstop
```

### System Monitoring
```bash
# If monitoring tools are installed:
htop           # Process viewer
btop           # Resource monitor
neofetch       # System info
ncdu /         # Disk usage
```

---

## 🔍 Feature Details

### LibreOffice Suite
**Storage:** ~300-500 MB  
**Best For:** Document editing, presentations, spreadsheets  
**Components:**
- Writer - Word processing
- Calc - Spreadsheets
- Impress - Presentations
- Draw - Vector graphics
- Math - Formula editor
- Base - Database management

### GIMP
**Storage:** ~150-200 MB  
**Best For:** Photo editing, graphic design  
**Features:**
- Layer-based editing
- Extensive brush collection
- Photo retouching tools
- Advanced filters and effects

### Development Tools Package
**Storage:** ~1-2 GB  
**Includes:**
- Complete C/C++ development environment
- Python 3 with pip and virtualenv
- Node.js 18+ with npm
- OpenJDK (Java Development Kit)
- Go compiler and tools
- Rust compiler with Cargo package manager
- Git version control
- Make, CMake, and other build tools

### Docker CLI
**Storage:** ~100 MB  
**Note:** Docker daemon cannot run in proot environment  
**Use Cases:**
- Connect to remote Docker hosts
- Manage containers on remote servers
- Build images for deployment
- Use with Docker Desktop on host system

### System Monitoring Tools
**Storage:** ~50-100 MB  
**Tools:**
- `htop` - Enhanced top with colors and mouse support
- `btop` - Modern resource monitor with graphs
- `neofetch` - Display system info with distribution logo
- `ncdu` - Analyze disk usage interactively
- `iftop` - Monitor network bandwidth by connection
- `iotop` - Monitor I/O usage by process

### Extended Fonts
**Storage:** ~200-300 MB  
**Benefits:**
- Better text rendering
- Programming font ligatures
- Emoji support
- Multi-language support
- Professional typography

---

## 💡 Tips & Recommendations

### For Mobile Devices
- Use 1080x1080 or 1080x700 VNC resolution
- Install only needed features to save storage
- Use htop instead of btop for better performance
- Close unused apps to free up memory

### For Tablets
- 1920x1080 resolution works well
- Can install more features due to better specs
- Use full IDE features (VS Code, etc.)

### Storage Management
- Run system cleaner regularly
- Uninstall unused applications
- Use ncdu to find large files
- Clean package cache with `apt clean`

### Performance Optimization
- Don't install all extras at once
- Close VNC when not in use
- Use lightweight alternatives (PCManFM vs Nautilus)
- Limit browser tabs

### Development Setup
- Install only needed programming languages
- Use virtual environments for Python
- Consider Docker CLI for container management
- Use Git for version control

---

## 🆘 Support & Troubleshooting

### Common Issues

**VNC Display Issues:**
- Try different resolutions (1080x700 recommended)
- Use Hacker's Keyboard app
- Set VNC viewer picture quality to High

**Storage Issues:**
- Run utilities.sh → Clean System
- Remove unused packages: `apt autoremove`
- Clear cache: `apt clean`

**Performance Issues:**
- Close unused applications
- Stop VNC when not needed
- Check running processes with htop
- Clear system cache

### Getting Help
1. Check the [CHANGELOG.md](./CHANGELOG.md) for known issues
2. Refer to [README.md](./README.md) for installation help
3. Review [UPGRADE_NOTES.md](./UPGRADE_NOTES.md) for upgrade information
4. Report issues on GitHub repository

---

## 📝 Notes

- Some features may not work on ARM devices (noted in descriptions)
- Installation times vary based on internet speed
- First-time package updates may take longer
- Some features require significant storage space
- Docker daemon cannot run in proot (CLI only)
- VS Code may be unstable on ARM processors

---

**Last Updated:** August 29, 2026  
**Version:** 3.0  
**Ubuntu Version:** 26.04 LTS (Noble Numbat)
