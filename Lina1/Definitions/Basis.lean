import Lina1.Definitions.Sum

variable {K : Type} [Field K] {V : Type} [VectorSpace K V]

def span (s : Set V) : Set V
    := fun v ↦ ∃ n : Nat, ∃ u : (i : Nat) → (i ∈ range n) → V, ∃ a : (i : Nat) → (i ∈ range n) → K,
     (∀ i : Nat, ∀ hi : i ∈ range n, u i hi ∈ s) ∧ (sum n (fun i hi ↦ (a i hi) · (u i hi)) = v)

def isSpanningSet (s : Set V) : Prop
    := sorry --∀ v : V, v ∈ @span K a V b s  ?warum funktioniert span s nicht?

def isLinearlyIndependent (s : Set V) : Prop
    := sorry

def isFinitelyGenerated (V : Type) [VectorSpace K V] : Prop
    := sorry --∃ s : Set V, isSpanningSet s (gleiches Problem mit Metavariablen)

structure Basis (V : Type) [VectorSpace K V] where
  carrier : Set V
  spanning : isSpanningSet s
  independent : isLinearlyIndependent s

def hasBasis (V : Type) [VectorSpace K V] : Prop
    := sorry
