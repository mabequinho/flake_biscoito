{ config, pkgs, ... }: {

  services = {
    xserver = {
      displayManager = {
        autoLogin = {
          enable = true;
          user = "mabeco";
        };
        sddm = { enable = true; };
      };
    };
    gnome.gnome-keyring.enable = true;
    udisks2.enable = true;
    calibre-web = {
      enable = true;
      user = "mabeco";
      group = "users";
      openFirewall = true;
      options = {
        calibreLibrary = "/home/mabeco/Documents/Calibre/";
        enableBookUploading = true;
        enableBookConversion = true;
      };
    };
    fstrim = {
      enable = true;
      interval = "weekly";
    };
    ananicy = {
      enable = false;
      package = pkgs.ananicy-cpp;
    };
    irqbalance.enable = true;
    udev.extraRules =
      "\n		ACTION==\"add|change\", KERNEL==\"sd[a-z]*\", ATTR{queue/rotational}==\"0\", ATTR{queue/scheduler}=\"mq-deadline\" \n		ACTION==\"add|change\", KERNEL==\"sd[a-z]*\", ATTR{queue/rotational}==\"1\", ATTR{queue/scheduler}=\"bfq\"\n		";
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
          up = "/";
          down = "compose";
          left = "oneshot(altgr)";
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
