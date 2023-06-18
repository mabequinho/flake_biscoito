{ config, ... }: {
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        runAsRoot = false;
	ovmf.enable = true;
        swtpm.enable = true;
      };
    };
  };
}
