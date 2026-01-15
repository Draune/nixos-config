{ config, lib, pkgs, modulesPath, ... }:

{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["user"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
  users.users.user.extraGroups = [ "libvirtd" ];
}
