# Custom Kali Linux Distribution Build Guide
## Overview
Kali Linux is a Debian-based Linux distribution aimed at advanced Penetration Testing and Security Auditing. Kali contains several hundred tools which are geared towards various information security tasks, such as Penetration Testing, Security research, Computer Forensics and Reverse Engineering. Kali Linux is developed, funded and maintained by Offensive Security, a leading information security training company.

## Purpose
This document is intended to outline the various features of a base Kali Linux image with the addition of packages, desktop environments and window managers installed to create a light-weight, fast distribution that will be installed on a Lenovo Thinkpad T440s laptop.

## Objectives
1. Ensure this document provides clear instruction for other users to replicate this build.
2. Ensure additional software installed on this OS is functional and will not compromise the operating effectiveness of the core packages.
3. Ensure that any build automation scripts are properly documented to provide instructional comments to users of this repository.

## Core Functional Requirements
In order to build a light-weight, responsive Kali Linux image I intend to meet the following requirements, or provide supporting resources to suggest alternatives:
- primarily mouse-less desktop experience relying on vi-like keybindings for managing desktop workspaces
  - NOTE: The mouse and/or laptop trackpad are not intended to be completely disabled
- i3 windows manager: a tiling windows manager designed for X window system, specifically X11 communication protocol
- Xfce desktop environment: a lightweight desktop environment for UNIX-like operating systems that is fast and has a low impact on system resources.
- Vim text editor: a highly customizable and extensible command line text editor that is suited for touch typists, software programmers, system administrators featuring customizable key bindings, macros, and vimscript code snippets intended for task and keystroke automation.
- tmux: is a terminal multiplexer for Unix-like operating systems that allows multiple terminal sessions to be accessed simultaneously in a single window, which useful for running multiple command-line program.

# Steps
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

