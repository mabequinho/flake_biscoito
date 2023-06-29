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
    plymouth = {
      enable = true;
      themePackages = [ pkgs.adi1090x-plymouth-themes ];
      theme = "pixels";
    };
    kernelPackages = pkgs.linuxKernel.packages.linux_6_3;
    kernelParams =
      [ "amd_iommu=on" "iommu=pt" "video=HDMI-A-1:2560x1080@75" "nowatchdog" ];
    tmp.cleanOnBoot = true;
  };
}
