{ ... }:

{
  imports = [
    ./core
    ./apps
    ./desktop

    ./modules/ide/vscode
    ./modules/services/kdeconnect.nix
  ];

  home.stateVersion = "26.05";
}
