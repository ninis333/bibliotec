const APICriarCodigo = "http://localhost:3000/verificacao";

const inputEmail = document.getElementById("email");
const btnEnviarCodigo = document.getElementById("btnConfirmarEmail");

async function enviarCodigo(email) {
  try {
    const resposta = await fetch(APICriarCodigo, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ email }),
    });

    const dados = await resposta.json();

    if (!resposta.ok) {
      throw new Error(dados.erro || "Erro ao enviar código de verificação.");
    }

    alert(`Sucesso: ${dados.mensagem}`);
    return true;

  } catch (erro) {
    alert(`Erro: ${erro.message}`);
    return false;
  }
}

btnEnviarCodigo.addEventListener("click", async (e) => {
  e.preventDefault();

  const email = inputEmail.value.trim();

  if (email === "") {
    alert("Por favor, insira seu email.");
    return;
  }

  const sucesso = await enviarCodigo(email);

  if (sucesso) {  
    window.location.href = `../2.verifcarCodigo/verificarCodigo.html?email=${encodeURIComponent(email)}`;
  }
});
