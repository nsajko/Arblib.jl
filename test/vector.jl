@testset "Vector: $T" for (TVec, T, TRef) in
                          [(ArbVector, Arb, ArbRef), (AcbVector, Acb, AcbRef)]
    V = TVec(4, prec = 128)
    @test size(V) == (4,)
    @test precision(V) == 128

    x = T(1.5)
    V[3] = x
    @test V[3] == x
    @test V[3] isa TRef
    @test !isempty(sprint(show, V[3]))
    @test precision(V[3]) == 128

    Arblib.add!(V, V, V, length(V))
    V2 = TVec(4, prec = 128)
    V2[3] = T(3)
    @test V == V2

    A = TVec([T(i + 1) for i = 2:5])
    @test A[end] == T(6)

    A = TVec([i + j for i = 1:4 for j = 1:4])
    @test A[16] == T(8)
end