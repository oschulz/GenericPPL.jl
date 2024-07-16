# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [nonstrict] [fixdoctests]
#
# for local builds.

using Documenter
using GenericPPL

# Doctest setup
DocMeta.setdocmeta!(
    GenericPPL,
    :DocTestSetup,
    :(using GenericPPL);
    recursive=true,
)

makedocs(
    sitename = "GenericPPL",
    modules = [GenericPPL],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://oschulz.github.io/GenericPPL.jl/stable/"
    ),
    pages = [
        "Home" => "index.md",
        "API" => "api.md",
        "LICENSE" => "LICENSE.md",
    ],
    doctest = ("fixdoctests" in ARGS) ? :fix : true,
    linkcheck = !("nonstrict" in ARGS),
    warnonly = ("nonstrict" in ARGS),
)

deploydocs(
    repo = "github.com/oschulz/GenericPPL.jl.git",
    forcepush = true,
    push_preview = true,
)
