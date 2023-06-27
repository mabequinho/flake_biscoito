{ config, ... }: {

  programs.kitty = {
    enable = true;
    font = {
      name = "Mononoki Nerd Font Mono";
      size = 10;
    };
    shellIntegration.enableFishIntegration = true;
    theme = "1984 Light";
  };
}
