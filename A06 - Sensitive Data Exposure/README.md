# A06 - Sensitive Data Exposure

This is a simple example of a data leak. To see it in action:

- run `shotgun -p 3000`
- open your dev tools in your browser and go to the network tab
- load `http://localhost:3000/`
- open the content of the request to `/users`

See anything that maybe shouldn't be there?
