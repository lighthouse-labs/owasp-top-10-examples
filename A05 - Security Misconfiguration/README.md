# A05 - Security Misconfiguration

This is a simple example of security misconfiguration. To see it in action:

- run `shotgun -p 3000`
- load `http://localhost:3000/`
- try to sign in with the username `o'reilly`

Oh, snap! The default error pages are being displayed, revealing the security problem from the A01 
example for the world to see!
