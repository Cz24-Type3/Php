<?php
session_start(); // Inicia a sessão para guardar dados do usuário
include("conexao.php"); // sua conexão com o banco

// Recebe os dados do formulário
$login = $_POST['ulogin'];
$senha = $_POST['senha'];

// Busca o usuário no banco
$sql = "SELECT id, nome, ulogin, senha FROM usuarios WHERE ulogin = ? OR email = ? LIMIT 1";
$stmt = $conexao->prepare($sql);
$stmt->bind_param("ss", $login, $login); 
$stmt->execute();
$result = $stmt->get_result();

if($result->num_rows > 0) {
    $usuario = $result->fetch_assoc();

    // Verifica a senha digitada com a hash do banco
    if(password_verify($senha, $usuario['senha'])) {
        // Login correto → cria sessão
        $_SESSION['id'] = $usuario['id'];
        $_SESSION['nome'] = $usuario['nome'];
        $_SESSION['ulogin'] = $usuario['ulogin'];

        // Redireciona para a área logada
        header("Location: painel.php");
        exit;
    } else {
        // Senha errada
        echo "<script>
                alert('Senha incorreta!');
                window.location.href='index.html';
              </script>";
    }
} else {
    // Usuário não encontrado
    echo "<script>
            alert('Usuário não encontrado!');
            window.location.href='index.html';
          </script>";
}

$stmt->close();
$conexao->close();
?>
