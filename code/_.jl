using Revise
using BenchmarkTools

using DataFrames
#using PyCall

using DictExtension
using Gene
using LeanProject
using TableAccess

#kwat = pyimport("kwat")

# ========

# ========
se = joinpath("..", "input", "setting.json")

PAR, PAI, PAC, PAO = get_project_path(se)

SE = read_setting(se)

# ========
