{ config, pkgs, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user";
  
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    unzip
  ];

  imports = [
    ../../modules/emacs
    ../../modules/exwm
    ../../modules/i3
    ../../modules/kitty
    ../../modules/vesktop
  ];
  home.stateVersion = "25.11";
}
