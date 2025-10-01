

        //Modal
//const button = document.getElementById('login');
//const modal = document.getElementById('modal-login');

//button.onclick = function() {
//    modal.showModal();
//};

//Muda de Login para Cadastro
function mostrarCadastro() {
  document.getElementById("login-form").classList.remove("active");
  document.getElementById("cadastro-form").classList.add("active");
}
function mostrarLogin() {
  document.getElementById("cadastro-form").classList.remove("active");
  document.getElementById("login-form").classList.add("active");
}

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