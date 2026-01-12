{pkgs, ...}: {
  # every thing I need to use with emacs and for dev
  home.packages = with pkgs; [
    libtool # to build vterm
    git
    gh

    # build tools
    gnumake
    cmake
    ninja

    # compilers
    # needed because "ld" of gcc and cland enter in conflict
    (lib.hiPrio gcc)

    # lsp servers
    nixd
    clang

    # other tools
    fd
    ripgrep
  ];

  programs.git = {
    enable = true;
    settings.user.name = "Draune";
    settings.user.email = "sioul.duaner@gmail.com";
  };
  
  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };
  
  home.file.".emacs.d" = {
    source = ./emacs-config;
    recursive = true;
  };
  home.file.".emacs/theme.el".source = ../../themes/ef-melissa-light/emacs-theme.el;
}
