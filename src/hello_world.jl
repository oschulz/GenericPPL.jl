# This file is a part of JuliaPackageTemplate.jl, licensed under the MIT License (MIT).


"""
    JuliaPackageTemplate.hello_world()

Prints "Hello, World!" and returns 42.

```jldoctest
using JuliaPackageTemplate

JuliaPackageTemplate.hello_world()

# output

Hello, World!
42
```
"""
function hello_world()
    println("Hello, World!")
    return 42
end
