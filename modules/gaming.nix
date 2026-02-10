# Contains some gaming stuff
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        steam
        discord
        spotify
    ];
}