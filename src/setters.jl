# Mag
set!(res::MagLike, ::Irrational{:π}) = const_pi!(res)

# Arb
function set!(res::ArbLike, x::Union{MagLike,BigFloat})
    set!(radref(res), UInt64(0))
    set!(midref(res), x)
    return res
end

function set!(res::ArbLike, x::Rational; prec::Integer = precision(res))
    set!(res, numerator(x))
    return div!(res, res, denominator(x), prec = prec)
end

for (irr, suffix) in ((:π, "pi"), (:ℯ, "e"), (:γ, "euler"), (:catalan, "catalan"))
    jlf = Symbol("const_$suffix", "!")
    IrrT = Irrational{irr}
    @eval begin
        set!(res::ArbLike, ::$IrrT; prec::Integer = precision(res)) = $jlf(res, prec = prec)
    end
end

function set!(res::ArbLike, ::Irrational{:φ}; prec::Integer = precision(res))
    set!(res, 5)
    sqrt!(res, res, prec)
    add!(res, res, 1, prec)
    return div!(res, res, 2, prec)
end

function set!(
    res::ArbLike,
    (a, b)::NTuple{2,Union{MagLike,ArfLike,BigFloat}};
    prec::Integer = precision(res),
)
    a <= b || throw(ArgumentError("must have a <= b, got a = $a and b = $b"))
    return set_interval!(res, a, b, prec = prec)
end

function set!(res::ArbLike, (a, b)::Tuple{<:Real,<:Real}; prec::Integer = precision(res))
    # TODO: This is not strictly required to check.
    a > b && throw(ArgumentError("must have a <= b, got a = $a and b = $b"))
    # TODO: If we really want to we could avoid one allocation by reusing res
    return union!(res, Arb(a, prec = prec), Arb(b, prec = prec), prec = prec)
end

# Acb
function set!(res::AcbLike, x::Union{Real,arf_struct,mag_struct,Tuple{<:Real,<:Real}})
    set!(realref(res), x)
    set!(imagref(res), 0)
    return res
end

function set!(
    res::AcbLike,
    re::Union{Real,arb_struct,arf_struct,mag_struct,Tuple{<:Real,<:Real}},
    im::Union{Real,arb_struct,arf_struct,mag_struct,Tuple{<:Real,<:Real}},
)
    set!(realref(res), re)
    set!(imagref(res), im)
    return res
end

set!(res::AcbLike, z::Complex) = set!(res, real(z), imag(z))
set!(res::AcbLike, ::Irrational{:π}) = const_pi!(res)
