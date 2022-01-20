# Bash command line essentials

This guide includes essential commands for bash/ sh shells, their definitions, and a sample of usage

## Basic Commands

- `man` Manual: used to find definition. Exple: man ssh
  - `man` followed by another command will show the `man`ual page for the given command, which can include what it does, options / flags for the command, and sometime sample usage.
  - `man ssh` give the manual of ssh. 
- `help` just like 'man', this command displays information about other command. Exple: ssh --help will display all the usage of the command ssh
- `history` shows history of commands that were previously run
- `cd` change directory: leaving current directory and entering a new one. Exple: cd new_folder
- `ls` list: this command will display the list of contents accessing root directory. Example: ls /home
- `pwd` print working directory -- helps checking where we are located
- `cat` command that helps displaying the content of a directory
- `vim` command line to open a text editor
- i= insert mode -- write text
- ESC + :wq = save and exit vim
- `mkdir` make new disrectory -- create a new directory and assign a name
- `sudo` sudo + !!: command to run previous command instead of typing it again
- `chmod` command for changing permissions + numeric set of permission. Exple: chmod 666
- `chown`command for changing who owns a file or directory
- `chgrp` command for changing who owns a group
- `ssh` remoting securely into a machine

## Shortcuts and symbols

- `~` helps go back into home directory. Exple: cd ~
- `..` one directory up from where we are> Exple: cd ..
- `.`
- `!!` run previous command when logged in as admin

## Resources

- [sample link to resource](https://url.of.resource)
