-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 29-Jul-2024 às 19:53
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atividade_thiago`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `recuperar-senha`
--

DROP TABLE IF EXISTS `recuperar-senha`;
CREATE TABLE IF NOT EXISTS `recuperar-senha` (
  `email` varchar(255) NOT NULL,
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_criacao` datetime NOT NULL,
  `usado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `recuperar-senha`
--

INSERT INTO `recuperar-senha` (`email`, `token`, `data_criacao`, `usado`) VALUES
('lazaro.2022315968@aluno.iffar.edu.br', '000049463c0f223e2daa6b08b9bc7c11749663ed189f35170887735af2a67550a6573df8076f321b83ff2745f9236a577fdd', '2024-07-20 16:38:28', 1),
('lazaro.2022315968@aluno.iffar.edu.br', 'bcf3a9255470e8c805c34ca581fca4bf4c76407386a96621363aa55686bc4144f90e791a14d9a18d9aaa0211d83e26c73e05', '2024-07-20 16:45:52', 0),
('lazaro.2022315968@aluno.iffar.edu.br', '84199fcdf1c6bbf41cbfed560741555ac90aef8ddb69e3dee9d7a132ac6998c19da1be2eae50f78d9a6aa3caa0ed97a38d3e', '2024-07-20 16:46:23', 0),
('lazaro.2022315968@aluno.iffar.edu.br', '9c1e2017947248cc9d52a19205b01e26df0015723f7bca7270fe28d26c3d16a47f79408042797622497cc466d0b32c7034dd', '2024-07-20 16:47:32', 1),
('lazaro.2022315968@aluno.iffar.edu.br', 'da22538467e37c71ccd989b15594ce9e8feb0b330b0a4a63a9a9595316264075c8f6ba9a43e5a105f0ba1f9d456c05e94d03', '2024-07-20 16:48:14', 1),
('jeverson.2022311922@aluno.iffar.edu.br', '355c40d211879af1d204e73daf049f5640fa09d38a8a51ec6ee97a3bc71ca1b1d63e0ed060a6cdb10911ed64c9d21dc0ea08', '2024-07-22 16:53:53', 1),
('jeverson.2022311922@aluno.iffar.edu.br', '1e8ec8b552fabcbcf27056ac1fb333e7c57cce68f8bf34830d026a720006fb5d3da9d422bbd6d70e7d9d7f430604b2e40e38', '2024-07-29 15:39:40', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto_perfil` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `nome`, `senha`, `foto_perfil`) VALUES
(3, 'jeverson.2022311922@aluno.iffar.edu.br', 'Jeverson Fagundes', '1234', '66a7e9002943a.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
