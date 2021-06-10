-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jun-2021 às 02:46
-- Versão do servidor: 8.0.23
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `fittech`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int NOT NULL,
  `nomeAluno` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idAluno`, `nomeAluno`) VALUES
(1, 'Agatha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exercicio`
--

CREATE TABLE `exercicio` (
  `idExercicio` int NOT NULL,
  `nomeExercicio` varchar(80) NOT NULL,
  `idGrupoMuscular` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `exercicio`
--

INSERT INTO `exercicio` (`idExercicio`, `nomeExercicio`, `idGrupoMuscular`) VALUES
(1, 'Abdominal em p�', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupomuscular`
--

CREATE TABLE `grupomuscular` (
  `idGrupomuscular` int NOT NULL,
  `NomeGrupoMuscular` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `grupomuscular`
--

INSERT INTO `grupomuscular` (`idGrupomuscular`, `NomeGrupoMuscular`) VALUES
(1, 'Abdome'),
(2, '1'),
(3, 'pap'),
(63, 'oi');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gymmember`
--

CREATE TABLE `gymmember` (
  `GymMember_Id` int NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `gymmember`
--

INSERT INTO `gymmember` (`GymMember_Id`, `email`, `password`) VALUES
(1, 'vinicius@pucpr.edu.br', 'password');

-- --------------------------------------------------------

--
-- Estrutura da tabela `treino`
--

CREATE TABLE `treino` (
  `codTreino` varchar(50) NOT NULL,
  `idExercicio` int NOT NULL,
  `serie` int NOT NULL,
  `repeticao` int NOT NULL,
  `idAluno` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Índices para tabela `gymmember`
--
ALTER TABLE `gymmember`
  ADD PRIMARY KEY (`GymMember_Id`);

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
  MODIFY `idAluno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `exercicio`
--
ALTER TABLE `exercicio`
  MODIFY `idExercicio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `grupomuscular`
--
ALTER TABLE `grupomuscular`
  MODIFY `idGrupomuscular` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `gymmember`
--
ALTER TABLE `gymmember`
  MODIFY `GymMember_Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
