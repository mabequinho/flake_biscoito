{ config, pkgs, ... }: {

  programs = {
    ssh = {
      enable = true;
      package = pkgs.openssh;
    };
  };
  home.packages = with pkgs; [ libsecret sshpass ];
}
