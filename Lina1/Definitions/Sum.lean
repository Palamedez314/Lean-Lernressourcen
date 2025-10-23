import Lina1.Definitions.AlgebraicStructures
import Lina1.Definitions.Set

def range (n : Nat) : Set Nat := fun i ↦ i < n

def sum {M : Type} [hasAddition M] (n : Nat) (f : (i : Nat) → (i ∈ range n) → M) : M := sorry
