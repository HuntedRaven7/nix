{ python3, config, pkgs, ... }:

{
  programs.git = {
    enable = true;
	 config = {
	   user.name = "Edward Groves";
           user.email = "EdwardGroves2007@proton.me";
	   init.defaultBranch = "main";
	  };
  };
}

