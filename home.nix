{ config, pkgs, ... }:

{
  home.username = "rex";
  home.homeDirectory = "/home/rex";
  home.stateVersion = "26.05";

  imports = [
	./home/fish.nix
	./home/kitty.nix
	./home/yazi.nix
	./home/waybar.nix
	./home/hyprpaper.nix
	./home/hyprshot.nix
	./home/hyprlock.nix
	./home/wlogout.nix	
	./home/fonts.nix
	./home/gtk.nix
  ];
}
