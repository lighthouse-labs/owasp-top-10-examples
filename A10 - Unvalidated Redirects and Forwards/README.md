# A10 - Unvalidated Redirects and Forwards

This is a simple example to show an unvalidated redirect. To see it in action:

- run `shotgun -p 3000`
- load `http://localhost:3000/must_be_logged_in`
- sign in as the admin user with the username `admin` and password `admin`

You should be redirected to `http://localhost:3000/must_be_logged_in`. Ok, now try:

- sign out by going back and clicking the link
- load `http://localhost:3000/?redirect_to=http://example.com/`
- sign in again

Wait, where are you now?
