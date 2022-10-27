#!/bin/bash

#1. Create a Spot Instance
#2. Take that Instance IP & register DNS
L_ID="lt-05589047b6c5587a2"
V=4

aws ec2 run-instances  --launch-template LaunchTemplateId=${L_ID} Version=${V} --tag-specifications "ResourceType=spot-instances-request,Tags=[{Key=Name,Value=Frontend}]" "ResourceType=instance,Tags=[{Key=Name,Value=Frontend}]"
