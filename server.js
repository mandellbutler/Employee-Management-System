//DEPENDENCIES====================================================
const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');
const connection = require('./config/connection.js');
const Choices = require('inquirer/lib/objects/choices');

//upon app initialization
const startApp = () => {
    //the user is presented with a series of prompts:
  inquirer
  .prompt ({
      //What would you like to do?
      name: "userOptions",
      type: "list",
      message: "What would you like to do?",
      choices: ["View All Employees", "View All Departments", "View All Roles", "Add Employee", "Add Department", "Add Role", "Update Employee Role", "Remove Employee", "Exit"]
  })
  .then((answer) => {
    //switch case to determine next prompts or actions based on selected response
    switch(answer.userOptions) {
      case "View All Employees":
        viewEmployees();
        break;
      case "View All Departments":
        viewDepartments();
        break;
      case "View All Roles":
        viewRoles();
        break;
      case "Add Employee":
        addEmployee();
        break;
      case "Add Department":
        addDepartment();
        break;
      case "Add Role":
        addRole();
        break;
      case "Update Employee Role":
        updateEmployeeRole();
        break;
      case "Remove Employee":
        removeEmployee();
        break;
      case "Exit":
        exitApp();
        break;
    }
  })
}
//add start app before every break except on exit
startApp();

//read functions==================================================
//View All Employees
const viewEmployees = () => {
  connection.query('SELECT first_name AS "First Name", last_name AS "Last Name", role_id AS "Role ID", manager_id AS "Manager ID" FROM employees', (err, res) => {
    if (err) throw err;
    console.log(res);
    console.table("All Employees:", res);
    startApp();
  });
};
//View All Departments
const viewDepartments = () => {
  connection.query('SELECT departments.id AS "Dept. ID", dept_name AS "Department" FROM departments', (err, res) => {
    if (err) throw err;
    console.log(res);
    console.table("All Departments:", res);
    startApp();
  });
};
//View All Roles
const viewRoles = () => {
  connection.query('SELECT roles.id AS "Role ID", roles.title AS "Role", roles.salary AS "Salary", roles.department_id AS "Dept. ID" FROM roles', (err, res) => {
    if (err) throw err;
    console.log(res);
    console.table("All Roles:", res);
    startApp();
  });
};


//CREATE FUNCTIONS==================================================

//Add Employee
const addEmployee = () => {
  console.log('Adding a new employee...\n');
  //prompt for adding new employee to table
  inquirer
    .prompt([
      {
        name: "firstName",
        type: "input",
        message: "What is the Employee's First Name?"
      },
      {
        name: "lastName",
        type: "input",
        message: "What is the Employee's Last Name?"
      },
      {
        name: "roleID",
        type: "list",
        message: "What is the Employee's Role ID",
        choices: ["1", "2", "3", "4", "5", "6", "7"]
      },
      {
        name: "managerID",
        type: "list",
        message: "What is the ID of the Employee's Manager?",
        choices: ["1", "2", "3", "4"]
      },
    ])
    .then((answer) => {
      connection.query(
        'INSERT INTO employees SET ?',
        {
          first_name: answer.firstName,
          last_name: answer.lastName,
          role_id: answer.roleID,
          manager_id: answer.managerID,
        },
        (err, res) => {
          if (err) throw err;
          console.log(`${res.affectedRows} employee inserted!\n`);
          // Call updateEmployee AFTER the INSERT completes
          console.table("Employee Added!", res);
          startApp();
        });
    });  
};

//Add Department
const addDepartment = () => {
  console.log('Adding a new department...\n');
  //prompt for adding new employee to table
  inquirer
    .prompt([
      {
        name: "departmentName",
        type: "input",
        message: "What is the name of the new Department?"
      }
    ])
    .then((answer) => {
      connection.query(
        'INSERT INTO departments SET ?',
        {
          dept_name: answer.departmentName,
        },
        (err, res) => {
          if (err) throw err;
          console.log(`${res.affectedRows} department inserted!\n`);
          // Call updateEmployee AFTER the INSERT completes
          console.table("Department Added!", res);
          startApp();
        });
    });  
};

//Add Role
const addRole = () => {
  console.log('Adding a new role...\n');
  //prompt for adding new employee to table
  inquirer
    .prompt([
      {
        name: "roleTitle",
        type: "input",
        message: "What is the new Role's Title?"
      },
      {
        name: "salary",
        type: "input",
        message: "What is the Role's salary?"
      },
      {
        name: "deptID",
        type: "list",
        message: "Which Department will the new Role belong to?",
        choices: ["1", "2", "3"]
      },
    ])
    .then((answer) => {
      connection.query(
        'INSERT INTO roles SET ?',
        {
          title: answer.roleTitle,
          salary: answer.salary,
          department_id: answer.deptID,
        },
        (err, res) => {
          if (err) throw err;
          console.log(`${res.affectedRows} role inserted!\n`);
          // Call updateEmployee AFTER the INSERT completes
          console.table("Role Added!", res);
          startApp();
        });
    });  
};

//UPDATE FUNCTIONS======================================
// const updateEmployeeRole = () => {
//   console.log('Updating Employees Table...\n');
//       const query = connection.query(
//         'UPDATE employee SET ? WHERE ?',
//         [
//           {
//             roleID: 100,
//           },
//           {
//             flavor: 'Rocky Road',
//           },
//         ],
//         (err, res) => {
//           if (err) throw err;
//           console.log(`${res.affectedRows} employees updated!\n`);
//           // Call deleteProduct AFTER the UPDATE completes
//           deleteProduct();
//         }
//       );
// };


//DELETE FUNCTION=========================================
//remove employee by ID
const removeEmployee = () => {
  console.log('Saying Bye Bye to your precious Employee...\n');
    inquirer
        .prompt([
          {
            name: "removeID",
            type: "input",
            message: "Please enter the ID of the Employee you would like to remove:"
          },
        ])
        .then((answer) => {
    connection.query(
      'DELETE FROM employees WHERE ?',
      {
        id: answer.removeID,
      },
      (err, res) => {
        if (err) throw err;
        console.log(`${res.affectedRows} employee eradicated!\n`);
        // Call readProducts AFTER the DELETE completes
        console.table("Employee Removed:", res);
        viewEmployees();
      })
    });
}; 
