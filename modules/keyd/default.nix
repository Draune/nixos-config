{pkgs, config, ...}: {
  environment.systemPackages = with pkgs; [
    keyd
  ];

  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            space = "overload(control, space)";
          };
        };
      };
    }
    ;
  };
  
}
