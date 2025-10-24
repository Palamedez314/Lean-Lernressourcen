universe u

class hasAddition (M : Type u) where
  add : M → M → M
infixl:55 (priority := high) " + " => hasAddition.add

class hasZero (M : Type u) where
  zero : M
notation:max (priority := high) "zero" => hasZero.zero

class hasNeg (M : Type u) where
  neg : M → M
prefix:max (priority := high) "-" => hasNeg.neg

class hasMultiplication (M : Type u) where
  mul : M → M → M
infixl:75 (priority := high) " * " => hasMultiplication.mul

class hasOne (M : Type u) where
  one : M
notation:max (priority := high) "one" => hasOne.one

class hasInv (M : Type u) where
  inv : M → M
postfix:max (priority := high) "⁻¹" => hasInv.inv

class hasAction (M : Type u) (N : Type v) where
  action : M → N → N
infixl:65 (priority := high) " · " => hasAction.action

class AdditiveGroup (G : Type u) extends hasAddition G, hasZero G, hasNeg G where
  add_ass (a b c : G) : (a + b) + c = a + (b + c)
  add_zero (a : G) : a + zero = a
  add_neg (a : G) : a + (-a) = zero

class AdditiveAbelianGroup (G : Type u) extends AdditiveGroup G where
  add_comm (a b : G) : a + b = b + a

class Field (K : Type u) extends AdditiveAbelianGroup K, hasMultiplication K, hasOne K, hasInv K where
  mul_ass (a b c : K) : (a * b) * c = a * (b * c)
  mul_comm (a b : K) : a * b = b * a
  mul_one (a : K) : a * one = a
  mul_inv (a : K) : a ≠ zero → a * a⁻¹ = one
  mul_add (a b c : K) : a * (b + c) = a * b + a * c

class VectorSpace (K : Type u) [Field K] (V : Type v) extends AdditiveAbelianGroup V, hasAction K V where
  scalar_scalar (a b : K) (v : V) : a · (b · v) = (a * b) · v
  one_scalar (v : V) : (one : K) · v = v
  scalar_add (a : K) (v u : V) : a · (u + v) = a · u + a · v
  add_scalar (a b : K) (v : V) : (a + b) · v = a · v + b · v
