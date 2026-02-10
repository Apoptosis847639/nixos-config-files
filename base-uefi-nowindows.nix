# Unlike foundation.nix, this file should be bootable, albiet with some issues... Like the lack of a user
# This file imports foundation.nix and gives it a bootloader, Systemd boot in this case!
{ config, lib, pkgs, ... }:

{
   imports = [
    "foundation.nix" # Importing the foundation
   ];

   # Enabling Systemd boot for UEFI
   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;
}