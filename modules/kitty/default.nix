{pkgs, config, theme, ...}: {

  programs.kitty = {
    enable = true;
    extraConfig = "include ./theme.conf";
  };
  home.file.".config/kitty/theme.conf".source = ../../themes/${theme}/kitty-theme.conf;
}
