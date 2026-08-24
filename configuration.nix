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

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  hardware.enableRedistributableFirmware = true;

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
  services.udisks2.enable = true;
  security.pam.services.hyprlock = {};

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
  };

  programs.fish.enable = true;

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
	fish
	kitty
	git
	gh
	zip
	unzip
	hyprlock
	hyprpaper
	hyprshot
	waybar
	rofi
	yazi
	thunar
	wl-clipboard
	fastfetch
	firefox
	spotify
	vesktop
	obs-studio
	prismlauncher
	codex
	vscode
	jetbrains.idea
	javaPackages.compiler.temurin-bin.jdk-25
	nodejs
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  system.stateVersion = "26.05";

}
