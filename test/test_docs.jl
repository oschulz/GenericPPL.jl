# This file is a part of JuliaPackageTemplate.jl, licensed under the MIT License (MIT).

using Test
using JuliaPackageTemplate
import Documenter

Documenter.DocMeta.setdocmeta!(
    JuliaPackageTemplate,
    :DocTestSetup,
    :(using JuliaPackageTemplate);
    recursive=true,
)
Documenter.doctest(JuliaPackageTemplate)
