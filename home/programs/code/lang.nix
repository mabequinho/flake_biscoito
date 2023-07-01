{ config, pkgs, ... }: {

  home.packages = with pkgs;
    [ nixfmt ] ++ [ (python311.withPackages (ps: with ps; [ yapf ])) ];

}
