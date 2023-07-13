{ config, pkgs, ... }: {

  services = { udev = { packages = with pkgs; [ android-udev-rules ]; }; };
  environment = { sessionVariables = { SSH_ASKPASS_REQUIRE = "prefer"; }; };
  programs = {
    adb = { enable = true; };
    ssh = {
      startAgent = true;
      forwardX11 = true;
      enableAskPassword = true;
      askPassword = "${pkgs.libsForQt5.ksshaskpass}/bin/ksshaskpass";
    };
  };
}
