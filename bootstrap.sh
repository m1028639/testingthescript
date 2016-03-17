
!#/bin/bash
sudo apt-get update -y
sudo apt-get install git -y

env=$1
nname=$2
nversion=$3
nnum=$4
azure_public_hostname=$5



azure_public_ip=$(curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//')

git clone -b MINDTREE https://mdzafarimam:sana_2004@bitbucket.org/cameosaas/catalyst-puppet.git


sudo chmod +x ~/catalyst-puppet/puppet/azure.sh

sudo sh /home/ubuntu/catalyst-puppet/puppet/azure.sh '$env' '$nname' version='$nversion' node='$nnum' azure_public_hostname='$azure_public_hostname' azure_public_ip='$azure_public_ip' catalyst_environment='sqa'



