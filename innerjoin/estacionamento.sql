-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:06
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(14) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dtnasc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `dtnasc`) VALUES
('012.345.678-09', 'Tiago Martins', '1992-10-16'),
('012.345.678-90', 'Júlia Souza', '1980-06-28'),
('123.456.789-01', 'Ana Silva', '1985-07-12'),
('123.456.789-10', 'Karina Rocha', '1993-03-14'),
('234.567.890-12', 'Bruno Santos', '1990-02-25'),
('234.567.890-21', 'Lucas Almeida', '1987-08-03'),
('345.678.901-23', 'Carla Oliveira', '1978-11-30'),
('345.678.901-32', 'Mariana Ribeiro', '1981-12-20'),
('456.789.012-34', 'Daniela Costa', '1983-05-15'),
('456.789.012-43', 'Natália Silva', '1989-07-19'),
('567.890.123-45', 'Eduardo Pereira', '1992-10-22'),
('567.890.123-54', 'Otávio Borges', '1996-04-30'),
('678.901.234-56', 'Fernanda Lima', '1988-04-01'),
('678.901.234-65', 'Patrícia Ferreira', '1979-11-05'),
('789.012.345-67', 'Gabriel Almeida', '1991-09-17'),
('789.012.345-76', 'Quiteria Lima', '1986-02-14'),
('890.123.456-78', 'Helena Martins', '1975-12-05'),
('890.123.456-87', 'Rafael Santos', '1990-09-23'),
('901.234.567-89', 'Igor Ferreira', '1994-01-11'),
('901.234.567-98', 'Sandra Costa', '1984-01-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horsaida` time DEFAULT NULL,
  `dtentrada` date NOT NULL,
  `horentrada` time NOT NULL,
  `dtsaida` date DEFAULT NULL,
  `placa` varchar(8) NOT NULL,
  `codlugar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`cod`, `horsaida`, `dtentrada`, `horentrada`, `dtsaida`, `placa`, `codlugar`) VALUES
(1, '10:30:00', '2024-09-01', '09:00:00', '2024-09-01', 'ABC1D23', 1),
(2, '11:00:00', '2024-09-02', '10:00:00', '2024-09-02', 'DEF4G56', 2),
(3, '12:30:00', '2024-09-03', '11:30:00', '2024-09-03', 'GHI7J89', 3),
(4, '13:00:00', '2024-09-04', '12:00:00', '2024-09-04', 'JKL0M12', 4),
(5, '14:00:00', '2024-09-05', '13:00:00', '2024-09-05', 'MNO3P45', 5),
(6, '15:30:00', '2024-09-06', '14:30:00', '2024-09-06', 'PQR6S78', 6),
(7, '16:00:00', '2024-09-07', '15:00:00', '2024-09-07', 'STU9V01', 7),
(8, '17:00:00', '2024-09-08', '16:00:00', '2024-09-08', 'VWX2Y34', 8),
(9, '18:30:00', '2024-09-09', '17:30:00', '2024-09-09', 'YZA5B67', 9),
(10, '19:00:00', '2024-09-10', '18:00:00', '2024-09-10', 'BCD8E90', 10),
(11, '09:00:00', '2024-09-11', '08:00:00', '2024-09-11', 'EFG1H23', 11),
(12, '09:30:00', '2024-09-12', '08:30:00', '2024-09-12', 'HIJ4K56', 12),
(13, '10:00:00', '2024-09-13', '09:00:00', '2024-09-13', 'JKL7M89', 13),
(14, '10:30:00', '2024-09-14', '09:30:00', '2024-09-14', 'LMN0P12', 14),
(15, '11:00:00', '2024-09-15', '10:00:00', '2024-09-15', 'NOP3Q45', 15),
(16, '11:30:00', '2024-09-16', '10:30:00', '2024-09-16', 'QRS6T78', 16),
(17, '12:00:00', '2024-09-17', '11:00:00', '2024-09-17', 'TUV9W01', 17),
(18, '12:30:00', '2024-09-18', '11:30:00', '2024-09-18', 'WXY2Z34', 18),
(19, '13:00:00', '2024-09-19', '12:00:00', '2024-09-19', 'ZAB5C67', 19),
(20, '13:30:00', '2024-09-20', '12:30:00', '2024-09-20', 'BCD8D90', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lugar`
--

CREATE TABLE `lugar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `andar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `lugar`
--

INSERT INTO `lugar` (`codlugar`, `capacidade`, `andar`) VALUES
(1, 10, 1),
(2, 15, 1),
(3, 20, 2),
(4, 10, 2),
(5, 25, 3),
(6, 30, 3),
(7, 12, 4),
(8, 18, 4),
(9, 22, 5),
(10, 28, 5),
(11, 14, 6),
(12, 16, 6),
(13, 19, 7),
(14, 21, 7),
(15, 24, 8),
(16, 26, 8),
(17, 11, 9),
(18, 13, 9),
(19, 17, 10),
(20, 20, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(8) NOT NULL,
  `cor` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `codmodelo` int(11) NOT NULL,
  `ano` int(11) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codmodelo`, `ano`, `endereco`) VALUES
('ABC1D23', 'Preto', '123.456.789-01', 1, 2020, 'Rua A, 100 - Bairro Centro'),
('BCD8D90', 'Cinza', '012.345.678-09', 20, 2018, 'Rua T, 2000 - Bairro Santa Maria'),
('BCD8E90', 'Laranja', '012.345.678-90', 10, 2019, 'Rua J, 1000 - Bairro Oceano'),
('DEF4G56', 'Branco', '234.567.890-12', 2, 2021, 'Rua B, 200 - Bairro Jardim'),
('EFG1H23', 'Marrom', '123.456.789-10', 11, 2021, 'Rua K, 1100 - Bairro Nova Era'),
('GHI7J89', 'Vermelho', '345.678.901-23', 3, 2019, 'Rua C, 300 - Bairro Industrial'),
('HIJ4K56', 'Roxo', '234.567.890-21', 12, 2022, 'Rua L, 1200 - Bairro Central'),
('JKL0M12', 'Azul', '456.789.012-34', 4, 2018, 'Rua D, 400 - Bairro Vila Nova'),
('JKL7M89', 'Bege', '345.678.901-32', 13, 2018, 'Rua M, 1300 - Bairro Atlântico'),
('LMN0P12', 'Dourado', '456.789.012-43', 14, 2020, 'Rua N, 1400 - Bairro São Jorge'),
('MNO3P45', 'Cinza', '567.890.123-45', 5, 2022, 'Rua E, 500 - Bairro São Paulo'),
('NOP3Q45', 'Prata', '567.890.123-54', 15, 2017, 'Rua O, 1500 - Bairro Planalto'),
('PQR6S78', 'Verde', '678.901.234-56', 6, 2017, 'Rua F, 600 - Bairro Boa Vista'),
('QRS6T78', 'Preto', '678.901.234-65', 16, 2023, 'Rua P, 1600 - Bairro Vale Verde'),
('STU9V01', 'Amarelo', '789.012.345-67', 7, 2020, 'Rua G, 700 - Bairro Santa Clara'),
('TUV9W01', 'Branco', '789.012.345-76', 17, 2024, 'Rua Q, 1700 - Bairro Parque'),
('VWX2Y34', 'Prata', '890.123.456-78', 8, 2021, 'Rua H, 800 - Bairro Primavera'),
('WXY2Z34', 'Vermelho', '890.123.456-87', 18, 2015, 'Rua R, 1800 - Bairro Vila Rica'),
('YZA5B67', 'Rosa', '901.234.567-89', 9, 2016, 'Rua I, 900 - Bairro Horizonte'),
('ZAB5C67', 'Azul', '901.234.567-98', 19, 2019, 'Rua S, 1900 - Bairro Esperança');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `fk_veiculo` (`placa`),
  ADD KEY `fk_lugar` (`codlugar`);

--
-- Índices para tabela `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `fk_lugar` FOREIGN KEY (`codlugar`) REFERENCES `lugar` (`codlugar`),
  ADD CONSTRAINT `fk_veiculo` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
