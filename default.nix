{ lib, stdenv, dmd, ldc, fetchFromGitHub
}: with lib; stdenv.mkDerivation rec {
  pname = "tsvutils";
  version = "2.2.3";
  src = fetchFromGitHub {
    owner = "eBay";
    repo = "tsv-utils";
    rev = "v${version}";
    sha256 = "sha256-9//oCG0kv5CJwAoqz7CnNdKVVDQ7cww9r2Lf32d8PXM=";
  };
  nativeBuildInputs = [ dmd ldc ];
  #makeFlags = [ "DCOMPILER=ldc2 LDC_LTO_RUNTIME=1" "LDC_PGO=2" ];
  installPhase = ''
    find ./bin
    cp -R ./bin $out/
    '';
}
