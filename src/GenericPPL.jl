# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).

"""
    module GenericPPL

A generic probabalistic programming language (PPL) for Julia.

The package aims to provides a common PPL that can be used for, resp.
converted to, different use cases.

The functionality of  the generate [`PPLObject`](@ref) instances is limited
to random number generation and density calculation on purpose. More complex
functionality is meant to be implemented by more application specific packages
that are free to only support a limited set of syntactic constructs.
"""
module GenericPPL

include("ppl.jl")

end # module
