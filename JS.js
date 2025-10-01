

        //Modal
const button = document.getElementById('login');
const modal = document.getElementById('modal-login');

button.onclick = function() {
    modal.showModal();
};

//Confirmar a senha cadastro
function validarSenha() {
    const senha = document.getElementById("senha").value;
    const confirma = document.getElementById("confirma_senha").value;

    if (senha !== confirma) {
      alert("As senhas não coincidem!");
      return false; // bloqueia o envio do formulário
    }
    return true; // libera o envio
  }

  
//Cadastro confirmado
  const params = new URLSearchParams(window.location.search);
  if(params.get("msg") === "sucesso"){
      alert("Usuário cadastrado com sucesso!");
  } else if(params.get("msg") === "erro"){
      alert("Erro ao cadastrar!");
  }