{pkgs, ...}: 
{
  hardware.opengl = {
    enable = true;
  };

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      # Base
      glibc
      stdenv.cc.cc
      libgcc

      # X11 / XCB
      xorg.libX11
      xorg.libXfixes
      xorg.libXi
      xorg.libxcb
      xorg.xcbutil
      xorg.xcbutilimage
      xorg.xcbutilkeysyms
      xorg.xcbutilrenderutil
      xorg.xcbutilwm

      # Wayland
      wayland
      wayland-protocols

      # Keyboard
      libxkbcommon

      # Audio
      alsa-lib
      pulseaudio

      # Video / GPU
      libGL
      mesa
      libva
      libvdpau

      # Fonts
      fontconfig
      freetype

      # System
      numactl
      systemd
      xz
      dbus
      pcre2
    ];
  };
}
