{ config, pkgs, ... }: {

  services = {
    #add calibre-web
    ddccontrol.enable = true;
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
        };
      };
    };
  };

  #check if needed
  #hardware.i2c.enable = true;
}