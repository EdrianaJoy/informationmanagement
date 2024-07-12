const path = require('path');
const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({ extended: true }));

const dbConnection = mysql.createConnection({

    host: 'localhost',
    user: 'KERA',
    password: 'keranatics21N',
    database: 'kera_web',
}); 

dbConnection.connect((err) => {

    if (err) {
        console.error('Error connecting to MySQL: ' + err.stack);
        return;
    }
    console.log('Connected to MySQL as ID ' + dbConnection.threadId);
});

app.use(express.static(path.join(__dirname, '..', 'public')));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '..', 'public', 'front.html'));
});


app.post('/api/createapp', (req, res) => {

  const { app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add } = req.body;
  console.log(app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add);
  dbConnection.query('INSERT INTO applicant (app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add) VALUES (?, ?, ?, ?, ?, ?, ?, ?);', [app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add], (err, result) => {
    if (err) {
      console.error('Error executing query: ' + err.stack);
      res.status(400).send('Error creating applicant');
      return;
    }
    res.status(201).send('Applicant created successfully');
  });
});

app.get('/api/applicants', (req, res) => {
    dbConnection.query('CALL Display_Applicant();', (err, results) => {

        if (err) {
            console.error('Error executing query: ' + err.stack);
            res.status(500).send('Error fetching applicants');
            return; 
        }
        res.json(results);
    });
});


app.put('/api/applicants/:id', (req, res) => {
  const { app_name } = req.body;
  const appId = req.params.id;
  dbConnection.query('UPDATE applicant SET app_name = ? WHERE app_id = ?;', [app_name, appId], (err, result) => {
    if (err) {
      console.error('Error executing query: ' + err.stack);
      res.status(400).send('Error updating request status');
      return;
    }
    res.send('Request status updated successfully');
  });
});


app.delete('/api/applicants/:id', (req, res) => {
    const appId = req.params.id;
    dbConnection.query('DELETE FROM applicant WHERE app_id = ?;', [appId], (err, result) => {
      if (err) {
        console.error('Error executing query: ' + err.stack);
        res.status(400).send('Error deleting applicants');
        return;
      }
      res.send('Applicant deleted successfully');
    });
});



app.listen(PORT, async () => {
    console.log(`Server is running on port ${PORT}`);
    const open = (await import('open')).default;
    open(`http://localhost:${PORT}`);
});



module.exports = dbConnection;
