## Part 1

- RAID type chosen: RAID 5

- Pros:
increased read and write speed
better data redundancy
data distribution across multiple disks
- Cons
one disk failure at a time.

- Command to build array (level 5, 3 disks)

sudo mdadm --create --verbose /dev/md0 --level=4 --raid-devices=3 /dev/xvdb1 /dev/xvdbf /dev/xvdbg

sudo mdadm --create --verbose /dev/md0 --level=4 --raid-devices=3 /dev/xvdb dev/xvdb1

## Part 2

- command to check RAID status
lsblk
- reading output of the command

## Part 3

- commmand to create a filesystem and 'mount' RAID
sudo mkfs.ext4
sudo mount
- command to verify if mounted