{ config, pkgs, ... }: {

  imports = [
    /run/user/1000/secrets/ssystemd.nix
    ./misc.nix
    ./rnnoise.nix
  ];

  systemd = {
    user = {
      tmpfiles = {

        rules = [

#Incompatible with gnome
#          "D /tmp/mabeco-cache 0700 mabeco wheel 1w"
#          "L+ %h/.cache - - - - /tmp/mabeco-cache"

          "D /tmp/mabeco-down 0700 mabeco wheel 1w"
          "L+ %h/Downloads - - - - /tmp/mabeco-down"

          "D /tmp/mabeco-scsh 0700 mabeco wheel 1w"
          "L+ %h/Pictures/Screenshots - - - - /tmp/mabeco-scsh"

        ];

      };
    };
  };
}
