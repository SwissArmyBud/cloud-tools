terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

variable "do_token" {}
variable "pvt_key" {}
variable "pub_key" {}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "mj-sandbox" {
  name = "mj-sandbox"
}

data "digitalocean_ssh_key" "ap-sandbox" {
  name = "ap-sandbox"
}
