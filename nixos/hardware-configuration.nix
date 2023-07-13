{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ (modulesPath + "/installer/scan/not-detected.nix") ];
  hardware = {
    i2c.enable = true;
    opengl = {
      enable = true;
      driSupport = true;
      extraPackages = with pkgs; [ rocm-opencl-icd ];
    };
  };
  boot.initrd.availableKernelModules =
    [ "ahci" "ohci_pci" "ehci_pci" "xhci_pci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" "amdgpu" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];
  boot.initrd.secrets = {
    "keyfile_biscoito.bin" = "/etc/secrets/initrd/keyfile0.bin";
  };

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/40fd5e9a-6346-46b9-8dda-6543ec75da0e";
    fsType = "ext4";
    options = [
      "noatime"
    ];
  };

  boot.initrd.luks.devices."root" = {
    device = "/dev/disk/by-uuid/69e4527c-b51c-453b-acd4-563282e6dde9";
    preLVM = false;
    keyFile = "/keyfile_biscoito.bin";
    allowDiscards = true;
  };

  fileSystems."/home" = {
    device = "/dev/disk/by-uuid/a9c1fead-79f7-4fc1-a914-1d9f68a1414d";
    fsType = "ext4";
    options = [ "noatime" ];
  };

  boot.initrd.luks.devices."home" = {
    device = "/dev/disk/by-uuid/e04c322b-3ef0-4d49-8222-4b3d15c15993";
    preLVM = false;
    keyFile = "/keyfile_biscoito.bin";
    allowDiscards = true;
  };

  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-uuid/3821-1075";
    fsType = "vfat";
  };

  fileSystems."/mnt/extra_2" = {
    device = "/dev/disk/by-uuid/3ab6a1ad-1032-44c2-a30c-84f791a86039";
    fsType = "xfs";
    options = [ "nofail" ];
  };

  boot.initrd.luks.devices."extra_2" = {
    device = "/dev/disk/by-uuid/a6437f5c-4cee-4618-87dc-5328b0056ae4";
    preLVM = false;
    keyFile = "/keyfile_biscoito.bin";
    allowDiscards = true;
  };

  fileSystems."/mnt/extra_1" = {
    device = "/dev/disk/by-uuid/b0cad3c2-fe69-4325-8ea9-b4fdd84f0cc9";
    fsType = "xfs";
    options = [ "nofail" ];
  };

  boot.initrd.luks.devices."extra_1" = {
    device = "/dev/disk/by-uuid/2363d7fc-28aa-40ea-9970-6c3ded366066";
    preLVM = false;
    keyFile = "/keyfile_biscoito.bin";
  };
  swapDevices = [{
    device = "/mnt/extra_2/swapfile";
    size = (1024 * 24);
    options = [ "defaults" "nofail" ];
  }];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp0s19f2u1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode =
    lib.mkDefault config.hardware.enableRedistributableFirmware;
}
