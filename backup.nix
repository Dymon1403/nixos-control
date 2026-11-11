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

  xresources.properties = {
    "XTerm*font" = "10x20";
    "XTerm*renderFont" = false;
    "XTerm*internalBorder" = 4;
    "XTerm*faceName" = "xft:cozette:pixelsize=18:antialias=false";
    "XTerm.vt100.translations" = "#override\n\
      Ctrl Shift <Key>C: copy-selection(CLIPBOARD)\n\
      Ctrl Shift <Key>V: insert-selection(CLIPBOARD)";

  };
  
   wayland.windowManager.hyprland.settings.exec-once = [
    "xrdb -merge ~/.Xresources"
  ];



}
