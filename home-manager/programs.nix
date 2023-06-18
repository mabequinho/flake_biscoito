{ config, pkgs, ... }: {

  programs = {
    git = {
      enable = true;
      userEmail = "lucio_a.khfzo@aleeas.com";
      userName = "Lucio";
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
    };
    taskwarrior = {
      enable = true;
      colorTheme = "dark-gray-256";
    };
    vscode = {
      enable = true;
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;
      package = pkgs.vscodium;
      extensions = with pkgs.vscode-extensions; [
        asvetliakov.vscode-neovim
        ms-python.python
        ms-toolsai.jupyter
        jnoortheen.nix-ide
        github.github-vscode-theme
      ];
      userSettings = {
        "editor.fontFamily" = "Mononoki Nerd Font Mono";
        "editor.lineHeight" = 24;
        "workbench.colorTheme" = "GitHub Dark Colorblind (Beta)";
        "window.menuBarVisibility" = "toggle";
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nil";
        "nix.serverSettings" = {
          nil = {
            diagnostics = { ignored = [ "unused_binding" "unused_with" ]; };
            formatting = { command = [ "nixfmt" ]; };
          };
        };
      };
    };
    firefox = {
      enable = true;
      package = pkgs.firefox-bin;
      profiles = {
        "vzd30f0u.default" = {
          userChrome = ''
                       	  	  #unified-extensions-button, #unified-extensions-button > .toolbarbutton-icon{
            				            width: 0px !important;
             				            padding: 0px !important;
             			            }

                                     :root {
                                         /* delay before expanding tabs, set to '0' for no delay */
                                         --delay: 0.5s;
                                         --transition-time: 0.2s;
                                         --positionX1: 48px; /* '48px' for left, '0px' for right sidebar */
                                         --positionX2: absolute; /* 'absolute' for left, 'none' for right sidebar */
                                         /* width of the collapsed sidebar in fullscreen mode ('1px' or '48px') */
                                         --fullscreen-sidebar-width: 1px;
                                     }

                                     /* macOS specific styles */
                                     @media (-moz-platform: macos) {
                                         #TabsToolbar:not([customizing="true"]) {
                                             visibility: collapse !important;
                                         }

                                         :root:not([customizing="true"]) #nav-bar:not([inFullscreen]) {
                                             padding-left: 80px;
                                         }

                                         :root:not([customizing="true"]) #TabsToolbar .titlebar-buttonbox-container {
                                             visibility: visible !important;
                                             position: absolute;
                                             top: 12px;
                                             left: 0px;
                                             display: block;
                                         }
                                     }

                                     /* Linux/GTK specific styles */
                                     @media (-moz-gtk-csd-available) {
                                         .browser-toolbar:not(.titlebar-color){ /* Fixes wrong coloring applied with --toolbar-bgcolor by Firefox (#101) */
                                             background-color: transparent !important;
                                             box-shadow: none !important;
                                         }

                                         #TabsToolbar:not([customizing="true"]) {
                                             visibility: collapse !important;
                                         }

                                         #toolbar-menubar {
                                             padding-top: 0px !important;
                                         }

                                         :root:not([customizing="true"]) #toolbar-menubar[inactive]+#TabsToolbar .titlebar-buttonbox-container {
                                             visibility: visible !important;
                                             position: absolute;
                                             top: var(--uc-win-ctrl-vertical-offset);
                                             display: block;
                                             z-index: 101;
                                         }

                                         /* enable rounded top corners */
                                         :root[tabsintitlebar][sizemode="normal"]:not([gtktiledwindow="true"]):not([customizing="true"]) #nav-bar {
                                             border-top-left-radius: env(-moz-gtk-csd-titlebar-radius);
                                             border-top-right-radius: env(-moz-gtk-csd-titlebar-radius);
                                         }

                                         /* window control padding values (these don't change the size of the actual buttons, only the padding for the navbar) */
                                         :root[tabsintitlebar]:not([customizing="true"]) {
                                             /* default button/padding size based on adw-gtk3 theme */
                                             --uc-win-ctrl-btn-width: 38px;
                                             --uc-win-ctrl-padding: 12px;
                                             /* vertical offset from the top of the window, calculation: (1/2 * (NAVBAR_HEIGHT - BUTTON_HEIGHT)) */
                                             --uc-win-ctrl-vertical-offset: 8px;
                                             /* extra window drag space */
                                             --uc-win-ctrl-drag-space: 20px;
                                         }

                                         :root[tabsintitlebar][lwtheme]:not([customizing="true"]) {
                                             /* seperate values for when using a theme, based on the Firefox defaults */
                                             --uc-win-ctrl-btn-width: 30px;
                                             --uc-win-ctrl-padding: 12px;
                                             /* vertical offset from the top of the window, calculation: (1/2 * (NAVBAR_HEIGHT - BUTTON_HEIGHT)) */
                                             --uc-win-ctrl-vertical-offset: 5px;
                                             /* extra window drag space */
                                             --uc-win-ctrl-drag-space: 20px;
                                         }

                                         /* setting the padding value for all button combinations */
                                         @media (-moz-gtk-csd-minimize-button),
                                         (-moz-gtk-csd-maximize-button),
                                         (-moz-gtk-csd-close-button) {
                                             #nav-bar {
                                                 --uc-navbar-padding: calc(var(--uc-win-ctrl-btn-width) * 1);
                                             }
                                         }

                                         @media (-moz-gtk-csd-minimize-button) and (-moz-gtk-csd-maximize-button),
                                         (-moz-gtk-csd-minimize-button) and (-moz-gtk-csd-close-button),
                                         (-moz-gtk-csd-maximize-button) and (-moz-gtk-csd-close-button) {
                                             #nav-bar {
                                                 --uc-navbar-padding: calc(var(--uc-win-ctrl-btn-width) * 2);
                                             }
                                         }

                                         @media (-moz-gtk-csd-minimize-button) and (-moz-gtk-csd-maximize-button) and (-moz-gtk-csd-close-button) {
                                             #nav-bar {
                                                 --uc-navbar-padding: calc(var(--uc-win-ctrl-btn-width) * 3);
                                             }
                                         }

                                         /* only applies padding/positioning if there is 1 or more buttons */
                                         @media (-moz-gtk-csd-minimize-button),
                                         (-moz-gtk-csd-maximize-button),
                                         (-moz-gtk-csd-close-button) {
                                             /* window controls on the right */
                                             @media not (-moz-gtk-csd-reversed-placement) {
                                                 #nav-bar {
                                                     padding-inline: 0 calc(var(--uc-navbar-padding, 0) + var(--uc-win-ctrl-padding) + var(--uc-win-ctrl-drag-space)) !important;
                                                 }

                                                 .titlebar-buttonbox-container {
                                                     right: 0;
                                                 }
                                             }

                                             /* window controls on the left */
                                             @media (-moz-gtk-csd-reversed-placement) {
                                                 #nav-bar {
                                                     padding-inline: calc(var(--uc-navbar-padding, 0) + var(--uc-win-ctrl-padding) + var(--uc-win-ctrl-drag-space)) 0 !important;
                                                 }

                                                 .titlebar-buttonbox-container {
                                                     left: 0;
                                                 }
                                             }
                                         }
                                         
                                         /* Hide window buttons in fullscreen */
                                         #navigator-toolbox[style*="margin-top: -"] .titlebar-buttonbox-container,
                                         [inDOMFullscreen="true"] .titlebar-buttonbox-container {
                                             transform: translateY(-100px)
                                         }
                                         
                                         
                                     }

                                     /* Windows specific styles */
                                     @media (-moz-platform: windows-win10) {
                                         /* Hide main tabs toolbar */
                                         :root[tabsintitlebar]{
                                             --uc-window-control-width: 137px; /* Space at the right of nav-bar for window controls */
                                             /* --uc-window-drag-space-width: 24px; */  /* To add extra window drag space in nav-bar */
                                         }

                                         #nav-bar{
                                             border-inline: var(--uc-window-drag-space-width,80px) solid var(--toolbar-bgcolor) ;
                                             border-inline-style: solid !important;
                                             border-right-width: calc(var(--uc-window-control-width,0px) + var(--uc-window-drag-space-width,0px));

                                             padding-top: .5px !important; /* This makes it possible to drag the maximized window. */
                                             margin-left: -80px; /* Removes the space left when hiding .titlebar-buttonbox-container */
                                         }
                                         
                                         #back-button { 
                                     		margin-top: -.5px !important; 
                                     	}
                                     	
                                     	#forward-button { 
                                     		margin-top: -.5px !important; 
                                     	}
                                     	
                                     	#reload-button { 
                                     		margin-top: -.5px !important; 
                                     	}
                                         
                                     	#PanelUI-button {
                                     		margin-top: -.5px !important; 
                                     	}
                                         
                                     	#nav-bar-overflow-button{
                                     		margin-top: -.5px !important; 
                                     	}

                                         :root {
                                             --uc-toolbar-height: 32px;
                                             --chrome-content-separator-color: none !important;
                                         }

                                         :root:not([uidensity="compact"]) {
                                             --uc-toolbar-height: 38px;
                                         }

                                         #TabsToolbar {
                                             visibility: collapse !important;
                                         }

                                         /* Hide the Windows controls on the left side. */
                                         #TabsToolbar .titlebar-buttonbox-container {
                                             visibility: hidden !important;
                                         }
                                         /* Line up the Windows controls with the rest of the icons in the toolbar. */
                                         .titlebar-buttonbox-container {
                                             margin-top: 3px;
                                         }


                                         :root:not([inFullscreen]) #nav-bar {
                                             margin-top: calc(0px - var(--uc-toolbar-height));
                                             z-index: 2;
                                         }

                                         #toolbar-menubar {
                                             min-height: unset !important;
                                             height: var(--uc-toolbar-height) !important;
                                             position: relative;
                                         }

                                         /* For a rounded button design, uncomment both lines in .titlebar-buttonbox. */
                                         .titlebar-buttonbox {
                                             z-index:3 !important;
                                             /* padding-right:3px; */
                                         }

                                         .titlebar-buttonbox * {
                                             /* border-radius: 5px; */
                                             width:35px;
                                             height:38px;
                                         }

                                         #main-menubar {
                                             -moz-box-flex: 1;
                                             background-color: var(--toolbar-bgcolor,--toolbar-non-lwt-bgcolor);
                                             background-clip: padding-box;
                                             border-right: 30px solid transparent;
                                             border-image: linear-gradient(to left, transparent, var(--toolbar-bgcolor,--toolbar-non-lwt-bgcolor) 30px) 20 / 30px;
                                         }

                                         #toolbar-menubar:not([inactive]) {
                                             z-index: 2;
                                         }

                                         #toolbar-menubar[inactive] > #menubar-items {
                                             opacity: 0;
                                             pointer-events: none;
                                             margin-left: var(--uc-window-drag-space-width,0px);
                                         }

                                         :root[inFullscreen] #nav-bar {
                                             border-right: none !important;
                                         }
                                     }


                                     /* General styles */
                                     #browser {
                                         position: relative;
                                     }

                                     #nav-bar, #urlbar {
                                         z-index: 100;
                                     }

                                     #sidebar-box:not([lwt-sidebar]){
                                         appearance: unset !important;
                                     }

                                     #sidebar-box[sidebarcommand*="tabcenter"] {
                                         z-index: 1;
                                     }

                                     #sidebar-box[sidebarcommand*="tabcenter"] #sidebar-header {
                                         visibility: collapse;
                                         display: none;
                                     }

                                     [sidebarcommand*="tabcenter"] #sidebar,
                                     #sidebar-box[sidebarcommand*="tabcenter"] {
                                         min-width: 48px !important;
                                         max-width: 48px !important;
                                         width: 48px;
                                     }

                                     #sidebar-box[sidebarcommand*="tabcenter"]:not([hidden]) {
                                         display: block;
                                         position: var(--positionX2);
                                         min-width: 48px;
                                         max-width: 48px;
                                         overflow: hidden;
                                         border-right: 1px solid var(--sidebar-border-color);
                                         z-index: 1;
                                         top: 0;
                                         bottom: 0;
                                     }

                                     /* use :where() selector to lower specificity */
                                     :where(#main-window[inFullscreen]) #sidebar-box[sidebarcommand*="tabcenter"]:not([hidden]) {
                                         min-width: var(--fullscreen-sidebar-width) !important;
                                         max-width: var(--fullscreen-sidebar-width) !important;
                                     }

                                     #sidebar-box[sidebarcommand*="tabcenter"]:hover #sidebar,
                                     #sidebar-box[sidebarcommand*="tabcenter"]:hover {
                                         min-width: 10vw !important;
                                         width: 30vw !important;
                                         max-width: 200px !important;
                                         z-index: 1 !important;
                                         transition: all var(--transition-time) ease var(--delay);
                                     }

                                     /* used for delay function */
                                     #sidebar-box[sidebarcommand*="tabcenter"]:not(:hover) #sidebar,
                                     #sidebar-box[sidebarcommand*="tabcenter"]:not(:hover) {
                                         transition: all var(--transition-time) ease 0s;
                                     }

                                     @media (width >= 1200px) {
                                         #sidebar-box[sidebarcommand*="tabcenter"]:hover #sidebar,
                                         #sidebar-box[sidebarcommand*="tabcenter"]:hover {
                                             max-width: 250px !important;
                                         }
                                     }

                                     [sidebarcommand*="tabcenter"] ~ #sidebar-splitter {
                                         display: none;
                                     }

                                     [sidebarcommand*="tabcenter"] #sidebar {
                                         max-height: 100%;
                                         height: 100%;
                                     }

                                     #main-window:not([inFullscreen]) #sidebar-box[sidebarcommand*="tabcenter"]:not([hidden]) ~ #appcontent {
                                         margin-left: var(--positionX1);
                                     }

                                     #main-window[inFullscreen]:not([inDOMFullscreen]) #sidebar-box[sidebarcommand*="tabcenter"]:not([hidden]) ~ #appcontent {
                                         margin-left: var(--fullscreen-sidebar-width);
                                     }

                                     #main-window[inFullscreen] #sidebar {
                                         height: 100vh;
                                     }

                                     [sidebarcommand*="tabcenter"] #sidebar-header {
                                         background: #0C0C0D;
                                         border-bottom: none !important;
                                     }

                                     [sidebarcommand*="tabcenter"] ~ #sidebar-splitter {
                                         border-right-color: #0C0C0D !important;
                                         border-left-color: #0C0C0D !important;
                                     }

                                     [sidebarcommand*="tabcenter"] #sidebar-switcher-target,
                                     [sidebarcommand*="tabcenter"] #sidebar-close {
                                         filter: invert(100%);
                                     }

                                     @media (max-width: 630px) {
                                         #urlbar-container {
                                             min-width: 100% !important;
                                         }

                                         #menubar-items {
                                             display: none !important;
                                         }
                                     }
                                     	'';
        };
      };
    };
  };
}
