# A01 - Injection

This is a simple example of SQL injection. To see it in action:

- run `shotgun -p 3000`
- load `http://localhost:3000/`
- sign in as the admin user with the username `admin` and password `admin`
- sign out from the admin account with the "Sign out" link
- try signing in without a password by just entering the username `admin` but no password

So, the session code seems to be working correctly. You can sign in with the right password and you
can't sign in with the wrong password. Next try:

- enter the string `admin' OR 1); --` in the username field and leave the password field blank

Did you just sign in as a user without knowing their password? How did that happen?!
