#run include("plot_vector.jl")
using Plots
using LinearAlgebra

function plot_vec(u,color)
    u1 = u[1]
    u2 = u[2]

    quiver!([0,0],[0,0],quiver=([u1],[u2]),aspect_ratio=1,c=color)
end

u = [3;4]

A = [1 0;0 -1]

b = A*u

un = u/norm(u)

plot_vec(u,:blue)
plot_vec(b,:red)

savefig("plot_vector.png")

