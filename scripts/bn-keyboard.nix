{pkgs, ...}:

let
  ibus-toogle-layout = pkgs.writeShellScriptBin "ibus-toogle-layout" ''
    engine=$(ibus engine)
    if [ "$engine" == xkb:us::eng ]; then
    ibus engine OpenBangla - OpenBangla Keyboard

    else
      ibus engine xkb:us::eng - English
    fi
  '';
 in{
  i18n.inputMethod.enabled = "ibus";
  i18n.inputMethod.ibus.engines =with pkgs.ibus-engines; [ openbangla-keyboard ];
  environment.sessionVariables = {
    GTK_IM_MODULE = "ibus";
    QT_IM_MODULE = "ibus";
    XMODIFIERS = "@im=ibus";
    INPUT_METHOD = "ibus";
    SDL_IM_MODULE = "ibus";
  };
    environment.systemPackages = [ibus-toogle-layout];

  }
