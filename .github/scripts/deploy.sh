#!/bin/bash

cd ../.. && aws s3 sync . s3://dev-site-20210315214923790700000003 --exclude ".git" --exclude ".github" --profile deploymentuser-005240044a15e466
aws cloudfront create-invalidation --distribution-id E4V6CMQZH9ON --paths '/*' --profile deploymentuser-005240044a15e466