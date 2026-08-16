{ config, ... }:

{
  systemd.user.sessionVariables = {
    HYPRSHOT_DIR = "${config.home.homeDirectory}/Pictures/Screenshots";
  };
}
