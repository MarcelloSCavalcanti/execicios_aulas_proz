const login = document.querySelector('h2');

console.log(login)

login.style.color = "red";
login.style.fontSize = '60px';

const botao = document.querySelector('button');
botao.style.backgroundColor = 'red';
botao.style.color = 'white';
botao.style.fontSize = '20px';
botao.style.padding = '10px';
botao.style.display = 'flex';
botao.style.justifyContent = 'center';
botao.style.alignContent = 'center';
botao.style.boxShadow = '0px 0px 20px black';
botao.style.borderRadius = '10px';
botao.style.borderColor = 'black';

const usernameInput = document.querySelector('#login-usuario');
usernameInput.classList.add('correct');

const correctMessage = document.querySelectorAll('.correct-text');
correctMessage[0].classList.add('visible');

const userpasswordInput = document.querySelector('#login-senha');
userpasswordInput.classList.add('error');


const errorMessage = document.querySelectorAll('.error-text');
errorMessage[1].classList.add('visible');