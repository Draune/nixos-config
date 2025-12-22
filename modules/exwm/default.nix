{pkgs, ...}: {
  # Don't really needs pkgs since I will already have Xorg installed
  home.packages = with pkgs; [
  ];

  home.file.".local/bin/xephyr-exwm".source = ./xephyr-exwm/xephyr-exwm;
}
