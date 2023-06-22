{ config, lib, pkgs, ... }: {

  systemd = {
    user.timers = {
      gnome-break = {
        description = "Break gnome session";
        timerConfig = {
          OnCalendar = [
            "*-*-* 09:*:00/5"
            "*-*-* 12:*:00/5"
            "*-*-* 15:*:00/5"
            "*-*-* 18..23:*:00/5"
            "*-*-* 00..07:*:00/5"
          ];
          Persistent = false;
        };
        wantedBy = [ "gnome-session.target" ];
      };
      gnome-break-reminder = {
        description = "Break notification";
        timerConfig = {
          OnCalendar = [
            "*-*-* 08:57:00"
            "*-*-* 11:57:00"
            "*-*-* 14:57:00"
            "*-*-* 17:57:00"
          ];
          Persistent = false;
        };
        wantedBy = [ "gnome-session.target" ];
      };
    };
    user.services = {
      gnome-break-reminder = {
        description = "Break notificaton";
        script = ''
          ${
            lib.getBin pkgs.libnotify
          }/bin/notify-send -u critical -c suspend "Take a break" "Break in 2 minutes"
        '';
      };
      gnome-break = {
        description = "Lock gnome screen and suspend";
        script = ''
          ${
            lib.getBin pkgs.dbus
          }/bin/dbus-send --type=method_call --dest=org.gnome.ScreenSaver \
            /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock
        '';
      };
    };
  };
}
