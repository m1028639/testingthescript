
#!/bin/bash
sudo apt-get update -y
sudo apt-get install git -y

env=$1
nname=$2
nversion=$3
nnum=$4
azure_public_hostname=$5



azure_public_ip=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

cd /home/ubuntu
git clone -b MINDTREE https://mdzafarimam:sana_2004@bitbucket.org/cameosaas/catalyst-puppet.git

sudo chmod +x /home/ubuntu/catalyst-puppet/puppet/azure.sh

sudo sh /home/ubuntu/catalyst-puppet/puppet/azure.sh 'azure007' 'dmp-central-node' version='v08' node='01' azure_public_hostname='dmp-central-node.westus.cloudapp.azure.com' azure_public_ip='$azure_public_ip' catalyst_environment='sqa'



