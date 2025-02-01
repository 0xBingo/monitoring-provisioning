# `main.tf` variables definition

variable "proxmox_api_url" {
  type        = string
  description = "Proxmox API URL 'https://ip:port'"
}

variable "proxmox_api_token" {
  type        = string
  description = "Proxmox API token"
  sensitive   = true
}

# `network.tf` variables definition

variable "network_name" {
  type        = string
  description = "Network name for VLAN"
}

variable "network_bridge" {
  type        = string
  description = "Network bridge name for VLAN"
}

variable "network_address" {
  type        = string
  description = "IP address of the network bridge"
  default     = "192.168.10.1/24"
}

variable "network_gateway" {
  type        = string
  description = "Gateway for the VLAN"
  default     = "192.168.10.1"
}

variable "vlan_id" {
  type        = number
  description = "VLAN ID for the network"
  default     = 10
}

# `node.tf` variables definition

variable "node_name" {
  type        = string
  description = "Proxmox node name"
}

variable "node_pool" {
  type        = string
  description = "Proxmox node pool"
}

variable "nodes" {
  type = map(object({
    host_ip : string
    gw : string
    vm_id : number
    cores : number
    memory : number
    storage: number
    role : string
  }))
}

variable "template_vm_id" {
  type        = string
  description = "Proxmox template VM ID"
}

variable "datastore" {
  type        = string
  description = "Proxmox datastore name"
}

variable "ssh_key" {
  type        = string
  description = "SSH public key"
}
