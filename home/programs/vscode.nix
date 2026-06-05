{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    profiles.default = {
      userSettings = {
        "workbench.colorTheme" = "Catppuccin Mocha";
        "editor.fontSize" = 14;
        "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'monospace', monospace";
        "editor.semanticHighlighting" = true;
        "window.titleBarStyle" = "custom";
        "telemetry.telemetryLevel" = "off";
      };

      extensions = with pkgs.vscode-extensions; [
        jnoortheen.nix-ide
        rust-lang.rust-analyzer
        usernamehw.errorlens
        catppuccin.catppuccin-vsc
      ];
    };
  };
}
