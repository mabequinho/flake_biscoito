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
            "https://raw.githubusercontent.com/mabequinho/flake_biscoito/main/home-manager/files/wall.png";
          sha256 = "0c3350l7ya8xxfs64whzbw3s1h6zjfpc0pgz8qhf3xwjjcbcbwvg";
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
