var express = require('express');
var app = express();
var router = express.Router();

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

/****************************** Router ***************************/
router.get('*', function(req, res){
    res.sendFile('./src/index.html', { root: __dirname + '/' });
});

/****************************** /Router ***************************/

app.use(express.static(__dirname + '/'));
app.use('/', router);
app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);