let titulo = document.querySelector("#titulo");
titulo.innerText = "Loja proz";

const postagemProduto = document.createElement("div");
postagemProduto.className = "descricao";
postagemProduto.innerHTML = `
    <ul>
        <li class="nomes-produtos">
            <h2>PC Gamer Fácil Computadores</h2>
        </li>
        <li class="imagem-produto">
            <a href="https://www.kabum.com.br/produto/448296/pc-gamer-facil-computadores-amd-ryzen-5-5600g-16gb-ssd-480gb-linux-preto-21045?msclkid=aad0be41f1dd14fd1f46db5d486eb4cd&utm_source=bing&utm_medium=cpc&utm_campaign=Shopping_Performance_Computadores_1P&utm_term=4576579735076955&utm_content=Peformance_Site-Computadores_1P"><img src="https://images.kabum.com.br/produtos/fotos/448296/pc-gamer-facil-computadores-amd-ryzen-5-5600g-16gb-ssd-480gb-linux-preto-21045_1681420096_gg.jpg" alt="foto de um pc gamer da fácil computadores"></a>
        </li>
        <li class="descricao-produtos">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt autem id recusandae impedit? Fugiat iusto dolorem libero aperiam, tempore, laboriosam suscipit, qui animi voluptas reiciendis impedit nisi praesentium minus sunt. </p>
        </li>
        <li>
            <p class="preco">R$1.200,00</p>
        </li>
    </ul>
`;

const postagens = document.querySelector(".produto");
postagens.appendChild(postagemProduto);