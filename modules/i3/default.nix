{pkgs, config, theme, ...}: {
  # Don't really needs to install Xephyr (xorg.xserver) since I will already have Xorg installed
  
  home.packages = with pkgs; [
    (writeShellScriptBin "xephyr-i3" (builtins.readFile ./xephyr-i3))
  ];
  
  imports = [
    ../feh
    ../picom
    ../maim
    ../rofi
    ../kitty
  ];

  xdg.desktopEntries = {
    xephyr-i3 = {
      name = "xephyr-i3";
      exec = "xephyr-i3";
      comment = "Launch i3 inside a Xephyr window";
      icon = ./i3.png;
    };     
  };
  
  xdg.configFile."i3/config".source = ./config;
  xdg.configFile."i3/colors.conf".source = ../../themes/${theme}/i3-colors.conf;
  xdg.configFile."i3status/config".source = ../../themes/${theme}/i3status-config;
}
