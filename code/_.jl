using Revise
using BenchmarkTools

using DataFrames
using OrderedCollections

using Gene
using LeanProject
using TableAccess

# ========

# ========
se = joinpath("..", "input", "setting.json")

PAR, PAI, PAC, PAO = get_project_path(se)

SE = read_setting(se)

# ========
