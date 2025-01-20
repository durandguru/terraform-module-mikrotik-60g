resource "routeros_interface_w60g" "ap" {
  count                  = var.mode == "ap-bridge" ? 1 : 0
  name                   = var.name
  disabled               = var.disabled
  frequency              = var.frequency
  isolate_stations       = var.isolate_stations
  mdmg_fix               = var.mdmg_fix
  mode                   = var.mode
  password               = var.password
  put_stations_in_bridge = var.put_stations_in_bridge
  ssid                   = var.ssid
}

resource "routeros_interface_w60g" "station" {
  count    = var.mode == "station-bridge" ? 1 : 0
  name     = var.name
  mode     = var.mode
  ssid     = var.ssid
  password = var.password
  disabled = var.disabled
}

resource "routeros_interface_w60g_station" "stations" {
  for_each = {
    for k, v in var.stations : k => v
  }
  name   = each.value.name
  parent = each.value.parent

}