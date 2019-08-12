# Custom Kali Linux distribution

## Base Image
[Kali Linux Light 64-Bit](https://cdimage.kali.org/kali-2019.2/kali-linux-light-2019.2-amd64.iso)

## Download base packages
```
apt install -y curl git vim live-build cdebootstrap
it clone git://gitlab.com/kalilinux/build-scripts/live-build-config.git
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
apt-get install tmux
```


## Install Wireshark
```
apt-get install wireshark tshark
```

## Custom workspaces for i3
- web: web browser workspace
- mail client: two asymmetrical horizontally split windows with gmail client (top-narrow) and gmail calendar (bottom-wide) 
- media: web browser opened to spotify, youtube, or youtube TV (youtube TV can "pop out" into a small floating window that can be moved to the main workspace
- tmux: All perssistent tmux sessions by project
```
tmux new -s development -n editor -n repo -n terminal
```
- wireshark: automatic launch of wireshark application 





