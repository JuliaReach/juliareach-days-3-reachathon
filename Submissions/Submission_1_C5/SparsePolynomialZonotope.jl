using LazySets, SparseArrays

import LazySets: genmat, dim, linear_map, minkowski_sum, cartesian_product, quadratic_map

"""
    SparsePolynomialZonotope

    Type that represents a sparse polynomial zonotope.

Given a constant offset ``c ∈ \\mathbb{R}^n``, a generator matrix ``G ∈ \\mathbb{R}^{n \times h}``
and an exponent matrix ``\\mathbb{N}^{p×h}_{≥0}``, a sparse polynomial zonotope
``\\mathcal{PZ} ⊂ \\mathbb{R}^n`` 

### Fields

- `c` -- constant offset vector
- `G` -- generators matrix
- `E` -- exponents matrix

### Notes

Sparse polynomial zonotopes were introduced in N. Kochdumper and M. Althoff.
*Sparse Polynomial Zonotopes: A Novel Set Representation for Reachability Analysis*.
Transactions on Automatic Control, 2021.
"""
struct SparsePolynomialZonotope{N, VN<:AbstractVector{N}, MNG<:AbstractMatrix{N}, MNE<:AbstractMatrix{N}} <: LazySet{N}
    c::VN
    G::MNG
    E::MNE

    function SparsePolynomialZonotope(c::VN, G::MNG, E::MNE) where {N, VN<:AbstractVector{N}, MNG<:AbstractMatrix{N}, MNE<:AbstractMatrix{N}}
        @assert length(c) == size(G, 1) "the length of the offset vector, $(length(c)), is not compatible with a generators matrix of size $(size(G))"
        @assert size(G, 2) == size(E, 2) "a generators matrix of size $(size(G)) is not compatible with a exponent matrix of size $(size(E))"

        return new{N, VN, MNG, MNE}(c, G, E)
    end
end

offset(PZ::SparsePolynomialZonotope) = PZ.c
genmat(PZ::SparsePolynomialZonotope) = PZ.G

dim(PZ::SparsePolynomialZonotope) = size(PZ.G, 1)

function linear_map(M::AbstractMatrix, SP::SparsePolynomialZonotope)
    return SparsePolynomialZonotope(M * SP.c, M * SP.G, E)
end

function minkowski_sum(SP1::SparsePolynomialZonotope, SP2::SparsePolynomialZonotope)
    c = SP1.c + SP2.c
    G = hcat(SP1.G, SP2.G)
    E = _blockdiag(SP1.E, SP2.E)
    return SparsePolynomialZonotope(c, G, E)
end

_blockdiag(A::SparseMatrixCSC, B::SparseMatrixCSC) = blockdiag(A, B)
_blockdiag(A::AbstractMatrix, B::AbstractMatrix) = [A zeros(size(A, 1), size(B, 2)); zeros(size(B, 1), size(A, 2)) B]

function cartesian_product(SP1::SparsePolynomialZonotope, SP2::SparsePolynomialZonotope)
    c = vcat(SP1.c, SP2.c)
    G = _blockdiag(SP1.G, SP2.G)
    E = _blockdiag(SP1.E, SP2.E)
    return SparsePolynomialZonotope(c, G, E)
end

# TODO
function quadratic_map(Q::Vector{<:AbstractMatrix}, PZ::PolynomialZonotope)
    c̄ = [dot(c, Qi, c) for Qi in Q]
    #Ḡ = vcat([dot(c, (Qi+Qi')*G) for Qi in Q])
    # ...
end