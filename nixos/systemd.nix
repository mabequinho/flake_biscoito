{ config, ... }: {

  systemd = {
    timers = {
      break-morning = {
        description = "morning break";
        timerConfig = {
          OnCalendar = "*-*-* 09:*:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-noon = {
        description = "noon break";
        timerConfig = {
          OnCalendar = "*-*-* 12:*:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-afternoon = {
        description = "afternoon break";
        timerConfig = {
          OnCalendar = "*-*-* 15:*:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      ### currently unable to set multiple OnCalendar lines.
      break-evening = {
        description = "evening break";
        timerConfig = {
          OnCalendar = "*-*-* 18..23:*:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
      break-dawn = {
        description = "dawn break";
        timerConfig = {
          OnCalendar = "*-*-* 00..07:*:00/5";
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
    };
  };
}
