{pkgs, config, ...}: {

  home.packages = with pkgs; [
    vesktop
  ];

  home.file.".config/vesktop/themes/theme.conf".source = ../../themes/ef-melissa-light/vesktop-theme.css;
}
