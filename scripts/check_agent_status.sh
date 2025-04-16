#!/bin/bash
# Check the status of the Amazon CloudWatch Agent

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
  -m ec2 \
  -a status
