# Can't boot this file >:3
{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
        ./hardware-configuration.nix
    ];
  environment.systemPackages = with pkgs; [
    vim
    wget
    neovim
    btop
    bat
    fastfetch
  ];

  networking.networkmanager.enable = true;

  system.stateVersion = "26.05"; # DO NOT EDIT, VERY IMPORTANT!
}

