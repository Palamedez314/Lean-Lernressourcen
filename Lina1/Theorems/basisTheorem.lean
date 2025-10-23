import Lina1.Definitions.Basis

variable {K : Type} [a : Field K]

instance (V : Type) [b : VectorSpace K V] (h : isFinitelyGenerated V) : Basis V where
  carrier := sorry
  spanning := sorry
  independent := sorry

theorem basisTheorem (V : Type) [VectorSpace K V] (h : isFinitelyGenerated V) : hasBasis V
  := sorry
