user = {
  username              = "parallels"
  encrypted_password    = "$6$parallels$tb6hm4RSqzwG3j51DSzdFD7Zw3Fxy/x5aen.Yvud7IfLqarIxMEuuM8efQy0gO.pHhT.lIz9tNYoppTGBGCsB/"
  password              = "parallels",
  force_password_change = true,
}
version      = "24.04.4"
machine_name = "ubuntu_24.04_LTS"
hostname     = "ubuntu-24.04"
machine_specs = {
  cpus      = 2,
  memory    = 2048,
  disk_size = "65536",
}
iso_url          = "/Users/zayaan.dulmeer/Downloads/ubuntu-24.04.4-live-server-arm64.iso"
iso_checksum = "sha256:9a6ce6d7e66c8abed24d24944570a495caca80b3b0007df02818e13829f27f32"

addons = [
  "desktop"
]
create_vagrant_box = false 