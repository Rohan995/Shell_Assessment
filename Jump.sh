#!/bin/bash
mkdir Rohan
mv Jump.sh Rohan
mv production.sh Rohan
mv Problem1.sh
id=$(aws autoscaling describe-auto-scaling-instances --query "AutoScalingInstances[?AutoScalingGroupName=='shellscripting'].InstanceId" --output text) 
ip=$(aws ec2 describe-instances --instance-ids $id --query 'Reservations[0].Instances[0].PublicIpAddress' --output text )
scp production.sh ec2-user@$ip:/home/ec2-user
scp Problem2.sh ec2-user@$ip:/home/ec2-user
ssh ec2-user@$ip /home/ec2-user/production.sh
