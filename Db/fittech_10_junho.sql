-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jun-2021 às 02:09
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fittech`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `nascimento` varchar(100) NOT NULL,
  `condicoesMedicas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idAluno`, `email`, `password`, `cpf`, `nome`, `telefone`, `nascimento`, `condicoesMedicas`) VALUES
(1, '', '', '', '', '', '', ''),
(2, 'asdf', 'wef', 'wef', 'wef', 'wef', 'wef', 'wef'),
(3, 'asdf', 'asdf', 'asdf', 'wef', 'rg', 'wer', 'dd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` int(11) NOT NULL,
  `logradouro` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` int(11) NOT NULL,
  `cidade` int(11) NOT NULL,
  `uf` int(11) NOT NULL,
  `complemento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

CREATE TABLE `exercicio` (
  `idExercicio` int(11) NOT NULL,
  `nomeExercicio` varchar(80) NOT NULL,
  `idGrupoMuscular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`idExercicio`, `nomeExercicio`, `idGrupoMuscular`) VALUES
(1, 'Abdominal em pe', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupomuscular`
--

CREATE TABLE `grupomuscular` (
  `idGrupomuscular` int(11) NOT NULL,
  `NomeGrupoMuscular` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `grupomuscular`
--

INSERT INTO `grupomuscular` (`idGrupomuscular`, `NomeGrupoMuscular`) VALUES
(1, 'Abdome'),
(2, '1'),
(3, 'pap'),
(63, 'oi'),
(64, '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `treino`
--

CREATE TABLE `treino` (
  `codTreino` varchar(50) NOT NULL,
  `idExercicio` int(11) NOT NULL,
  `serie` int(11) NOT NULL,
  `repeticao` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `treino`
--

INSERT INTO `treino` (`codTreino`, `idExercicio`, `serie`, `repeticao`, `idAluno`) VALUES
('TreinoA', 1, 3, 20, 1),
('TreinoA', 1, 2, 30, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- Índices para tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD PRIMARY KEY (`idExercicio`),
  ADD KEY `idGrupoMuscular` (`idGrupoMuscular`);

--
-- Índices para tabela `grupomuscular`
--
ALTER TABLE `grupomuscular`
  ADD PRIMARY KEY (`idGrupomuscular`);

--
-- Índices para tabela `treino`
--
ALTER TABLE `treino`
  ADD KEY `idExercicio` (`idExercicio`),
  ADD KEY `idAluno` (`idAluno`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `idExercicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `grupomuscular`
--
ALTER TABLE `grupomuscular`
  MODIFY `idGrupomuscular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `exercicio`
--
ALTER TABLE `exercicio`
  ADD CONSTRAINT `exercicio_ibfk_1` FOREIGN KEY (`idGrupoMuscular`) REFERENCES `grupomuscular` (`idGrupomuscular`);

--
-- Limitadores para a tabela `treino`
--
ALTER TABLE `treino`
  ADD CONSTRAINT `treino_ibfk_1` FOREIGN KEY (`idExercicio`) REFERENCES `exercicio` (`idExercicio`),
  ADD CONSTRAINT `treino_ibfk_2` FOREIGN KEY (`idAluno`) REFERENCES `aluno` (`idAluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
