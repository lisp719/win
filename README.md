# win

## windows

What to do manually.

- windows update
- microsoft store update

## powershell

Run with administrator rights.

```powershell
wsl --install -d ubuntu
./setup_win.ps1
```

## wsl

```bash
./setup_wsl.sh
```

## What the script executes

### setup_win.ps1

- Change ExecutionPolicy
- Import packages by winget
- Import packages by scoop
- Copy config files

### setup_wsl.sh

- Install and run ansible

### wsl.yaml

- Add user to sudoers
- Install apt packages
- Install homebrew packages
- Copy files
