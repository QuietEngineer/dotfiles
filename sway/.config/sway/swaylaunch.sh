#!/bin/bash
# /usr/share/wayland-sessions/sway.desktop  # Launches from login
# # chattr +i sway.desktop  # to prevent file modification
# $ nvida-inst  # change drivers
# use wlroots or wlroots-nvidia packages
# Dracut options in /etc/dracut.conf.d/nvidia.conf
# # dracut-rebuild  # Rebuild after changing dracut options
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export WLR_NO_HARDWARE_CURSORS=1
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
export XDG_SESSION_TYPE=wayland
export MOZ_WAYLAND=1
export MOZ_ENABLE_WAYLAND=1
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export ELECTRON_OZONE_PLATFORM_HINT=auto
#export GDK_BACKEND=wayland
export GBM_BACKEND=nvidia-drm
export __GLC_VENDOR_LIBRARY_NAME=nvidia

export __GLX_VENDOR_LIBRARY_NAME=nvidia
#export __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json

exec sway --unsupported-gpu
