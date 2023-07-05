{ config, lib, pkgs, ... }: {

  systemd = {

    user = {

      timers = {

        mangal-up = {
          Unit = {
            Description = "Download Mangas";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Timer = {
            OnCalendar = [ "*-*-* 07:00:00" "*-*-* 12:00:00" ];
            Unit = "mangal.target";
            Persistent = true;
          };
          Install = { WantedBy = [ "default.target" ]; };
        };

      };

      targets = {

        mangal = {
          Unit = {
            Description = "Trigger multiple manga downloads";
            Documentation = [ "https://github.com/metafates/mangal" ];
            Wants = ''
              bocchi_the_rock.service
              jachi_chan_dropkick.service
              overlord  .service
              watamote .service
              witch_hat_atelier .service
              record_of_ragnarok .service
            '';
          };
        };

      };

      services = {

        bocchi_the_rock = {
          Unit = {
            Description = "Download Manga";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Service = {
            ExecStart = ''
              ${
                lib.getBin pkgs.mangal
              }/bin/mangal inline -S Mangadex -F pdf -m first -c all -d -q "Bocchi the Rock!"
            '';
          };
        };

        jachi_chan_dropkick = {
          Unit = {
            Description = "Download Manga";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Service = {
            ExecStart = ''
              ${
                lib.getBin pkgs.mangal
              }/bin/mangal inline -S Mangadex -F pdf -m first -c all -d -q "Jashin-chan Dropkick"
            '';
          };
        };

        overlord = {
          Unit = {
            Description = "Download Manga";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Service = {
            ExecStart = ''
              ${
                lib.getBin pkgs.mangal
              }/bin/mangal inline -S Mangadex -F pdf -m first -c all -d -q "Overlord"
            '';
          };
        };

        watamote = {
          Unit = {
            Description = "Download Manga";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Service = {
            ExecStart = ''
              ${
                lib.getBin pkgs.mangal
              }/bin/mangal inline -S Mangadex -F pdf -m first -c all -d -q "Watashi ga Motenai no wa Dou Kangaetemo Omaera ga Warui!"
            '';
          };
        };

        witch_hat_atelier = {
          Unit = {
            Description = "Download Manga";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Service = {
            ExecStart = ''
              ${
                lib.getBin pkgs.mangal
              }/bin/mangal inline -S Mangadex -F pdf -m first -c all -d -q "Witch Hat Atelier"
            '';
          };
        };

        record_of_ragnarok = {
          Unit = {
            Description = "Download Manga";
            Documentation = [ "https://github.com/metafates/mangal" ];
          };
          Service = {
            ExecStart = ''
              ${
                lib.getBin pkgs.mangal
              }/bin/mangal inline -S Mangadex -F pdf -m first -c all -d -q "Record of Ragnarok"
            '';
          };
        };

      };
    };
  };
}
