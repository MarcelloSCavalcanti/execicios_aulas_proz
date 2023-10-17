const voltarPagPrincipal = document.getElementById('voltar-Pag-Principal')

document.addEventListener('keyup', (e) => {
    if(e.code == 'Digit0') {
    window.location.href = './index.html';
    }
})