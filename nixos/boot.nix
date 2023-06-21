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
      };
      timeout = 2;
    };
    kernelPackages = pkgs.linuxKernel.packages.linux_zen;
    kernelParams = [ "amd_iommu=on" "iommu=pt" "video=HDMI-A-1:2560x1080@75" ];
    tmp.cleanOnBoot = true;
  };
}
