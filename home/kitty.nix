{ ... }:

{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    settings = {
      background = "#101010";
      foreground = "#e6e6e6";

      background_opacity = "0.82";
      dynamic_background_opacity = "yes";

      window_padding_width = 14;
      hide_window_decorations = "yes";

      confirm_os_window_close = 0;
    };
  };
}
