/*post 02*/
const post02 = document.getElementById("post02");
console.log(post02);
/* formulário*/
const  form = document.getElementById("formulario");
console.log(form);
/*section com ambos os posts*/
const postsectionElement = document.getElementById("posts");
console.log(postsectionElement);
/*datas dos posts*/
const postData = document.getElementsByClassName("post-data");
console.log(postData);
/*texto dos posts*/
const postTexto = document.getElementsByClassName("post-texto");
console.log(postTexto);
/*listas com links das redes sociais*/
const listaRedes = document.getElementsByClassName("lista_redes");
console.log(listaRedes);
/*O link dentro do texto do primeiro post*/
const linkpost01 = document.querySelector("#post01 .post-texto a");
console.log(linkpost01.innerText);
/*A palavra em negrito dentro do texto do segundo post*/
const strongpost02 = document.querySelector("#post02 .post-texto strong");
console.log(strongpost02.innerText);
/*O input de nome do formulário*/
const nomeForm = document.querySelector("#nome");
console.log(nomeForm);
/*Os links da lista de redes no final da página*/
const lastList = document.querySelectorAll("footer .lista_redes a");
lastList.forEach(function(element){
    console.log(element.innerText);
})
/*Os links da navegação (só os links, não os elementos de lista), acho que o objetivo era esse de apresentar os links*/
let listLinks = document.querySelectorAll(".lista_redes a");
listLinks.forEach(function(element){
    console.log(element.getAttribute('href'));
})
/*Os 4 "Autor:" e "Data:" em negrito nos dois posts' não tem 4 então acho que são os dois*/
const autor = document.querySelectorAll(".post .post-autor strong");
autor.forEach(function(element){
    console.log(element.innerText);
})
const data = document.querySelectorAll(".post .post-data strong");
data.forEach(function(element){
    console.log(element.innerText);
})
