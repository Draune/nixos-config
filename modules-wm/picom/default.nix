{pkgs, config, ...}: {
  services.picom = {
    enable = true;
    activeOpacity = 0.92;
    inactiveOpacity = 0.92;
  };
}
