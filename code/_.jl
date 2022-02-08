# ---
# Default lean project things

using Revise
using BenchmarkTools

using LeanProject

se = joinpath("..", "input", "setting.json")

PAR, PAI, PAC, PAO = LeanProject.get_project_path(se)

SE = LeanProject.read_setting(se)

# ---
# Project specific things

using DataFrames
using OrderedCollections
using PlotlyJS
using StatsBase

using DictExtension
using FinalFigure
using Gene
using PathExtension
using TableAccess

function write_gene_by_method(
    di::String,
    or::String,
    me_ge_::OrderedDict{String, Vector{String}},
)::DataFrame

    ge_ = unique(vcat(values(me_ge_)...))

    an_ge_me = DataFrame("Gene" => ge_)

    for (me, se_) in me_ge_

        an_ge_me[!, me] = [ge in se_ for ge in ge_]

    end

    an_ge_me[!, "Sum"] = vec(sum(Matrix(an_ge_me[!, 2:end]); dims = 2))

    sort!(an_ge_me, "Sum"; rev = true)

    TableAccess.write(joinpath(di, string(or, "_gene_by_method.tsv")), an_ge_me)

    return an_ge_me

end
