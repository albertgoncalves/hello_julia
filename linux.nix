{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "Julia";
    buildInputs = [
        julia
    ];
    shellHook = ''
        . .shellhook
    '';
}
