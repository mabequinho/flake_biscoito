{ config, pkgs, ... }: {

  home = {

    file.".local/libdeep_filter_ladspa.so".source = pkgs.fetchurl {
      url =
        "https://github.com/Rikorose/DeepFilterNet/releases/download/v0.5.3/libdeep_filter_ladspa-0.5.3-x86_64-unknown-linux-gnu.so";
      sha256 = "08jdqlbwqc092b0nggbdm7jpy3djvznazcig3n9z2gp9npi57cdn";
    };

    file.".config/pipewire/pipewire.conf.d/deepfilter-mono-source.conf".text =
      ''
        context.modules = [
            { name = libpipewire-module-filter-chain
                args = {
                    node.description = "DeepFilter Noise Canceling Source"
                    media.name       = "DeepFilter Noise Canceling Source"
                    filter.graph = {
                        nodes = [
                            {
                                type   = ladspa
                                name   = "DeepFilter Mono"
                                plugin = /home/mabeco/.local/libdeep_filter_ladspa.so
                                label  = deep_filter_mono
                                control = {
                                    "Attenuation Limit (dB)" 100
                                }
                            }
                        ]
                    }
                    audio.rate = 48000
                    audio.position = [FL]
                    capture.props = {
                        node.passive = true
                    }
                    playback.props = {
                        media.class = Audio/Source
                    }
                }
            }
        ]
      '';

  };

}
