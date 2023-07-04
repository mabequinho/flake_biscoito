{ config, pkgs, ... }: {

  home.packages = with pkgs;
    [ nixfmt nil ] ++ [
      (python311.withPackages (ps:
        with ps; [
          python-lsp-server
          rope
          pylsp-rope
          pyflakes
          mccabe
          pycodestyle
          yapf
        ]))
    ];

}

