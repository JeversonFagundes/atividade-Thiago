-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 21/07/2024 às 19:42
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.18

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
-- Estrutura para tabela `recuperar-senha`
--

DROP TABLE IF EXISTS `recuperar-senha`;
CREATE TABLE IF NOT EXISTS `recuperar-senha` (
  `email` varchar(255) NOT NULL,
  `token` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_criacao` datetime NOT NULL,
  `usado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `recuperar-senha`
--

INSERT INTO `recuperar-senha` (`email`, `token`, `data_criacao`, `usado`) VALUES
('lazaro.2022315968@aluno.iffar.edu.br', '000049463c0f223e2daa6b08b9bc7c11749663ed189f35170887735af2a67550a6573df8076f321b83ff2745f9236a577fdd', '2024-07-20 16:38:28', 1),
('lazaro.2022315968@aluno.iffar.edu.br', 'bcf3a9255470e8c805c34ca581fca4bf4c76407386a96621363aa55686bc4144f90e791a14d9a18d9aaa0211d83e26c73e05', '2024-07-20 16:45:52', 0),
('lazaro.2022315968@aluno.iffar.edu.br', '84199fcdf1c6bbf41cbfed560741555ac90aef8ddb69e3dee9d7a132ac6998c19da1be2eae50f78d9a6aa3caa0ed97a38d3e', '2024-07-20 16:46:23', 0),
('lazaro.2022315968@aluno.iffar.edu.br', '9c1e2017947248cc9d52a19205b01e26df0015723f7bca7270fe28d26c3d16a47f79408042797622497cc466d0b32c7034dd', '2024-07-20 16:47:32', 1),
('lazaro.2022315968@aluno.iffar.edu.br', 'da22538467e37c71ccd989b15594ce9e8feb0b330b0a4a63a9a9595316264075c8f6ba9a43e5a105f0ba1f9d456c05e94d03', '2024-07-20 16:48:14', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto_perfil` varchar(255) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `nome`, `senha`, `foto_perfil`) VALUES
(1, 'Jever@gmail.com', 'Jeverson', '123', 'user.png'),
(2, 'lazaro.2022315968@aluno.iffar.edu.br', 'lazaro', '321', 'user.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
