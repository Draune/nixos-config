{...}: {
  # Don't really needs pkgs since I will already have Xorg installed

  # Add ~/.local/bin to PATH
  home.sessionPath = [ "$HOME/.local/bin" ];
  
  home.file.".local/bin/xephyr-exwm".source = ./xephyr-exwm/xephyr-exwm;
  home.file.".local/bin/xephyr-exwm".executable = true;
}
