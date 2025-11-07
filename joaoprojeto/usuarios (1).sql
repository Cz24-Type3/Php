-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/11/2025 às 23:52
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kali_racers`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf` char(11) NOT NULL,
  `nascimento` date NOT NULL,
  `sexo` enum('masculino','feminino','outro') NOT NULL,
  `mae` varchar(150) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ulogin` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `pergunta` enum('cachorro','cor','musica') NOT NULL,
  `resposta` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `nascimento`, `sexo`, `mae`, `telefone`, `celular`, `endereco`, `email`, `ulogin`, `senha`, `pergunta`, `resposta`, `criado_em`) VALUES
(1, 'João Pedro Dos Santos Nascimento', '15670080700', '2001-06-13', 'masculino', 'Ana Lucia Dos Santos Nascimento', '', '21981225886', 'Rua 43, casa 261', 'joaopbruxo859@gmail.com', 'joao', '$2y$10$.CavXIJ1tTyD58476bU0runf7H8VNEWtmwN7zwFVIksQpFeaF.FNK', 'cachorro', '$2y$10$WY34e362/dCPXHBSPjMnJeikjiMPLOy8WeDYwf3DFuWbKg2HneOqm', '2025-10-22 21:41:47'),
(2, 'Jorge da Silva', '15682714500', '1999-02-21', 'masculino', 'Ana Lucia', '', '2198746974', 'Rua 50, casa 10', 'jorge@gmail.com', 'jorge', '$2y$10$MSXrOxYFofNMXjUSM.jvGeSB/YbcjrWegU/pOQ1zg3moS5c.dGSCi', 'cachorro', '$2y$10$O4vIPcK1spk0oVWD/73QkO30GqDL63oukMXN6RZ6CVJmBfd2pMC2i', '2025-10-22 21:52:23'),
(3, '', '', '0000-00-00', 'masculino', '', NULL, '', '', '', 'admin', '$2y$10$J8hOuq415YoNWYaOO8yym.FHaIMEC4fhQrE1c.JW61JlmXtOY3mMW', 'cachorro', '', '2025-11-05 21:44:26');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `ulogin` (`ulogin`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
