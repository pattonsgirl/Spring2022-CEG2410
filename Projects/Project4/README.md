# Project 4 - AD

For this project you need access to your AWS console. [Return to here and click "Start Lab"](https://awsacademy.instructure.com/courses/13276/modules/items/1137826). **Once the icon next to "AWS" is green, click "AWS" to open the console.**

### Link to build Windows Server + Ubuntu Server

Follow the below steps if AWS Educate nukes things OR if you break things and need to rebuild.

1. Click **AWS** which should have a green dot next to it located on the left
   - This will take you to your AWS Console for your account. Now the fun begins.
2. In a new tab, enter the following URL in the browser (or click link to open): https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=ceg2350&templateURL=https:%2F%2Fcf-templates-1ht2i5nbq7ufa-us-east-1.s3.amazonaws.com%2Fceg2410.yml

   - On the first menu, click Next
   - On the second menu, under Parameters, under Key Name, select `vockey`
   - Click Next
   - On the third menu, select Next
   - Scroll to the bottom and select Create Stack
   - You will be redirected to a status page that says CREATE_IN_PROGRESS

3. For best security, once the instances are up, proceed to the SecurityGroups menu and change ports 22 and 3389 from open from 0.0.0.0/0 to open from your trusted IP (home IP). `curl ipinfo.io` can help, whatismyip, there's ways...

### Accessing Windows Server Password:

- Go to EC2 menu
- Click on Windows Server 2019 checkbox
- Click Details -> Security -> Get Windows password
- Paste the contents of your private key you've been using for your ubuntu system
