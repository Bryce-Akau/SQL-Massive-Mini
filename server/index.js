const express = require('express');
const bodyParser = require('body-parser');
const massive = require('massive');
const dotenv = require('dotenv');
dotenv.config();

const app= express();
app.use(bodyParser.json());

massive(process.env.CONNECTION_STRING).then(database => {
    //Reminder: we COULD do it this way;
    // database.query('select * from heroes').then(results => {
    //     console.log(results)
    // })
    // database.get_heroes().then(results => {
    //     console.log(results)
    // })

    //Set aside the database object as 'db'
    app.set('db', database)
})

app.get('/api/heroes', (req, res) => {
    req.app.get('db').get_heroes().then(results => {
        res.json(results)
    }).catch(error => {
        res.json({message: 'An error happened on the server. Serr the server console.'})
        console.log('error', error)
    })
})

app.post('/api/heroes', (req, res) => {
    const data= req.body;
    req.app.get('db').create_hero([
        data.name,
        data.powers,
        data.age,
        data.secret_identity,
        data.picture
    ]).then(results => {
        res.json(results)
    }).catch(error => {
        res.json({message: 'An error happened on the server. Serr the server console.'})
        console.log('error',error)
    })
})

const PORT = 4000
app.listen(PORT, () => {
    console.log('charizard' + PORT)
})