# A03 - Cross-Site Scripting (XSS)

This is a simple example of cross-site scripting. To see it in action:

- run `rake db:create db:migrate db:seed`
- run `shotgun -p 3000`
- load `http://localhost:3000/`

Whoa! Somehow a script got injected into the page, and this page gets rendered for every user of the site. What happened?
