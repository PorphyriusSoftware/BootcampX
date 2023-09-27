const { Pool } = require('pg');

const args = process.argv.slice(2);

const input = `%${args[0]}%`;

const values = [input];

const queryString = `
SELECT t.name as teacher , c.name as cohort
FROM assistance_requests r
    JOIN students s
    ON s.id=r.student_id
    JOIN cohorts c
    ON s.cohort_id=c.id
    JOIN teachers t
    ON t.id=r.teacher_id
GROUP BY t.name, c.name
HAVING c.name LIKE $1
ORDER BY t.name;
`;


const pool = new Pool({
    user: 'vagrant',
    password: '123',
    host: 'localhost',
    database: 'bootcampx'
});

pool.query(queryString, values)
    .then(res => {
        console.log(res.rows);
    })
    .catch(err => console.error('query error', err.stack));