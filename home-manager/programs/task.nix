{ config, ... }: {

  programs = {
    taskwarrior = {
      enable = true;
      colorTheme = "light-256";
    };
  };
}
