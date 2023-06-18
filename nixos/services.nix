{ config, pkgs, ... }: {

  services = {
    calibre-web = {
      enable = true;
      user = "mabeco";
      group = "users";
      openFirewall = true;
      options = {
        calibreLibrary = "/home/mabeco/Documents/calibre-library/";
        enableBookUploading = true;
        enableBookConversion = true;
      };
    };
    fstrim = {
      enable = true;
      interval = "weekly";
    };
    udev.extraRules =
      "\n		ACTION==\"add|change\", KERNEL==\"sd[a-z]*\", ATTR{queue/rotational}==\"0\", ATTR{queue/scheduler}=\"none\" \n		ACTION==\"add|change\", KERNEL==\"sd[a-z]*\", ATTR{queue/rotational}==\"1\", ATTR{queue/scheduler}=\"bfq\"\n		";
    clamav = {
      daemon.enable = true;
      updater.enable = true;
    };
    keyd = {
      enable = true;
      settings = {
        main = {
          capslock = "overload(meta, esc)";
          esc = "`";
          meta = "M-space";
          up = "/";
          down = "compose";
          left = "rightalt";
          right = "rightcontrol";
          "/" = "up";
          compose = "down";
          rightalt = "left";
          rightcontrol = "right";
        };
      };
    };
  };
}
