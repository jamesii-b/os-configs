terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 2.0"
    }
  }
}

provider "openstack" {
  auth_url           = "http://192.168.3.254:5000"
  user_name          = "admin"
  password           = "notapasswordGoAWAY"
  tenant_name        = "admin"
  region             = "RegionOne"
  domain_name        = "Default"
}

resource "openstack_compute_instance_v2" "server" {
  name            = "tf-instance"
  image_id         = "c3b24cd0-88ff-4c25-b654-6b17e059be55"  # Ubuntu 24.04 image
  flavor_id        = "70fdc265-a080-4b45-b569-038e75778893"  # t1.mini flavor
  network {
    uuid = "7b8cd7c7-f9d3-4295-918a-687127c96f29"  # default network
  }
}

output "instance_ip" {
  value = openstack_compute_instance_v2.server.access_ip_v4
}