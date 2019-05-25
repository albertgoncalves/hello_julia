{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
    name = "Julia";
    buildInputs = [
        (python37.withPackages(ps: with ps; [
            conda
        ]))
    ];
    shellHook = ''
        . .conda
        . .shellhook
    '';
}
