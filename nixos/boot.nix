# This is your system's configuration file.
# Use this to configure your system environment (it replaces /etc/nixos/configuration.nix)

{ inputs, lib, config, pkgs, ... }: {
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        enableCryptodisk = true;
        splashImage = pkgs.fetchurl {
          url =
            "https://raw.githubusercontent.com/mabequinho/flake_biscoito/main/wall.png";
          sha256 = "0j3p8bhg319axnkmamf8mazrl4p67ix7kbnkl4v4ggkdf29hljg6";
        };
      };
      timeout = 2;
    };
    kernelPackages = pkgs.linuxKernel.packages.linux_6_3;
    kernelParams =
      [ "amd_iommu=on" "iommu=pt" "video=HDMI-A-1:2560x1080@75" "nowatchdog" ];
    tmp.cleanOnBoot = true;
  };
}
