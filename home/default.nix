{ pkgs, ... }:

{
  imports = [
    ./core/git.nix
    ./core/packages.nix

    ./programs/fish.nix
    ./programs/vscode.nix
    ./programs/spotify.nix

    ./desktop/custom.nix
  ];

  home.stateVersion = "26.05";
}
