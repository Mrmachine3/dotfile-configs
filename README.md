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
+ [x] Develop script to export env variables; see envexport.sh
    - [x] Implement a logging feature to show time stamps for each variable export
    - [ ] Try sed/awk on $CONFIG file before appending exports to file
+ [ ] Develop a bash script to update, upgrade and install key packages
    - [ ] Try reading in a separate key value pair file, i.e. package and description
    - [ ] Remove uneccessary, old packages
    - [ ] Echo package names to stdout once successfully installed
    - [ ] Log unsuccessful package installations
+ [ ] Develop a bash script to clone github repos
    - [ ] Try reading in a separate key value pair file, i.e. github repo name and URL
+ [ ] Develop a bash script to rsync dotfile and custom script repos
    -  Develop all scripts and commit to remote gh repo
    4. Run a periodic rsync command or a cron job to since remote directory to /usr/local/bin
    - [ ] Try the following command:
        ```
        LOCALSCRIPTS=/usr/local/bin

        rsync -a <path/to/github/dotfile-config>/ $HOME
        rsync -a <path/to/github/scripts>/ $LOCALSCRIPTS
        
        cd $LOCALSCRIPTS && if [ $(pwd) ="/usr/local/bin" ]; then echo "Current directory: 'pwd'" fi
        for $i in $LOCALSCRIPTS
            if [ 'ls -l $i | cut -d " " -f 3' != "$USER" ];
            then
                do 
                    chown -v $USER $i 
                    echo "File ownership changed to $USER for $i..."
                done
            fi
        echo "'ls | grep -i $USER | wc -l' files modified to reflect new owner..."
        ```
+ [ ] Develop a bash script to symlink key config files
        ```
        #!/bin/bash
        CONFIGS=$(ls -al .*)
        DOTFILES=dotfile-config
        if [ -d dotfile-config ]
            for $i in $CONFIGS;
            do
                echo "Symlinking $i within $HOME..."
            done
        else
            echo "${DOTFILES##*/} repo doesn't exist..."
            echo "Execute gitcloner script to clone the ${DOTFILES##*/} repo..."
            exit 1
        ```
+ [ ] Develop a bash script to test to simulate functionality of config files and to log output
+ [ ] Develop a bash script to perform basic host security hardening audit
+ [ ] Develop a bash script that sets all custom path aliases
+ [ ] Develop a bash script to backup all work and configs
    - [ ] For each github repo, check status; if dirty branch, add, commit, push
    - [ ] Schedule cron job to execute backup of github work
  
################################################################################

# DO Community Playbooks

A collection of simple Ansible playbooks for automating server setups, based on DigitalOcean's Community guides.

## Playbooks with Dedicated Guides

**Initial Server Setup Ubuntu 18.04** [ [Playbook Contents](https://github.com/do-community/ansible-playbooks/blob/master/initial_server_setup/ubuntu1804.yml) | [Playbook Guide](https://www.digitalocean.com/community/tutorials/automating-initial-server-setup-with-ansible) | [Original Guide](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04) ] 

## Other Playbooks
- **LEMP on Ubuntu 18.04** [ [Playbook Contents](https://github.com/do-community/ansible-playbooks/blob/master/lemp/ubuntu1804.yml) | [Original Guide](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-ubuntu-18-04) ]

