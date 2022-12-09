-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Dez-2022 às 03:49
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pj2-09`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrodoador`
--

CREATE TABLE `cadastrodoador` (
  `Nome` varchar(100) NOT NULL,
  `numero` int(20) NOT NULL,
  `enderco` text NOT NULL,
  `senha` text NOT NULL,
  `id` int(20) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastropessoa`
--

CREATE TABLE `cadastropessoa` (
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `enderco` text NOT NULL,
  `cidade` text NOT NULL,
  `estado` text NOT NULL,
  `telefone` bigint(15) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cadastropessoa`
--

INSERT INTO `cadastropessoa` (`nome`, `email`, `senha`, `enderco`, `cidade`, `estado`, `telefone`, `id`) VALUES
('Gabriel dos Santos Lemos', 'gabrielzikavirus014@gmail.com', 'fdfad', 'Rua José Antônio souza Castro Rodrigues', 'Caraguatatuba', 'SP', 12983031709, 1),
('Gabriel dos Santos Lemos', 'gabrielzikavirus014@gmail.com', '132654', 'Rua José Antônio souza Castro Rodrigues', 'Caraguatatuba', 'SP', 12983031709, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ongs`
--

CREATE TABLE `ongs` (
  `Nome ONG` varchar(40) NOT NULL,
  `CNPJ` varchar(17) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastrodoador`
--
ALTER TABLE `cadastrodoador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadastropessoa`
--
ALTER TABLE `cadastropessoa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ongs`
--
ALTER TABLE `ongs`
  ADD PRIMARY KEY (`CNPJ`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastrodoador`
--
ALTER TABLE `cadastrodoador`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cadastropessoa`
--
ALTER TABLE `cadastropessoa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
