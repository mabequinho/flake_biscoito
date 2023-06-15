{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "ahci" "ohci_pci" "ehci_pci" "xhci_pci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ "dm-snapshot" ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];
  boot.initrd.secrets = {
	"keyfile0.bin" = "/etc/secrets/initrd/keyfile0.bin";
   };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/95de112d-9006-49f6-bada-14ce21313c8b";
      fsType = "xfs";
    };

  boot.initrd.luks.devices."root" = { 
	device = "/dev/disk/by-uuid/fc0cb824-af3f-4d5b-8e06-92e6f7609801";
	preLVM = false;
	keyFile = "/keyfile0.bin";
	allowDiscards = true;
	};

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/b3cce136-a2c6-4521-905c-6929a30f45d1";
      fsType = "xfs";
    };

  boot.initrd.luks.devices."home" = {
	device = "/dev/disk/by-uuid/572617f1-5224-43bc-b262-f6e7cf531b69";
	preLVM = false;
	keyFile = "/keyfile0.bin";
	allowDiscards = true;
	};

  fileSystems."/boot/efi" =
    { device = "/dev/disk/by-uuid/8599-F7F7";
      fsType = "vfat";
    };

  fileSystems."/mnt/extra_1" =
    { device = "/dev/disk/by-uuid/b0cad3c2-fe69-4325-8ea9-b4fdd84f0cc9";
      fsType = "xfs";
    };

  boot.initrd.luks.devices."extra_1" = {
	device = "/dev/disk/by-uuid/2363d7fc-28aa-40ea-9970-6c3ded366066";
	preLVM = false;
	keyFile = "/keyfile0.bin";
	allowDiscards = true;
	};

  fileSystems."/mnt/extra_2" =
    { device = "/dev/disk/by-uuid/3ab6a1ad-1032-44c2-a30c-84f791a86039";
      fsType = "xfs";
    };

  boot.initrd.luks.devices."extra_2" = {
	device = "/dev/disk/by-uuid/a6437f5c-4cee-4618-87dc-5328b0056ae4";
	preLVM = false;
	keyFile = "/keyfile0.bin";
	allowDiscards = true;
	};

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp0s18f2u5.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
