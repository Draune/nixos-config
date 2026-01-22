{pkgs, config, theme, ...}: {

  home.packages = with pkgs; [
    vesktop
  ];

  home.file.".config/vesktop/themes/theme.css".source = ../../themes/${theme}/vesktop-theme.css;
}
