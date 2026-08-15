{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        reload_style_on_change = true;

        modules-left = [
          "temperature"
          "cpu"
          "memory"
        ];

        modules-center = [
          "clock"
        ];

        modules-right = [
          "battery"
          "wireplumber"
          "custom/power"
        ];

        # CPU temperature
        temperature = {
          format = " {temperatureC}°C";
          tooltip = true;
        };

        # CPU usage
        cpu = {
          format = "󰍛 {usage}%";
          tooltip = true;
        };

        # RAM usage
        memory = {
          format = " {percentage}%";
          tooltip = true;
        };

        # Clock + date
        clock = {
          format = "{:%H:%M | %a %d %b}";
          tooltip = false;
        };

        # Battery
        battery = {
          interval = 30;
          format = "󰁹 {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-full = "󰁹 {capacity}%";
          tooltip = true;
        };

        # Volume
        wireplumber = {
          format = " {volume}%";
          format-muted = "󰝟 muted";
          tooltip = true;
        };

        # Power button
        "custom/power" = {
          format = "⏻";
          tooltip = true;
          tooltip-format = "Power menu";
          on-click = "hyprshutdown";
        };
      };
    };

    style = ''
      * {
        font-size: 11px;
        font-family: "JetBrainsMono Nerd Font";
      }

      window#waybar {
        all: unset;
      }

      /* ───────────── Left ───────────── */

      .modules-left {
        padding: 3px 5px;
        margin: 4px 0px 0px 5px;
        border-radius: 6px;
        background: alpha(#2e3440, 0.65);
      }

      /* ───────────── Center ───────────── */

      .modules-center {
        padding: 3px 7px;
        margin: 4px 0px 0px 0px;
        border-radius: 6px;
        background: alpha(#2e3440, 0.65);
      }

      /* ───────────── Right ───────────── */

      .modules-right {
        padding: 3px 5px;
        margin: 4px 5px 0px 0px;
        border-radius: 6px;
        background: alpha(#2e3440, 0.65);
      }

      /* ───────────── Modules ───────────── */

      #temperature,
      #cpu,
      #memory,
      #clock,
      #battery,
      #wireplumber,
      #custom-power {
        padding: 0px 4px;
        color: #ffffff;
      }

      /* ───────────── Power ───────────── */

      #custom-power {
        padding-left: 6px;
        padding-right: 3px;
      }

      #custom-power:hover {
        color: #ffffff;
        text-shadow: 0px 0px 4px rgba(255, 255, 255, 0.8);
      }
    '';
  };
}
