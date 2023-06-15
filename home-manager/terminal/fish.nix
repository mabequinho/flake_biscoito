{ config, pkgs, ... }: {
  programs = {
    fish = {
      enable = true;
      plugins = [
      { name = "hydro";
        src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "hydro";
          rev = "41b46a05c84a15fe391b9d43ecb71c7a243b5703";
          sha256 = "0y1lh0pcwcfq3mfaidl59nniiz6ga99mjm12ggrxi3kxcby1lqff";
        };}
        ];
    };
    mcfly = {
      enable = true;
      enableFishIntegration = true;
      keyScheme = "vim";
      enableLightTheme = true;

    };
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
