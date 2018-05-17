insert into heroes
  (name, powers, age, secret_identity, picture)
  values
  (${name}, ${powers}, ${age}, ${secret_identity}, ${picture})

returning *;