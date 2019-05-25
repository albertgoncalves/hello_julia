#!/usr/bin/env julia

using CSV, DataFrames

function main()
    df = DataFrame(A = 1:4, B = ["M", "F", "F", "M"])
    println(df)
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
