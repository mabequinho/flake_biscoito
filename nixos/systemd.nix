{ config, ... }: {

  systemd = {
    timers = {
      break = {
        description = "breaks";
        timerConfig = {
          OnCalendar = [
          "*-*-* 09:*:00/5"
          "*-*-* 12:*:00/5"
          "*-*-* 15:*:00/5"
          "*-*-* 18..23:*:00/5" 
          "*-*-* 00..07:*:00/5"
          ];
          Persistent = false;
          Unit = "systemd-suspend.service";
        };
        wantedBy = [ "multi-user.target" ];
      };
    };
  };
}
