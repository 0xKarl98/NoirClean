import Clean.Gadgets.ByteLookup
import Clean.Circuit.Extensions

/-!
The input fields are both ranged from 0 to 256 ,
so we set prime p to be larger than 512
-/
section
variable {p : ℕ} [Fact p.Prime]
variable [p_large_enough: Fact (p > 512)]
