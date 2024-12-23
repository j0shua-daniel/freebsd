pkg install drm-kmod sudo
sysrc kld_list+=amdgpu
echo  "%wheel ALL=(ALL) ALL" >> /usr/local/etc/sudoers.tmp
sysrc powerd_enable="YES"
sysrc powerd_flags="-a hiadaptive"
