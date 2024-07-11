const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(bodyParser.json());

const dbConnection = mysql.createConnection({

    host: 'localhost',
    user: 'root',
    password: 'keranatics21N',
    database: 'Applicant',
}); 

dbConnection.connect((err) => {

    if (err) {
        console.error('Error connecting to MySQL: ' + err.stack);
        return;
    }
    console.log('Connected to MySQL as ID ' + dbConnection.threadId);
});


app.get('/api/applicants', (req, res) => {
    dbConnection.query('SELECT * FROM Applicant', (err, results) => {

        if (err) {
            console.error('Error executing query: ' + err.stack);
            res.status(500).send('Error fetching applicants');
            return; 
        }
        res.json(results);
    });
});

app.post('/api/applicants', (req, res) => {
    const { app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add } = req.body;
    dbConnection.query('INSERT INTO Applicants (app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add) VALUES (?, ?)', [app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add], (err, result) => {
      if (err) {
        console.error('Error executing query: ' + err.stack);
        res.status(400).send('Error creating applicant');
        return;
      }
      res.status(201).send('Applicant created successfully');
    });
  });

app.delete('/api/applicants/:id', (req, res) => {
    const appId = req.params.id;
    dbConnection.query('DELETE FROM Applicant WHERE app_ID = ?', [appId], (err, result) => {
      if (err) {
        console.error('Error executing query: ' + err.stack);
        res.status(400).send('Error deleting applicants');
        return;
      }
      res.send('Applicant deleted successfully');
    });
});

app.put('/api/applicants/:id', (req, res) => {
    const { status } = req.body;
    const appId = req.params.id;
    dbConnection.query('UPDATE Request SET req_status = ? WHERE app_ID = ?', [status, appId], (err, result) => {
      if (err) {
        console.error('Error executing query: ' + err.stack);
        res.status(400).send('Error updating request status');
        return;
      }
      res.send('Request status updated successfully');
    });
  });


app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});



module.exports = dbConnection;
