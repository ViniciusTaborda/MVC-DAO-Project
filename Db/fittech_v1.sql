-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Jun-2021 às 02:34
-- Versão do servidor: 8.0.23
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aulajavaweb`
--
CREATE DATABASE IF NOT EXISTS `aulajavaweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `aulajavaweb`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `senha`) VALUES
(1, 'agatha', '1234');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Banco de dados: `bancomeu`
--
CREATE DATABASE IF NOT EXISTS `bancomeu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bancomeu`;
--
-- Banco de dados: `dogaodubao`
--
CREATE DATABASE IF NOT EXISTS `dogaodubao` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `dogaodubao`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int NOT NULL,
  `nomeCliente` varchar(128) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nomeCliente`, `telefone`, `endereco`) VALUES
(1, 'Agatha Moraes', '41 99646-8599', 'Rua Izabel da Silva, 941, Contenda, SJP, PR'),
(2, 'Pedro Lima', '41 99999-8599', 'Ulisses Cordeiro, 1941, São Marcos, SJP, PR'),
(3, 'Laura Correia', '41 99576-2299', 'Olivio Tozo, 241, Vila Nova, SJP, PR'),
(4, 'Fernanda Santos', '41 99576-1111', 'Antonio Borda, 444, Barro Preto, SJP, PR'),
(5, 'Lucas Gomes', '41 99777-2255', 'Torres do Nascimento, 555, Jardim Aquarius, SJP, PR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrega`
--

CREATE TABLE `entrega` (
  `codEntregador` int DEFAULT NULL,
  `codPedido` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `entrega`
--

INSERT INTO `entrega` (`codEntregador`, `codPedido`) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregador`
--

CREATE TABLE `entregador` (
  `codEntregador` int NOT NULL,
  `nomeEntregador` varchar(128) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `entregador`
--

INSERT INTO `entregador` (`codEntregador`, `nomeEntregador`, `telefone`) VALUES
(1, 'Jorge', '41 99999 9999'),
(2, 'Jose', '41 99999 8888'),
(3, 'João', '41 99999 7777');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `codPedido` int DEFAULT NULL,
  `codSanduiche` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `itempedido`
--

INSERT INTO `itempedido` (`codPedido`, `codSanduiche`, `quantidade`) VALUES
(1, 1, 2),
(2, 2, 1),
(2, 3, 1),
(2, 6, 1),
(3, 2, 2),
(4, 4, 1),
(4, 7, 1),
(5, 7, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `codPedido` int NOT NULL,
  `statusPed` int NOT NULL,
  `dataEmissao` timestamp NOT NULL,
  `codCliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`codPedido`, `statusPed`, `dataEmissao`, `codCliente`) VALUES
(1, 1, '2021-06-07 03:00:00', 1),
(2, 0, '2021-06-07 03:00:00', 2),
(3, 0, '2021-06-07 03:00:00', 3),
(4, 2, '2021-06-07 03:00:00', 4),
(5, 2, '2021-06-07 03:00:00', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sanduiche`
--

CREATE TABLE `sanduiche` (
  `codSanduiche` int NOT NULL,
  `nomeSanduicha` varchar(45) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `sanduiche`
--

INSERT INTO `sanduiche` (`codSanduiche`, `nomeSanduicha`, `preco`) VALUES
(1, 'Hot Dog Simples', 12),
(2, 'Hot Dog com Bacon', 15),
(3, 'Hot Dog com Calabresa', 15),
(4, 'Hot Dog da Casa', 20),
(5, 'X salada', 12),
(6, 'X Bacon', 15),
(7, 'x Tudo', 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`);

--
-- Índices para tabela `entrega`
--
ALTER TABLE `entrega`
  ADD KEY `codPedido` (`codPedido`),
  ADD KEY `codEntregador` (`codEntregador`);

--
-- Índices para tabela `entregador`
--
ALTER TABLE `entregador`
  ADD PRIMARY KEY (`codEntregador`);

--
-- Índices para tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD KEY `codPedido` (`codPedido`),
  ADD KEY `codSanduiche` (`codSanduiche`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codPedido`),
  ADD KEY `codCliente` (`codCliente`);

--
-- Índices para tabela `sanduiche`
--
ALTER TABLE `sanduiche`
  ADD PRIMARY KEY (`codSanduiche`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `entregador`
--
ALTER TABLE `entregador`
  MODIFY `codEntregador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codPedido` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sanduiche`
--
ALTER TABLE `sanduiche`
  MODIFY `codSanduiche` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`codPedido`) REFERENCES `pedido` (`codPedido`),
  ADD CONSTRAINT `entrega_ibfk_2` FOREIGN KEY (`codEntregador`) REFERENCES `entregador` (`codEntregador`);

--
-- Limitadores para a tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`codPedido`) REFERENCES `pedido` (`codPedido`),
  ADD CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`codSanduiche`) REFERENCES `sanduiche` (`codSanduiche`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);
