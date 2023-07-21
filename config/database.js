const mysql = require("mysql2");

// PHPmyADMIN
// const databaseConnection = mysql.createConnection({
//   host: "localhost",
//   user: "root",
//   database: "sanatoriomargarita",
// });

// Clever Cloud
const databaseConnection = mysql.createConnection({
  host: "bjqeqixyigzcnleehc9d-mysql.services.clever-cloud.com",
  user: "udwr51epehamzpbl",
  database: "bjqeqixyigzcnleehc9d",
  password: "hkabwTTL7ZOBYjJdxLwG",
});

databaseConnection.connect((error) => {
  if (error) {
    console.log(error);
  } else {
    console.log("Servidor conectado a MYSQL");
  }
});

module.exports = databaseConnection;
