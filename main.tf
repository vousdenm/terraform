variable "pm_api_url" {}
variable "pm_user" {}

provider "proxmox" {
    pm_tls_insecure = true
    pm_user         = "${var.pm_user}"
    pm_api_url      = "${var.pm_api_url}"

}

resource "proxmox_vm_qemu" "test_server" {
  name   = "tftest"
  cores  = 1
  memory = "1024"
#  swap   = "1024"
#  network {
#    name     = "eth0"
#    bridge   = "vmbr0"
#    ip       = "192.168.0.130/24"
#    firewall = true
#  }
#  clone = "Streamer"
  iso   = "local:iso/CentOS-7-x86_64-NetInstall-1708.iso"
#  password     = "<secure password>"
#  pool         = "terraform"
#  rootfs       = "local-lvm2:8"
#  storage      = "local-lvm2"
#  target_node  = "192.168.0.111"
  target_node  = "NUCMike"
#  unprivileged = true
}
