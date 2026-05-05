kind: stack
description: KDE Aurora OS dependencies

depends:
# Base OS stack from freedesktop-sdk
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
# linux.bst omitted: kernel modules come from gnomeos/initramfs/signed-modules.bst
# (which has linux.bst as a build-dep). Adding it here causes overlap errors.
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dracut.bst
# os-release removed: provided by oci/integration/os-release.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/udisks.bst
- freedesktop-sdk.bst:vm/base-filesystem.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/networkd.bst
- freedesktop-sdk.bst:vm/config/resolved.bst
# useradd-default removed: provided by freedesktop-sdk.bst:vm/config/useradd-ostree.bst
- freedesktop-sdk.bst:vm/config/flathub.bst
- freedesktop-sdk.bst:components/usbutils.bst
- freedesktop-sdk.bst:components/hosts.bst
- freedesktop-sdk.bst:components/flatpak.bst

# KDE Plasma Desktop
- kde/org.kde.plasma.desktop.bst
- kde/config/plasma.bst

# KDE Applications
- kde/org.kde.apps.bst

# KDE Qt-adjacent libraries
- kde/libs/qcoro.bst
- kde/libs/qtkeychain-qt6.bst
- kde/libs/poppler-qt6.bst

# bootc for image-based updates
- gnomeos-deps/bootc.bst

# Audio
- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst

# Network — provided by core-deps/NetworkManager.bst via plasma-nm/networkmanager-qt transitive deps
# (using freedesktop-sdk version here would cause a duplicate-file overlap)

# Security
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:components/polkit.bst

# Graphics
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/libheif.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libavif.bst

# Storage
- freedesktop-sdk.bst:components/btrfs-progs.bst

# Containers
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:components/skopeo.bst
- gnomeos-deps/distrobox.bst
- gnomeos-deps/toolbox.bst

# Networking tools
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/iputils.bst

# Firewall
- gnomeos-deps/nftables.bst
- gnomeos-deps/firewalld.bst
- gnomeos-deps/ufw.bst

# VPN plugins (NetworkManager)
- gnomeos-deps/NetworkManager-openvpn.bst
- gnomeos-deps/NetworkManager-openconnect.bst
- gnomeos-deps/NetworkManager-vpnc.bst
- gnomeos-deps/NetworkManager-l2tp.bst
- gnomeos-deps/NetworkManager-pptp.bst
- gnomeos-deps/NetworkManager-sstp.bst
- gnomeos-deps/NetworkManager-strongswan.bst

# Shell and text tools
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/vim.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/man-pages.bst
- freedesktop-sdk.bst:components/plocate.bst

# Git
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/git-lfs.bst

# Firmware
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/sof-firmware.bst

# SSH
- freedesktop-sdk.bst:components/openssh-systemd.bst

# Sync
- freedesktop-sdk.bst:components/rsync.bst

# Hardware
- gnomeos-deps/android-udev-rules.bst
- gnomeos-deps/iio-sensor-proxy.bst
- gnomeos-deps/nvme-cli.bst
- gnomeos-deps/uinput.bst
- gnomeos-deps/switcheroo-control.bst
- gnomeos-deps/efibootmgr.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/libva.bst
- gnomeos-deps/powertop.bst
- gnomeos-deps/solaar.bst
- gnomeos-deps/ydotool.bst
- gnomeos-deps/libratbag.bst
- gnomeos-deps/steam-devices.bst
- gnomeos-deps/pam-u2f.bst
- gnomeos-deps/acsccid.bst
- gnomeos-deps/usb-modeswitch.bst
- gnomeos-deps/usbmuxd.bst
- gnomeos-deps/udev-hid-bpf.bst

# Filesystem support
# ntfs-3g omitted: modern kernels have ntfs3 built-in (5.15+)
- gnomeos-deps/btrfsmaintenance.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/xfsprogs.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/f2fs-tools.bst
- freedesktop-sdk.bst:components/lvm2.bst
- gnomeos-deps/udisks2-btrfs.bst

# Printing and scanning
- gnomeos-deps/sane-backends.bst
- gnomeos-deps/sane-airscan.bst
- gnomeos-deps/cups-browsed.bst
- gnomeos-deps/ipp-usb.bst
- gnomeos-deps/gutenprint.bst
- gnomeos-deps/hplip.bst

# VM support
- gnomeos-deps/virtiofsd.bst
- gnomeos-deps/swtpm.bst
- gnomeos-deps/spice-vdagent.bst
- freedesktop-sdk.bst:components/unzip.bst

