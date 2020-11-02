using Plots

# hyperbola.png --------------------------------------------------------------------------

paramlen=1.5
t0=0.6*paramlen
ran = LinRange(-paramlen, paramlen, 100)

# Hyperbola
plot(framestyle=:origin, aspect_ratio=:equal)
plot!(cosh, sinh, ran, color=:black, lab="")
plot!(t -> -cosh(t), sinh, ran, color=:black, lab="")

# Guides
plot!(t -> t, t -> t, -sinh(last(ran)):0.01:sinh(last(ran)), style=:dash, color=:red, lab="")
plot!(t -> t, t -> -t, -sinh(last(ran)):0.01:sinh(last(ran)), style=:dash, color=:red, lab="")
plot!([(0, sinh(t0)), (cosh(t0), sinh(t0))], style=:dot, color=:black, lab="")
plot!([(cosh(t0), 0), (cosh(t0), sinh(t0))], style=:dot, color=:black, lab="")

# Annotations
annotate!(cosh(t0)+0.1, sinh(t0)/2, Plots.text("sinh t", :left, 8))
annotate!(cosh(t0)/2, sinh(t0)+0.1, Plots.text("cosh t", :up, 8))
savefig("hyperbola.png")

# hyperbolic-paraboloid.png -------------------------------------------------------------

x = LinRange(-10, 10, 100)
y = LinRange(-10, 10, 100)
z(x, y) = x^2-y^2
plot(x, y, z, st=:surface)
savefig("hyperbolic-paraboloid.png")

# image-parametrization-Y.png ------------------------------------------------------------

x = LinRange(-10, 10, 100)
y = LinRange(-10, 10, 100)
z(x, y) = abs(y) <= abs(x) ? x^2-y^2 : NaN
plot(x, y, z, st=:surface)
savefig("image-parametrization-Y.png")

