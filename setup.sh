#!/bin/sh

pkg install doas; sysrc powerd_enable="YES"; sysrc powerd_flags="-a hiadaptive"

echo "permit persist :wheel as root" >> /usr/local/etc/doas.conf

read -p "GPU: [amd, nvidia, intel] " answer

answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

if [ $answer = nvidia ] ; then
	pkg install nvidia-driver sudo; sysrc kld_list+=nvidia-modeset; break
elif [ $answer = amd ] ; then
	pkg install drm-kmod sudo;  sysrc kld_list+=amdgpu; break
elif [ $answer = intel ] ; then
	pkg install drm-kmod sudo; sysrc kld_list+=i915kms; break
else
	echo "GPU not found!"
fi
