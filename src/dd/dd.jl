export Δt, Δξ, dd

function Δt(f₁, f₂, dm)
    𝓓 * dm * (f₁^-2 - f₂^-2)
end

function Δξ!(ξ, fₕ, Δf, nf, nt, δt, dm)
    δf = Δf / nf
    f₀ = fₕ + δf
    for i ∈ 1:nf
        f = f₀ - i * δf
        δξ = Δt(f, fₕ, dm) ÷ δt
        ξ[i] = δξ < nt ? δξ : 0
    end
end

function Δξ(fₕ, Δf, nf, nt, δt, DM)
    ξ = zeros(Int64, nf)
    Δξ!(ξ, fₕ, Δf, nf, nt, δt, DM)
    ξ
end

function dd(I, fₕ, Δf, δt, dm)
    nt, nf = size(I)
    ξ = Δξ(fₕ, Δf, nf, nt, δt, dm)
    X = zeros(eltype(I), nt - maximum(ξ))
    @inbounds Threads.@threads for j ∈ axes(I, 2)
        @inbounds for i ∈ eachindex(X)
            X[i] += I[CartesianIndex(i + ξ[j], j)]
        end
    end
    X
end
