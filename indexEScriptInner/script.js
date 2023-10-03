let h1 = document.querySelector('#titulo');
h1.innerText = 'Título da página';

let a = document.querySelector('a');
a.innerText = 'Link para Proz';

let ul = document.querySelector('ul');
ul.innerHTML = `
    <li>Primeiro item</li>
    <li>Segundo item</li>
    <li>Terceiro item</li>
`

let lista_ordenada = document.querySelector('.lista-ordenada');
lista_ordenada.innerHTML =`
    <li><a href="https://www.google.com.br/">Google</a></li>
    <li><a href="https://www.youtube.com/">YouTube</a></li>
    <li><a href="https://prozeducacao.com.br/">Proz Cursos tela inicial</a></li>
`