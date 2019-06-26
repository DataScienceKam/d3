const express = require('express');
const app = express();
const HOST = '0.0.0.0';
const PORT = 8080;

app.get('/', ( req, res ) => {
    res.sendFile(`${__dirname}/main.html`)
});

app.get('/about', (req, res) => {
    res.sendFile(`${__dirname}/about.html`)
});


app.listen(PORT,  HOST)

console.log('Listening on port 8080!');
console.log(`Running on http://${HOST}:${PORT}`);

////http://127.0.0.1:8080/