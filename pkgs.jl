#!/usr/bin/env julia

using DelimitedFiles, Pkg, Printf

function install(pkgs)
    for p in pkgs
        Pkg.add(p)
    end
end

function summary()
    println("\n==================")
    println("INSTALLED PACKAGES")
    println("==================")
    for (_, v) in enumerate(Pkg.installed())
        println(@sprintf("%s\t%s", v.second , v.first))
    end
end

function main()
    pkgs = readdlm("pkgs.txt", String)
    install(pkgs)
    summary()
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
