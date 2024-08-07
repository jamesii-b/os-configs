# Some Scripts & Codes 

- Ansible, Kolla Ansible
- Terraform

## Ansible Usage

`ansible-playbook -i hosts dbus.yml`


## Terraform Usage

- `terraform init` 

This downloads all the required necessary packages

- `terraform plan`

Checks if there are no errors

- `terraform apply`

Provisions the Infrastruture

## Kolla Ansible Usage

By default uses the `globals.yml` inside the /etc/kolla-ansible

- `kolla-ansible bootstrap-servers -i multinode`

This installs the required packages in all the nodes beforehand

- `kolla-ansible prechecks -i multinode`

- `kolla-ansible deploy -i multnode`

## Logs

```
terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # openstack_compute_instance_v2.server will be created
  + resource "openstack_compute_instance_v2" "server" {
      + access_ip_v4        = (known after apply)
      + access_ip_v6        = (known after apply)
      + all_metadata        = (known after apply)
      + all_tags            = (known after apply)
      + availability_zone   = (known after apply)
      + created             = (known after apply)
      + flavor_id           = "70fdc265-a080-4b45-b569-038e75778893"
      + flavor_name         = (known after apply)
      + force_delete        = false
      + id                  = (known after apply)
      + image_id            = "c3b24cd0-88ff-4c25-b654-6b17e059be55"
      + image_name          = (known after apply)
      + name                = "tf-instance"
      + power_state         = "active"
      + region              = (known after apply)
      + security_groups     = (known after apply)
      + stop_before_destroy = false
      + updated             = (known after apply)

      + network {
          + access_network = false
          + fixed_ip_v4    = (known after apply)
          + fixed_ip_v6    = (known after apply)
          + mac            = (known after apply)
          + name           = (known after apply)
          + port           = (known after apply)
          + uuid           = "7b8cd7c7-f9d3-4295-918a-687127c96f29"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_ip = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

openstack_compute_instance_v2.server: Creating...
openstack_compute_instance_v2.server: Still creating... [10s elapsed]
openstack_compute_instance_v2.server: Creation complete after 14s [id=8184630d-c40e-4dab-b8de-f3812ccc5235]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

instance_ip = "10.0.0.15"

```