{ config, pkgs, libs, ... }: {
  programs = {
    ironbar = {
      enable = true;
      features = [];
      config = {};
      style = "";
    };
  };
}
