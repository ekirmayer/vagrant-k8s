const express = require('express')
const app = express()


const port = process.env.PORT || 3000;
var os = require("os");

app.get('/', function (req, res) {
    res.sendStatus(200);
});

app.get('/info', function (req, res) {
    res.json({ name: "k8s-service", container: os.hostname() });
});

app.listen(port, () => {
    console.log(`App listening on port ${port}!`)
})