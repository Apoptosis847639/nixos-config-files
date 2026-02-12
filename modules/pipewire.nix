# Enables pipewire support
{ config, lib, pkgs, ... }:

{
    services.pipewire = {
        enable = true;
        pulse.enable = true;
    };
}