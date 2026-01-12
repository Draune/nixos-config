{pkgs, config, ...}: {
  services.picom = {
    enable = true;
    activeOpacity = 0.90;
    inactiveOpacity = 0.90;
    opacityRules = [
      "80:class_g = 'firefox'"
      "80:class_g = 'vesktop'"
      "70:class_g = 'kitty'"
    ];
  };
}
