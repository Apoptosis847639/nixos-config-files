# Contains a bunch of developer tools and compilers, like git, binutils, and GCC
{ config, lib, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        gcc
        binutils
        python
        gnumake
        ninja
    ];
}