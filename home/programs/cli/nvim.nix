{ config, pkgs, ... }: {

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraLuaConfig = ''

      vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
      vim.opt.number = true               -- show absolute number
      vim.opt.relativenumber = true       -- add numbers to each line on the left side
      vim.opt.cursorline = true           -- highlight cursor line underneath the cursor horizontally
      vim.opt.splitbelow = true           -- open new vertical split bottom
      vim.opt.splitright = true           -- open new horizontal splits right

    '';
  };
  home.packages = with pkgs; [ xclip wl-clipboard ];
}
