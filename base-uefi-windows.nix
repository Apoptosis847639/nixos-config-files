# Unlike foundation.nix, this file should be bootable, albiet with some issues... Like the lack of a user
# This file imports foundation.nix and gives it a bootloader, GRUB in this case! This file also imports
# The OSProber module automatically
{ config, lib, pkgs, ... }:

{
   imports = [
    "foundation.nix" # Importing the foundation
    "./modules/uefi-osprober.nix" # Importing OSProber support
   ];

   # Enabling GRUB for UEFI
   boot.loader.efi.canTouchEfiVariables = true;
   boot.loader.grub.device = "nodev";
   boot.loader.grub.efiSupport = true;
}