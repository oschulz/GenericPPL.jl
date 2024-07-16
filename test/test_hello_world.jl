# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).

using GenericPPL
using Test


@testset "hello_world" begin
    @test GenericPPL.hello_world() == 42
end
