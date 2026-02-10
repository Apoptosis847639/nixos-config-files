# Unlike foundation.nix, this file should be bootable, albiet with some issues... Like the lack of a user
# This file imports foundation.nix and gives it a bootloader, GRUB in this case since it is BIOS boot!
{ config, lib, pkgs, ... }:

{
   imports = [
    "foundation.nix" # Importing the foundation
   ];

   # Enabling GRUB bootloader for BIOS, also this automatically enables OS-Prober, so you don't need to import the OS-Prober module!
   # WARNING! You need to set the device for grub to install on MANUALLY!
   boot.loader.grub.device = "nodev"; # REMEMBER TO ADD A DEVICE HERE, NODEV WILL LEAD TO A FAILED BOOT!!
   boot.loader.grub.useOSProber = true;
}