{ config, pkgs, ...}:

{
  home.username = "rex";
  home.homeDirectory = "/home/rex";
  home.stateVersion = "26.05";

  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      sansSerif = [ "JetBrainsMono Nerd Font" ];
      serif = [ "JetBrainsMono Nerd Font" ];
      monospace = [ "JetBrainsMono Nerd Font Mono" ];
    };
  };

  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };
  };

  programs.yazi = {
    enable = true;

    keymap = {
      mgr.prepend_keymap = [
        {
          on = [ "<C-c>" ];
          run = "shell --orphan 'printf \"file://%s\\n\" $argv | wl-copy --foreground -t text/uri-list' -- %s";
          desc = "Copy file(s) to system clipboard";
        }
      ];
    };
  };

  gtk = {
    enable = true;

    colorScheme = "dark";

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    theme = {
      name = "Adwaita-dark";
    };
  };

  programs.fish = {
    enable = true;

    loginShellInit = ''
      if status is-login
        if uwsm check may-start
          exec uwsm start hyprland-uwsm.desktop
        end
      end
    '';
  };
}
