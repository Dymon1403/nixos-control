{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    
    extraConfig = {
      modi = "run,drun";
      font = "Noto Sans Mono Bold 10";
      drun-display-format = "{name}";
      location = 0;
      disable-history = false;
      hide-scrollbar = true;
      sidebar-mode = false;
    };
    
    theme = {
      "*" = {
        bg-col = "@base00";
        fg-col = "@base05";
        fg-col2 = "@base0D";
        selected-col = "@base01";
        border-col = "@base0D";
        text-color = "@fg-col";
        border = "0";
      };

      "window" = {
        width = "600px";
        location = "center";
        anchor = "center";
        padding = "0";
        border = "1px";
        border-color = "@border-col";
        border-radius = "10px";
        background-color = "@bg-col";
      };

      "mainbox" = {
        background-color = "transparent";
        children = [ "inputbar" "listview" ];
        spacing = "10px";
      };

      "inputbar" = {
        background-color = "rgba(20, 20, 20, 0.85)";
        border-radius = "10px";
        padding = "15px 20px";
        children = [ "prompt" "entry" ];
        border = "1px";
        border-color = "rgba(255, 255, 255, 0.1)";
      };

      "prompt" = {
        enabled = true;
        padding = "0 10px 0 0";
        text-color = "@fg-col";
      };

      "entry" = {
        text-color = "@fg-col";
        placeholder = "Введи команду...";
        placeholder-color = "@base03";
      };

      "listview" = {
        background-color = "rgba(20, 20, 20, 0.95)";
        border-radius = "10px";
        padding = "10px";
        lines = 5;
        columns = 1;
        border = "1px";
        border-color = "rgba(255, 255, 255, 0.1)";
      };

      "element" = {
        padding = "8px 15px";
        border-radius = "5px";
        background-color = "transparent";
        text-color = "@fg-col";
      };

      "element selected" = {
        background-color = "@selected-col";
        text-color = "@fg-col2";
      };
    };
  };
}
