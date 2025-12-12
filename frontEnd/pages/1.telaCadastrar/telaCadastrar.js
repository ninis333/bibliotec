const API = "http://localhost:3000/usuario";

const botaoAcao = document.getElementById('btnCadastrar');
const inputNome = document.getElementById("nome");
const inputEmail = document.getElementById("email");
const inputSenha = document.getElementById("senha");
const inputConfirmarSenha = document.getElementById("confirmarSenha");
const formCadastrar = document.getElementById("cadastroUsuario");

// SweetAlert2 Toast
const Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 2000,
    timerProgressBar: true,
});

function contemMaiuscula(senha) {
    return /[A-Z]/.test(senha);
}
function contemMinuscula(senha) {
    return /[a-z]/.test(senha);
}

async function salvar(e) {
    e.preventDefault();
    console.log("Salvando aluno");

    async function buscarDadosDoBanco() {
        try {
            const response = await fetch(API);
            if (!response.ok) throw new Error("Erro na requisição à API");

            const dados = await response.json();
            console.log("Dados recebidos:", dados);
            return dados;

        } catch (error) {
            console.error("Erro ao buscar dados:", error);
            return null;
        }
    }

    const nome = inputNome.value.trim();
    const email = inputEmail.value.trim();
    const senha = inputSenha.value;
    const confirmarSenha = inputConfirmarSenha.value;

    const alunos = await buscarDadosDoBanco();

    if (!alunos) {
        Toast.fire({ icon: "error", title: "Erro ao conectar ao servidor." });
        return;
    }

    if (!nome || !email || !senha || !confirmarSenha) {
        Toast.fire({ icon: "warning", title: "Preencha todos os campos obrigatórios!" });
        return;
    }

    // Email já registrado
    const verificarEmail = alunos.find(aluno => aluno.email === email);
    if (verificarEmail) {
        Toast.fire({ icon: "error", title: "Este email já está cadastrado." });
        return;
    }

    // Tamanho da senha
    if (senha.length < 8) {
        Toast.fire({ icon: "warning", title: "A senha deve ter pelo menos 8 caracteres." });
        return;
    }
    if (senha.length > 128) {
        Toast.fire({ icon: "warning", title: "A senha não pode ter mais que 128 caracteres." });
        return;
    }

    // Letra maiúscula/minúscula
    if (!contemMaiuscula(senha) || !contemMinuscula(senha)) {
        Toast.fire({ icon: "warning", title: "A senha deve ter letras maiúsculas e minúsculas." });
        return;
    }

    // Número
    function contemNumero(senha) {
        return /[0-9]/.test(senha);
    }
    if (!contemNumero(senha)) {
        Toast.fire({ icon: "warning", title: "A senha deve conter ao menos um número." });
        return;
    }

    // Espaço
    if (senha.includes(" ")) {
        Toast.fire({ icon: "warning", title: "A senha não pode conter espaços." });
        return;
    }

    // Senhas iguais
    if (senha !== confirmarSenha) {
        Toast.fire({ icon: "error", title: "As senhas não coincidem!" });
        return;
    }

    const novoAluno = { nome, email, senha, curso_id: 1 };
    console.log("Enviando:", novoAluno);

    try {
        const requisicao = await fetch(API, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(novoAluno),
        });

        if (requisicao.ok) {
            const dados = await requisicao.json();
            console.log("Aluno salvo com sucesso:", dados);

            Toast.fire({
                icon: "success",
                title: "Aluno cadastrado com sucesso!"
            });

            setTimeout(() => {
                window.location.href = "./telaLogin.html";
            }, 800);

            formCadastrar.reset();
        } else {
            console.error("Erro na requisição:", requisicao.status);
            Toast.fire({
                icon: "error",
                title: "Erro ao cadastrar. Código: " + requisicao.status
            });
        }

    } catch (error) {
        console.error("Erro no fetch:", error);
        Toast.fire({
            icon: "error",
            title: "Erro de conexão com o servidor."
        });
    }
}

formCadastrar.addEventListener("submit", salvar);
