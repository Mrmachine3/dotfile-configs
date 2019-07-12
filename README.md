# Mr. Machine's Preferences

## Purpose
This repository is intended to store various dotfiles for my preferred terminal shell, text editor, and productivity workflow hacks.This repo will also include bash and python scripts that will be made available in my local path. This repository can be cloned to any new machine where a setup script can be run to configure bash, vim, tmux, and docker.

## Objective
The setup script will perform the following actions:
+ Export global variables on local machine
+ Update, upgrade and install packages
+ Clone dotfile-config repository 
+ Execute config automation script to symlink dotfiles
+ Clone script libraries to 'usr/local/bin'
+ Perform basic host security hardening routines
    
#### To Do List
+ Develop a bash script to export global variables and print confirmations to stdout and log file
  - Sample script to export global variables
    ```
    #!/bin/bash
    DESKTOP="$HOME/Desktop"
    DOWNLOADS="$HOME/Downloads"
    REPOS="$HOME/Desktop/github-repos"

    echo "Exporting global variables..."

    for i in DESKTOP DOWNLOADS REPOS
        echo "Moving into $i directory..."
        cd $i
        export $i=$(pwd)
        echo "Exported environment variable"
        printenv | grep -i "$i" >> setuplog.log
    
    echo "Global environmental variables exported..."
    ```
+ Develop a git repo cloner that clones key setup repos
+ Develop a bash script to symlink key config files
+ Develop a bash script to test to simulate functionality of config files and to log output
+ Develop a bash script to clone script libraries
  - Steps to clone scripts library
    1. Develop all scripts and commit to remote gh repo
    2. Run a repo sync script that will copy/replace remote gh script repo to /usr/local/bin
    3. Run a ```chown -v ``` script on all scripts in usr/local/bin directory
    4. Run a periodic rsync command or a cron job to since remote directory to /usr/local/bin
+ Develop a bash script to perform basic host security hardening audit
  
################################################################################

# DO Community Playbooks

A collection of simple Ansible playbooks for automating server setups, based on DigitalOcean's Community guides.

## Playbooks with Dedicated Guides

**Initial Server Setup Ubuntu 18.04** [ [Playbook Contents](https://github.com/do-community/ansible-playbooks/blob/master/initial_server_setup/ubuntu1804.yml) | [Playbook Guide](https://www.digitalocean.com/community/tutorials/automating-initial-server-setup-with-ansible) | [Original Guide](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04) ] 

## Other Playbooks
- **LEMP on Ubuntu 18.04** [ [Playbook Contents](https://github.com/do-community/ansible-playbooks/blob/master/lemp/ubuntu1804.yml) | [Original Guide](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-ubuntu-18-04) ]

