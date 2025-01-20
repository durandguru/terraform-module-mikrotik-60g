variable "name" {
}

variable "mode" {

}

variable "frequency" {
  default = "auto"
}

variable "isolate_stations" {
  default = false
}

variable "mdmg_fix" {
  default = false
}

variable "put_stations_in_bridge" {
  default = "bridge"
}

# variable "region" {
# }

variable "ssid" {

}

variable "password" {

}

variable "disabled" {
  default = false
}

variable "stations" {
  type = map(object({
    name           = string
    parent         = string
    mac_address    = string
    disabled       = optional(bool, false)
    remote_address = optional(string, null)
  }))
  default = {
  }
}