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

    theme = ''
      * {
          /* Заменили @theme "colors" на переменные Stylix */
          bg-col: @base00;
          fg-col: @base05;
          fg-col2: @base0D; /* Акцентный цвет (синий/белый) */
          selected-col: @base01; 
          border-col: @base0D;

          background-color: transparent;
          text-color: @fg-col;
          border: 0;
      }

      window {
          border: 1px;
          border-color: @border-col;
          border-radius: 10px;
          background-color: @bg-col;
          width: 50%;
      }

      mainbox {
          background-color: transparent;
          padding: 5px;
      }

      inputbar {
          children: [prompt, entry];
          background-color: transparent;
      }

      prompt {
          enabled: false;
      }

      entry {
          padding: 20px 20px;
          text-color: @fg-col;
          background-color: transparent;
          placeholder: "Search...";
          placeholder-color: @base03;
      }

      listview {
          lines: 4;
          columns: 3;
          background-color: transparent;
      }

      element {
          padding: 10px 10px;
          background-color: transparent;
          text-color: @fg-col;
      }

      element selected {
          background-color: @selected-col;
          text-color: @fg-col2;
      }

      element-icon {
          enabled: false;
          background-color: transparent;
      }

      element-text {
          background-color: transparent;
          text-color: inherit;
      }

      element selected element-text {
          background-color: transparent;
          text-color: @fg-col2;
      }

      textbox {
          text-color: @fg-col;
          background-color: transparent;
          horizontal-align: 0.5;
          vertical-align: 0.5;
      }

      error-message {
          background-color: @bg-col;
          padding: 50px;
          margin: 0px;
      }
    '';
  };
}
