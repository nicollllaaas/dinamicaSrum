-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/07/2024 às 01:27
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `contatos`
--

CREATE TABLE `contatos` (
  `idContato` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `profissao` varchar(100) DEFAULT NULL,
  `dt_nasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `contatos`
--

INSERT INTO `contatos` (`idContato`, `nome`, `email`, `telefone`, `cidade`, `rua`, `bairro`, `numero`, `cep`, `profissao`, `dt_nasc`) VALUES
(1, 'Nicolas ', 'nicolas@gmail.com', '35253452', 'dlkfjsdlfjks', 'fsldfmsldfm', 'fsdlkfsldf', '42342', '4353453', 'lkjdaddsa', '2003-11-17'),
(2, 'Luiz Fodao', 'Luiztrabalhos@gmail.com', '4593453', 'amstredan', 'alastor moody', 'gringotes', '234', '3772622', 'Bruxo', '2002-03-27'),
(4, '', 'eduardo@gmail.com', '42998847113', 'Ponta Grossa', 'Jorge Amado', 'Estrela', '42342', '982233', 'Hacker', '2003-08-11'),
(13, 'Nathalia', 'nathi@gmail.com', '42998847113', 'PhpéOvarhated', 'alastor moody', 'Estrela', '350', '4353453', 'Dentista', '2024-06-04');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato_foto`
--

CREATE TABLE `contato_foto` (
  `id` int(11) NOT NULL,
  `idContato` int(11) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `senha` varchar(150) DEFAULT NULL,
  `permissoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `permissoes`) VALUES
(7, 'Nicolas ', 'nicolas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'add,edit,del,super'),
(8, 'Eduardo', 'eduardo@gmail.com', '202cb962ac59075b964b07152d234b70', 'add,edit,del'),
(12, 'Nathalia Slivinski', 'nathi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'add,edit,del'),
(17, 'Luma Lopes', 'luma@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'add,edit,del'),
(23, 'Luiz', 'nicolas@gmail.com', '202cb962ac59075b964b07152d234b70', 'add,edit,del,super'),
(25, 'Clayton', 'clayton@gmail.com', '202cb962ac59075b964b07152d234b70', 'read');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices de tabela `contato_foto`
--
ALTER TABLE `contato_foto`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `contato_foto`
--
ALTER TABLE `contato_foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
