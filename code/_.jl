using Revise
using BenchmarkTools

using LeanProject

se = joinpath("..", "input", "setting.json")

PAR, PAI, PAC, PAO = LeanProject.get_project_path(se)

SE = LeanProject.read_setting(se)

# ---

using Combinatorics
using DataFrames
using OrderedCollections

using DictExtension
using Gene
using LeanProject
using TableAccess

function write_gene_by_method(
    di::String,
    or::String,
    me_ge_::OrderedDict{String,Vector{String}},
)::DataFrame

    DictExtension.write(joinpath(di, "method_to_$(or)_genes.json"), sort(me_ge_))

    ge_ = unique(vcat(values(me_ge_)...))

    an_ge_me = DataFrame("Gene" => ge_)

    for (me, se_) in me_ge_

        an_ge_me[!, me] = [ge in se_ for ge in ge_]

    end

    an_ge_me[!, "Sum"] = vec(sum(Matrix(an_ge_me[!, 2:end]); dims = 2))

    sort!(an_ge_me, "Sum"; rev = true)

    TableAccess.write(joinpath(di, "$(or)_gene_by_method.tsv"), an_ge_me)

    return an_ge_me

end
