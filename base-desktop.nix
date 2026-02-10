# This gives you a "desktop", not really, it gives you services like X11, programs like firefox, and things you'd need for a desktop env.
# but you still have to import the desktop env. module you want!
{ config, lib, pkgs, ... }:

{
    imports = [
        ./modules/user.nix
    ];
    environment.systemPackages = with pkgs; [
        kitty # Add Kitty, the terminal emulator
    ];
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable firefox
    programs.firefox.enable = true;
}