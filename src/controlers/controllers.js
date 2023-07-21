const databaseConnection = require("../../config/database");

const renderHome = (req, res) => {
  databaseConnection.query("SELECT * FROM cards", (error, data) => {
    if (error) {
      console.log(error);
    } else {
      res.render("index", {
        data,
      });
    }
  });
};

const getTelemedicina = (req, res) => {
  res.render("pages/telemedicina");
};

const getPortalpaciente = (req, res) => {
  res.render("pages/portalpaciente");
};

const getForm = (req, res) => {
  res.render("pages/portalpaciente");
};

const addnewPaciente = (req, res) => {
  const { tipoDoc, numeroDoc, correo, contraseña } = req.body;
  databaseConnection.query(
    "INSERT INTO pacientes(tipoDoc,numeroDoc,correo,contraseña)VALUES(?,?,?,?)",
    [tipoDoc, numeroDoc, correo, contraseña],
    (error, data) => {
      if (error) {
        console.log(error);
      } else {
        res.redirect("/infopaciente");
      }
    }
  );
};

const getInfopaciente = (req, res) => {
  res.render("pages/infopaciente");
};

const getOlvidopassword = (req, res) => {
  res.render("pages/olvidopassword");
};

module.exports = {
  renderHome,
  getTelemedicina,
  getPortalpaciente,
  getForm,
  addnewPaciente,
  getInfopaciente,
  getOlvidopassword,
};
