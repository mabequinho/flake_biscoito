{ config, ... }: {

  systemd = {
    timers = {
      poffm = {
        description = "Poweroff during morning";
        timerConfig = {
          OnCalendar = "*-*-* 09:00:00";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      poffn = {
        description = "Poweroff during noon";
        timerConfig = {
          OnCalendar = "*-*-* 12:00:00";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      poffe = {
        description = "Poweroff during evening";
        timerConfig = {
          OnCalendar = "*-*-* 18:00:00";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
    };
  };
}
