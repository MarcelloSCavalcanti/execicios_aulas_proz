
//trabalhando com array de objetos
const arrayGames = [
    {
        titulo: "Oi",
        image: "https://m.media-amazon.com/images/I/61UOTlr-hvL._FMwebp_.jpg"
    },
    {
        titulo: "Oi1",
        image: "https://m.media-amazon.com/images/I/61OGG5-cq-L._FMwebp_.jpg"
    },
    {
        titulo: "Oi2",
        image: "https://m.media-amazon.com/images/I/61oxphTUDcL._FMwebp_.jpg"
    }
]

console.log(arrayGames[1].titulo)

//Criar elemento
//let div = document.createElement("div")

//manipular o elemento

/*div.innerHTML = `
<h3>${arrayGames[1].titulo}</h3>
<img src="${arrayGames[1].image}">`
console.log(div)*/
//manipulando seu id
//div.id = `Post - ${i + 1}`

//capturar o elemento pai

//let main = document.querySelector("main");
//main.appendChild(div)


//estruturas de repeti~ção com objetos

for (let i = 0;i < arrayGames.length; i ++){
    let div = document.createElement("div")
    div.innerHTML = `
        <h3>${arrayGames[i].titulo}</h3>
        <img src="${arrayGames[i].image}">
    `
    div.id = `Post - ${i + 1}`

    let main = document.querySelector("main");
    main.appendChild(div)
}