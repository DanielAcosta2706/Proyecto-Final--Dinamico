const express = require("express");
const app = express();
const path = require("path");
const routes = require("./routes/routes");
const mysql = require("mysql2");
const databaseConnection = require("./config/database");

databaseConnection.connect();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

app.use("/", routes);

app.use("/telemedicina", routes);

app.use("/portalpaciente", routes);

app.use("/infopaciente", routes);

app.use("/olvidopassword", routes);

app.use("/olvidocontraseña", routes);

app.listen(3000, () => {
  console.log("Server corriendo en el puerto 3000");
});
