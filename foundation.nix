# Can't boot this file >:3
{ config, lib, pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     vim
     wget
     btop
     bat
     fastfetch
   ];

  system.stateVersion = "26.05"; # DO NOT EDIT, VERY IMPORTANT!
}

