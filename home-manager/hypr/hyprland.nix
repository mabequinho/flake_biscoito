{ config, pkgs, libs, ... }: {

  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    recommendedEnvironment = true;
    extraConfig = "\n";
  };
}
