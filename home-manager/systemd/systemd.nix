{ config, pkgs, ... }: {
  imports = [ /run/user/1000/secrets/ssystemd.nix ];
  systemd = {
    user = {
      services = {
        ulauncher-toggle = {
          Unit = {
            Description = "Linux Application Launcher";
            Documentation = [ "https://ulauncher.io" ];
          };
          Service = {
            Type = "simple";
            Restart = "always";
            RestartSec = 10;
            ExecStart = "${pkgs.ulauncher}/bin/ulauncher --hide-window";
          };
          Install = { WantedBy = [ "graphical-session.target" ]; };
        };
      };
    };
  };
}
