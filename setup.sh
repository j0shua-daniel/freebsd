#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using doas!
  exit
fi

pkg install doas; sysrc powerd_enable="YES"; sysrc powerd_flags="-a hiadaptive"

echo "permit persist :wheel as root" >> /usr/local/etc/doas.conf

clear

echo "CHOOSE A GPU:"
echo "amd"

read -p "GPU: " answer

answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

if [ $answer = nvidia ] ; then
	pkg install nvidia-driver; sysrc kld_list+=nvidia-modeset; break
elif [ $answer = amd ] ; then
	pkg install drm-kmod;  sysrc kld_list+=amdgpu; break
elif [ $answer = intel ] ; then
	pkg install drm-kmod; sysrc kld_list+=i915kms; break
elif [ $answer = old-amd ] ; then
	pkg install drm-kmod; sysrc kld_list+=radeonkms; break
else
	echo "GPU not found!"
fi
