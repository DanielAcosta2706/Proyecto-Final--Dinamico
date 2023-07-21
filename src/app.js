const express = require("express");
const app = express();
const routes = require("./routes/routes");
const path = require("path");
const databaseConnection = require("../config/database");
const port = process.env.PORT || 3000;

//coneccion con MySQL
databaseConnection.connect();

//vamos a recibir info en formato JSON
app.use(express.json());
//enviar peticiones POST
app.use(express.urlencoded({ extended: false }));

//uso de EJS y de archivos publicos
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.use(express.static(path.join(__dirname, "public")));

//Rutas
app.use("/", routes);

app.use("/telemedicina", routes);

app.use("/portalpaciente", routes);

app.use("/infopaciente", routes);

app.use("/olvidopassword", routes);

app.use("/olvidocontraseña", routes);

// Puerto
app.listen(port, () => {
  console.log(`Server corriendo en puerto ${port}`);
});
