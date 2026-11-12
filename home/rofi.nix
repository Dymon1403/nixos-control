{ pkgs, config, ... }:


let
  inherit (config.lib.formats.rasi) mkLiteral;
in
{
  
  stylix.targets.rofi.enable = false;

  
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
        # Ссылки на переменные и цвета оборачиваем в mkLiteral
        bg-col = mkLiteral "@base00";
        fg-col = mkLiteral "@base05";
        fg-col2 = mkLiteral "@base0D";
        selected-col = mkLiteral "@base01";
        border-col = mkLiteral "@base0D";
        text-color = mkLiteral "@fg-col";
        border = "0";
      };

      "window" = {
        width = "600px";
        location = "center";
        anchor = "center";
        padding = "0";
        border = "1px";
        border-color = mkLiteral "@border-col";
        border-radius = "10px";
        background-color = mkLiteral "@bg-col";
      };

      "mainbox" = {
        background-color = "transparent";
        children = [ "inputbar" "listview" ];
        spacing = "10px";
      };

      "inputbar" = {
        # rgba тоже нужно оборачивать
        background-color = mkLiteral "rgba(20, 20, 20, 0.85)";
        border-radius = "10px";
        padding = "15px 20px";
        children = [ "prompt" "entry" ];
        border = "1px";
        border-color = mkLiteral "rgba(255, 255, 255, 0.1)";
      };

      "prompt" = {
        enabled = true;
        padding = "0 10px 0 0";
        text-color = mkLiteral "@fg-col";
      };

      "entry" = {
        text-color = mkLiteral "@fg-col";
        placeholder = "Введи команду...";
        placeholder-color = mkLiteral "@base03";
      };

      "listview" = {
        background-color = mkLiteral "rgba(20, 20, 20, 0.95)";
        border-radius = "10px";
        padding = "10px";
        lines = 5;
        columns = 1;
        border = "1px";
        border-color = mkLiteral "rgba(255, 255, 255, 0.1)";
      };

      "element" = {
        padding = "8px 15px";
        border-radius = "5px";
        background-color = "transparent";
        text-color = mkLiteral "@fg-col";
      };

      "element selected" = {
        background-color = mkLiteral "@selected-col";
        text-color = mkLiteral "@fg-col2";
      };
    };
  };
}
