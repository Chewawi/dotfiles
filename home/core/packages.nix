{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nixd
    nixfmt

    vesktop

    eza
    bat
    fd
    ripgrep
    lazygit
    fastfetch
    btop
    gnumake
    wev

    unzip
    zip

    # Development
    zed-editor
    jetbrains.rust-rover
    jetbrains.phpstorm
    antigravity

    devenv
    rustup
    go
    bun
    nodejs
    jdk21
    php
    gh
  ];
}
