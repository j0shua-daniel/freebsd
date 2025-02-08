#!/bin/sh

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using doas!
  exit
fi

pkg install doas; sysrc powerd_enable="YES"; sysrc powerd_flags="-a hiadaptive"

echo "permit persist :wheel as root" >> /usr/local/etc/doas.conf

clear

echo "CHOOSE A GPU:"
echo "1. nvidia"
echo "2. amd"
echo "3. intel"
echo "4. old-amd"

read -p "GPU: " answer

answer=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

if [ $answer = nvidia ] ; then
	pkg install nvidia-driver; sysrc kld_list+=nvidia-modeset; break
elif [ $answer = amd ] ; then
	pkg install -y graphics/gpu-firmware-amd-kmod xf86-video-amdgpu && cd /usr/ports/graphics/drm-61-kmod && make -DBATCH install clean;  sysrc kld_list+=amdgpu; break
elif [ $answer = intel ] ; then
	pkg install -y graphics/gpu-firmware-intel-kmod xf86-video-intel && cd /usr/ports/graphics/drm-61-kmod && make -DBATCH install clean; sysrc kld_list+=i915kms; break
elif [ $answer = old-amd ] ; then
	pkg install -y graphics/gpu-firmware-amd-kmod xf86-video-amdgpu && cd /usr/ports/graphics/drm-61-kmod && make -DBATCH install clean; sysrc kld_list+=radeonkms; break
elif [ $answer = 1 ] ; then
	pkg install nvidia-driver; sysrc kld_list+=nvidia-modeset; break
elif [ $answer = 2 ] ; then
	pkg install drm-kmod; sysrc kld_list+=amdgpu; break
elif [ $answer = 3 ] ; then
	pkg install drm-kmod; sysrc kld_list+=i915kms; break
elif [ $answer = 4 ] ; then
	pkg install drm-kmod; sysrc kld_list+=radeonkms; break
else
	echo "GPU not found!"
fi
