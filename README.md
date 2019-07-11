# Mr. Machine's Preferences

## Purpose
This repository is intended to store various dotfiles for my preferred terminal shell, text editor, and productivity workflow hacks.This repo 
will also include bash shell and python scripts. This repository can be cloned to any new machine where a setup script can be run to configure 
the preferred shell prompt, preferred text editor and any frequently used packages, applications or plugins.

## Objective

The setup script will perform the following actions:
1.  Perform basic host security hardening routines
2.  Perform an incremental/full update of system
3.  Install required packages and applications
4.  Cloning oh-my-zsh<sup>[[1]]</sup> repository
5.  Cloning repository for Mr. Machine's Preferences<sup>[[2]]</sup>
    
#### Key repo files
>|File Name			|File Description								|
>|------------------------------|-------------------------------------------------------------------------------|
>|.zshrc_master			|A zsh config file								|
>|machinemode.zsh-theme		|A custom zsh theme								|
>|wifi-rebooter.sh		|A custom shell script to shutdown and restart a home network wifi service	|

#### To Do List
+ Develop a bash script to perform basic host security hardening routines
+ Develop a git repo cloner that clones list of URLs recursively
+ Develop a help function to display markdown syntax cheatsheet
+ Develop a script to create school notes repo with the following directories:
> 1. Research
> 2. Images
> 3. Articles
> 4. Flash Cards
> 5. Study Guides

***
 [1]: https://github.com/robbyrussell/oh-my-zsh/	"oh-my-zsh"
 [2]: https://github.com/mrmachine3/preferences/	"Mr. Machine's Preferences"

################################################################################
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
################################################################################

# DO Community Playbooks

A collection of simple Ansible playbooks for automating server setups, based on DigitalOcean's Community guides.

## Playbooks with Dedicated Guides

**Initial Server Setup Ubuntu 18.04** [ [Playbook Contents](https://github.com/do-community/ansible-playbooks/blob/master/initial_server_setup/ubuntu1804.yml) | [Playbook Guide](https://www.digitalocean.com/community/tutorials/automating-initial-server-setup-with-ansible) | [Original Guide](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04) ] 

## Other Playbooks
- **LEMP on Ubuntu 18.04** [ [Playbook Contents](https://github.com/do-community/ansible-playbooks/blob/master/lemp/ubuntu1804.yml) | [Original Guide](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-ubuntu-18-04) ]
