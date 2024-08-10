{ lib
, buildGoModule
, pkg-config
, alsa-lib
, wl-clipboard
, xclip
}:

buildGoModule {
  pname = "gtt";
  version = "10";

  src = ../.;

  vendorHash = "sha256-6C+++HIVwOwOmlsdwXWF/ykyK9WOlq/ktIPjRslvllk=";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    alsa-lib
    xclip
    wl-clipboard
  ];

  ldflags = [ "-s" "-w" ];

  meta = with lib; {
    description = "Google Translate TUI (Originally). Now support Apertium, Argos, Bing, ChatGPT, DeepL, Google, Reverso";
    homepage = "https://github.com/eeeXun/gtt";
    license = licenses.mit;
    maintainers = with maintainers; [ linuxissuper ];
    mainProgram = "gtt";
  };
}
