-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/11/2024 às 23:26
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
-- Banco de dados: `uniculturaapi`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` int(11) NOT NULL,
  `codigo_turma` int(11) DEFAULT NULL,
  `curso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `endereco`, `telefone`, `codigo_turma`, `curso`) VALUES
(76, 'Guilherem Jasmim', 'Rua Jasmim', 912123123, 1, 'Inform?tica'),
(78, 'Danilo Ramim', 'Ser?dio', 932323232, 2, 'Mecatronica'),
(79, 'Gustavo Trindade', 'Presidente Dutra', 9494949, 1, 'Informatica'),
(80, 'Kao', 'Sertinho', 99912, 1, 'Informática'),
(87, 'Gustavao', 'Rua talaco', 119992323, 2, 'Info'),
(88, 'Jasmim', 'RUa falida', 1999293, NULL, 'meca');

-- --------------------------------------------------------

--
-- Estrutura para tabela `apilogin`
--

CREATE TABLE `apilogin` (
  `codigoLogin` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `perfil` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `apilogin`
--

INSERT INTO `apilogin` (`codigoLogin`, `login`, `senha`, `perfil`) VALUES
(1, 'testeADM', 'Adm123', 'ADM'),
(2, 'teste', 'Outro', 'ALUNO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `codigo_disciplina` int(11) UNSIGNED NOT NULL,
  `nome_disciplina` varchar(50) DEFAULT NULL,
  `carga_horária` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `registro_professor` int(11) UNSIGNED NOT NULL,
  `nome_professor` varchar(11) DEFAULT NULL,
  `codigo_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `codigo_turma` int(11) UNSIGNED NOT NULL,
  `serie` varchar(30) NOT NULL,
  `ano` varchar(11) DEFAULT NULL,
  `codigo_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `apilogin`
--
ALTER TABLE `apilogin`
  ADD PRIMARY KEY (`codigoLogin`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`codigo_disciplina`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`registro_professor`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`codigo_turma`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `apilogin`
--
ALTER TABLE `apilogin`
  MODIFY `codigoLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `codigo_disciplina` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `registro_professor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `codigo_turma` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
