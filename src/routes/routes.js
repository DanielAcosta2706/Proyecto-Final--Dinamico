const express = require("express");
const routes = express.Router();

const {
  renderHome,
  getTelemedicina,
  getPortalpaciente,
  getForm,
  addnewPaciente,
  getInfopaciente,
  getOlvidopassword,
} = require("../controlers/controllers");

routes.get("/", renderHome);

routes.get("/telemedicina", getTelemedicina);

routes.get("/portalpaciente", getPortalpaciente);

routes.get("/nuevoPaciente", getForm);

routes.post("/nuevoPaciente", addnewPaciente);

routes.get("/infopaciente", getInfopaciente);

routes.get("/olvidopassword", getOlvidopassword);

module.exports = routes;
