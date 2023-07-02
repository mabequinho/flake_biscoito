{ config, ... }: {

  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "onedarker";
      editor = {
        line-numer = "relative";
        cursorline = true;
        auto-save = true;
        color-modes = true;
      };
    };
    languages = { };
  };

  xdg.desktopEntries."Helix" = {
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

}
