user = {
  username           = "parallels"
  encrypted_password = "$6$parallels$tb6hm4RSqzwG3j51DSzdFD7Zw3Fxy/x5aen.Yvud7IfLqarIxMEuuM8efQy0gO.pHhT.lIz9tNYoppTGBGCsB/"
  password           = "parallels"
}
version      = "42"
machine_name = "Fedora-42"
hostname     = "fedora-server"
machine_specs = {
  cpus      = 2,
  memory    = 4096,
  disk_size = "65536",
}
iso_url            = "/Users/zayaan.dulmeer/Downloads/Fedora-Server-dvd-aarch64-42-1.1.iso"
iso_checksum       = "sha256:6527d67f98627d3fa973d95475b008b7496bf9800c68fe00e91a4e020505d3c9"
redhat_username    = ""
redhat_password    = ""
redhat_unsubscribe = false
addons             = []
install_desktop    = true
create_vagrant_box = false