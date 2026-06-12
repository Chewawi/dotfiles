{ ... }:

{
  programs.vscode.profiles.default.userSettings = {
    # appearance
    "workbench.colorTheme" = "Catppuccin Mocha";
    "workbench.iconTheme" = "catppuccin-mocha";

    # editor
    "editor.fontLigatures" = true;
    "editor.fontSize" = 14;
    "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'monospace', monospace";
    "editor.semanticHighlighting.enabled" = true;
    "window.titleBarStyle" = "custom";
    "telemetry.telemetryLevel" = "off";

    # UX
    "workbench.editor.showTabs" = "multiple";
    "explorer.compactFolders" = false;
    "editor.minimap.enabled" = false;
    "editor.stickyScroll.enabled" = true;

    # nix
    "nix.enableLanguageServer" = true;
    "nix.serverPath" = "nixd";

    "nix.serverSettings" = {
      nixd = {
        nixpkgs.expr = "import (builtins.getFlake \"/home/chewawi/nixos\").inputs.nixpkgs { }";
        options = {
          nixos.expr = "(builtins.getFlake \"/home/chewawi/nixos\").nixosConfigurations.nixos.options";
          home-manager.expr = "(builtins.getFlake \"/home/chewawi/nixos\").nixosConfigurations.nixos.options.home-manager.users.type.getSubOptions []";
        };
      };
    };

    # rust
    "rust-analyzer.cargo.targetDir" = true;
    "rust-analyzer.procMacro.enable" = true;
    "rust-analyzer.check.command" = "clippy";
    "rust-analyzer.cargo.buildScripts.enable" = true;

    # performance
    "files.watcherExclude" = {
      "**/.git/objects/**" = true;
      "**/.git/subtree-cache/**" = true;
      "**/node_modules/**" = true;
      "**/target/**" = true;
    };
  };
}
