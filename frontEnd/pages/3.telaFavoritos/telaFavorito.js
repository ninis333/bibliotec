const Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 2000,
    timerProgressBar: true,
});

const APILivro = "http://localhost:3000/livros"

const id = window.localStorage.getItem(`id`)
const APIFav = `http://localhost:3000/favoritos/${id}`
const APIDesfavoritar = 'http://localhost:3000/favoritos/desfavoritar'
console.log(id)
const exibirLivros = document.querySelector('.exibirLivros');

async function buscarAlunosFav() {
    try {
        const response = await fetch(APIFav);
        if (!response.ok) {
            throw new Error('Erro na requisição à API');
        }

        const dados = await response.json();
        console.log('Livros recebidos:', dados);
        return dados;

    } catch (error) {
        console.error('Erro ao buscar Livros:', error);
        Toast.fire({ icon: "error", title: "Erro ao carregar favoritos!" });
        return null;
    }
}

async function carregarLivrosFavoritos() {

    const alunosFav = await buscarAlunosFav();
    const divApenasManga = document.createElement('div')
    divApenasManga.classList.add('apenasMangas');

    alunosFav.forEach(livro => {
        const divCard = document.createElement('div')
        divCard.classList.add('cardLivro');

        divCard.innerHTML = `
            <img src="${livro.capa_url}" alt="${livro.titulo}" class="livro" data-descricao="${livro.descricao}">
            <h3 class="nomesLivros">
                ${livro.titulo}
                <img 
                    class="coracaoFav2" 
                    src="../../img/coracaoCheio.png" 
                    id="coracoFav-${livro.livro_id}"
                >
            </h3>`;

        exibirLivros.appendChild(divCard)
    })

    exibirLivros.appendChild(divApenasManga)
}

carregarLivrosFavoritos();

// DESFAVORITAR
document.addEventListener("click", async (e) => {
    if (!e.target.classList.contains("coracaoFav2")) return;

    const idCoracao = e.target.id;
    const livroId = idCoracao.split("-")[1];

    try {
        const requisicao = await fetch(APIDesfavoritar, {
            method: "DELETE",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
                aluno_id: id,
                livro_id: livroId
            })
        });

        if (!requisicao.ok) {
            Toast.fire({ icon: "error", title: "Erro no servidor!" });
            return;
        }

        Toast.fire({ icon: "success", title: "Livro removido dos favoritos!" });
        setTimeout(() => window.location.reload(), 600);

    } catch (error) {
        console.error(error);
        Toast.fire({ icon: "error", title: "Erro de conexão!" });
    }
});

// DESCRIÇÃO DO LIVRO
const descricaoLivro2 = document.getElementById('descricaoLivro');
document.addEventListener("click", (e) => {
    if (e.target.classList.contains("livro")) {
        descricaoLivro.innerHTML = `
            <h3 class="h3Descricao">${e.target.alt}</h3>
            <div class="descricao">
                <img class="imgDescricao" src="${e.target.src}">
                <p class="pDescricaoLivro">${e.target.dataset.descricao}</p>
            </div>
        `;
        descricaoLivro.classList.add("ativa");
        return;
    }

    if (!descricaoLivro.contains(e.target)) {
        descricaoLivro.classList.remove("ativa");
    }
});
