# Adds SDDM.
{ config, lib, pkgs, ... }:

{
    services.desktopManager.plasma6.enable = true;
}