{ inputs, lib, config, pkgs, ... }: {

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
