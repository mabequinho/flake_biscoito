{ config, pkgs, libs, ... }: {
  imports = [ ./critical.nix ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    recommendedEnvironment = true;
    extraConfig = "\n";
  };
}
