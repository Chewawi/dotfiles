{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vesktop

    eza
    bat
    fd
    ripgrep
    lazygit
    fastfetch
    btop

    unzip
    zip

    # Development
    zed-editor
    jetbrains.rust-rover

    rustup
    go
    bun
    nodejs
    jdk21
    php
    gh
  ];
}
