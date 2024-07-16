# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).

import Test

Test.@testset "Package GenericPPL" begin
    include("test_aqua.jl")
    include("test_hello_world.jl")
    include("test_docs.jl")
end # testset
