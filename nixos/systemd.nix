{ config, ... }: {

  systemd = {
    timers = {
      poffm = {
        description = "Poweroff during morning";
        timerConfig = {
          OnCalendar = "*-*-* 09..09:30";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
        onFailure = [ systemd-poweroff.service ]
      };
      poffn = {
        description = "Poweroff during noon";
        timerConfig = {
          OnCalendar = "*-*-* 12..13:00";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
        onFailure = [ systemd-poweroff.service ]
      };
      poffe = {
        description = "Poweroff during evening";
        timerConfig = {
          OnCalendar = "*-*-* 18..23:00";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
        onFailure = [ systemd-poweroff.service ]
      };
    };
  };
}
