# A04 - Insecure Direct Object References

This is a simple example to show insecure direct object references. To see it in action:

- run `shotgun -p 3000`
- load `http://localhost:3000/`
- sign in as the user with the username `user` and password `user`

There is a list of links to the notes that the current user is allowed to view. Users may only view
their own notes. Try it out.

- click on the link to see the note details
- now you're at the URL `http://localhost:3000/notes/2`
- change the number at the end of the URL to `1` and press enter

Uh oh. You're not supposed to be able to see this note. The link to this note didn't appear on the 
home page; why are you able to see it?
