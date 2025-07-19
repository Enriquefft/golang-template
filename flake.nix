{
  description = "Go project template";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = [ pkgs.go pkgs.golangci-lint pkgs.gofumpt ];
      };
    };
}
