using Test
using DeDisp

@testset "DeDisp.jl" begin
    @testset "Incoherent Dedispersion" begin
        I = Array{UInt8}(undef, 256, 20480)
        f = open("frb.fil")
        skip(f, 360)
        read!(f, I)
        close(f)
        I = convert(Array{Float64}, transpose(I))
        ts = DeDisp.incoherent(I, 341.0, 32.0, 81.92e-6 * 16, 250.0)

        @test argmax(ts) == 7463
        @test maximum(ts) == 8788.0
    end
end
