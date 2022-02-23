# Midterm Review for CEG 2410

## Spring 2022

## Da Rules

Midterm: Friday, 2/25

- Available 8:00 AM to 11:59 PM
- 1 attempt, 1 hour once started
- Open note, open terminal
- No class - only exam.
- I will be in Russ 355 from 9:00 to 10:00 AM if you want to take the exam in the room

## Topic List:

### git basics:

- clone
  - followed by a URL / ssh link copy of what is on GitHub and a link back to the GitHub repository (remote)
- add
  - adds a file for tracking.
- commit
  - creates a snapshot of the repository with any changes, require a message to say what changed
- push
  - get local commits / snapshots of changes to our remote repository (GitHub)
- pull
  - get change (commits) on GitHub to local clone
- status
  - give me hints about whats happening in repository
- markdown syntax

### Networking:

- SSH
  - ssh to remote in to a machine - secure encrypted traffic connection to that machine
  - ssh keys for authentication
  - key pairs (public vs private keys)
    - private keys are just for me
    - public keys are added / uploaded to the machine I am connecting to

### Linux management:

- Basic commands:
  - man, ls, cd, mkdir, rm / rmdir
- Package management with `apt`
- Permissions
  - owner / user, group, other (ugo)
  - read, write, execute (rwx)
  - role of sudo
  - chown, chgrp, chmod
- Scripting for automation of tasks (bash)
  - variables - var_name=45 $var_name
  - permissions needed to run
  - user input
  - using the `test` command ([])
  - if statements
  - for and while loops
  - functions
  - arguments

### Data management

- adding new disk (Linux & Windows)
  - partition table - MBR or GPT (GPT is modern default)
  - partition(s)
  - filesystem
  - mount
  - umount
  - /etc/fstab
- RAIDS
  - striping
  - mirroring
  - parity
  - types: 0, 1, 4, 5, 6, ~~10~~

### User Accounts & Directory Services

- PAM - pluggable authentication module
  - adduser/ useradd, addgrp
  - getent
  - by default looks at /etc/passwd & /etc/group
  - can install modules to use other authentication directories, (LDAP & AD)
- Directory Services
  - AD
  - LDAP
  - Allow heirarchical structure of permissions

### Task Automation

- Ansible
  - inventory file
  - playbooks
