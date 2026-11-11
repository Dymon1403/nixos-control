{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    
    shellAliases = {
     
      home = "ssh server@192.168.0.228";
      ss = "sudo nixos-rebuild switch --flake .#thinkpad";

    };

    initExtra = ''
    export PATH="$HOME/.local/bin:$PATH"
    export EDITOR= "nvim";
    export TERMINAL= "alacritty"
    '';
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
  };


}
