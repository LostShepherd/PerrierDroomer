#!/bin/bash
yum update -y
console.log('Updated!!!!')"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 10
node -e "console.log('Running Node.js ' + process.version)"
aws s3 cp https://barnacleboyandmermaidman.s3-us-west-1.amazonaws.com/server.js /home/ec2-user/server.js
node server.js