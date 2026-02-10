# Contains some gaming stuff
{ config, lib, pkgs, ... }:

{
    imports = [
        ./unfree.nix
    ];
    environment.systemPackages = with pkgs; [
        steam
        discord
        spotify
    ];
}