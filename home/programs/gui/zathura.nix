{ config, ... }: {

  programs = {
    zathura = {
      enable = true;
      extraConfig = "";
      mappings = { };
      options = {
        font = "SF Pro Text 12";
        adjust-open = "best-fit";
        page-cache-size = 50;
        scroll-page-aware = true;
        pages-per-row = 2;
        advance-pages-per-row = true;
      };
    };
  };

}
