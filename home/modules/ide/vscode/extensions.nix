{ pkgs, ... }:

{
  programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
    # theme
    catppuccin.catppuccin-vsc
    catppuccin.catppuccin-vsc-icons

    biomejs.biome

    # utils
    #eamodio.gitlens
    wakatime.vscode-wakatime
    usernamehw.errorlens
    christian-kohler.path-intellisense

    # rust
    rust-lang.rust-analyzer
    tamasfe.even-better-toml
    fill-labs.dependi

    # nix
    jnoortheen.nix-ide
    mkhl.direnv

    # flutter
    dart-code.flutter
    dart-code.dart-code
  ];
}
