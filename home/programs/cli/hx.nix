{ config, pkgs, ... }: {

  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "dracula";
      editor = {
        line-number = "relative";
        cursorline = true;
        auto-save = true;
        color-modes = true;
      };
    };
    languages = {

      language = [

        {
          name = "nix";
          auto-format = true;
          scope = "source.nix";
          injection-regex = "nix";
          file-types = [ "nix" ];
          diagnostic-severity = "Hint";
          comment-token = "#";
          formatter = {
            command = "nixfmt";
            args = [ ];
          };
          language-server = {
            command = "nil";
            args = [ ];
          };
        }

        {
          name = "python";
          auto-format = true;
          scope = "source.py";
          injection-regex = "py";
          file-types = [ "py" ];
          diagnostic-severity = "Hint";
          comment-token = "#";
          formatter = {
            command = "yapf";
            args = [ "-p" ];
          };
          language-server = {
            command = "pylsp";
            args = [ ];
          };
        }

      ];

    };
  };

  /* xdg.desktopEntries."Helix" = {
       name = "Helix";
       genericName = "Text Editor";
       categories = [ "TextEditor" ];
       comment = "Your Favorit Text Editor";
       exec = "foot hx %F";
       icon = "helix";
       terminal = false;
       mimeType = [
         "text/english"
         "text/plain"
         "text/x-makefile"
         "text/x-c++hdr"
         "text/x-c++src"
         "text/x-chdr"
         "text/x-csrc"
         "text/x-java"
         "text/x-moc"
         "text/x-pascal"
         "text/x-tcl"
         "text/x-tex"
         "application/x-shellscript"
         "text/x-c"
         "text/x-c++"
       ];
     };
  */

  home.packages = with pkgs; [ xclip wl-clipboard ];

}
