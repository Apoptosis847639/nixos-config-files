# Basic Desktop Configuration
{ config, lib, pkgs, ... }:

{
    imports = [
        ./base-desktop.nix
        ./base-uefi-nowindows.nix
        ./modules/kdeplasma.nix
        ./modules/sddm.nix
        ./modules/devthings.nix
        ./modules/unfree.nix
    ];
}