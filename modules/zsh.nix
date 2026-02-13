{config, libs, pkgs, ...}:

{

programs.zsh = {
    enable = true;
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "z"
      ];
      theme = "robbyrussell";
    };

    shellAliases = {
	cat = "bat";
	root = "sudo -i";
        rebuild = "sudo nixos-rebuild switch";
        rebuild-boot = "sudo nixos-rebuild boot";
    };
   
  };


}
