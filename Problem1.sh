#!/bin/bash
chmod 777 Jump.sh
chmod 777 production.sh
scp -i /home/Rohan/Desktop/New/shellscripting1.pem /home/Rohan/Downloads/Jump.sh ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com:
scp -i /home/Rohan/Desktop/New/shellscripting1.pem /home/Rohan/Downloads/production.sh ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com:
scp -i /home/Rohan/Desktop/New/shellscripting1.pem /home/Rohan/Downloads/Problem1.sh ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com:
ssh -i /home/Rohan/Downloads/shellscripting1.pem ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com
