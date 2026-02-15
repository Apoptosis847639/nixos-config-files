# Just creates a user, will be configurable! You will need to give it a password, needed for base-desktop
{ config, lib, pkgs, ... }:

{
    users.users.apoptosis = {
        isNormalUser = true;
        extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
        packages = with pkgs; [
            tree
        ];
    };
}
