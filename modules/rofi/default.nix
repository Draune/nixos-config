{pkgs, config, theme, ...}: {
  home.packages = with pkgs; [
    rofi
  ];

  home.file.".config/rofi/config.rasi".source = ../../themes/${theme}/rofi-config.rasi;
}
