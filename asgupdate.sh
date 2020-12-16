#!/bin/sh

#aws autoscaling update-auto-scaling-group --auto-scaling-group-name sagemakerasglaunch --desired-capacity 1 --region us-east-2

echo "New instance added to ASG sagemakerasglaunch" > cfile
