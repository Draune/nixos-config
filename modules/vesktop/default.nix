{pkgs, config, ...}: {

  home.packages = with pkgs; [
    vesktop
  ];

  home.file.".config/vesktop/themes/theme.css".source = ../../themes/ef-melissa-light/vesktop-theme.css;
}