# Network utilities
- gnomeos-deps/dnsmasq.bst
- gnomeos-deps/iw.bst
- gnomeos-deps/nss-mdns.bst

# Bluetooth (BlueDevil, KDE Plasma)
- freedesktop-sdk.bst:components/bluez.bst

# Wayland utilities
- gnomeos-deps/wl-clipboard.bst
- freedesktop-sdk.bst:components/xwayland.bst

# Realtime audio privileges
- gnomeos-deps/realtime-privileges.bst

# Zram swap
- gnomeos-deps/zram-generator.bst

# Console
- gnomeos-deps/kmscon.bst

# Shell
- gnomeos-deps/fish.bst
- gnomeos-deps/zsh.bst

# Zsh plugins
- gnomeos-deps/zsh-autosuggestions.bst
- gnomeos-deps/zsh-syntax-highlighting.bst
- gnomeos-deps/zsh-history-substring-search.bst
- gnomeos-deps/zsh-completions.bst

# Flathub
- gnomeos-deps/flathub-config.bst

# System config
- gnomeos-deps/journald-config.bst
- gnomeos-deps/nm-connectivity-config.bst
- gnomeos-deps/wpa-supplicant-config.bst

# Noise suppression
- gnomeos-deps/noise-suppression-for-voice.bst

# KDE Plasma extras
- kde/plasma/plasma-vault.bst

# Printing
- freedesktop-sdk.bst:components/cups-daemon.bst

# Network filesystems
- gnomeos-deps/nfs-utils.bst

# Power management (x86 Intel thermal daemon)
- gnomeos-deps/upower.bst
- gnomeos-deps/thermald.bst

# CLI tools (KDE Linux parity)
- gnomeos-deps/lsof.bst
- gnomeos-deps/tree.bst
- gnomeos-deps/alsa-utils.bst
- gnomeos-deps/inotify-tools.bst
- gnomeos-deps/espeak-ng.bst
- gnomeos-deps/drm-info.bst
- gnomeos-deps/fastfetch.bst
- gnomeos-deps/lshw.bst
- gnomeos-deps/wireguard-tools.bst
- gnomeos-deps/udftools.bst
- gnomeos-deps/cpupower.bst

# VM guest integration
- gnomeos-deps/qemu-guest-agent.bst

# XDG portal backends
- gnomeos-deps/xdg-desktop-portal-gtk.bst

# Archive format support (Ark)
- gnomeos-deps/arj.bst
- gnomeos-deps/lzop.bst
- gnomeos-deps/lrzip.bst
- gnomeos-deps/unrar.bst

# Document conversion
- gnomeos-deps/catdoc.bst

# Backup tools
- gnomeos-deps/bup.bst

# Encrypted filesystems
- gnomeos-deps/encfs.bst
- gnomeos-deps/cryfs.bst
- gnomeos-deps/gocryptfs.bst

# Filesystem tools
- freedesktop-sdk.bst:components/exfat-progs.bst
- gnomeos-deps/fatresize.bst
- gnomeos-deps/quota-tools.bst

# Android tools (ADB/fastboot)
- gnomeos-deps/android-tools.bst

# Audio encoding/decoding
- gnomeos-deps/libopusenc.bst
- gnomeos-deps/opus-tools.bst

# Spell checking and location
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:components/geoclue.bst

# RAW image support (Gwenview/digiKam)
- gnomeos-deps/libraw.bst

# Image codecs (HDR/JPEG XR)
- gnomeos-deps/imath.bst
- gnomeos-deps/openexr.bst
- gnomeos-deps/jxrlib.bst

# OCR support (Tesseract)
- gnomeos-deps/leptonica.bst
- gnomeos-deps/tesseract-data-eng.bst
- gnomeos-deps/tesseract.bst

# Fonts
- gnomeos-deps/noto-fonts-emoji.bst

# Spell check dictionaries
- gnomeos-deps/hunspell-en_us.bst

# Desktop integration (system tray, app menus)
- gnomeos-deps/libdbusmenu-gtk3.bst
- gnomeos-deps/ayatana-ido.bst
- gnomeos-deps/libayatana-indicator.bst
- gnomeos-deps/appmenu-gtk-module.bst
- gnomeos-deps/libappindicator-gtk3.bst

# AppImage support
- gnomeos-deps/squashfuse.bst
- gnomeos-deps/libappimage.bst

(?):
- arch == "aarch64":
    depends:
      (>):
      - gnomeos-deps/deps-aarch64.bst
- arch == "x86_64":
    depends:
      (>):
      - gnomeos-deps/microcode.bst
      - freedesktop-sdk.bst:components/ovmf.bst
