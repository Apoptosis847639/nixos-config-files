{ config, pkgs, ...}:

{
	home.username = "apoptosis";
	home.homeDirectory = "/home/apoptosis";
	home.stateVersion = "25.11";
	programs.bash = {
		enable = true;
		initExtra = ''
			PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\[\e[91;1m\]${PS1_CMD1}\[\e[0m\] \[\e[92m\]\d\[\e[0m\] \t \[\e[94m\]\w\[\e[0m\] \[\e[95m\]\u\[\e[0m\] \\$ '
		'';
	};
}
