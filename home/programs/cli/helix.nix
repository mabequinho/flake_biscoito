{ config, ... }: {

  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "grayscale_dark";
      editor = {
        line-number = "relative";
        cursorline = true;
        auto-save = true;
        color-modes = true;
      };
    };
    languages = { };
    themes = {
      ##https://github.com/tinted-theming/base16-helix/blob/main/themes/base16-grayscale-dark.toml
      grayscale_dark = {
        attributes = "base09";
        constant = "base09";
        "constant.character.escape" = "base0C";
        "constant.numeric" = "base09";
        constructor = "base0D";
        debug = "base03";
        "diff.delta" = "base09";
        "diff.minus" = "base08";
        "diff.plus" = "base0B";
        error = "base08";
        function = "base0D";
        hint = "base03";
        info = "base0D";
        keyword = "base0E";
        label = "base0E";
        "markup.heading" = "base0D";
        "markup.link.text" = "base08";
        "markup.list" = "base08";
        "markup.quote" = "base0C";
        "markup.raw" = "base0B";
        namespace = "base0E";
        operator = "base05";
        special = "base0D";
        string = "base0B";
        type = "base0A";
        "ui.text" = "base05";
        "ui.text.focus" = "base05";
        variable = "base08";
        "variable.other.member" = "base0B";
        warning = "base09";
        comment = {
          fg = "base03";
          modifiers = [ "italic" ];
        };
        diagnostic = { modifiers = [ "underlined" ]; };
        "diagnostic.error" = { underline = { style = "curl"; }; };
        "diagnostic.hint" = { underline = { style = "curl"; }; };
        "diagnostic.info" = { underline = { style = "curl"; }; };
        "diagnostic.warning" = { underline = { style = "curl"; }; };
        "markup.bold" = {
          fg = "base0A";
          modifiers = [ "bold" ];
        };
        "markup.italic" = {
          fg = "base0E";
          modifiers = [ "italic" ];
        };
        "markup.link.url" = {
          fg = "base09";
          modifiers = [ "underlined" ];
        };
        "markup.strikethrough" = { modifiers = [ "crossed_out" ]; };
        palette = {
          base00 = "#000000";
          base01 = "#252525";
          base02 = "#464646";
          base03 = "#525252";
          base04 = "#ababab";
          base05 = "#b9b9b9";
          base06 = "#e3e3e3";
          base07 = "#f7f7f7";
          base08 = "#7c7c7c";
          base09 = "#999999";
          base0A = "#a0a0a0";
          base0B = "#8e8e8e";
          base0C = "#868686";
          base0D = "#686868";
          base0E = "#747474";
          base0F = "#5e5e5e";
        };
        "ui.background" = { bg = "base00"; };
        "ui.bufferline" = {
          bg = "base00";
          fg = "base04";
        };
        "ui.bufferline.active" = {
          bg = "base03";
          fg = "base00";
          modifiers = [ "bold" ];
        };
        "ui.cursor" = {
          fg = "base0A";
          modifiers = [ "reversed" ];
        };
        "ui.cursor.insert" = {
          fg = "base0A";
          modifiers = [ "revsered" ];
        };
        "ui.cursor.match" = {
          fg = "base0A";
          modifiers = [ "reversed" ];
        };
        "ui.cursor.select" = {
          fg = "base0A";
          modifiers = [ "reversed" ];
        };
        "ui.cursorline.primary" = {
          bg = "base01";
          fg = "base05";
        };
        "ui.gutter" = { bg = "base00"; };
        "ui.help" = {
          bg = "base01";
          fg = "base06";
        };
        "ui.linenr" = {
          bg = "base00";
          fg = "base03";
        };
        "ui.linenr.selected" = {
          bg = "base01";
          fg = "base04";
          modifiers = [ "bold" ];
        };
        "ui.menu" = {
          bg = "base01";
          fg = "base05";
        };
        "ui.menu.scroll" = {
          bg = "base01";
          fg = "base03";
        };
        "ui.menu.selected" = {
          bg = "base04";
          fg = "base01";
        };
        "ui.popup" = { bg = "base01"; };
        "ui.selection" = { bg = "base02"; };
        "ui.selection.primary" = { bg = "base02"; };
        "ui.statusline" = {
          bg = "base01";
          fg = "base04";
        };
        "ui.statusline.inactive" = {
          bg = "base01";
          fg = "base03";
        };
        "ui.statusline.insert" = {
          bg = "base0B";
          fg = "base00";
        };
        "ui.statusline.normal" = {
          bg = "base03";
          fg = "base00";
        };
        "ui.statusline.select" = {
          bg = "base0F";
          fg = "base00";
        };
        "ui.virtual.indent-guide" = { fg = "base03"; };
        "ui.virtual.inlay-hint" = { fg = "base01"; };
        "ui.virtual.ruler" = { bg = "base01"; };
        "ui.window" = { bg = "base01"; };
      };

    };
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
