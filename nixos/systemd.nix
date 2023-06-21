{ config, ... }: {

  systemd = {
    timers = {
      break-morning = {
        description = "Poweroff during morning";
        timerConfig = {
          OnCalendar = "*-*-* 09..09:30:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-noon = {
        description = "Poweroff during noon";
        timerConfig = {
          OnCalendar = "*-*-* 12..13:00:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-afternoon = {
        description = "Poweroff during afternoon";
        timerConfig = {
          OnCalendar = "*-*-* 15..15:30:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      ### currently unable to set multiple OnCalendar lines.
      break-evening = {
        description = "Poweroff during evening";
        timerConfig = {
          OnCalendar = "*-*-* 18..23:59:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-dawn = {
        description = "Poweroff during dawn";
        timerConfig = {
          OnCalendar = "*-*-* 00..07:00:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
    };
  };
}
