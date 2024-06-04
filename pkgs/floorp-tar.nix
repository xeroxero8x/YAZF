{stdenv, fetchFromGithub, ...}:
{
  floorp-tar = stdenv.mkDerivation rec {
    pname = "floorp-tar";
    version = "11.13.3";
    installPhase = ''
    mkdir -p $out/pkgs/floorp-tar
    
    '';
    src = fetchFromGitHub {
      owner = "Floorp-Projects";
      repo = "Floorp";
      rev = "v${version}";
      hash = "sha256-24204a472b7f668b71baeb21948d037d34b56bc25b5c2380e36f5046bc2be81b=";
    };

  }
}
