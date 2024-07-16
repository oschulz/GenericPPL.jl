# Use
#
#     DOCUMENTER_DEBUG=true julia --color=yes make.jl local [nonstrict] [fixdoctests]
#
# for local builds.

using Documenter
using JuliaPackageTemplate

# Doctest setup
DocMeta.setdocmeta!(
    JuliaPackageTemplate,
    :DocTestSetup,
    :(using JuliaPackageTemplate);
    recursive=true,
)

makedocs(
    sitename = "JuliaPackageTemplate",
    modules = [JuliaPackageTemplate],
    format = Documenter.HTML(
        prettyurls = !("local" in ARGS),
        canonical = "https://oschulz.github.io/JuliaPackageTemplate.jl/stable/"
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
    repo = "github.com/oschulz/JuliaPackageTemplate.jl.git",
    forcepush = true,
    push_preview = true,
)
