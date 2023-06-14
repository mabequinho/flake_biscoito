{ config, ... }: {
    programs= { 
    fish = {
        enable = true;
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