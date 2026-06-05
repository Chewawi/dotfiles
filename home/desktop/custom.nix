{ pkgs, ... }:

{
  programs.illogical-impulse = {
    enable = true;

    dotfiles = {
      fish.enable = true;
      kitty.enable = true;
      starship.enable = true;
      zshrc.enable = true;
      hyprland.enable = true;
      hyprlock.enable = true;
      hypridle.enable = true;
      quickshell.enable = true;
      wlogout.enable = true;
      fuzzel.enable = true;
      xdg-desktop-portal.enable = true;
      kde-material-you-colors.enable = true;
      kdeglobals.enable = true;
      Kvantum.enable = true;
      matugen.enable = true;
      darklyrc.enable = true;
      dolphinrc.enable = true;
      chrome-flags.enable = true;
      thorium-flags.enable = true;
      code-flags.enable = true;
    };
  };

  xdg.configFile."hypr/custom/general.lua".text = ''
    hl.config({
      input = {
        kb_layout = "latam",
        numlock_by_default = false,

        touchpad = {
            natural_scroll = false,
            disable_while_typing = true,
            clickfinger_behavior = false,
            scroll_factor = 0.7
        }
      }
    })
  '';
}
