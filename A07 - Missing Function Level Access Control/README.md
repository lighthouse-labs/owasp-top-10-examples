# A07 - Missing Function Level Access Control

This is a simple example to demonstrate function level access control. To see it in action:

- run `shotgun -p 3000`
- load `http://localhost:3000/`
- sign in as the admin user with the username `admin` and password `admin`
- click the "For admins only" link

All well and good. Next:

- go back and sign out by following the link
- now try reloading the page that the link took you to, `http://localhost:3000/admins_only`

Well, ain't that a pity. Loads up without a fuss.
