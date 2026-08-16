{ pkgs, ... }:

{
  programs.hyprlock = {
    enable = true;

    settings = {
      "$background" = "rgba(1e1e2eff)";
      "$surface" = "rgba(181825ee)";
      "$accent" = "rgba(89b4faff)";
      "$text" = "rgba(cdd6f4ff)";

      general = {
        hide_cursor = true;
        ignore_empty_input = true;
        immediate_render = true;
      };

      background = [
        {
          monitor = "";
          path = "screenshot";
          color = "$background";

          blur_size = 4;
          blur_passes = 3;
          noise = 0.0117;
          contrast = 1.3;
          brightness = 0.8;
          vibrancy = 0.21;
          vibrancy_darkness = 0.0;
        }
      ];

      label = [
        # Time: 15:42
        {
          monitor = "";
          text = "$TIME";
          color = "$accent";
          font_size = 112;
          font_family = "JetBrainsMono Nerd Font";

          shadow_passes = 3;
          shadow_size = 4;

          position = "0, 60";
          halign = "center";
          valign = "center";
        }

        # Date: Sunday 16 August
        {
          monitor = "";
          text =
            "cmd[update:60000] ${pkgs.coreutils}/bin/date '+%A %d %B'";
          color = "$text";
          font_size = 24;
          font_family = "JetBrainsMono Nerd Font";

          shadow_passes = 2;
          shadow_size = 3;

          position = "0, -40";
          halign = "center";
          valign = "center";
        }
      ];

      "input-field" = [
        {
          monitor = "";
          size = "250, 50";
          outline_thickness = 3;

          dots_size = 0.26;
          dots_spacing = 0.64;
          dots_center = true;
          dots_rounding = -1;

          rounding = 22;
          outer_color = "$surface";
          inner_color = "rgba(30, 30, 46, 0.85)";
          font_color = "$text";

          fade_on_empty = false;
          placeholder_text = "<i>Password...</i>";

          position = "0, 120";
          halign = "center";
          valign = "bottom";
        }
      ];
    };
  };
}
