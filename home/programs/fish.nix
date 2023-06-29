{ config, pkgs, ... }: {
  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
        nix-your-shell fish | source
      '';
      shellAliases = {
        ls = "ls -A --color=auto -cltp --si --group-directories-first";
        nix-hell =
          "sudo nixos-rebuild switch -j 8 --flake $HOME/Documents/git/flake_biscoito --impure";
        lports = "sudo netstat -tulpn | grep LISTEN";
        wp = "wgetpaste";
        g = "git";
        gc = "git commit -a";
        ga = "git add -A";
        gp = "git push";
        py = "python3";
        yt = "yt-dlp";
        tree = "tree --dirsfirst";
        git-hell = "git add -A ; git commit -a ; git push";
        epkgsearch = "nix-env -f '<nixpkgs>' -qaP -A emacsPackages.";
        op = "handlr open ";
        vi = "emacs";
      };
      plugins = [{
        name = "hydro";
        src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "hydro";
          rev = "41b46a05c84a15fe391b9d43ecb71c7a243b5703";
          sha256 = "0y1lh0pcwcfq3mfaidl59nniiz6ga99mjm12ggrxi3kxcby1lqff";
        };
      }];
    };
    mcfly = {
      enable = true;
      enableFishIntegration = true;
      keyScheme = "vim";
      enableLightTheme = true;
    };
    zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
