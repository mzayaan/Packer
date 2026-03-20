lang en_US.UTF-8
keyboard us
timezone UTC
rootpw --plaintext parallels
reboot --eject
cdrom


bootloader --timeout=1 --append="net.ifnames=0 biosdevname=0"
zerombr
clearpart --all --initlabel
part /boot/efi --fstype="efi" --size=600
part /boot --fstype="ext4" --size=2048
part / --fstype="xfs" --grow --size=1

network --bootproto=dhcp --device=link --activate
firstboot --disable
selinux --permissive
firewall --enabled --ssh

user --name=parallels --plaintext --password parallels --groups=wheel


%packages --ignoremissing --excludedocs

@^workstation-product-environment
openssh-clients
sudo
wget
tar
make
gcc
kernel-devel
kernel-headers
elfutils-libelf-devel
dnf5-plugins
%end

%post --log=/root/ks-post.log

echo 'Defaults:parallels !requiretty' > /etc/sudoers.d/parallels
echo '%parallels ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/parallels
chmod 440 /etc/sudoers.d/parallels


systemctl set-default graphical.target


systemctl disable gnome-initial-setup.service
%end
