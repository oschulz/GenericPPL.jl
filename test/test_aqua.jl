# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).

import Test
import Aqua
import GenericPPL

Test.@testset "Package ambiguities" begin
    Test.@test isempty(Test.detect_ambiguities(GenericPPL))
end # testset

Test.@testset "Aqua tests" begin
    Aqua.test_all(
        GenericPPL,
        ambiguities = true
    )
end # testset
