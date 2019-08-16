# Custom Kali Linux distribution

- [Download Kali Linux Light 64-Bit base image](https://cdimage.kali.org/kali-2019.2/kali-linux-light-2019.2-amd64.iso)

- Download base packages
```
apt-get install -y curl git vim live-build cdebootstrap
git clone git://gitlab.com/kalilinux/build-scripts/live-build-config.git
```

- Install the i3 base package to enable i3 window management as default on boot up
```
apt-get install i3
update-alternatives --install /usr/bin/x-session-manager x-session-manager /usr/bin/i3 60
```

- Install arandr and nitrogen to configure external monitor display setup and background
```
apt-get install arandr nitrogen
```

- Install network manager service
```
apt-get install nmtui
```

- Install tmux and tmuxinator for terminal layout management
```
apt-get install tmux tmuxinator
```

- Install Latex and Zathura for report writing
```
apt-get install texlive-full zathura zathura-pdf-mupdf
```
- Consolidate [Zathura key bindings](https://github.com/pwmt/zathura/blob/master/doc/man/_bindings.txt) into i3 keymap conf

- Install Wireshark and other network monitoring tools
```
apt-get install wireshark tshark tcpdump
```

- Install [Termdown](https://github.com/Mrmachine3/termdown)
```python
pip install termdown
```
- The following command initiates a countdown pomodoro timer for 45 minutes
```bash
termdown -b -B -s 45m
```

- Custom workspaces for i3
  - web: web browser workspace
  - mail client: two asymmetrical horizontally split windows with gmail client (top-narrow) and gmail calendar (bottom-wide) 
  - media: web browser opened to spotify, youtube, or youtube TV (youtube TV can "pop out" into a small floating window that can be moved to the main workspace
  - writing: a persistent tmux session within a repo that launches a left pane editor, right pane PDF viewer, bottom spanning LaTeX compiler window and a small countdown timer [(Termdown)](https://github.com/Mrmachine3/termdown)
  - development: All persistent tmux sessions by project using tmuxinator config files stored in repo folders and a small countdown timer [(Termdown)](https://github.com/Mrmachine3/termdown)

  - wireshark: automatic launch of wireshark application and filter cheat sheet

