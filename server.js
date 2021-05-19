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
      choices: ["View All Employees", "View All Departments", "View All Roles", "Add Employee", "Add Department", "Add Role", "Update Employee Role", "Exit"]
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
        updateManager();
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

                      //====CASE======//
                //View All Employees By Department

                      //====CASE======//
                //View All Employees By Manager

                      

                      //====CASE======//
                //Remove Employee
                    //Which Employee would you like to remove?
                        //deleteEmp
                        //List
                        //Choices:
                            //generate list of ALL EMPLOYEES

                      //====CASE======//
                //Update Employee Role
                    //Which Employee file would you like to update?
                        //empList
                        //List
                        //Choices:
                            //generate list of ALL EMPLOYEES
                    //What is the Employee's new role?
                        //updateRole
                        //List
                        //Choices:
                            //generate list of ALL ROLES
                            
                      //====CASE======// 
                //Update Employee Manager
                    //Which Employee file would you like to update?
                        //empList
                        //List
                        //Choices:
                            //generate list of ALL EMPLOYEES
                    //Which manager would you like to assign?
                        //uodateManager
                        //List
                        //Choices:
                            //generate list of ALL MANAGERS

                      //====CASE======//
                //Exit
                    //User exits and the application stops
//App initialization start()
//user is presented with an 'Ascee' start/welcome screen

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


//Create function==================================================

//Add Role
const addRole = () => {
  console.log('Adding a new role...\n');
  //prompt for adding new employee to table
  inquirer
    .prompt([
      {
        name: "roleName",
        type: "input",
        message: "What Role would you like to add?"
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
          startApp();
        });
    });  
};


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
          startApp();
        });
    });  
};

//TO REVISIT:

//What is the Employee's Role?
        //empRole
        //List
        //Choices:
            //User is Presented With List of ALL ROLES
            //Manager, deptartment, and salary are assigned based on ROLE choice


// const readManagers = () => {
//   connection.query('SELECT * FROM managers', (err, res) => {
//     if (err) throw err;
//     console.log(res);
//     connection.end()
//   });
// };




//============C.R.U.D


  
//   const deleteProduct = () => {
//     console.log('Deleting all strawberry icecream...\n');
//     connection.query(
//       'DELETE FROM products WHERE ?',
//       {
//         flavor: 'strawberry',
//       },
//       (err, res) => {
//         if (err) throw err;
//         console.log(`${res.affectedRows} products deleted!\n`);
//         // Call readProducts AFTER the DELETE completes
//         readProducts();
//       }
//     );
//   };
  
//   const updateEmployee = () => {
//     console.log('Updating Employees Table...\n');
//     const query = connection.query(
//       'UPDATE employee SET ? WHERE ?',
//       [
//         {
//           quantity: 100,
//         },
//         {
//           flavor: 'Rocky Road',
//         },
//       ],
//       (err, res) => {
//         if (err) throw err;
//         console.log(`${res.affectedRows} products updated!\n`);
//         // Call deleteProduct AFTER the UPDATE completes
//         deleteProduct();
//       }
//     );
  
//     // logs the actual query being run
//     console.log(query.sql);
//   };

  
//   // Connect to the DB
//   connection.connect((err) => {
//     if (err) throw err;
//     console.log(`connected as id ${connection.threadId}\n`);
//     createProduct();
// });
  