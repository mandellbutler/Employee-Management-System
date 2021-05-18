//DEPENDENCIES====================================================
const mysql = require('mysql');
const inquirer = require('inquirer');
const cTable = require('console.table');
const connection = require('./config/connection.js');
const Choices = require('inquirer/lib/objects/choices');

//upon app initialization
const startApp = () => {
  //user is presented with an 'Ascee' start/welcome screen
    //the user is presented with a series of prompts:
  inquirer
  .prompt ({
      //What would you like to do?
      name: "userOptions",
      type: "list",
      message: "What would you like to do?",
      choices: ["View All Employees", "View All Employees By Department", "View All Employees By Manager", "Add Employee", "Remove Employee", "Update Employee Role", "Update Employee Manager", "Exit"]

  })
  .then((answer) => {
    //switch case to determine next prompts or actions based on selected response
  })
}

         
            //userOptions
            //list
            //Choices:
                      //====CASE======//
                //View All Employees

                      //====CASE======//
                //View All Employees By Department

                      //====CASE======//
                //View All Employees By Manager

                      //====CASE======//
                //Add Employee
                    //What is the Employee's First Name?
                        //Input
                        //firstName
                    //What is the Employee's Last Name?
                        //Input
                        //lastName
                    //What is the Employee's Role?
                        //empRole
                        //List
                        //Choices:
                            //User is Presented With List of ALL ROLES
                            //Manager, deptartment, and salary are assigned based on ROLE choice

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
const readDepartments = () => {
    connection.query('SELECT * FROM departments', (err, res) => {
      if (err) throw err;
      console.log(res);
      // connection.end()
    });
};
readDepartments();

const readRoles = () => {
    connection.query('SELECT * FROM roles', (err, res) => {
      if (err) throw err;
      console.log(res);
      // connection.end()
    });
};
readRoles();

const readEmployees = () => {
  connection.query('SELECT * FROM employees', (err, res) => {
    if (err) throw err;
    console.log(res);
    connection.end()
  });
};
readEmployees();

// const readManagers = () => {
//   connection.query('SELECT * FROM managers', (err, res) => {
//     if (err) throw err;
//     console.log(res);
//     connection.end()
//   });
// };




//============C.R.U.D

// const readProducts = () => {
//     console.log('Selecting all products...\n');
//     connection.query('SELECT * FROM products', (err, res) => {
//       if (err) throw err;
//       // Log all results of the SELECT statement
//       console.log(res);
//       connection.end();
//     });
//   };
  
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
  
//   const updateProduct = () => {
//     console.log('Updating all Rocky Road quantities...\n');
//     const query = connection.query(
//       'UPDATE products SET ? WHERE ?',
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
  
//   const createProduct = () => {
//     console.log('Inserting a new product...\n');
//     const query = connection.query(
//       'INSERT INTO products SET ?',
//       {
//         flavor: 'Rocky Road',
//         price: 3.0,
//         quantity: 50,
//       },
//       (err, res) => {
//         if (err) throw err;
//         console.log(`${res.affectedRows} product inserted!\n`);
//         // Call updateProduct AFTER the INSERT completes
//         updateProduct();
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
  