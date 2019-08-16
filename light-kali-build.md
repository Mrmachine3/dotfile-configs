# Custom Kali Linux distribution

## Base Image
[Kali Linux Light 64-Bit](https://cdimage.kali.org/kali-2019.2/kali-linux-light-2019.2-amd64.iso)

## For testing purposes, create a new virtual machine to test your configuration settings
1. Create a new VM using the base .iso image in VMware
2. Upon powering the VM, launch in the Graphical Install mode to enable persistent settings for further customization.

## Download base packages
```
apt-get install -y curl git vim live-build cdebootstrap
git clone git://gitlab.com/kalilinux/build-scripts/live-build-config.git
```

## Install the i3 base package to enable i3 window management as default on boot up
```
apt-get install i3
update-alternatives --install /usr/bin/x-session-manager x-session-manager /usr/bin/i3 60
```

## Install arandr and nitrogen to configure display setup and background
```
apt-get install arandr
apt-get install nitrogen
```

# Install network manager service
```
apt-get install nmtui
```

## Install tmux for terminal layouts

```
apt-get install tmux tmuxinator
```


## Install Wireshark
```
apt-get install wireshark tshark
```

## Custom workspaces for i3
- web: web browser workspace
- mail client: two asymmetrical horizontally split windows with gmail client (top-narrow) and gmail calendar (bottom-wide) 
- media: web browser opened to spotify, youtube, or youtube TV (youtube TV can "pop out" into a small floating window that can be moved to the main workspace
- tmux: All persistent tmux sessions by project
```
tmux new -s development -n editor -n repo -n terminal
```
- wireshark: automatic launch of wireshark application 





