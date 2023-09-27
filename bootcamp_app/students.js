const { Pool } = require('pg');

const args = process.argv.slice(2);

const cohortName = args[0];
const limit = args[1] || 5;
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`, limit];


const queryString = `
  SELECT s.id, s.name, cohort_id, c.name AS cohort_name
  FROM students s
  JOIN cohorts c ON s.cohort_id = c.id
  WHERE c.name LIKE $1
  LIMIT $2;
  `;

const pool = new Pool({
    user: 'vagrant',
    password: '123',
    host: 'localhost',
    database: 'bootcampx'
});

pool.query(queryString, values)
    .then(res => {
        //  console.log(res.rows);
        res.rows.forEach(user => {
            console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
        })
    })
    .catch(err => console.error('query error', err.stack));