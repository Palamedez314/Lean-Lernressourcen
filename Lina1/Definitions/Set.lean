
def Set (α : Type u) := α → Prop


namespace Set

protected def Mem (s : Set α) (a : α) : Prop :=
  s a
--Ermöglicht die Notation a ∈ s für Mem s a
instance : Membership α (Set α) :=
  ⟨Set.Mem⟩

protected def Subset (s₁ s₂ : Set α) :=
  ∀ a : α, a ∈ s₁ → a ∈ s₂
--Ermöglicht die Notation s₁ ⊆ s₂ für Subset s₁ s₂
instance : HasSubset (Set α) :=
  ⟨Set.Subset⟩

end Set


def mapsInto {α : Type u} {β : Type u} (f : α → β) (s : Set β) : Prop
    := ∀ a : α, f a ∈ s
