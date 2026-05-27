#!/bin/bash

sudo labauto ansible
ansible-pull -i localhost, -U https://github.com/sh-devops-itrn-2/wmp-ansible-v4.git main.yml -e env=${ENV} -e COMPONENT=${COMPONENT} -e postgres_rds_address=${postgres_rds_address}
