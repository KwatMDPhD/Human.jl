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
