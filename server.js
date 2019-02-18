'use strict';

const express = require('express');
var randomstring = require("randomstring");

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

var tekst = randomstring.generate();

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World, This is Admir via Jenkins! Feb 18. Random string: ' + tekst);
});


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);


