# Some Scripts & Codes 

- Ansible, Kolla Ansible
- Terraform

## Ansible Usage

`ansible-playbook -i hosts dbus.yml`


## Terraform Usage

- `terraform init` 

This downloads all the required necessary packages

- `terraform apply`

## Kolla Ansible Usage

By default uses the `globals.yml` inside the /etc/kolla-ansible

- `kolla-ansible bootstrap-servers -i multinode`

This installs the required packages in all the nodes beforehand

- `kolla-ansible prechecks -i multinode`

- `kolla-ansible deploy -i multnode`
