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
        theme = "${
            (pkgs.fetchFromGitHub {
              owner = "13atm01";
              repo = "GRUB-Theme";
              rev = "95bcc240162bce388ac2c0bec628b2aaa56e6cb8";
              sha256 = "0xnx82fdyjqw89qmacwmlva9lis3zs8b0l1xi67njpypjy29sdnc";
            })
          }/Touhou\ Project/Touhou-project/";
        splashImage = "${
            (pkgs.fetchFromGitHub {
              owner = "13atm01";
              repo = "GRUB-Theme";
              rev = "95bcc240162bce388ac2c0bec628b2aaa56e6cb8";
              sha256 = "0xnx82fdyjqw89qmacwmlva9lis3zs8b0l1xi67njpypjy29sdnc";
            })
          }/Touhou\ Project/Touhou-project/background.png";
      };
      timeout = 6;
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
