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
    programs.git = {
    enable = true;
    config = {
        user = {
            name  = "Jan W.";
            email = "janjaydenw730@gmail.com";
        };
        init.defaultBranch = "main";
        };
    };
}