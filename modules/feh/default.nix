{pkgs, config, theme, ...}: {
  home.packages = with pkgs; [
    feh
  ];
  home.file.".wallpaper.jpg".source = ../../themes/${theme}/wallpaper.jpg;
}
