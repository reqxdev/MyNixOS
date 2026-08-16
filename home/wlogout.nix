{ pkgs, ... }:

{
  programs.wlogout = {
    enable = true;

    layout = [
      {
        label = "lock";
        action = "hyprlock";
        text = "Lock  [L]";
        keybind = "l";
      }
      {
        label = "logout";
        action = "uwsm stop";
        text = "Logout  [E]";
        keybind = "e";
      }
      {
        label = "suspend";
        action = "hyprlock & sleep 1; systemctl suspend";
        text = "Suspend  [S]";
        keybind = "s";
      }
      {
        label = "reboot";
        action = "systemctl reboot";
        text = "Reboot  [R]";
        keybind = "r";
      }
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown  [O]";
        keybind = "o";
      }
    ];

    style = ''
      * {
        background-image: none;
        font-family: "JetBrainsMono Nerd Font";
        box-shadow: none;
      }

      window {
        background-color: rgba(7, 11, 18, 0.34);
      }

      button {
        color: rgba(255, 255, 255, 0.96);
        font-size: 16px;
        font-weight: 700;

        background-color: rgba(42, 55, 72, 0.44);

        border-style: solid;
        border-width: 1px;
        border-color: rgba(255, 255, 255, 0.12);
        border-radius: 30px;

        background-repeat: no-repeat;
        background-position: center 35%;
        background-size: 72px;

        text-shadow: 0 2px 5px rgba(0, 0, 0, 0.75);

        box-shadow:
          inset 0 1px 0 rgba(255, 255, 255, 0.10),
          0 18px 40px rgba(0, 0, 0, 0.30);

        transition: all 180ms ease-in-out;
      }

      button:hover,
      button:focus {
        background-color: rgba(68, 83, 102, 0.55);
        border-color: rgba(255, 255, 255, 0.24);

        box-shadow:
          inset 0 1px 0 rgba(255, 255, 255, 0.16),
          0 20px 44px rgba(0, 0, 0, 0.36);

        outline-style: none;
      }

      button:active {
        background-color: rgba(32, 43, 58, 0.62);
      }

      #lock {
        background-image:
          image(url("${pkgs.wlogout}/share/wlogout/icons/lock.png"));
      }

      #logout {
        background-image:
          image(url("${pkgs.wlogout}/share/wlogout/icons/logout.png"));
      }

      #suspend {
        background-image:
          image(url("${pkgs.wlogout}/share/wlogout/icons/suspend.png"));
      }

      #reboot {
        background-image:
          image(url("${pkgs.wlogout}/share/wlogout/icons/reboot.png"));
      }

      #shutdown {
        background-image:
          image(url("${pkgs.wlogout}/share/wlogout/icons/shutdown.png"));
      }
    '';
  };
}
