{pkgs, config, ...}: {
  home.packages = with pkgs; [
    xterm
  ];
  
  home.file.".Xresources".source = ./Xresources;
}
