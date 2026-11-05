{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    
    shellAliases = {
     
      ls = "ls --color=auto";
      grep = "grep --color=auto";
      bt = "bluetoothctl";
      ff = "fastfetch";
      cm = "cmus";
      home = "ssh server@192.168.0.228";
      nn = "nvim ~/dot/configuration.nix";
      zap = "./zapret.sh";
      ss = "sudo nixos-rebuild switch --flake .#thinkpad";

    };

    initExtra = ''
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

  xresources.properties = {
    "XTerm*font" = "10x20";
    "XTerm*renderFont" = false;
    "XTerm*internalBorder" = 4;
    "XTerm*faceName" = "xft:cozette:pixelsize=18:antialias=false";
  };

  xsession.initExtra = ''
    ${pkgs.xorg.xrdb}/bin/xrdb -merge ~/.Xresources
  '';


}
