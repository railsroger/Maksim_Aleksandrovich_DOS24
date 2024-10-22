packer {
  required_plugins {
    qemu = {
      version = "~> 1"
      source  = "github.com/hashicorp/qemu"
    }
  }
}

variable "ssh_username" {
  description = "The username to connect to SSH with."
  type        = string
  default     = "user1"
}

variable "ssh_password" {
  description = "A plaintext password to use to authenticate with SSH."
  type        = string
  default     = "qwerty123"
}


variable "http_directory" {
  description = "Path to a directory to serve using an HTTP server."
  type        = string
  default     = "http"
}



variable "boot_command" {
  type = list(string)
  default = [
    "c<wait>",
    "linux /casper/vmlinuz autoinstall 'ds=nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/' ---",
    "<enter>",
    "initrd /casper/initrd",
    "<enter>",
    "boot<enter><wait>",
  ]
}


variable "iso_checksum" {
  description = "The checksum for the ISO file or virtual hard drive."
  type        = string
  default     = "file:https://releases.ubuntu.com/24.10/SHA256SUMS"
}

variable "iso_url" {
  description = "A URL to the ISO containing the installation image or virtual hard drive file to clone."
  type        = string
  default     = "/home/railsrogerdev/os_image/ubuntu-24.10-live-server-amd64.iso"
}

variable "vm_name" {
  description = "The name of the image file for the new virtual machine."
  type        = string
  default     = "vm1.qcow2"
}

source "qemu" "ubuntu" {
  # Ubuntu 20.04 image default timeout is 5s, so we need to be fast
  boot_wait = "5s"
  boot_command = var.boot_command
  accelerator       = "kvm"
  cpus              = 2
  disk_interface    = "virtio-scsi"
  disk_size         = "16G"
  disk_compression  = true
  format            = "qcow2"
  headless          = false
  http_directory    = var.http_directory
  iso_checksum      = var.iso_checksum
  iso_url           = var.iso_url
  machine_type      = "q35"
  memory            = 4096
  net_device        = "virtio-net"
  output_directory  = "output-${trimsuffix(var.vm_name, ".qcow2")}"
  shutdown_command  = "echo '${var.ssh_password}' | sudo -S shutdown -P now"
  ssh_password      = var.ssh_password
  ssh_timeout       = "30m"
  ssh_username      = var.ssh_username
  vm_name           = var.vm_name
  qemuargs = [
    ["-cpu", "host"]
  ]
}

build {
  sources = ["source.qemu.ubuntu"]

  # cloud-init may still be running when we start executing scripts
  # To avoid race conditions, make sure cloud-init is done first

  provisioner "shell" {
    execute_command   = "echo '${var.ssh_password}' | {{ .Vars }} sudo -S -E sh -eux '{{ .Path }}'"
    expect_disconnect = true
    scripts = [
        "/home/railsrogerdev/MA_DOS24/Homework_Lesson3_OS_2/scripts/vm1.sh",
    ]
  }
}