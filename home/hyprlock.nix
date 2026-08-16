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
          path = "/home/rex/Pictures/Wallpapers/mountain.jpg";
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
    size = "320, 58";
    outline_thickness = 1;

    dots_size = 0.22;
    dots_spacing = 0.30;
    dots_center = true;
    dots_rounding = -1;

    rounding = 18;

    # Translucent glass
    inner_color = "rgba(30, 30, 46, 0.32)";
    outer_color = "rgba(255, 255, 255, 0.28)";
    font_color = "$text";

    check_color = "rgba(255, 255, 255, 0.40)";
    fail_color = "rgba(243, 139, 168, 0.80)";

    # Soft glass shadow
    shadow_passes = 4;
    shadow_size = 8;
    shadow_color = "rgba(0, 0, 0, 0.40)";
    shadow_boost = 1.2;

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
