u = User.create(
  real_name: 'A. Administrator',
  email: 'admin@example.net',
  username: 'admin',
  password: 'admin',
  admin: true
)
u.notes.create(
  title: 'An Admin Note',
  content: 'This is only for me, A. Administrator.'
)

u = User.create(
  real_name: 'U. User',
  email: 'user@example.net',
  username: 'user',
  password: 'user',
  admin: false
)
u.notes.create(
  title: 'A User Note',
  content: 'This is only for me, U. User.'
)
