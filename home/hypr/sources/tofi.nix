{ config, pkgs,... }: {
  xdg.configFile = {
    "tofi/config".text = ''
      font-size = 12
      width = 600
      height = 600 
      background-color = #FBF7F0
      outline-width = 0
      border-width = 4
      border-color = #DDADAD
      text-color = #000000
      prompt-text = "RUN "


      margin-top = 2
      corder-radius = 30

    '';
  };
}
