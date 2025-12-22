{pkgs, ...}: {
  # every thing I need to use with emacs and for dev
  home.packages = with pkgs; [
    emacs
    libtool # to build vterm
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
  ];

  programs.git = {
    enable = true;
    settings.user.name = "Draune";
    settings.user.email = "sioul.duaner@gmail.com";
  };

  home.file.".emacs.d" = {
    source = ./emacs-config;
    recursive = true;
  };
}
