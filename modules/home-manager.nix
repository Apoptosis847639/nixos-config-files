# Adds home manager
{ config, lib, pkgs, ...}:
{
	imports = [
	<home-manager/nixos>	
	./user.nix
	];
	home-manager.useUserPackages = true;
	home-manager.useGlobalPkgs = true;
	home-manager.backupFileExtension = "backup";
	home-manager.users.apoptosis = import ../home.nix;	
}
