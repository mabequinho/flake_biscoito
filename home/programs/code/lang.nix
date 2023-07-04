{ config, pkgs, ... }: {

  home.packages = with pkgs;
    [ nixfmt nil ] ++ [ (python311.withPackages (ps: with ps; [ yapf ])) ];

}
