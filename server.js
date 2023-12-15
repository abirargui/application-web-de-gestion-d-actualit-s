const express = require('express')
const app = express()
const port = 3000
const bodyParser = require('body-parser');
var mysql  = require('mysql');
var hbs = require('express-hbs');


app.engine('hbs', hbs.express4({
  partialsDir: __dirname + '/views/partials'
}));
app.set('view engine', 'hbs');
app.set('views', __dirname + '/views');
app.use(bodyParser.urlencoded({ extended: true }));

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'news'
});
 
connection.connect();

app.get('/', (req, res) => {
  
  connection.query('SELECT * FROM actualites ORDER BY date_publication DESC', (err, results) => {
    if (err) throw err;
   
    res.render('index', { actualites: results });
  });
});


app.get('/add', (req, res) => {
  res.render('add');
});

app.post('/add', (req, res) => {
 
  const { titre, description } = req.body;
  const date_publication = new Date();

  connection.query('INSERT INTO actualites (titre, description, date_publication) VALUES (?, ?, ?)', [titre, description, date_publication], (err, results) => {
    if (err) throw err;
    res.redirect('/');
  });
});

  app.post("/addnews" , function(req,res){
   var untitre= req.query.titre;
   var unedesc=req.query.description;
   var sql ="insert into actualites (titre,description) values(?,?)"

   connection.query(sql, [untitre, unedesc] ,function (error, results, fields) {
    res.send(results)
    
  })

   
  });

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})