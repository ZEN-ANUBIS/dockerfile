const http = require('http');
const port = process.env.PORT || 8000

http.createServer((req, res) => {

  res.writeHead(200, {'Content-Type': 'text/html'});

  res.end('<html><body><b><marquee>AYANOKOJI KIYOTAKA<marquee></b></body></html>');

}).listen(port, () => {

  console.log('Server running on port 'port);

});
