# E-CommerceBackend

This is the back end functionality for an e-commerce app that allows customers to browse, search, and purchase products online. 


# Technologies 

This app is built using the following technologies:

Node.js
Nodemon
Express.js
Sequelize
My Sql2
Dotenv

## Installation and Usage

1. Clone the repository to your local machine.
2. Navigate to your project directory and run npm init in the integrated terminal. 
3. Install the dpendencies using npm install. Install: Express, Mysql2, Sequelize, and Dotenv.
4. Create a .env file in the root directory of the app containing the following: DB_NAME=ecommerce_db, DB_USER=root, DB_PASSWORD=your_password.
5. Open the MySQL shell by running mysql -u root -p, then create the database by running source db/schema.sql. 
6. Quit and return to the project directory run npm run seed to populate, and nodemon to start the server.

### Contributing

This is the first version of the application and there may be errors or bugs. I welcome contributions from anyone who would like to help improve the codebase. If you find an issue or bug, please submit a pull request or open an issue so that we can work together to fix it.

Thank you for your interest in contributing to this project!


### Error Handling

This application uses standard HTTP status codes to indicate success or failure of a request. Here are a list or routes that returned 404 or 500 status codes: 

GET /api/products/:id - Returns a 404 error if the product with the specified ID does not exist.
GET /api/categories/:id - Returns a 404 error if the category with the specified ID does not exist.
PUT /api/products/:id - Returns a 404 error if the product with the specified ID does not exist.
PUT /api/categories/:id - Returns a 404 error if the category with the specified ID does not exist.
DELETE /api/products/:id - Returns a 404 error if the product with the specified ID does not exist.
DELETE /api/categories/:id - Returns a 404 error if the category with the specified ID does not exist.
POST /api/products - Returns a 500 error if there is an unexpected error while creating a new product.
POST /api/categories - Returns a 500 error if there is an unexpected error while creating a new category.

### Liscence
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Find a Demo Video here: https://youtu.be/5HatuPMjW28