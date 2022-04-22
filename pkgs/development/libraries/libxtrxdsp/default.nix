{ lib, stdenv
, fetchFromGitHub
, cmake
}:

stdenv.mkDerivation rec {
  pname = "libxtrxdsp";
  version = "eec2864";

  src = fetchFromGitHub {
    owner = "xtrx-sdr";
    repo = "${pname}";
    rev = "${version}";
    sha256 = "1vsrqkhd2lss70mcqbw3gmnjdnnd41g1plkyqdwj7bbvc4ng2m8w";
  };

  nativeBuildInputs = [
    cmake
  ];

  meta = with lib; {
    homepage = "https://github.com/xtrx-sdr/libxtrxdsp";
    description = "A library of DSP functions for SDR, developed for XTRX SDR";
    platforms = platforms.all;
    license = licenses.lgpl21Plus;
    maintainers = with maintainers; [ marble ];
  };
}
