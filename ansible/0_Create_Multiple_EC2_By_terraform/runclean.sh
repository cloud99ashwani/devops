#!/bin/bash
terraform fmt
terraform init
terraform validate
echo "************** ----------- INIT ----------- ****************"
terraform plan
echo "************** ----------- Apply ----------- ****************"
terraform apply -auto-approve
echo "************** ----------- Show ----------- ****************"
terraform show
echo "************** ----------- Sleep for some minutes (60 for 1 minutes)----------- ****************"
sleep 3600
echo "************** ----------- Destroy----------- ****************"
terraform destroy -auto-approve
echo "************** ----------- Remove all files ----------- ****************"
GLOBIGNORE=*.tf:cmd:runclean
rm -rv *
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Deleted all files  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"