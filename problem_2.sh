#!/bin/bash

scp -i rohan_pe.pem rohan_pe.pem ec2-user@18.207.196.239:

$instance_id_1=aws ec2 run-instances --image-id ami-14c5486b --subnet-id subnet-de0385f2 --count 1 --iam-instance-profile Name=PE_trainee_Admin_role --instance-type t2.micro --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Rohan},
{Key=emailid,Value=rohan.raha@quantiphi.com},{Key=Project,Value=Shell_Assign}]' --key-name rohan_pe  --user-data file://upload.txt --query (Instances[0].InstanceId)



status=$(aws ec2 describe-instance-status --instance-id $instance1_id --query InstanceStatuses[0].InstanceState.Code)
while [[ "$status" ==  16 ]]
do
  
   sleep 10
   status=$(aws ec2 describe-instance-status --instance-id $instance1_id --query InstanceStatuses[0].InstanceState.Code)
done

exit

$instance_id_2=aws ec2 run-instances --image-id ami-14c5486b --subnet-id subnet-de0385f2 --count 1 --iam-instance-profile Name=PE_trainee_Admin_role --instance-type t2.micro --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Rohan},
{Key=emailid,Value=rohan.raha@quantiphi.com},{Key=Project,Value=Shell_Assign}]' --key-name rohan_pe  --user-data file://download.txt --query (Instances[0].InstanceId)                                                                          



exit





