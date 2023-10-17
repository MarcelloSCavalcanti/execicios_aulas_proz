const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");

linkPerfil.addEventListener("mouseover", ()=> {
  navPerfil.style.display = "block";
})

document.addEventListener("keyup", (e)=>{
  console.log(e.key);
  console.log(e.code);

  if(e.code == 'Digit1') {
    console.log('Abre o menu lateral');
    navPerfil.style.display = "block";
  } else if (e.code == 'Escape') {
    navPerfil.style.display = "none";
  } else if(e.code == 'Digit0') {
    window.location.href = './index.html';
  }
})

const linkPerfilDados = document.getElementById('link-perfil-dados')
/*A fim de não entrar direto na outra página coloquei mais essa etapa*/
document.addEventListener('keyup', (e) => {
  if(navPerfil.style.display == "block")
    if(e.code == 'Digit4') {
      linkPerfilDados.click();
  }
})