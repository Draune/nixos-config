{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [  
    # need to declare it in systemPackages too and to run it after launching the VM
    spice-vdagent
  ];

  services.xserver.videoDrivers = [ "qxl" ];
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;
}
