const inquire = require('inquirer');
const mysql = require('mysql2');

const db = mysql.createConnection({
    host: '127.0.0.1',
    port: 3306,
    database: 'company_db',
    user: 'root',
    password: ''
})
function mainMenu() {
    inquire.prompt({
        type: 'list',
        name: 'action',
        message: 'What would you like to do?',
        choices: [
            'Add Department',
            'Add Role',
            'Add Employee',
            'View Departments',
            'View Roles',
            'View Employees',
            'Update Employee Roles',
            'Exit'
        ]
    }).then (answer => {
        switch (answer.action) {
            case 'Add Department':
                // console.log('Add Department');
                inquire.prompt({
                    type: 'input',
                    name: 'name',
                    message: 'What is the name of the department?'
                }).then(answerDepartment => {
                    db.query('INSERT INTO department(name) VALUES (?)', [answerDepartment.name], (err, result) => {
                        if (err) {
                            console.log(err);
                        } else {
                            console.log('Department added successfully');
                            mainMenu();
                        }
                    })
    
                })
                break;
            case 'Add Role':
                console.log('Add Role');
                break;
            case 'Add Employee':
                console.log('Add Employee');
                break;
            case 'View Departments':
                // console.log('View Departments');
                db.query('SELECT * FROM department', (err, result) => {
                    if (err) {
                        console.log(err);
                    } else {
                        console.table(result);
                        mainMenu();
                    }
                })
                break;
            case 'View Roles':
                console.log('View Roles');
                break;
            case 'View Employees':
                console.log('View Employees');
                break;
            case 'Update Employee Roles':
                console.log('Update Employee Roles');
                break;
            case 'Exit':
                console.log('Exit');
                break;
            default:
                console.log(`Invalid action: ${answer.action}`);
                break;
        }
    })
}

mainMenu();