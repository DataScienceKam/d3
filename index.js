const express = require('express')
const app = express()

app.get('/', ( req, res ) => {
    res.sendFile(`${__dirname}/main.html`)
});

app.get('/about', (req, res) => {
    res.sendFile(`${__dirname}/about.html`)
});


app.listen(8080, () => {
    console.log('Listening on port 8080!')
});

//http://127.0.0.1:8080/