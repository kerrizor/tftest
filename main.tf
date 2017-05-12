terraform {
  backend "atlas" {
    name         = "kerrizor/obfuscation_test"
    access_token = "vO7GeY9GPsOJsg.atlasv1.93sHm3KnGoTyNHkDNfSgCyGgraJTznvbWtqzcXiMwPK5cE1bskq9zvR2V9N09qnOjfg"
    address      = "https://atlas.hashicorptest.com"
  }
}

atlas {
  name = "kerrizor/obfuscation_test"
}

variable "sensitive" {
    default = "foo"
}

variable "not-sensitive" {
    default = "bar"
}
variable "stand-in" {
    default = "baz"
}

resource "template_file" "hello_world" {
    template = "identity.tpl"
}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}

output "unsensitive" {
  value = "${var.not-sensitive}"
}
output "sensitive" {
  value = "${var.sensitive}"
}
