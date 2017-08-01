#!/usr/bin/env bash
echo "start deploy images to dev environment"
eval $(aws ecr get-login --region us-west-2)


push_nginx(){
	docker tag magento2devops_web:latest 125590874533.dkr.ecr.us-west-2.amazonaws.com/mage2-devops:latest
	docker push 125590874533.dkr.ecr.us-west-2.amazonaws.com/mage2-devops:latest
}

push_phpfpm(){
	docker tag magento2devops_phpfpm:latest 125590874533.dkr.ecr.us-west-2.amazonaws.com/mage2-devops:latest
	docker push 125590874533.dkr.ecr.us-west-2.amazonaws.com/mage2-devops:latest
}

#push_nginx
push_phpfpm