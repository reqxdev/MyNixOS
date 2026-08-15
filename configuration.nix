{ config, lib, pkgs, ... }:

{
  imports =
    [ 
	/etc/nixos/hardware-configuration.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "MyNix";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/London";

  users.users.rex = {
   isNormalUser = true;
   shell = pkgs.fish;
   extraGroups = [ "wheel" "networkmanager" ];
   packages = with pkgs; [
       tree
     ];
   };

  services.getty.autologinUser = "rex";
  
  programs.hyprland = {
  	enable = true;
	xwayland.enable = true;
	withUWSM = true;
        
  };

   environment.systemPackages = with pkgs; [
	fish
	kitty
	git
	gh
	hyprpaper
	hyprlock
	waybar
	rofi
	yazi
	fastfetch
	firefox
	prismlauncher
	vesktop
	vscodium
	javaPackages.compiler.temurin-bin.jdk-25
   ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];


  programs.fish.enable = true;
  programs.firefox.enable = true;

  
  system.stateVersion = "26.05";

}

