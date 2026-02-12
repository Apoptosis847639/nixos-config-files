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
    ];

    networking.hostName = "apops-nixos";

    time.timeZone = "America/New_York";
}