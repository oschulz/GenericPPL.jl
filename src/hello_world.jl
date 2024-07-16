# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).


"""
    GenericPPL.hello_world()

Prints "Hello, World!" and returns 42.

```jldoctest
using GenericPPL

GenericPPL.hello_world()

# output

Hello, World!
42
```
"""
function hello_world()
    println("Hello, World!")
    return 42
end
