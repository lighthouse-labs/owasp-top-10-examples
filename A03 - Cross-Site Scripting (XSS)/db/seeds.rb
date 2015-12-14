User.create(
  real_name: 'A. Administrator',
  email: 'admin@example.net',
  username: 'admin',
  password: 'admin',
  admin: true
)

User.create(
  real_name: 'U. User <script>alert("Hax!");</script>',
  email: 'user@example.net',
  username: 'user',
  password: 'user',
  admin: false
)
