# A08 - Cross-Site Request Forgery (CSRF)

This is a simple example of a cross-site request forgery. To see it in action:

- cd into `vulnerable_app`
- run `shotgun -p 3000`
- load `http://localhost:3000/`
- sign in as the admin user with the username `admin` and password `admin`

Ok, you now have an active session with the website at `http://localhost:3000/`. Next:

- open your dev tools in your browser and go to the network tab
- load the file `attacker_site.html` into the browser

Notice anything in the network tab? It did a request to `http://localhost:3000/protected_route`. 
What was the result of the request? Take a look at the console running the vulnerable app. Looks 
like the protected action got performed by the administrator.
