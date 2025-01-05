#!/usr/local/bin/bash

pkg install bash sudo; sysrc powerd_enable="YES"; sysrc powerd_flags="-a hiadaptive"

PS3='Please enter your GPU: '
options=("Intel" "AMD" "AMD (older GPUs)" "Nvidia" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Intel")
            pkg install drm-kmod sudo; sysrc kld_list+=i915kms; break
            ;;
        "AMD")
            pkg install drm-kmod sudo;  sysrc kld_list+=amdgpu; break
            ;;
        "AMD (older GPUs)")
            pkg install drm-kmod sudo; sysrc kld_list+=radeonkms; break
            ;;
	"Nvidia")
	    pkg install nvidia-driver sudo; sysrc kld_list+=nvidia-modeset; break
	    ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
