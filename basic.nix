# Basic Desktop Configuration
{ config, lib, pkgs, ... }:

{
    imports = [
        ./base-desktop.nix
        ./base-uefi-windows.nix
        ./modules/kdeplasma.nix
        ./modules/sddm.nix
        ./modules/devthings.nix
        ./modules/unfree.nix
	./modules/gaming.nix
	./modules/school.nix
	./modules/libvirtd.nix
	./modules/flatpak.nix
	./modules/roblox.nix
	./modules/audacity.nix
	# ./modules/home-manager.nix  won't download!
    ];

    networking.hostName = "apops-nixos";

    time.timeZone = "America/New_York";
}
