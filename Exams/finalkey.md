# CEG 2410 - Spring 2022 - Final Answer Key

1. What can Organizational Units do the Security Groups cannot?

- Both can organize users and computers / devices
- OUs can delegate control of resources within
- OUs can apply group policy objects
- Security Groups can do neither of the above.

2. A domain controller configured on a private subnet can only be contacted by machines within that subnet.

- True. As we have played with, we set up a domain controller in a private subnet on AWS. The only DNS server that knows it's domain name is on that same instance. In order to connect machines to the domain, we have to configure their network settings to refer to the private IP of the instance that is both the DNS controller and domain controller. Then we can enter the domain name in machines we are joining to the network.

3. Should a regular user be allowed to register devices with the domain? Provide justification for your thoughts.

- Solid student answers:
- No, a regular user should not be allowed to register devices with the domain. This would allow anyone to bring any device onto a domain that may or may not be able to be trusted. For example, if a regular employee/user in an organization were allowed to register devices with the domain, they could register a device onto the domain that has malware on it or some other issue that could impact the whole company's domain. Also, if a regular employee/user added an untrusted device to the domain, that person could give themselves access to company files/data if they had more permissions on the device they added. Overall, it is better to only allow the IT administrators to register devices with the domain because these devices will be ones trusted by the company that have the right permissions and configurations on them to keep the company's domain and its data safe.
- No. In any office environment I've even been in there has been someone in IT responsible for setting up and adding new devices to the domain. I think that is a better approach than letting anyone in since you are, at best, going to get a very unorganized domain otherwise. Someone could just add their home computer anywhere in the domain. It is even worse if you have GPOs limiting certain devices. For example no external media is allowed. However, Joe Schmoe can add his new computer to the domain and he adds it somewhere outside of where this external media GPO applies. Now he finds a strange thumbdrive in the parking lot, and plugs it into his new computer, etc. The whole point of the domain is to keep things organized and controlled by the organization. Adding new devices is a pretty big deal so if anyone can do it why use AD in the first place?

4. Select all correct parameters of the `New-ADUser` command to add a new user, Greg McGregory, to the domain ad.demo.com in the OU demo Users  
   Assume $secpass contains a string of the account password stored as a secure string

- Good parameters:
  - `-Name "Greg McGregory"`
  - `-AccountPassword $secpass`
  - `-Path "OU=demo Users,dc=ad,dc=demo,dc=org"`
  - `-Enabled:true`
- Bad parameters:
  - `-Path "cn=demo Users,dc=ad.demo.org"`
    - cn demo Users would refer to a demo Users Security Group, not OU
  - `-Enabled:yes`
    - this can be `true` or `false`, not `yes`

5. As a rules of thumb for user accounts, the account should be disabled if not in use (the employee is in the process of joining or on extended vacation / leave) and users should create a new password when they first log on.

- True, these are good practices

6. Given the permissions of the folder as listed:

```
drw-rw---- 1 sue peeps 0 Apr 26 09:40 proj
```

And the following details on the group peeps:

```
peeps:x:1012:tony,bob,kayde,griff
```

What is the most reasonable action to give the user "joe" permissions to read and edit the contents of the proj folder?

- Make `joe` a member of `peeps`
- Good student answer:
- Since the group has the permissions of read and write, and this is what "Joe" would need to read and edit, I would add him to the peeps group. UNLESS peeps is used in other locations. If that is the case, I would check and see if "sue" needed this file still and if the would be allowed in the peeps group instead and make "joe" the owner instead and give him the read write permission.

7. The 3-2-1 rule is an ideal best practice for backups. What is recommended by that rule?

- 3 copies of data - one primary backup and two copies
- 2: save backups on 2 different types of media
- 1: keep one backup offsite
- Solid student answers
- The 3-2-1 rule recommends that 3 copies of data be available, with one of these copies being the one that is actively being used where data is being created. For the "2" part, the data should be available on 2 different types of storage devices that are not a user's or company's own devices. This would mean that the data should be stored in the cloud or in network attached storage to make the backups more durable. The "1" part of this rule recommends that one of the copies of the data be in an off-site storage location, so a cloud service, such as AWS, could be a possible solution to use to satisfy this part of the rule.

8. In order to establish an HTTPS connection, the server being connected to send its private key to the browser for verification.

- False. The server send a public certificate. Private keys always imply securely stored. Servers send their public keys or public certificates for validation / verification. The private key / certificate remains protected. If the private key is exposed, it is no longer considered trusted.

9. I have configured a server to use HTTPS. I have opened port 80 on my inbound Security Group rules from anywhere (0.0.0.0/0). I type https://mysite.com into the URL bar in my browser, but I get... nothing. What's wrong?

- Need to open port 443 in the Security Groups

10. I have an instance on AWS configured to be a webserver. Assume all things are right. I head to my browser to view it. It my browser, I type `127.0.0.1`
    I will see the content from the instance on AWS.

- IP `127.0.0.1` is on the localhost "interface" (lo) It is not a network accessible IP - it is not within a private subnet other machines on the subnet can query; it is not accessible by any public IP. Addresses that start with `127` can only be accessed by the machine.
- **False**. If an instance is configured to host a website, you browser can only access the site via the instance's public IP OR a domain name associated with the public IP of the instance.
- TODO: consider dropping

11. I have changed configuration files on a server. In order to maintain uptime, what it the best strategy apply the configuration change?

- Correct selection: Restart / reload the service
- Restart the server - this costs uptime. First the system will need to shutdown, then boot back up.
- Restore the config file from backup - this will remove the changes you made to the config file
- Rebuild the server and do a fresh install of the services required - this is the max uptime impact. Not just a reboot, but a whole rebuild

12. \_\_\_\_ resolves hostnames to IP addresses, like google.com to IP 142.250.190.142

- Correct selection: DNS - Domain Name System
- NAT = Network Address Translation. It plays a role in moving traffic from private to public subnets
- DHCP = Dynamic Host Control Protocol. Leases IPs to NICs
- ISP = Internet Service Provider.

13. Provide at least one advantage and one disadvantage to a RAID 0.

- Advantage: data is striped across disks, so increase in read and write speed
- Disadvantage: no fault tolerance
- TODO: grade

14. Tools for managing Active Directory are consistent and available across all versions of Windows Server.

- False. Different tools and features sets are available only in certian versions of Windows Server running AD

15. TODO
16. TODO

17. If the PowerShell execution policy is set to Restricted, then only scripts signed by trusted publishers can run.

- False. Restricted policy means no scripts can run
- Remote Signed = only scripts signed by trusted publishers can run.

18. For a browser to trust a public certificate, it should be issued by a \_\_\_\_

- CA - Certificate Authority

19. TODO

20. Write a command to install a package of your choice on Ubuntu Linux.

- `apt install ____`
- `sudo apt install ____`
- `apt-get install ____`
  - The `apt-get` is being phased out for just `apt`.
