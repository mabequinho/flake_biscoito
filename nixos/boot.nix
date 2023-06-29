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
      timeout = 1;
    };
    initrd.verbose = true;
    consoleLogLevel = 0;
    kernelPackages = pkgs.linuxKernel.packages.linux_6_3;
    kernelParams = [
      "amd_iommu=on"
      "iommu=pt"
      "video=HDMI-A-1:2560x1080@75"
      "nowatchdog"
      "quiet"
      "udev.log_level=3"
    ];
    tmp.cleanOnBoot = true;
  };
}
