# Adds Libvirtd support
{ config, libs, pkgs, ...}:

{
	virtualisation.libvirtd = {
 		enable = true;
 		qemu = {
    			package = pkgs.qemu_kvm;
    			runAsRoot = true;
    			swtpm.enable = true;
  		};
	};
}
