using LazySets, Plots

include("SparsePolynomialZonotope.jl")

# ==========
# Slide 4
# ==========
Z = Zonotope([0, 0.], [2 1 2; 0 2 2.])
fig = plot(Z)

# equivalent: 
# Z = Zonotope([0, 0.], [[2, 0], [1, 2.], [2, 2.]])

# plot generators
plot!(fig, [0, 2.], [0, 0.], arrow=:arrow, c=:black, lw=2.0, lab="")
plot!(fig, [0, 1.], [0, 2.], arrow=:arrow, c=:black, lw=2.0, lab="")
plot!(fig, [0, 2.], [0, 2.], arrow=:arrow, c=:black, lw=2.0, lab="")
savefig(fig, "slide_4.png")

# ==========
# Slide 5
# ==========
SP = SparsePolynomialZonotope([0, 0.], [2 1 2; 0 2 2.], [1 0 3; 0 1 1.])
#fig = plot(SP)

# ==========
# Slide 10
# ==========

# ==========
# Slide 12
# ==========

# ==========
# Slide 13
# ==========