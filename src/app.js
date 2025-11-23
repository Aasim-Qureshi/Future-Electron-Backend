const express = require('express');
const bodyParser = require('express').json;
const morgan = require('morgan');
const routes = require('./presentation/routes/index.routes');


const app = express();


app.use(morgan('dev'));
app.use(bodyParser());


app.use('/api', routes);
app.get('/health', (req, res) => res.json({ ok: true }));

module.exports = app;