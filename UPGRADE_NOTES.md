# Ubuntu 26.04 Upgrade Notes

## Overview
This repository has been updated to install **Ubuntu 26.04 LTS (Noble Numbat)** instead of the previous version. This is a major version upgrade that brings the latest features, security updates, and package versions.

## What Changed

### Version Updates
- **Ubuntu Base**: Now installs Ubuntu 26.04 LTS
- **Project Version**: Updated from 2.0 to 3.0
- **Installation Command**: Uses `proot-distro install ubuntu:26.04`

### Modified Files
1. **README.md**
   - Updated version badge to 3.0
   - Added Ubuntu 26.04 LTS mention in features
   - Updated descriptions to reflect Ubuntu 26.04

2. **setup.sh**
   - Installation now explicitly targets Ubuntu 26.04
   - Updated banner to show version 3.0 and Ubuntu 26.04
   - Updated success messages

3. **remove.sh**
   - Updated banner to reflect version 3.0

4. **distro/gui.sh**
   - Updated banner to reflect Ubuntu 26.04 and version 3.0
   - All package installations remain compatible

5. **distro/user.sh**
   - Updated banner to reflect Ubuntu 26.04 and version 3.0

6. **CHANGELOG.md**
   - Added version 3.0.0 entry documenting the Ubuntu 26.04 upgrade

## Installation Instructions

### For New Users
Follow the standard installation process:

```bash
yes | pkg up
pkg install git wget -y
git clone --depth=1 https://github.com/modded-ubuntu/modded-ubuntu.git
cd modded-ubuntu
bash setup.sh
```

Then restart Termux and run:
```bash
ubuntu
bash user.sh
```

Finally, restart Termux again and run:
```bash
ubuntu
sudo bash gui.sh
```

### For Existing Users
If you already have an older version installed, you have two options:

#### Option 1: Fresh Installation (Recommended)
1. Remove the old installation:
   ```bash
   cd ~/modded-ubuntu
   bash remove.sh
   ```

2. Update the repository:
   ```bash
   git pull
   ```

3. Run the setup again:
   ```bash
   bash setup.sh
   ```

#### Option 2: Keep Old Installation
If you prefer to keep your current Ubuntu installation, you can continue using it. The old version will still work, but won't receive the benefits of Ubuntu 26.04.

## Benefits of Ubuntu 26.04

- **Latest Security Patches**: Up-to-date security fixes
- **Modern Package Versions**: Access to newer versions of installed software
- **Better Compatibility**: Improved hardware and software compatibility
- **LTS Support**: Long-term support with regular updates
- **Performance Improvements**: Optimizations in the base system

## Compatibility Notes

- All existing features remain functional
- Browser installations (Firefox, Chromium) work as before
- IDE installations (VS Code, Sublime) remain compatible
- VNC server setup unchanged
- All themes and configurations are preserved

## Known Considerations

- **Storage Requirements**: Still requires at least 4GB of storage
- **First Installation**: May take 2-5 minutes depending on internet speed
- **VNC Password**: You'll need to set a new VNC password during setup
- **Package Updates**: First `apt update` after installation may take longer

## Support

If you encounter any issues:
1. Check the [CHANGELOG.md](./CHANGELOG.md) for known issues
2. Refer to the main [README.md](./README.md) for troubleshooting
3. Report issues on the GitHub repository

## Rollback

If you need to rollback to version 2.0:
```bash
cd ~/modded-ubuntu
git checkout v2.0  # If tag exists
bash remove.sh
bash setup.sh
```

---

**Last Updated**: August 29, 2026
**Version**: 3.0
**Ubuntu Version**: 26.04 LTS (Noble Numbat)
