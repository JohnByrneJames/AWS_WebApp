# Setting up the First EM2 Machine on AWS

This is the part where we set up our webserver using the **NGINX** package. This will allow us to connect to the server anywhere on the internet using the IP address of our EM2 Machine, so long as your IP address is included in the EM2 Machines security group.

## **Useful commands** --

**Secure Copy** of folder app to a new app folder inside the VM
```bash
scp -i ~/.ssh/DevOpsStudents.pem -r app/ ubuntu@<ip_address_of_EM2>:~/app/
```

**Enter the EM2 Machine** via SSH
```bash
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@<ip address from VM>
```

**Move file/ folder** From one location to another
```bash
mv from:<path/file> target:<path/file>
```

**To set up the EM2 Machine please refer to the beginning of this [README](EM2_Database.md)


## **Step 1** - **Enter the EM2 Instance**

The first thing you need to do is get your EM2 Instances IP address. 

![IPV4_IN_EM2_INSTANCE](Images/Machine_to_use_in_AWS.PNG)

