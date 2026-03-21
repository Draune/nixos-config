{ config, pkgs, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user";
  
  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    firefox
    unzip
    (python3.withPackages (python-pkgs: with python-pkgs; [
      tqdm
    ]))
    arandr
  ];

  _module.args = {
    theme = "default";
  };
  
  imports = [
    ../../modules/emacs
    ../../modules/exwm
    ../../modules/i3
    ../../modules/kitty
    ../../modules/vesktop
    ../../modules/virt-manager
  ];
  home.stateVersion = "25.11";
}
