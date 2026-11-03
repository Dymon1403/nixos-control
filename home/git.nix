{ ... }:

{

  programs.git = {
    enable = true;
    settings = {
      user = {
        name  = "Dymon1403";
        email = "ne cmotri";
      };  

      extraConfig = {
        credential.helper = "store";
      };

      
      
      init.defaultBranch = "main";
    };
  };

}
