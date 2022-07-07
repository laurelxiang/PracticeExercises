#!/bin/sh

curl -0 https://mlh-production-engineering.s3.us-east-2.amazonaws.com/apache_logs/apache_access.tar.gz

tar -xzf apache_access.tar.gz
