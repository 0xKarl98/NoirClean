import Lake
open Lake DSL

package myNoirVerification where
  -- Package metadata
  leanOptions := #[⟨`pp.unicode.fun, true⟩]
  -- Add Clean as a Git dependency
  require Clean from git "https://github.com/Verified-zkEVM/clean.git" @ "main"
@[default_target]
lean_lib MyNoirVerification where
  roots := #[`MyNoirVerification]
