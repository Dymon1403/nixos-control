{ config, pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./waybar.nix
    ./nvim.nix
    ./git.nix
    ./dunst.nix
    ./shell.nix

  ];


  home.packages = [
    (pkgs.writeShellScriptBin "wake" ''
      exec ${pkgs.python3}/bin/python3 ${../scripts/wake.py} "$@"
    '')
  ];



  home.username = "dmitrj";
  home.homeDirectory = "/home/dmitrj";
  
  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

  home.stateVersion = "26.05";
}
