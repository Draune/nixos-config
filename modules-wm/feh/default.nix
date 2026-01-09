{pkgs, config, ...}: {
  home.packages = with pkgs; [
    feh
  ];
  home.file.".wallpaper.jpg".source = ./wallpaper.jpg;
}
