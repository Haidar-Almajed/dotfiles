#!/bin/bash

# Link Julia startup config
mkdir -p ~/.julia/config
ln -sf ~/workspaces/dotfiles/julia/startup.jl ~/.julia/config/startup.jl

# Install common Julia packages globally
julia --startup-file=no -e '
import Pkg
Pkg.add(["Revise", "DifferentialEquations", "ForwardDiff"])
Pkg.precompile()
'
echo "Done! Julia packages installed."
