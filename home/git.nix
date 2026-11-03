{ ... }:

{

  programs.git = {
    enable = true;
    settings = {
      user = {
        name  = "Dymon1403";
        email = "ne cmotri";
      };
        
        url."git@github.com:".insteadOf = "https://github.com/";
      
      
      init.defaultBranch = "main";
    };
  };

}
