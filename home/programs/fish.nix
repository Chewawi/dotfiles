{
  programs.fish = {
    enable = true;

    shellAliases = {
      ll = "eza -lah";
      la = "eza -la";
      ls = "eza";

      cat = "bat";

      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gp = "git push";
      gl = "git log --oneline --graph";

      # Build and management
      rebuild = "make -C ~/nixos deploy";
      retrying = "make -C ~/nixos test";
      nix-boot = "make -C ~/nixos boot";
      nix-debug = "make -C ~/nixos debug";

      # Updates and maintenance
      nix-up = "make -C ~/nixos up";
      nix-clean = "make -C ~/nixos clean";
      nix-history = "make -C ~/nixos history";
      nix-repl = "make -C ~/nixos repl";
    };

    functions = {
      nix-upp = {
        body = "make -C ~/nixos upp i=$argv[1]";
        description = "Update a specific flake input";
      };
    };
  };

  programs.zoxide.enable = true;
}
