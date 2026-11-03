{ ... }:

{

  programs.git = {
    enable = true;
    settings = {
      user = {
        name  = "Dymon1403";
        email = "dymaroxer1403@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };

}
