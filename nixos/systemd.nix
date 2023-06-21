{ config, ... }: {

  systemd = {
    timers = {
      poffm = {
        description = "Poweroff during morning";
        timerConfig = {
          OnCalendar = "*-*-* 09..09:30/3";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      poffn = {
        description = "Poweroff during noon";
        timerConfig = {
          OnCalendar = "*-*-* 12..13:00/3";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      poffe = {
        description = "Poweroff during evening";
        timerConfig = {
          OnCalendar = "*-*-* 18..23:59/3";
          OnCalendar = "*-*-* 00..07:00/3";
          Unit = "systemd-poweroff.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
    };
  };
}
