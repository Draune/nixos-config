{pkgs, config, ...}: {

  programs.kitty = {
    enable = true;
    extraConfig = "include ./theme.conf";
  };
  home.file.".config/kitty/theme.conf".source = ../../themes/ef-melissa-light/kitty-theme.conf;
}
