{ config, ... }: {

  systemd = {
    timers = {
      break-morning = {
        description = "morning break";
        timerConfig = {
          OnCalendar = "*-*-* 09..09:30:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-noon = {
        description = "noon break";
        timerConfig = {
          OnCalendar = "*-*-* 12..13:00:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-afternoon = {
        description = "afternoon break";
        timerConfig = {
          OnCalendar = "*-*-* 15..15:30:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      ### currently unable to set multiple OnCalendar lines.
      break-evening = {
        description = "evening break";
        timerConfig = {
          OnCalendar = "*-*-* 18..23:59:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-dawn = {
        description = "dawn break";
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