--
-- Banco de dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `idBairro` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `idCidade` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`idBairro`, `nome`, `idCidade`) VALUES
(1, 'São Marcos', 2),
(2, 'Batel', 1),
(3, 'Pariquera-Açu', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `idCidade` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `id_estado` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`idCidade`, `nome`, `id_estado`) VALUES
(1, 'Curitiba', 'PR'),
(2, 'São José dos Pinhais', 'PR'),
(3, 'São Paulo', 'SP'),
(4, 'Registro', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `nomeCliente` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`) VALUES
(1, 'Jose'),
(2, 'Elisio'),
(3, 'Roberto'),
(4, 'Guilherme');

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee`
--

CREATE TABLE `employee` (
  `EmpID` int NOT NULL,
  `EmpName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `employee`
--

INSERT INTO `employee` (`EmpID`, `EmpName`) VALUES
(1, 'Oda Nobunaga'),
(2, 'Bruce Lee'),
(3, 'Batman'),
(4, 'Ricardo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `sigla` char(2) NOT NULL,
  `nome` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`sigla`, `nome`) VALUES
('PR', 'Parana'),
('RJ', 'Rio de Janeiro'),
('RS', 'Rio Grande do Sul'),
('SC', 'Santa Catarina'),
('SP', 'São Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `location`
--

CREATE TABLE `location` (
  `EmpID` int NOT NULL,
  `EmpLoc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `location`
--

INSERT INTO `location` (`EmpID`, `EmpLoc`) VALUES
(1, 'Owari, Japão'),
(2, 'Hong Kong, China'),
(3, 'SJP, Brasil'),
(4, 'Curitiba, Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int NOT NULL,
  `idCliente` int DEFAULT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idPedido`, `idCliente`, `valor`) VALUES
(1, 2, 100.5),
(2, 2, 120),
(3, 1, 20),
(4, 3, 60),
(5, 3, 110.5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`idBairro`),
  ADD KEY `idCidade` (`idCidade`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`idCidade`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`sigla`);

--
-- Índices para tabela `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`EmpID`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`idCidade`) REFERENCES `cidade` (`idCidade`);

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`sigla`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);
--
-- Banco de dados: `farmacia`
--
CREATE DATABASE IF NOT EXISTS `farmacia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `farmacia`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bandeiracartao`
--

CREATE TABLE `bandeiracartao` (
  `codBandeira` int NOT NULL,
  `bandCartao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `bandeiracartao`
--

INSERT INTO `bandeiracartao` (`codBandeira`, `bandCartao`) VALUES
(1, 'visa'),
(2, 'mastercard'),
(3, 'elo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int NOT NULL,
  `dataNasc` timestamp NULL DEFAULT NULL,
  `nome` varchar(128) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `dataNasc`, `nome`, `cpf`) VALUES
(1, '1990-04-04 03:00:00', 'Pedro', '999999999'),
(2, '1990-04-04 03:00:00', 'Alex', '88888888888'),
(3, '1990-04-04 03:00:00', 'Amanda', '77777777777'),
(4, '1990-04-04 03:00:00', 'Laura', '66666666666'),
(5, '1990-04-04 03:00:00', 'Larissa', '55555555555');

-- --------------------------------------------------------

--
-- Estrutura da tabela `delivery`
--

CREATE TABLE `delivery` (
  `nrEntrega` int NOT NULL,
  `nomeEntregador` varchar(128) DEFAULT NULL,
  `codPgto` int DEFAULT NULL,
  `valorTotal` double DEFAULT NULL,
  `troco` double DEFAULT NULL,
  `codBandeira` int DEFAULT NULL,
  `enderecoEntrega` varchar(128) DEFAULT NULL,
  `telefoneContato` varchar(50) DEFAULT NULL,
  `dataEntrega` timestamp NULL DEFAULT NULL,
  `recebidoPor` varchar(128) DEFAULT NULL,
  `venda` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `delivery`
--

INSERT INTO `delivery` (`nrEntrega`, `nomeEntregador`, `codPgto`, `valorTotal`, `troco`, `codBandeira`, `enderecoEntrega`, `telefoneContato`, `dataEntrega`, `recebidoPor`, `venda`) VALUES
(1, 'José', 1, 15, 5, NULL, 'rua Alameda', '41 999999999', '2021-05-14 03:00:00', 'Vitor', 1),
(2, 'José', 2, 15, NULL, 1, 'rua visconde', '41 999998888', '2021-05-14 03:00:00', 'Marta', 2),
(3, 'José', 2, 45, NULL, 1, 'rua castro', '41 999997777', '2021-05-14 03:00:00', 'Marcia', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `codEndereco` int NOT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `numero` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`codEndereco`, `estado`, `cidade`, `bairro`, `rua`, `cep`, `numero`) VALUES
(1, 'Parana', 'Curitiba', 'Batel', 'Av. sul', '89030-130', 1),
(2, 'Parana', 'SJP', 'São Marcos', 'Ulisses Cordeiro', '89030-550', 1425),
(3, 'Parana', 'Curitiba', 'Contenda', 'Casemiro', '89030-130', 15),
(4, 'Parana', 'SJP', 'Barro Preto', 'Isabel', '89030-130', 12),
(5, 'Parana', 'SJP', 'Cristo Tei', 'Av. norte', '89030-111', 19);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `entrega`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `entrega` (
`codBandeira` int
,`codPgto` int
,`dataEntrega` timestamp
,`enderecoEntrega` varchar(128)
,`nomeEntregador` varchar(128)
,`nrEntrega` int
,`recebidoPor` varchar(128)
,`telefoneContato` varchar(50)
,`troco` double
,`valorTotal` double
,`venda` int
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `codFabricante` int NOT NULL,
  `nome` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fabricante`
--

INSERT INTO `fabricante` (`codFabricante`, `nome`) VALUES
(1, 'fabriA'),
(2, 'fabriB'),
(3, 'fabriC'),
(4, 'fabriD'),
(5, 'fabriE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `codFornecedor` int NOT NULL,
  `nomeFornecedor` varchar(128) NOT NULL,
  `codEndereco` int DEFAULT NULL,
  `contato` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`codFornecedor`, `nomeFornecedor`, `codEndereco`, `contato`, `email`) VALUES
(1, 'fornecA', 1, 'Vitor', 'vitor@hotmail'),
(2, 'fornecB', 2, 'Alex', 'alex@hotmail'),
(3, 'fornecC', 3, 'Isabel', 'isabel@hotmail'),
(4, 'fornecD', 4, 'Betina', 'betina@hotmail'),
(5, 'fornecE', 5, 'Angelica', 'angelica@hotmail');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornec_fabri`
--

CREATE TABLE `fornec_fabri` (
  `codFornecedor` int NOT NULL,
  `codFabricante` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `fornec_fabri`
--

INSERT INTO `fornec_fabri` (`codFornecedor`, `codFabricante`) VALUES
(1, 1),
(2, 2),
(4, 3),
(3, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemmedicamento`
--

CREATE TABLE `itemmedicamento` (
  `codProduto` int NOT NULL,
  `codVenda` int NOT NULL,
  `codReceita` int DEFAULT NULL,
  `valor` double NOT NULL DEFAULT '0',
  `quantidade` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `itemmedicamento`
--

INSERT INTO `itemmedicamento` (`codProduto`, `codVenda`, `codReceita`, `valor`, `quantidade`) VALUES
(1, 1, 1, 15, 1),
(1, 2, 1, 15, 1),
(1, 3, 1, 15, 1),
(2, 2, 2, 25, 1),
(2, 3, 2, 25, 1),
(3, 4, 1, 15, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemperfumaria`
--

CREATE TABLE `itemperfumaria` (
  `codProduto` int NOT NULL,
  `codVenda` int NOT NULL,
  `valor` double NOT NULL DEFAULT '0',
  `quantidade` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `itemperfumaria`
--

INSERT INTO `itemperfumaria` (`codProduto`, `codVenda`, `valor`, `quantidade`) VALUES
(3, 1, 15, 1),
(3, 2, 15, 1),
(3, 3, 15, 1),
(3, 4, 15, 1),
(3, 5, 15, 1),
(3, 6, 15, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lote`
--

CREATE TABLE `lote` (
  `codLote` int NOT NULL,
  `nomeLote` varchar(64) NOT NULL,
  `data` timestamp NULL DEFAULT NULL,
  `codFornecedor` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `lote`
--

INSERT INTO `lote` (`codLote`, `nomeLote`, `data`, `codFornecedor`) VALUES
(1, 'loteA', '2021-05-01 03:00:00', 1),
(2, 'loteB', '2021-04-01 03:00:00', 2),
(3, 'loteC', '2021-03-01 03:00:00', 3),
(4, 'loteD', '2021-05-01 03:00:00', 1),
(5, 'loteE', '2021-04-01 03:00:00', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

CREATE TABLE `medicamento` (
  `codProduto` int NOT NULL,
  `tipo` varchar(128) NOT NULL,
  `estoque_minimo` int NOT NULL DEFAULT '1',
  `valor_minimo` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `medicamento`
--

INSERT INTO `medicamento` (`codProduto`, `tipo`, `estoque_minimo`, `valor_minimo`) VALUES
(1, 'medicamento', 5, 7.5),
(2, 'medicamento', 1, 10),
(3, 'medicamento', 10, 37.5),
(4, 'medicamento', 5, 4),
(5, 'medicamento', 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfumaria`
--

CREATE TABLE `perfumaria` (
  `codProduto` int NOT NULL,
  `tipo` varchar(128) NOT NULL,
  `estoque_minimo` int NOT NULL DEFAULT '1',
  `valor_minimo` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `perfumaria`
--

INSERT INTO `perfumaria` (`codProduto`, `tipo`, `estoque_minimo`, `valor_minimo`) VALUES
(1, 'perfumaria', 5, 5),
(2, 'perfumaria', 1, 1),
(3, 'perfumaria', 10, 50),
(4, 'perfumaria', 5, 5),
(5, 'perfumaria', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `prod`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `prod` (
`codFabricante` int
,`codigo` varchar(128)
,`codProduto` int
,`dataValidade` timestamp
,`nomeProduto` varchar(128)
,`perecivel` tinyint(1)
,`valor` double
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codProduto` int NOT NULL,
  `nomeProduto` varchar(128) NOT NULL,
  `codigo` varchar(128) NOT NULL,
  `codFabricante` int DEFAULT NULL,
  `valor` double NOT NULL DEFAULT '0',
  `dataValidade` timestamp NULL DEFAULT NULL,
  `perecivel` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codProduto`, `nomeProduto`, `codigo`, `codFabricante`, `valor`, `dataValidade`, `perecivel`) VALUES
(1, 'ProdA', 'produtoA', 1, 15, '2022-05-02 03:00:00', 0),
(2, 'ProdB', 'produtoB', 2, 20, '2021-12-02 03:00:00', 1),
(3, 'ProdC', 'produtoC', 3, 75, '2021-06-02 03:00:00', 1),
(4, 'ProdD', 'produtoD', 4, 8, '2021-07-02 03:00:00', 1),
(5, 'ProdE', 'produtoE', 5, 10, '2021-08-02 03:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_lote`
--

CREATE TABLE `produto_lote` (
  `codProduto` int NOT NULL,
  `CodLote` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produto_lote`
--

INSERT INTO `produto_lote` (`codProduto`, `CodLote`) VALUES
(5, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita`
--

CREATE TABLE `receita` (
  `codReceita` int NOT NULL,
  `dataReceita` timestamp NOT NULL,
  `medico` varchar(128) NOT NULL,
  `paciente` varchar(128) NOT NULL,
  `photoPath` varchar(512) DEFAULT NULL,
  `crm` int DEFAULT NULL,
  `dtNascPaciente` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `receita`
--

INSERT INTO `receita` (`codReceita`, `dataReceita`, `medico`, `paciente`, `photoPath`, `crm`, `dtNascPaciente`) VALUES
(1, '2021-05-14 03:00:00', 'Dr. João', 'Pedro da Silva', NULL, 151515, '1990-04-08 03:00:00'),
(2, '2021-05-10 03:00:00', 'Dr. Pedro', 'João da Silva', NULL, 161616, '1985-04-08 03:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodepagamento`
--

CREATE TABLE `tipodepagamento` (
  `codPgto` int NOT NULL,
  `tipoPgto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tipodepagamento`
--

INSERT INTO `tipodepagamento` (`codPgto`, `tipoPgto`) VALUES
(1, 'dinheiro'),
(2, 'cartão'),
(3, 'cheque');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `codVenda` int NOT NULL,
  `dataVenda` timestamp NOT NULL,
  `valorTotal` double NOT NULL,
  `codCliente` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`codVenda`, `dataVenda`, `valorTotal`, `codCliente`) VALUES
(1, '2021-05-14 03:00:00', 15, 1),
(2, '2021-05-14 03:00:00', 45, 2),
(3, '2021-05-14 03:00:00', 20, 1),
(4, '2021-05-14 03:00:00', 100, 1),
(5, '2021-05-14 03:00:00', 150, 2),
(6, '2021-05-14 03:00:00', 200, 1);

-- --------------------------------------------------------

--
-- Estrutura para vista `entrega`
--
DROP TABLE IF EXISTS `entrega`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `entrega`  AS SELECT `delivery`.`nrEntrega` AS `nrEntrega`, `delivery`.`nomeEntregador` AS `nomeEntregador`, `delivery`.`codPgto` AS `codPgto`, `delivery`.`valorTotal` AS `valorTotal`, `delivery`.`troco` AS `troco`, `delivery`.`codBandeira` AS `codBandeira`, `delivery`.`enderecoEntrega` AS `enderecoEntrega`, `delivery`.`telefoneContato` AS `telefoneContato`, `delivery`.`dataEntrega` AS `dataEntrega`, `delivery`.`recebidoPor` AS `recebidoPor`, `delivery`.`venda` AS `venda` FROM `delivery` ;

-- --------------------------------------------------------

--
-- Estrutura para vista `prod`
--
DROP TABLE IF EXISTS `prod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prod`  AS SELECT `produto`.`codProduto` AS `codProduto`, `produto`.`nomeProduto` AS `nomeProduto`, `produto`.`codigo` AS `codigo`, `produto`.`codFabricante` AS `codFabricante`, `produto`.`valor` AS `valor`, `produto`.`dataValidade` AS `dataValidade`, `produto`.`perecivel` AS `perecivel` FROM `produto` ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bandeiracartao`
--
ALTER TABLE `bandeiracartao`
  ADD PRIMARY KEY (`codBandeira`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `cpf_2` (`cpf`);

--
-- Índices para tabela `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`nrEntrega`),
  ADD KEY `codPgto` (`codPgto`),
  ADD KEY `codBandeira` (`codBandeira`),
  ADD KEY `venda` (`venda`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codEndereco`);

--
-- Índices para tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`codFabricante`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`codFornecedor`),
  ADD KEY `codEndereco` (`codEndereco`);

--
-- Índices para tabela `fornec_fabri`
--
ALTER TABLE `fornec_fabri`
  ADD PRIMARY KEY (`codFornecedor`,`codFabricante`),
  ADD KEY `codFabricante` (`codFabricante`);

--
-- Índices para tabela `itemmedicamento`
--
ALTER TABLE `itemmedicamento`
  ADD PRIMARY KEY (`codProduto`,`codVenda`),
  ADD KEY `codVenda` (`codVenda`);

--
-- Índices para tabela `itemperfumaria`
--
ALTER TABLE `itemperfumaria`
  ADD PRIMARY KEY (`codProduto`,`codVenda`),
  ADD KEY `codVenda` (`codVenda`);

--
-- Índices para tabela `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`codLote`),
  ADD KEY `codFornecedor` (`codFornecedor`);

--
-- Índices para tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`codProduto`);

--
-- Índices para tabela `perfumaria`
--
ALTER TABLE `perfumaria`
  ADD PRIMARY KEY (`codProduto`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codProduto`),
  ADD KEY `codFabricante` (`codFabricante`),
  ADD KEY `nomeProduto` (`nomeProduto`);

--
-- Índices para tabela `produto_lote`
--
ALTER TABLE `produto_lote`
  ADD PRIMARY KEY (`codProduto`,`CodLote`),
  ADD KEY `CodLote` (`CodLote`);

--
-- Índices para tabela `receita`
--
ALTER TABLE `receita`
  ADD PRIMARY KEY (`codReceita`);

--
-- Índices para tabela `tipodepagamento`
--
ALTER TABLE `tipodepagamento`
  ADD PRIMARY KEY (`codPgto`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`codVenda`),
  ADD KEY `codCliente` (`codCliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bandeiracartao`
--
ALTER TABLE `bandeiracartao`
  MODIFY `codBandeira` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `delivery`
--
ALTER TABLE `delivery`
  MODIFY `nrEntrega` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codEndereco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipodepagamento`
--
ALTER TABLE `tipodepagamento`
  MODIFY `codPgto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`codPgto`) REFERENCES `tipodepagamento` (`codPgto`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`codBandeira`) REFERENCES `bandeiracartao` (`codBandeira`),
  ADD CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`venda`) REFERENCES `venda` (`codVenda`);

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`codEndereco`) REFERENCES `endereco` (`codEndereco`);

--
-- Limitadores para a tabela `fornec_fabri`
--
ALTER TABLE `fornec_fabri`
  ADD CONSTRAINT `fornec_fabri_ibfk_1` FOREIGN KEY (`codFornecedor`) REFERENCES `fornecedor` (`codFornecedor`),
  ADD CONSTRAINT `fornec_fabri_ibfk_2` FOREIGN KEY (`codFabricante`) REFERENCES `fabricante` (`codFabricante`);

--
-- Limitadores para a tabela `itemmedicamento`
--
ALTER TABLE `itemmedicamento`
  ADD CONSTRAINT `itemmedicamento_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`),
  ADD CONSTRAINT `itemmedicamento_ibfk_2` FOREIGN KEY (`codVenda`) REFERENCES `venda` (`codVenda`);

--
-- Limitadores para a tabela `itemperfumaria`
--
ALTER TABLE `itemperfumaria`
  ADD CONSTRAINT `itemperfumaria_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`),
  ADD CONSTRAINT `itemperfumaria_ibfk_2` FOREIGN KEY (`codVenda`) REFERENCES `venda` (`codVenda`);

--
-- Limitadores para a tabela `lote`
--
ALTER TABLE `lote`
  ADD CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`codFornecedor`) REFERENCES `fornecedor` (`codFornecedor`);

--
-- Limitadores para a tabela `medicamento`
--
ALTER TABLE `medicamento`
  ADD CONSTRAINT `medicamento_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`);

--
-- Limitadores para a tabela `perfumaria`
--
ALTER TABLE `perfumaria`
  ADD CONSTRAINT `perfumaria_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`codFabricante`) REFERENCES `fabricante` (`codFabricante`);

--
-- Limitadores para a tabela `produto_lote`
--
ALTER TABLE `produto_lote`
  ADD CONSTRAINT `produto_lote_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `produto` (`codProduto`),
  ADD CONSTRAINT `produto_lote_ibfk_2` FOREIGN KEY (`CodLote`) REFERENCES `lote` (`codLote`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);
--
-- Banco de dados: `fittech`
--
CREATE DATABASE IF NOT EXISTS `fittech` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `fittech`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int NOT NULL,
  `nomeAluno` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `boleto`
--

CREATE TABLE `boleto` (
  `idBoleto` int NOT NULL,
  `codBarras` varchar(48) NOT NULL,
  `mesReferencia` date NOT NULL,
  `valorPago` double NOT NULL,
  `dataPagamento` date NOT NULL,
  `idContrato` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `boleto`
--

INSERT INTO `boleto` (`idBoleto`, `codBarras`, `mesReferencia`, `valorPago`, `dataPagamento`, `idContrato`) VALUES
(1, '123456789123456789123456789123456789123456789123', '2021-04-25', 1500, '2021-05-25', 6),
(2, '567891234567891234567891234567891231234567891234', '2021-01-01', 1500.5, '2021-02-05', 7),
(3, '345678912345678912345678912312345678912345678912', '2021-02-01', 1600.98, '2021-03-05', 8),
(4, '789123456789123456789123123456789123456789123456', '2021-03-01', 3500.2, '2021-04-05', 9),
(5, '891234567891234567891234567891231234567891234567', '2021-03-01', 1450, '2021-04-05', 10),
(6, '891234567891234567891234567891231234567891234567', '2021-03-01', 1450, '2021-04-05', 11),
(7, '123456789123456789123456789123456789123456789123', '2021-04-25', 1500, '2021-05-25', 1),
(8, '567891234567891234567891234567891231234567891234', '2021-01-01', 1500.5, '2021-02-05', 2),
(9, '345678912345678912345678912312345678912345678912', '2021-02-01', 1600.98, '2021-03-05', 3),
(10, '789123456789123456789123123456789123456789123456', '2021-03-01', 3500.2, '2021-04-05', 4),
(11, '891234567891234567891234567891231234567891234567', '2021-03-01', 1450, '2021-04-05', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `cpf_cliente` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `cpf_cliente`, `nome`, `telefone`) VALUES
(1, '11111111111', 'Agatha Moraes', '41 999999999'),
(2, '22222222222', 'Edilse Domingue', '41 999999998'),
(3, '33333333333', 'Sandro Marcelo Santos', '41 999999997'),
(4, '44444444444', 'Laura Correia', '41 999999997'),
(5, '12345678912', 'Pedro Lima', '41 999999996'),
(6, '23456789123', 'Ana Santos', '41 999999995'),
(7, '34567891234', 'Gabriele Ezau', '41 999999994'),
(8, '45678912345', 'Fernanda Domingues', '41 999999993'),
(9, '56789123456', 'Elenice Santos', '41 999999992'),
(10, '67891234567', 'Meiri Selhorts', '41 999999991'),
(11, '78912345678', 'Diecica Alvez', '41 999999990');

-- --------------------------------------------------------

--
-- Estrutura da tabela `condominio`
--

CREATE TABLE `condominio` (
  `idCondominio` int NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `idSindico` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `condominio`
--

INSERT INTO `condominio` (`idCondominio`, `endereco`, `nome`, `idSindico`) VALUES
(1, 'Contenda', 'CondA', 1),
(2, 'São Marcos', 'CondB', 2),
(3, 'Jardim Carmem', 'CondC', 3),
(4, 'Bairro Preto', 'CondD', 4),
(5, 'Cristo Rei', 'CondE', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contratolocacao`
--

CREATE TABLE `contratolocacao` (
  `idContrato` int NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date NOT NULL,
  `dataVencimento` date NOT NULL,
  `idCliente` int NOT NULL,
  `idLoja` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `contratolocacao`
--

INSERT INTO `contratolocacao` (`idContrato`, `dataInicio`, `dataFim`, `dataVencimento`, `idCliente`, `idLoja`) VALUES
(1, '2021-04-01', '2025-03-31', '2022-04-01', 1, 1),
(2, '2021-01-01', '2025-12-31', '2021-02-05', 2, 2),
(3, '2021-02-01', '2024-01-31', '2022-05-10', 3, 3),
(4, '2021-03-01', '2022-02-28', '2021-05-10', 4, 4),
(5, '2021-03-15', '2022-03-14', '2021-05-10', 5, 5),
(6, '2021-04-01', '2022-03-31', '2022-04-01', 6, 6),
(7, '2021-01-01', '2021-12-31', '2021-02-05', 7, 7),
(8, '2021-02-01', '2022-01-31', '2022-05-10', 8, 8),
(9, '2021-03-01', '2022-02-28', '2021-05-10', 9, 9),
(10, '2021-03-15', '2022-03-14', '2021-05-10', 10, 10),
(11, '2021-03-15', '2022-03-14', '2021-05-10', 11, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `idLoja` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tamnho` double NOT NULL,
  `valorAluguel` double NOT NULL,
  `idCondominio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`idLoja`, `nome`, `tamnho`, `valorAluguel`, `idCondominio`) VALUES
(1, 'LojaA', 10.5, 1500, 1),
(2, 'LojaB', 10.5, 1500.5, 1),
(3, 'LojaC', 11.1, 1600.98, 1),
(4, 'LojaD', 20.5, 3500.2, 1),
(5, 'LojaE', 9.5, 1450, 1),
(6, 'LojaF', 10.5, 1500, 2),
(7, 'LojaG', 10.5, 1500.5, 3),
(8, 'LojaH', 11.1, 1600.98, 2),
(9, 'LojaI', 20.5, 3500.2, 3),
(10, 'LojaJ', 9.5, 1450, 3),
(11, 'LojaK', 9.5, 1450, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sindico`
--

CREATE TABLE `sindico` (
  `idSindico` int NOT NULL,
  `cpf_sindico` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `sindico`
--

INSERT INTO `sindico` (`idSindico`, `cpf_sindico`, `nome`) VALUES
(1, '99999999999', 'José Maria da Silva'),
(2, '88888888888', 'Carlos Nascimento'),
(3, '77777777777', 'Katia Gomes'),
(4, '66666666666', 'Maria Aparecida Santos'),
(5, '55555555555', 'Francisco Mendes');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `boleto`
--
ALTER TABLE `boleto`
  ADD PRIMARY KEY (`idBoleto`),
  ADD KEY `idContrato` (`idContrato`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `condominio`
--
ALTER TABLE `condominio`
  ADD PRIMARY KEY (`idCondominio`),
  ADD KEY `idSindico` (`idSindico`);

--
-- Índices para tabela `contratolocacao`
--
ALTER TABLE `contratolocacao`
  ADD PRIMARY KEY (`idContrato`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idLoja` (`idLoja`);

--
-- Índices para tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`idLoja`),
  ADD KEY `idCondominio` (`idCondominio`);

--
-- Índices para tabela `sindico`
--
ALTER TABLE `sindico`
  ADD PRIMARY KEY (`idSindico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `boleto`
--
ALTER TABLE `boleto`
  MODIFY `idBoleto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `condominio`
--
ALTER TABLE `condominio`
  MODIFY `idCondominio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contratolocacao`
--
ALTER TABLE `contratolocacao`
  MODIFY `idContrato` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `loja`
--
ALTER TABLE `loja`
  MODIFY `idLoja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `sindico`
--
ALTER TABLE `sindico`
  MODIFY `idSindico` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `boleto`
--
ALTER TABLE `boleto`
  ADD CONSTRAINT `boleto_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contratolocacao` (`idContrato`);

--
-- Limitadores para a tabela `condominio`
--
ALTER TABLE `condominio`
  ADD CONSTRAINT `condominio_ibfk_1` FOREIGN KEY (`idSindico`) REFERENCES `sindico` (`idSindico`);

--
-- Limitadores para a tabela `contratolocacao`
--
ALTER TABLE `contratolocacao`
  ADD CONSTRAINT `contratolocacao_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `contratolocacao_ibfk_2` FOREIGN KEY (`idLoja`) REFERENCES `loja` (`idLoja`);

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`idCondominio`) REFERENCES `condominio` (`idCondominio`);
--
-- Banco de dados: `multicamadas`
--
CREATE DATABASE IF NOT EXISTS `multicamadas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `multicamadas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `nome`, `sobrenome`) VALUES
(1, 'Agatha', 'Moraes'),
(2, 'Laura', 'Moraes'),
(3, 'Agatha', 'Moraes'),
(4, 'Pedro', 'Lima');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Banco de dados: `petshop`
--
CREATE DATABASE IF NOT EXISTS `petshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `petshop`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `endereco_rua` varchar(45) DEFAULT NULL,
  `endereco_numero` int DEFAULT NULL,
  `endereco_bairro` varchar(20) DEFAULT NULL,
  `enderoco_cidade` varchar(20) DEFAULT NULL,
  `endereco_estado` varchar(2) DEFAULT NULL,
  `endereco_pais` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ficha`
--

CREATE TABLE `ficha` (
  `Tratamento` varchar(20) DEFAULT NULL,
  `Serviço` varchar(20) DEFAULT NULL,
  `Vacina` varchar(20) DEFAULT NULL,
  `Data_Vacina` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `petshop`
--

CREATE TABLE `petshop` (
  `produtos` varchar(20) DEFAULT NULL,
  `tratamento` varchar(20) DEFAULT NULL,
  `servico` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `programaamigobicho`
--

CREATE TABLE `programaamigobicho` (
  `ponto` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
--
-- Banco de dados: `sistemalocadora`
--
CREATE DATABASE IF NOT EXISTS `sistemalocadora` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `sistemalocadora`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

CREATE TABLE `filme` (
  `id` int NOT NULL,
  `NomeFilme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`id`, `NomeFilme`) VALUES
(1, 'As branquelas'),
(2, 'O misterios do relogio'),
(3, 'A Casa Monstro'),
(4, 'anabelle'),
(5, 'Alice no pais das maravilhas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locadora`
--

CREATE TABLE `locadora` (
  `idLocadora` int NOT NULL,
  `NomeLocadora` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `EnderecoLocadora` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `locadora`
--

INSERT INTO `locadora` (`idLocadora`, `NomeLocadora`, `EnderecoLocadora`) VALUES
(1, 'locadora silta', 'rua pedro antunes'),
(2, 'Locadora Gomes', 'Rua Pedro Francisco'),
(3, 'Locadora Denivir', 'Rua Olivio Tozo'),
(4, 'Silvas Locaodra', 'Rua Bastiao do SUl'),
(5, 'Cartoon', 'rua sem saida');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `locadora`
--
ALTER TABLE `locadora`
  ADD PRIMARY KEY (`idLocadora`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filme`
--
ALTER TABLE `filme`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `locadora`
--
ALTER TABLE `locadora`
  MODIFY `idLocadora` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Banco de dados: `sistemapizzaria`
--
CREATE DATABASE IF NOT EXISTS `sistemapizzaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `sistemapizzaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `nomeCliente` varchar(30) NOT NULL,
  `telefoneCliente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`, `telefoneCliente`) VALUES
(1, 'Agatha', '41996468526'),
(2, 'Agatha', '41 9999 99999'),
(3, 'Laura', '41 996629262'),
(4, 'Pedro', '41 999999999');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` int NOT NULL,
  `entrega` int NOT NULL,
  `qtde` int NOT NULL,
  `tamanho` int NOT NULL,
  `idPizza` int NOT NULL,
  `idCliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idPedido`, `entrega`, `qtde`, `tamanho`, `idPizza`, `idCliente`) VALUES
(1, 1, 5, 3, 2, 1),
(2, 1, 3, 4, 2, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pizza`
--

CREATE TABLE `pizza` (
  `idPizza` int NOT NULL,
  `saborPizza` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pizza`
--

INSERT INTO `pizza` (`idPizza`, `saborPizza`) VALUES
(1, 'calabresa'),
(2, '4 queijos'),
(3, 'POrtuguesa'),
(4, 'da Casa');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`);

--
-- Índices para tabela `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`idPizza`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pizza`
--
ALTER TABLE `pizza`
  MODIFY `idPizza` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Banco de dados: `user_project`
--
CREATE DATABASE IF NOT EXISTS `user_project` DEFAULT CHARACTER SET binary;
USE `user_project`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorites`
--

CREATE TABLE `favorites` (
  `idfavorites` int NOT NULL,
  `idFilm` int DEFAULT NULL,
  `idUser` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=binary;

--
-- Extraindo dados da tabela `favorites`
--

INSERT INTO `favorites` (`idfavorites`, `idFilm`, `idUser`) VALUES
(243, 94, 59),
(244, 91, 59),
(245, 90, 59),
(246, 94, 3),
(247, 93, 3),
(248, 90, 3),
(251, 94, 60),
(252, 90, 60),
(253, 86, 60);

-- --------------------------------------------------------

--
-- Estrutura da tabela `films`
--

CREATE TABLE `films` (
  `id` int NOT NULL,
  `title` varchar(64) NOT NULL,
  `genre` varchar(64) NOT NULL,
  `year` int NOT NULL,
  `length` time NOT NULL,
  `relevance` varchar(5) NOT NULL,
  `synopsis` text NOT NULL,
  `trailer` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `typeVideo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `films`
--

INSERT INTO `films` (`id`, `title`, `genre`, `year`, `length`, `relevance`, `synopsis`, `trailer`, `image`, `typeVideo`) VALUES
(85, 'As Branquelas', 'Comédia', 2004, '01:54:00', '97%', 'Dois irmãos agentes do FBI, Marcus e Kevin Copeland, acidentalmente evitam que bandidos sejam presos em uma apreensão de drogas. Como castigo, eles são forçados a escoltar um par de socialites nos Hamptons. Porém, quando as meninas descobrem o plano da agência, se recusam a ir. Sem opções, Marcus e Kevin decidem posar como as irmãs, transformando-se de homens afro-americanos em um par de loiras.', 'https://www.youtube.com/embed/aeVkbNka9HM', '10.jpeg', 'Filme'),
(86, 'A Garota no Trem', 'Suspense', 2016, '01:53:00', '85%', 'Rachel (Emily Blunt), uma alcoólatra desempregada e deprimida, sofre pelo seu divórcio recente. Todas as manhãs ela viaja de trem de Ashbury a Londres, fantasiando sobre a vida de um jovem casal que vigia pela janela. Certo dia ela testemunha uma cena chocante e mais tarde descobre que a mulher está desaparecida. Inquieta, Rachel recorre a polícia e se vê completamente envolvida no mistério.', 'https://www.youtube.com/embed/kmQ1WcX425E', '1.jpg', 'Filme'),
(87, 'Coringa', 'Drama', 2019, '02:02:00', '95%', 'Em Coringa, Arthur Fleck (Joaquin Phoenix) trabalha como palhaço para uma agência de talentos e, toda semana, precisa comparecer a uma agente social, devido aos seus conhecidos problemas mentais. Após ser demitido, Fleck reage mal à gozação de três homens em pleno metrô e os mata. Os assassinatos iniciam um movimento popular contra a elite de Gotham City, da qual Thomas Wayne (Brett Cullen) é seu maior representante.', 'https://www.youtube.com/embed/kFCvoTe7huk', '2.jpg', 'Filme'),
(88, 'A Bela e a Fera', 'Fantasia', 2017, '02:09:00', '80%', 'Em A Bela e a Fera, moradora de uma pequena aldeia francesa, Bela (Emma Watson) tem o pai capturado pela Fera (Dan Stevens) e decide entregar sua vida ao estranho ser em troca da liberdade dele. No castelo, ela conhece objetos mágicos e descobre que a Fera é, na verdade, um príncipe que precisa de amor para voltar à forma humana.', 'https://www.youtube.com/embed/yzHuQPgO3Gs', '9.jpg', 'Filme'),
(89, 'Rambo: Até o Fim', 'Ação', 2019, '01:40:00', '75%', 'Rambo: Até o Fim se passa décadas depois de John Rambo (Sylvester Stallone) ter lutado contra seus inimigos. Agora, ele encontrou a paz em um rancho na fronteira entre os Estados Unidos e o México. Lá ele ajuda Maria Beltran (Adriana Barraza) a criar a neta Gabrielle (Yvette Monreal), que o trata com imenso carinho. Decidida a encontrar o pai, que a abandonou ainda criança, ela conta com a ajuda de uma amiga que agora vive no México para localizá-lo. Mesmo contra a vontade da avó e de Rambo, Gabrielle parte escondida para o país vizinho e, após ser dispensada pelo próprio pai, acaba vendida para uma gangue que gerencia prostitutas. Alertado sobre o que aconteceu, Rambo decide ir até o Mèxico para salvá-la.', 'https://www.youtube.com/embed/bk4E0Rl2cns', '7.jpg', 'Filme'),
(90, 'The Avengers', 'Ficção', 2012, '02:23:00', '96%', 'Loki (Tom Hiddleston) retorna à Terra enviado pelos chitauri, uma raça alienígena que pretende dominar os humanos. Com a promessa de que será o soberano do planeta, ele rouba o cubo cósmico dentro de instalações da S.H.I.E.L.D. e, com isso, adquire grandes poderes. Loki os usa para controlar o dr. Erik Selvig (Stellan Skarsgard) e Clint Barton/Gavião Arqueiro (Jeremy Renner), que passam a trabalhar para ele. No intuito de contê-los, Nick Fury (Samuel L. Jackson) convoca um grupo de pessoas com grandes habilidades, mas que jamais haviam trabalhado juntas: Tony Stark/Homem de Ferro (Robert Downey Jr.), Steve Rogers/Capitão América (Chris Evans), Thor (Chris Hemsworth), Bruce Banner/Hulk (Mark Ruffalo) e Natasha Romanoff/Viúva Negra (Scarlett Johansson). Só que, apesar do grande perigo que a Terra corre, não é tão simples assim conter o ego e os interesses de cada um deles para que possam agir em grupo.', 'https://www.youtube.com/embed/6Y6zOSn8ff4', '12.jpg', 'Filme'),
(91, 'Dark', 'Suspense', 2017, '00:40:00', '85%', 'Em 2019, o desaparecimento de um menino gera medo entre os moradores de Winden, uma pequena cidade alemã com uma história estranha e trágica.', 'https://www.youtube.com//embed/MSXxmcdJClc', '13.jpg', 'Série'),
(92, 'Friends', 'Comédia', 1994, '00:25:00', '99%', 'Ross, Rachel, Mônica, Chandler, Joey e Phoebe formam um grupo de seis amigos que lutam para se sobressair e progredir na competitiva vida de Manhattan. ... Seu humor inteligente e apoio mútuo incondicional fazem com sua amizade seja cada vez mais forte, superando assim todos os obstáculos que a vida lhes apresenta.', 'https://www.youtube.com/embed/hDNNmeeJs1Q', '14.jpg', 'Série'),
(93, 'O Preço da Verdade', 'Drama', 2019, '02:06:00', '85%', 'Um advogado descobre um segredo sombrio que conecta um número crescente de mortes inexplicáveis a uma das maiores empresas do mundo. Enquanto tenta expor a verdade, ele se vê arriscando seu futuro, sua família e sua própria vida.', 'https://www.youtube.com/embed/cuW1RmJHIgI', '5.jpg', 'Filme'),
(94, 'The Big Bang Theory', 'Sitcom', 2007, '00:25:00', '95%', 'Os melhores amigos e companheiros de apartamento Leonard e Sheldon são físicos que trabalham no Instituto Tecnológico da Califórnia (Caltech) e são capazes de explicar a todo mundo mais do que gostariam de saber sobre física quântica, mas superar as situações sociais mais básicas, especialmente aquelas envolvendo mulheres, os deixa completamente perdidos. Que sorte quando a gostosa garçonete/atriz aspirante Penny se muda para o apartamento ao lado. Wolowitz e Koothrappali, também da Caltech, são vistos frequentemente passando o tempo com Leonard e Sheldon. Será que os mundos vão se colidir? Será que Einstein teorizava na floresta?', 'https://www.youtube.com/embed/rCj-Fb1OmXg', '15.jpg', 'Série');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int UNSIGNED NOT NULL,
  `dbase` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_length` text CHARACTER SET utf8 COLLATE utf8_bin,
  `col_collation` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '',
  `col_default` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int UNSIGNED NOT NULL,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `settings_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `template_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tables` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tables` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"user_project\",\"table\":\"user\"},{\"db\":\"user_project\",\"table\":\"films\"},{\"db\":\"user_project\",\"table\":\"favorites\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `prefs` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'user_project', 'films', '[]', '2021-05-11 22:12:47'),
('root', 'user_project', 'user', '{\"sorted_col\":\"`user`.`is_admin`  DESC\"}', '2021-05-28 16:05:26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` int UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `schema_sql` text CHARACTER SET utf8 COLLATE utf8_bin,
  `data_sql` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-05-28 13:51:11', '{\"lang\":\"pt\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(64) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_expiration_date` varchar(10) NOT NULL,
  `security_code` varchar(3) NOT NULL,
  `cardholder` varchar(128) NOT NULL,
  `CPF_CNPJ` varchar(15) NOT NULL,
  `is_valid` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `name`, `birth_date`, `email`, `password`, `card_number`, `card_expiration_date`, `security_code`, `cardholder`, `CPF_CNPJ`, `is_valid`, `is_admin`) VALUES
(3, 'Agatha Cristie Batista de Moraes', '1990-08-04', 'agatha_cristie16@hotmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '1112223339999', '2022-10-29', '999', 'Agatha C Moraes', '99999999999', 0, 0),
(59, 'Moraes', '1990-08-04', 'agathademoraes@gmail.com', '888df25ae35772424a560c7152a1de794440e0ea5cfee62828333a456a506e05', '1234567891234567', '2023-03-03', '999', 'Moraes', '99999999999', 1, 0),
(60, 'admin', '0001-01-01', 'admin@gmail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '9', '0002-01-01', '9', 'admin', '9', 0, 1),
(61, 'Agatha', '1990-08-04', 'agathademoraes@gmail.com', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '1111222233334444', '1990-08-04', '999', 'Agatha Moraes', '999999999999', 1, 0),
(62, 'Agatha Moraes', '1990-08-04', 'agathademoraes@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', '1111222233334444', '2025-08-04', '999', 'Agatha', '99999999999', 1, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`idfavorites`),
  ADD KEY `idFilm` (`idFilm`),
  ADD KEY `idUser` (`idUser`);

--
-- Índices para tabela `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `favorites`
--
ALTER TABLE `favorites`
  MODIFY `idfavorites` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de tabela `films`
--
ALTER TABLE `films`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`idFilm`) REFERENCES `films` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
