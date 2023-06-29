{ config, ... }:

{

  home.file = {
    ".local/share/applications/emacs.desktop".text = ''

      [Desktop Entry]
      Name=Emacs
      GenericName=Text Editor
      Comment=Edit text
      MimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;
      Exec=emacs %F
      Icon=emacs
      Type=Application
      Terminal=true
      Categories=Development;TextEditor;
      StartupWMClass=Emacs

    '';
  };

}
