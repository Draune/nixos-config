{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [  
    # need to declare it in systemPackages too and to run it after launching the VM
    spice-vdagent
  ];

  # let bootloader be config specific 
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";
  boot.loader.grub.useOSProber = true;
  
  services.xserver.videoDrivers = [ "qxl" ];
  services.qemuGuest.enable = true;
  
  # run "spice-autorandr &; spice-vdagent &"
  services.spice-vdagentd.enable = true;
  services.spice-autorandr.enable = true;
}
