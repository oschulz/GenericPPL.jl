# This file is a part of GenericPPL.jl, licensed under the MIT License (MIT).


"""
    abstract type AbstractPPLObject

Supertype for PPL object types.
"""
abstract type AbstractPPLObject end
export AbstractPPLObject


"""
    ppleval(f, pobj::AbstractPPLObject, args...)

Evaluates the function `f` on the given PPL object `pobj`:

* `a ~ d` is treated as `a = f(d)`
* A standalone `~ d` (no LHS) is treated as `f(d)`
* `return @all` returns a named tuple of all `~` LHS names in the scope
  above.
"""
function ppleval end



"""
    struct GenericPPLObject <: AbstractPPLObject



"""
struct PPLObject{F<:Function}
    expr::Expr
    _feval::F
end




"""
    @ppl expr

Constructs a [`PPLObject`](@ref) from the given expression `expr`.

Example:

```Julia
using GenericPPL, Distributions, DensityInterface

pobj = @ppl begin
    x ~ Uniform(0, 1)
    y ~ Normal(x, 1)
    z ~ Normal(y, 1)

    return @all  # optional, implicit if not present
end

x = rand(pobj)
x isa NamedTuple

logdensityof(pobj, x) ≈ sum([
    logdensityof(Uniform(0, 1), x.x),
    logdensityof(Normal(x.x, 1), x.y),
    logdensityof(Normal(x.y, 1), x.z)
])
```

All valid Julia code is allowed within the `@ppl` block, but some operations
on the resulting [`PPLObject`](@ref) may only work for a subset of all
possible syntactic constructs. Likewise, packages that support GenericPPL
may only by able to support subset of it for algorithmic or technical
reasons.

The `expr` is treated as implicitly ending with `return @all` if it does not
end with and explicit `return` statement.
"""
macro ppl(expr::Expr)
    return _ppl_macro_impl(expr)
end

function _ppl_macro_impl(expr::Expr)
end



