{ ... }:

{
  programs.clock-rs = {
    enable = true;

    settings = {
      general = {
        # Same neutral foreground as Kitty and Rofi
        color = "#e6e6e6";

        interval = 250;
        blink = true;
        bold = true;
      };

      position = {
        horizontal = "center";
        vertical = "center";
      };

      date = {
        fmt = "%A, %B %d, %Y";
        use_12h = false;
        utc = false;
        hide_seconds = true;
      };
    };
  };
}
