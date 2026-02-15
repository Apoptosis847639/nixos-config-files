{ config, pkgs, ... }:
{
  imports = [
    <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>

    # Provide an initial copy of the NixOS channel so that the user
    # doesn't need to run "nix-channel --update" first.
    <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
    ./modules/devthings.nix
    ./base-desktop-nouser.nix
    #./modules/hyprland.nix
    #./modules/sddm.nix
    ./modules/zsh.nix
    ./foundation.nix
    ./modules/ssh.nix
    ./modules/hyprland.nix
  ];
  # Create LiveCD user
  users.users.livecd = {
     isNormalUser = true;
     extraGroups = [ "wheel" ];
     password = "livecduser";
     shell = pkgs.zsh;
  };

  users.users.nixos.enable = false;

  # Modify sudo to not need a password
  security.sudo.wheelNeedsPassword = false; # Huge security risk btw, do not use the iso.nix file as a sys. config!

  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;  # enable copy and paste between host and guest

  environment.systemPackages = [ pkgs.mesa ];
}
