{ config, pkgs, username, ... }:

{
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";
  
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
  ];

  imports = [
    ../../modules/emacs
    ../../modules/exwm
    ../../modules/i3
  ];
}
