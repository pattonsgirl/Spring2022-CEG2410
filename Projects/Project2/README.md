# Project 2 - NOT FINALIZED

File Sharing (is Caring)

## Assignment Notes

For this project you need access to your AWS console. [Return to here and click "Start Lab"](https://awsacademy.instructure.com/courses/13269/modules/items/1137325). **Once the icon next to "AWS" is green, click "AWS" to open the console.**

In your GitHub Classrooms repo, in the `Linux` folder, create a new folder named `Project2`. The deliverables for this project will be documenation and screenshots, so you are welcome to work in your repo wherever you are comfortable. I would float towards VSCode myself.

## Part 1 - create a `samba` share

1. Install `samba` on your AWS Ubuntu instance.
2. Create a folder in the `/` directory named `share`.
3.

## Part 2 - manange the users

## Part X - firewalls

Strictly speaking, we only need to access a few ports on the network and from a handful of trusted networks.

- Ports:
  - TCP 22
  - TCP 139
  - TCP 445
  - UDP 137
  - UDP 139
- Trusted networks:
  - Your home public IP: `curl ipinfo.io`
  - Wright State: `130.108.0.0/16`

## Part 3 - connect to share

You ahve it set up, but how do you connect?

For this part, choose at **minimum** two operating systems and try connecting to your `samba` share. In your documentation section, detail how to connect.

Note: WSL2 Ubuntu does count as one OS - Windows would count as a second.

## Part 4 - documentation

In your `Project2` folder, create a `README.md` file with the following documentation.

### How to setup a samba share

- Installation:
- Configuration:
- Allowing users:
  - **include screenshot of configuring users**
- Connecting to share:
  - Details on how to connect + useful screenshot(s) - remember 2 OSes at minimum

## Resources

- https://www.linuxbabe.com/ubuntu/install-samba-server-file-share
- https://linuxize.com/post/how-to-install-and-configure-samba-on-ubuntu-18-04/#connecting-to-a-samba-share-from-linux

## Rabbit holes

- https://www.redhat.com/sysadmin/samba-windows-linux
- https://www.techrepublic.com/article/how-to-connect-to-linux-samba-shares-from-windows-10/
- https://www.thewindowsclub.com/system-error-67-has-occurred-the-network-name-cannot-be-found
