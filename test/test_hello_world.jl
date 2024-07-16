# This file is a part of JuliaPackageTemplate.jl, licensed under the MIT License (MIT).

using JuliaPackageTemplate
using Test


@testset "hello_world" begin
    @test JuliaPackageTemplate.hello_world() == 42
end
