# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).

using Test
using GenericPPL
import Documenter

Documenter.DocMeta.setdocmeta!(
    GenericPPL,
    :DocTestSetup,
    :(using GenericPPL);
    recursive=true,
)
Documenter.doctest(GenericPPL)
