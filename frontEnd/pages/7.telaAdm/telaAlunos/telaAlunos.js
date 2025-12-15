const buscarAlunos = "http://localhost:3000/usuario";
const conteiner = document.getElementById("perfilAluno");
const listarAlunos = document.getElementById("listaAlunos");


async function pegarAlunos() {
    try {
        const resposta = await fetch(buscarAlunos);
        const dados = await resposta.json();
        console.log(dados);

        dados.forEach((aluno) => {
            const alunoElemento = document.createElement("div");
            alunoElemento.classList.add("perfilAluno");
            alunoElemento.innerHTML = `
                <h3>Nome: ${aluno.nome}<br>Email: ${aluno.email}</h3>
            `;
            listarAlunos.appendChild(alunoElemento);
        });
    } catch (erro) {
        console.error("Erro ao buscar alunos:", erro);
    }
}
pegarAlunos();