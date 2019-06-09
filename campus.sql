-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Jun-2019 às 23:50
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `curso` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `curso`, `email`, `matricula`, `nome`) VALUES
(1, 'SPI', 'luisgabrielbento@hotmail.com', '0810032011', 'Luis Gabriel Soares Bento'),
(2, 'SPI', 'kellycoast19@gmail.com', '1810022901', 'Priscilla Ferreira Costa'),
(3, 'SPI', 'marcelobento21@gmail.com', '0720037910', 'Marcelo Glauco Soares Bento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `carga_horaria` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nome_discplina` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `carga_horaria`, `codigo`, `nome_discplina`) VALUES
(1, '40h', 'DET719', 'TECNOLOGIAS DE ACESSO A DADOS NA INTERNET'),
(2, '80h', 'DET717', 'PROGRAMAÇÃO DINÂMICA PARA WEB'),
(3, '80h', 'DET718', 'METODOLOGIA E LINGUAGEM DE PROGRAMAÇÃO AVANÇADA'),
(4, '80h', 'DET741', 'INTRODUÇÃO A REDES DE COMPUTADORES');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `area_conhecimento` varchar(255) DEFAULT NULL,
  `titulos` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `email`, `matricula`, `nome`, `area_conhecimento`, `titulos`) VALUES
(1, 'fujioka@unipe.br', '01304697428', 'RODRIGO DA CRUZ FUJIOKA', 'TI', 'DOUTORADO,MESTRADO,MBA'),
(2, 'thyagomaia@gmail.com', '05385351482', 'THYAGO MAIA TAVARES DE FARIAS', 'TI', 'DOUTORADO,MESTRADO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
