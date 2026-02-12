# Contains some gaming stuff
{ config, lib, pkgs, ... }:

{    
    environment.systemPackages = with pkgs; [
        audacity
    ];
}
