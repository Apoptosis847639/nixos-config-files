# School stuff.. ughh, so just libreoffice
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        libreoffice
    ];
}