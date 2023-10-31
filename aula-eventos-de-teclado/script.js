const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");
const linkPerfilDados = document.getElementById('link-perfil-dados')

linkPerfil.addEventListener("mouseover", ()=> {
  navPerfil.style.display = "block";
})

document.addEventListener("keyup", (e)=>{
  if(navPerfil.style.display == "block") {
    if(e.code == "Digit1"){
      linkPerfilDados.click();
    }
  }
  if(e.code == "Digit1") {
    navPerfil.style.display = "block";
  }
})

/*A fim de não entrar direto na outra página coloquei mais essa etapa*/
