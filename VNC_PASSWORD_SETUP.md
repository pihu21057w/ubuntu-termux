# VNC Password Setup Guide

## Overview
The VNC password setup has been integrated into the `gui.sh` script and can also be reset anytime using multiple methods.

---

## 🔑 During Initial Setup

### When Running `sudo bash gui.sh`

After all packages are installed and configurations are complete, you will see:

```
═══════════════════════════════════════════════════
            VNC PASSWORD SETUP
═══════════════════════════════════════════════════

Setting up VNC password for user: your_username

Please set your VNC password:
(Password must be between 6-8 characters)

Password: [You type here - IT WILL BE VISIBLE]
Verify: [Type again to confirm]
```

**Important Notes:**
- ✅ The password **WILL BE VISIBLE** as you type
- ✅ Password must be **6-8 characters long**
- ✅ You'll be asked to type it twice for confirmation
- ✅ Remember this password - you'll need it for VNC Viewer

---

## 🔄 Resetting VNC Password Later

You have **3 methods** to reset your VNC password:

### Method 1: Quick Command (Fastest)
```bash
vncpasswd
```
- Simple and direct
- Enter new password twice
- Password is visible as you type

### Method 2: Guided Script (Beginner-Friendly)
```bash
bash vnc-password-reset.sh
```
- User-friendly interface
- Clear instructions
- Shows connection details after reset

### Method 3: Utilities Menu (Most Comprehensive)
```bash
sudo bash utilities.sh
```
Then select: `[6] 🔑 Reset VNC Password`

- Part of system management menu
- Automatic user detection
- Includes VNC restart reminder

---

## 📱 Using VNC Password

### Connecting with VNC Viewer

1. **Start VNC Server:**
   ```bash
   vncstart
   ```

2. **Open VNC Viewer App**
   - Download from: https://www.realvnc.com/download/viewer/

3. **Create New Connection:**
   - **Address:** `localhost:1`
   - **Name:** Ubuntu 26.04 (or any name you like)

4. **Connect:**
   - Click on the connection
   - **Enter the VNC password you set**
   - Click Connect

5. **Enjoy Ubuntu GUI!**

---

## 🔍 Troubleshooting

### Problem: I Don't See the Password Prompt During gui.sh

**Possible Causes:**
- The script might have skipped VNC setup
- VNC packages might not be installed

**Solutions:**
1. Check if VNC is installed:
   ```bash
   which vncserver
   ```

2. If not installed, reinstall:
   ```bash
   sudo apt install tigervnc-standalone-server tigervnc-common
   ```

3. Run password setup:
   ```bash
   vncpasswd
   ```

### Problem: Password Not Visible While Typing

**This is NORMAL!** Despite what the script says, `vncpasswd` command hides your password for security. This is expected behavior.

**What You See:**
```
Password: 
Verify:
```
(No characters appear as you type)

**What To Do:**
- Type your password carefully
- Press Enter
- Type the same password again
- Press Enter

### Problem: Forgot My VNC Password

**Solution:**
Simply reset it using any of the 3 methods above!

The most beginner-friendly:
```bash
bash vnc-password-reset.sh
```

### Problem: "Would you like to enter a view-only password?"

**Answer:** Type `n` and press Enter

You don't need a view-only password for normal use.

### Problem: VNC Password Too Short or Too Long

**Requirements:**
- Minimum: 6 characters
- Maximum: 8 characters

**If you get an error:**
- Try a password between 6-8 characters
- Use letters and numbers
- Avoid special characters if you encounter issues

### Problem: Can't Connect to VNC

**Checklist:**
1. ✅ Is VNC server running?
   ```bash
   ps aux | grep Xvnc
   ```

2. ✅ If not, start it:
   ```bash
   vncstart
   ```

3. ✅ Is your password correct?
   - Try resetting: `vncpasswd`

4. ✅ Restart VNC:
   ```bash
   vncstop
   vncstart
   ```

---

## 📋 Quick Reference

### VNC Password Commands

| Command | Description |
|---------|-------------|
| `vncpasswd` | Quick password reset |
| `bash vnc-password-reset.sh` | Guided password reset |
| `sudo bash utilities.sh` → [6] | Reset via utilities menu |
| `vncstart` | Start VNC server |
| `vncstop` | Stop VNC server |

### VNC Connection Details

| Setting | Value |
|---------|-------|
| Address | `localhost:1` |
| Password | Your VNC password (6-8 chars) |
| Port | 5901 (default for :1) |

### Password Requirements

- ✅ Length: 6-8 characters
- ✅ Type it twice (once to set, once to verify)
- ✅ Remember it for VNC Viewer connection
- ✅ Can be reset anytime

---

## 🎯 Best Practices

### Security
- Choose a unique password
- Don't use your system password
- Change it periodically if needed

### Remember Your Password
- Write it down initially
- Store it securely
- You can always reset it if forgotten

### VNC Connection
- Set VNC Viewer picture quality to "High"
- Use recommended resolutions (1080x1080 or 1080x700)
- Install Hacker's Keyboard for better mobile experience

---

## 📞 Still Having Issues?

If you're still having problems with VNC password:

1. **Check Logs:**
   ```bash
   cat ~/.vnc/*.log
   ```

2. **Verify VNC Installation:**
   ```bash
   dpkg -l | grep tigervnc
   ```

3. **Reinstall VNC if needed:**
   ```bash
   sudo apt install --reinstall tigervnc-standalone-server tigervnc-common
   vncpasswd
   ```

4. **Review Documentation:**
   - [README.md](./README.md) - Main documentation
   - [FEATURES.md](./FEATURES.md) - Feature details
   - `bash quick-start.sh` → VNC Help

---

**Last Updated:** August 29, 2026  
**Version:** 3.0  
**Related Commands:** `vncpasswd`, `vncstart`, `vncstop`, `utilities.sh`
