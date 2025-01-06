using Human

using Test: @test

# ----------------------------------------------------------------------------------------------- #

# ---- #

foreach(
    jl -> run(`julia --project $jl`),
    filter!(!endswith("runtests.jl"), readdir(; join = true)),
)
