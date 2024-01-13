#!/bin/bash
terraform fmt
terraform init
echo "************** ----------- INIT ----------- ****************"
terraform plan
echo "************** ----------- Apply ----------- ****************"
terraform apply -auto-approve
echo "************** ----------- Show ----------- ****************"
terraform show
echo "************** ----------- Sleep 1 minute ----------- ****************"
sleep 60 
echo "************** ----------- Destroy----------- ****************"
terraform destroy -auto-approve
echo "************** ----------- Remove all files ----------- ****************"
GLOBIGNORE=*.tf:cmd:runclean.sh
rm -rv *
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Deleted all files  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"