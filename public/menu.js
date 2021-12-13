const iconoMenu = document.querySelector("#icono-menu"),
  menu = document.querySelector("#menu");

iconoMenu.addEventListener("click", (e) => {
  // Alteramos estilos para el menu y el body
  menu.classList.toggle("active");
  document.body.classList.toggle("opacity");
});
