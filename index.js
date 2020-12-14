const express = require ('express');
const bodyParses = require('body-parser');
const session = require('express-session');
const layouts = require('express-ejs-layouts');

const mongoose = require('mongoose');
const url = 'mongodb+srv://teja:teja1000@cluster0.xfbln.mongodb.net/itzpad?retryWrites=true&w=majority';
mongoose.connect(url,{useNewUrlParser: true, useUnifiedTopology: true});

const db = mongoose.connection;
db.once('open', () => {
    console.log('Connected');
})

const app = express();
app.set('view engine','ejs');

app.use(session({
    secret: 'som3_s3cret_key5',
    cookie: {}
}))

app.use(bodyParses.urlencoded());
app.use(express.static('public'));

app.use('/css', express.static(__dirname + 'public/css'));
app.use('/js', express.static(__dirname + 'public/js'));
app.use('/asset', express.static(__dirname + 'public/asset'));

app.use(layouts);
app.set('layout', 'layouts/main.ejs');

app.set('layout extractStyles', true);
app.set('layout extracScripts', true);

const indexRoutes = require('./routes/index_page');

app.use('/',indexRoutes);

app.listen(3000);
console.log('server run at port 3000....');