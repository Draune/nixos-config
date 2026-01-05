{pkgs, config, ...}: {
  # Don't really needs to install Xephyr (xorg.xserver) since I will already have Xorg installed
  
  home.packages = with pkgs; [
    (writeShellScriptBin "xephyr-exwm" (builtins.readFile ./xephyr-exwm/xephyr-exwm))
  ];

  xdg.desktopEntries = {
    exwm = {
      name = "EXWM";
      exec = "xephyr-exwm";
      comment = "Launch Emacs inside a Xephyr window";
      icon = ./emacs.png;
    };     
  };

  home.file.".xinitrc".source = ./xinitrc;
  
}
