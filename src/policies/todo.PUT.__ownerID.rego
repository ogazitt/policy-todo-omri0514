package todoApp.PUT.todo.__oid

import input.user
import input.resource
import future.keywords.in

default allowed = false

allowed {
  user.attributes.roles[_] == "editor"
  some id , _ in user.identities
  id == resource.oid
}

allowed {
  user.attributes.roles[_] == "evil_genius"
}
