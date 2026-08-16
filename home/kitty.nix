{ ... }:

{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    settings = {
      background = "#0b1018";
      foreground = "#cdd6f4";

      background_opacity = "0.76";
      dynamic_background_opacity = "yes";

      window_padding_width = 14;
      hide_window_decorations = "yes";

      confirm_os_window_close = 0;
    };
  };
}
