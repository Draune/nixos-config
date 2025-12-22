{ config, pkgs, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user";
  
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
  ];

  imports = [
    ./modules/emacs
  ];
  home.stateVersion = "25.11";
}
