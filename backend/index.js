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

//create
app.post('/api/createapp', (req, res) => {

  const { app_name, 
          date_birth, 
          app_add, 
          city, 
          state, 
          zip_code, 
          phone_num, 
          email_add, 
          emp_type, 
          pos_app, 
          des_sal, 
          jobstart,
          comp_name_1, 
          doy_1, 
          pos_comp_1, 
          comp_name_2, 
          doy_2, 
          pos_comp_2, 
          comp_name_3, 
          doy_3, 
          pos_comp_3, 
          school_name, 
          school_loc, 
          date_grad, 
          educ_attain, 
          skill_one, 
          skill_two, 
          skill_three, 
          skill_four } = req.body;

  console.log(app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add);

  dbConnection.query('CALL Create_Applicant(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);'
              ,[app_name, date_birth, app_add, city, state, zip_code, phone_num, email_add, 
                emp_type, pos_app, des_sal, jobstart, comp_name_1, doy_1, pos_comp_1, comp_name_2, doy_2, pos_comp_2, 
                comp_name_3, doy_3, pos_comp_3, school_name, school_loc, date_grad, 
                educ_attain, skill_one, skill_two, skill_three, skill_four
              ], (err, result) => {
    if (err) {
      console.error('Error executing query: ' + err.stack);
      res.status(400).send('Error creating applicant');
      return;
    }
    res.status(201).send('Applicant created successfully');
  });
});

app.get('/api/displayapp', (req, res) => {
    dbConnection.query('CALL Display_Applicant();', (err, results) => {

        if (err) {
            console.error('Error executing query: ' + err.stack);
            res.status(500).send('Error fetching applicants');
            return; 
        }
        res.json(results);
    });
});


app.put('/api/updateapp/:id', (req, res) => {
  const { app_status } = req.body;
  const appId = req.params.id;
  dbConnection.query('CALL Update_Status(?, ?);', [app_status, appId], (err, result) => {
    if (err) {
      console.error('Error executing query: ' + err.stack);
      res.status(400).send('Error updating request status');
      return;
    }
    res.send('Request status updated successfully');
  });
});


app.delete('/api/deleteapp/:id', (req, res) => {
    const appId = req.params.id;
    dbConnection.query('CALL Delete_Applicant(?);', [appId], (err, result) => {
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
