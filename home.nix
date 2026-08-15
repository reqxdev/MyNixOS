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

  gtk = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
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
