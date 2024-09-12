## site.pp ##
File { backup => false }

node default {
  # Classify nodes by the 'pp_role' fact if it exists
  if $trusted['pp_role'] {
    include "role::${trusted['extensions']['pp_role']}"
  } else {
    include role::default
  }
}
