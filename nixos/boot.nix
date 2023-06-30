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
        configurationName = "biscoito";
        splashImage = null;
      };
      timeout = 2;
    };
    plymouth = {
      enable = true;
      theme = "colorful_sliced";
      themePackages = [ pkgs.adi1090x-plymouth-themes ];
    };
    initrd.verbose = false;
    consoleLogLevel = 0;
    kernelPackages = pkgs.linuxKernel.packages.linux_zen;
    kernelParams = [
      "amd_iommu=on"
      "iommu=pt"
      "video=HDMI-A-1:2560x1080@75"
      "nowatchdog"
      "quiet"
      "splash"
      "udev.log_level=3"
      "udev.log_priority=3"
    ];
    tmp.cleanOnBoot = true;
  };
}
