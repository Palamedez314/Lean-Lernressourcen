import Lina1.Definitions.Sum

variable {K : Type} [Field K] {V : Type} [VectorSpace K V]

def span (K: Type)[Field K] {V : Type} [VectorSpace K V] (s : Set V) : Set V
    := fun v ↦ ∃ n : Nat, ∃ u : (i : Nat) → (i ∈ range n) → V, ∃ a : (i : Nat) → (i ∈ range n) → K,
     (∀ i : Nat, ∀ hi : i ∈ range n, u i hi ∈ s) ∧ (sum n (fun i hi ↦ (a i hi) · (u i hi)) = v)

#check span

#check span K (fun _ : V ↦ False)

def isSpanningSet (s : Set V) : Prop
    := span K s = Set.univ

def isLinearlyIndependent (s : Set V) : Prop
    := sorry

def isFinitelyGenerated {K : Type} [Field K] (V : Type) [VectorSpace K V] : Prop
    := ∃ s : Set V, isSpanningSet s --Warum funktioniert es nur wenn ich alles explizit mache mit @ ?

structure Basis (V : Type) [VectorSpace K V] where
  carrier : Set V
  spanning : isSpanningSet carrier
  independent : isLinearlyIndependent carrier

def hasBasis (V : Type) [VectorSpace K V] : Prop
    := sorry
