#!/bin/bash
apt-get update
apt-get install -y python-pip python-dev
pip install awscli
echo "test S3 upload" > myfile.txt