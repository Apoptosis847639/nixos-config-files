# This module simply enables OS-Prober for use with UEFI
{ config, lib, pkgs, ... }:

{
   boot.loader.grub.useOSProber = true;
}