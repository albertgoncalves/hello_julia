#!/usr/bin/env julia

using CSV, DataFrames

function summary(df)
    for f in [names, describe]
        println(f(df))
    end
end

function readcsv(filename)
    CSV.read(filename, delim=";")
end

function main()
    events_csv = "data/events.csv"
    shifts_csv = "data/shifts.csv"
    if all(isfile, [events_csv, shifts_csv])
        events = readcsv(events_csv)
        summary(events)
    end
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
