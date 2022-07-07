#!/bin/sh

#download zip file
curl -0 https://mlh-production-engineering.s3.us-east-2.amazonaws.com/apache_logs/apache_access.tar.gz -o ~/workspace/mlh/PracticeExercises/apache_access.tar.gz

#decompressing zip file
tar -xzf apache_access.tar.gz

#removing zip file to save space
rm apache_access.tar.gz

#obtaining unique ip addresses
awk '{print $1;}' apache_access | sort | uniq | wc -l
