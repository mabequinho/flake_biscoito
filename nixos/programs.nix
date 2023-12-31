{ config, pkgs, ... }: {

  services = { udev = { packages = with pkgs; [ android-udev-rules ]; }; };
  environment = { sessionVariables = { SSH_ASKPASS_REQUIRE = "prefer"; }; };
  programs = {
    adb = { enable = true; };
    ssh = {
      startAgent = false; #disable in favor of gnome-keyring
      forwardX11 = true;
      enableAskPassword = true;
    };
  };
}
