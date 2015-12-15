const marked = require('marked');
const http = require('http');

const hostname = '0.0.0.0';
const port = 3000;

http.createServer((req, res) => {
  var body = "";
  req.on('data', function (chunk) {
    body += chunk;
  });
  req.on('end', function () {
    body = marked(body.substr(3));
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(body + '<h1>Send some content to see it parsed</h1><form method="post"><textarea name="md"></textarea><button>Submit</button></form>');
  });
}).listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
