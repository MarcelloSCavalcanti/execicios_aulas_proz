const nomeProduto = document.getElementById('nome-produto');
const valorProduto = document.getElementById('valor-produto');
const descricaoProduto = document.getElementById('descricao-produto');
const btnEnviar = document.getElementById('btn-enviar');
const feedbackUsuario = document.getElementById('feedback-usuario');
const produtosCadastrados = document.getElementById('produtos-cadastrados');

function cadastrarProduto(e){
    feedbackUsuario.innerText = 'Carregando...'
    e.preventDefault();

    const jsonBody = JSON.stringify({
        nome: nomeProduto.value,
        valor: valorProduto.value,
        descricao: descricaoProduto.value
    })
    // console.log(jsonBody)
    fetch('https://httpbin.org/post',{
    // fetch('https://jsonplaceholder.typicode.com/post',{
        method: 'POST',
        headers: {
            "Content-Type": "application/json"
        },
        body: jsonBody
    })
    .then(res => res.json())
    .then(data => {
        //precisa dessa constante pois ele estava puxando os valores como string e não um arquivo json
        const jsonfy = JSON.parse(data.data)

        console.log(jsonfy)
        console.log(data.data)

        const post = document.createElement('div');

        post.classList.add('novoProduto')
        post.innerHTML = `
            <h3>${jsonfy.nome} - R$ ${jsonfy.valor}</h3>
            <p>${jsonfy.descricao}</p>
        `
        //limpando os dados caso 
        produtosCadastrados.prepend(post)
        nomeProduto.value = ''
        valorProduto.value = ''
        descricaoProduto.value = ''
        feedbackUsuario.innerText = ''
        alert('Postagem criada com sucesso!')
    })
    .catch((error) => {
        console.log(error)
        feedbackUsuario.innerText = 'Não foi possível gerar a postagem!'
    })
}

btnEnviar.addEventListener('click',(e) => cadastrarProduto(e))