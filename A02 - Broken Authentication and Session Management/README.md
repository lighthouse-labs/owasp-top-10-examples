# A02 - Broken Authentication and Session Management

This is a simple example of SQL injection. To see it in action:

- run `rake db:create db:migrate db:seed`
- run `shotgun -p 3000`
- load `http://localhost:3000/`
- sign in as the admin user with the username `admin` and password `admin`

So, the session code seems to be working correctly. Next try:

- close the browser and imagine you are on a public computer
- now imagine you are the next person to use the computer (perhaps an hour later) and open up the browser and navigate to the same site, `http://localhost:3000/`

Oops! Looks like session timeouts weren't configured to drop the session after a period of activity and now the new user can act as you on the website.
