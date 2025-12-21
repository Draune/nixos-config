{ config, pkgs, ... }:

{
  home.username = "user";
  home.homeDirectory = "/home/user";

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  #   "Xft.dpi" = 172;
  # };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # Dev
    emacs
    libtool # to build vterm
    git
    gh
    nixd
    clang
    gcc
    gnumake
    cmake
    ninja
    firefox
  ];

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Draune";
    userEmail = "sioul.duaner@gmail.com";
  };

  # starship - an customizable prompt for any shell
  # programs.starship = {
  #   enable = true;
  #   # custom settings
  #   settings = {
  #     add_newline = false;
  #     aws.disabled = true;
  #     gcloud.disabled = true;
  #     line_break.disabled = true;
  #   };
  # };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.11";
}
