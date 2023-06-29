{ config, pkgs, ... }: {

  networking = {
    hostName = "biscoito";
    nameservers = [ "127.0.0.1" "::1" ];
    networkmanager = {
      enable = true;
      dns = "none";
    };
    firewall = {
      enable = false;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };

  services = {
    printing = {
      enable = true;
      drivers = [ pkgs.epson-escpr ];
    };
    avahi = {
      enable = true;
      nssmdns = true;
      openFirewall = true;
    };
    nextdns = {
      enable = true;
      arguments = [ "-config" "cc6b68" "-cache-size" "20MB" ];
    };
  };

}
