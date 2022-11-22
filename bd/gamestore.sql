-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 21-Nov-2022 às 21:02
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
-- Banco de dados: `gamestore`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart`
--

CREATE TABLE `cart` (
  `idcart` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `price_total` decimal(9,2) DEFAULT NULL,
  `userFK` int(11) NOT NULL,
  `state` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `idcategory` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`idcategory`, `name`) VALUES
(12, 'Componentes'),
(13, ' Periféricos'),
(14, 'Funk POPs'),
(15, 'Portáteis'),
(16, 'Consolas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Image`
--

CREATE TABLE `Image` (
  `idImage` int(10) UNSIGNED NOT NULL,
  `image_url` varchar(250) NOT NULL,
  `idProductFK` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `Image`
--

INSERT INTO `Image` (`idImage`, `image_url`, `idProductFK`) VALUES
(7, 'img/switch-img2.png', 101),
(8, 'img/switch-img3.png', 101),
(9, 'img/switch-img4.png', 101),
(10, 'img/switch-img1.png', 101),
(11, 'img/ps5-img1.png', 102),
(12, 'img/ps5-img3.png', 102),
(13, 'img/ps5-img2.png', 102),
(14, 'img/colunaspebble-img1.png', 103),
(15, 'img/tecladonox-img1.png', 104),
(16, 'img/monitormsi-img2.png', 105),
(17, 'img/monitormsi-img1.png', 105),
(18, 'img/ratologitechhero-img3.png', 106),
(19, 'img/ratologitechhero-img2.png', 106),
(20, 'img/ratologitechhero-img1.png', 106),
(21, 'img/popcharmander-img1.png', 107),
(22, 'img/popgerald-img1.png', 108),
(23, 'img/popgrootnatal-img1.png', 109),
(24, 'img/popinosukedemonsllayer-img1.png', 110),
(25, 'img/memoriaflare-img1.png', 111),
(26, 'img/ssdsamsung-img1.png', 112),
(27, 'img/cpui7-img1.png', 113),
(28, 'img/portatillenovoideapad3-img2.png', 114),
(29, 'img/portatillenovoideapad3-img1.png', 114),
(30, 'img/foneskromkayle-img1.png', 115),
(31, 'img/foneskromkayle-img2.png', 115),
(32, 'img/foneskromkayle-img3.png', 115);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemcart`
--

CREATE TABLE `itemcart` (
  `iditemcart` int(10) UNSIGNED NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `price` decimal(6,2) NOT NULL,
  `idProductFK` int(11) UNSIGNED NOT NULL,
  `idcartFK` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Product`
--

CREATE TABLE `Product` (
  `idProduct` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `detailslong` longtext DEFAULT NULL,
  `stock` smallint(5) UNSIGNED DEFAULT 0,
  `idcategoryFK` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `Product`
--

INSERT INTO `Product` (`idProduct`, `name`, `price`, `details`, `detailslong`, `stock`, `idcategoryFK`) VALUES
(101, 'Consola Nintendo Switch V2', '249.99', 'Vive a experiência de uma consola de videojogos doméstica mesmo sem um ecrã de TV.', 'Vive a experiência de uma consola de videojogos doméstica mesmo sem um ecrã de TV. A Nintendo Switch tem a capacidade de se adequar à tua situação, permitindo-te assim jogar o que quiseres independentemente do tempo de que disponhas. Estamos numa nova era em que já não precisas de ajustar o teu dia a dia para jogar. Agora é a tua consola que se ajusta aos teus horários e necessidades. Joga quando, onde e como quiseres.  Partilha a diversão com os Joy-Con Se passares um dos Joy-Con a um amigo, ambos poderão participar no modo multijogadores em cooperação ou competição.  Boas vibrações Imagina que o Joy-Con é um copo com cubos de gelo. Graças à função de vibração em HD, quando te moves e inclinas o Joy-Con és capaz de sentir os cubos de gelo a colidirem entre si. A vibração em HD transmite uma sensação tão realista que é até capaz de determinar quantos cubos existem, quase como se estivesses mesmo a segurar o copo na tua mão.  Deteta forma, movimento e distância A câmara de infravermelhos no Joy-Con direito det', 50, 16),
(102, 'Consola de jogos Sony PlayStation 5', '759.99', 'A PS5™ Edição Digital abre-te novas possibilidades de jogo que nunca imaginaste.', 'Velocidade relâmpago Aproveita o poder de uma CPU, GPU e SSD personalizados com um sistema de E/S integrado que reescrevem as regras do que uma consola PlayStation® é capaz fazer.  Jogos deslumbrantes Deixa-te maravilhar por gráficos incríveis e desfruta das novas funcionalidades da PS5™.  Imersão arrebatadora Descobre uma experiência de jogo mais imersiva com suporte para feedback háptico, gatilhos adaptativos e tecnologia de áudio em 3D.', 12, 16),
(103, 'Colunas Creative Pebble 2.0', '24.99', 'Preto', 'Frequência de resposta 50 Hz - 20 kHz  Conectividade Jack 3.5 mmUSB-A', 25, 13),
(104, 'Teclado NOX KROM KYRA', '12.99', 'Preto com luzes RGB', 'Conectividade USB  Dimensões 46,5 x 19,3 x 2,9 cm  Peso 825 g  Outras Funcionalidades 105 + 10 multimedia keys', 32, 13),
(105, 'Monitor MSI Pro MP241X VA 23.8\" FHD 16:9 75Hz', '115.00', 'Resolução FullHD: Experimente a impressionante clareza do ecrã que vem com resolução Full HD (1920x1080).', 'MSI EYE CARE: ANTI-FLICKER + TECNOLOGIA DE LUZ MENOS AZUL + ECRÃ ANTI-BRILHO As tecnologias MSI Anti-Flicker, Less Blue Light e o painel anti-ofuscante ajudam a proteger os seus olhos durante longos períodos de visualização dos seus dados e investigação.  TAXA DE ATUALIZAÇÃO DE 75HZ O ecrã de alta taxa de atualização proporciona uma melhor experiência de visualização. Além disso, quanto mais imagens forem mostradas ao mesmo tempo, menos carga lhe será imposta aos olhos.  O MAIS SUAVE 1080P Trabalhe a partir de casa com uma conferência telefónica on-line ou simplesmente desfrute da sua diversão em casa com uma clareza de ecrã de cortar a respiração que vem com resolução Full HD (1920x1080).  MELHORE A SUA EXPERIÊNCIA DE VISUALIZAÇÃO COM UM ÂNGULO DE VISÃO AMPLO Com um ângulo de visão extremamente amplo, tanto na vertical como na horizontal, de 178 graus. Optimizou instantaneamente a cor e o brilho do ecrã para garantir que desfruta de cada detalhe no seu melhor e permite ter uma qualidade de imagem consistente a partir de qualquer ângulo.', 22, 13),
(106, 'Rato Óptico Logitech G502 HERO', '45.99', '5600DPI Gaming Preto', 'O G502 HERO inclui o nosso sensor óptico mais avançado para uma máxima precisão de rastreamento. Personaliza a iluminação RGB ou sincroniza-a com outros produtos Logitech G, configura perfis personalizados para os seus jogos, ajusta a sensibilidade de 200 até 25.600 PPP, ou posiciona cinco pesos de 3.6g para obter o equilíbrio e a sensação adequados.', 48, 13),
(107, 'POP! Charmander', '10.99', 'Pokémon', '', 40, 14),
(108, 'POP! Geralt ', '27.90', 'The Witcher - POP! Geralt *Chase*', '', 6, 14),
(109, 'POP! Groot', '10.90', 'Guardiões da Galáxia - POP! Groot (HS)', '', 11, 14),
(110, 'Pop! Inosuke', '15.99', 'Funko Pop!: Demon Slayer - Inosuke Hashibira', '', 8, 14),
(111, 'Memória RAM DDR4 GSKILL Flare X', '160.00', 'Memória RAM DDR4 GSKILL Flare X (2 x 8 GB - 3200 MHz - CL 14 - Preto)', 'A memória RAM G.Skill Flare X 16 GB (2x 8 GB) DDR4-3200 MHz CL14 foi projetada para os processadores AMD Ryzen, marcando o retorno da lendária memória Flare que proporcionou um desempenho impressionante na geração anterior de memória DDR. Atualize o seu próximo sistema AMD para o equipamento de jogo final ou uma estação de trabalho poderosa com a memória DDR4 da série Flare X! A nova arquitetura AMD apresenta um conjunto completamente novo de melhorias ao nível da RAM, exigindo uma nova abordagem. A série de memória Flare X foi projetada com uma característica distinta para otimizar a compatibilidade com a plataforma AMD mais recente, oferecendo desempenho de memória de alta velocidade para transferir dados de forma eficiente para cada um dos núcleos do processador AMD Ryzen. Projetada com baixa tensão de 1,2 V ~ 1,35 V em padrão DDR4, a memória RAM G.Skill Flare X 16 GB (2x 8 GB) DDR4-3200 MHz CL14 reduz a necessidade de tensão de memória em 20% em relação aos kits de memória DDR3! Agora, o seu sistema pode funcionar ainda mais rápido sem se tornar um aquecedor. Outras características: capacidade do kit Dual-Channel de 16 GB (2x 8 GB); velocidade de 3200 MHz; latência de 14-14-14-34; voltagem de 1,35 V; 40 mm de altura.', 15, 12),
(112, 'Disco SSD Samsung 980', '97.50', 'Disco SSD Samsung 980 | 1 TB', 'M.2Capacidade da drive SSD: 1000 GBInterface: PCI Express 3.0Tipo de memória: V-NANDNVMe: SimComponente para: PC/notebookEncriptação de hardware: SimVersão NVMe: 1.4Codificação / segurança: 256-bit AESVelocidade de leitura: 3500 MB/sVelocidade de escrita: 3000 MB/sLeitura aleatória (4KB): 500000 IOPSEscrita aleatória (4KB): 480000 IOPSFaixas de dados de interface PCI Express: x4Compatível com S.M.A.R.T.: SimMTBF: 1500000 hCódigo de Sistema Harmonizado (HS): 84717070Voltagem operativa: 3,3 VConsumo de...', 25, 12),
(113, 'Intel Core i7', '471.56', 'Intel Core i7-12700K 3.6 GHz', 'Apresentamos o processador de desktop Intel® Core™ i7-12700K de 12ª geração desbloqueado. Com a tecnologia Intel® Turbo Boost Max 3.0 e suporte PCIe Gen 4.0, os processadores para desktop Intel® Core™ de 12ª geração desbloqueados são otimizados para gaming e criadores sérios, e ajudam a fornecer overclock de alto desempenho para um impulso adicional. Solução térmica NÃO incluída na caixa. Compatível com motherboards de 125 W baseadas no chipset da série 600.', 48, 12),
(114, 'Computador Portátil Gaming Lenovo IdeaPad 3 15ACH6', '699.99', 'Processador AMD Ryzen 5 5600H Hexa Core  Memória RAM 8 GB  Placa(s) Gráfica(s) Nvidia GeForce® RTX 3050 | Boost Clock 1500/1635MHz, TGP 85W  Disco SSD 512 GB', 'Processador AMD Ryzen 5 5600H Hexa Core  Memória RAM 8 GB  Placa(s) Gráfica(s) Nvidia GeForce® RTX 3050 | Boost Clock 1500/1635MHz, TGP 85W  Disco SSD 512 GB', 9, 15),
(115, 'Headset Krom Kayle', '16.90', 'Headset Krom Kayle 7.1 RGB Gaming', 'Mergulhe na adrenalina do jogo graças ao som virtual 7.1.do Krom Kayle, um inovador design que combina recursos de potência, resistência, conforto e alto desempenho, para tornar as suas batalhas uma experiência de jogo única.', 26, 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `admin`, `address`, `name`) VALUES
(1, 'user1', '123', 0, 'rua das flores', 'euzinha'),
(5, 'user2', '123', 0, 'rua dos serrotes', 'eu'),
(6, 'admin1', '123', 1, 'emrpesa', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD KEY `fk_cart_user1_idx` (`userFK`);

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcategory`);

--
-- Índices para tabela `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `fk_Image_Product1_idx` (`idProductFK`);

--
-- Índices para tabela `itemcart`
--
ALTER TABLE `itemcart`
  ADD PRIMARY KEY (`iditemcart`),
  ADD KEY `fk_itemcart_Product1_idx` (`idProductFK`),
  ADD KEY `fk_itemcart_cart1_idx` (`idcartFK`);

--
-- Índices para tabela `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`idProduct`),
  ADD UNIQUE KEY `idProduct_UNIQUE` (`idProduct`),
  ADD KEY `fk_Product_category1_idx` (`idcategoryFK`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `Image`
--
ALTER TABLE `Image`
  MODIFY `idImage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `itemcart`
--
ALTER TABLE `itemcart`
  MODIFY `iditemcart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Product`
--
ALTER TABLE `Product`
  MODIFY `idProduct` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_cart_user1` FOREIGN KEY (`userFK`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `Image`
--
ALTER TABLE `Image`
  ADD CONSTRAINT `fk_Image_Product1` FOREIGN KEY (`idProductFK`) REFERENCES `Product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itemcart`
--
ALTER TABLE `itemcart`
  ADD CONSTRAINT `fk_itemcart_Product1` FOREIGN KEY (`idProductFK`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itemcart_cart1` FOREIGN KEY (`idcartFK`) REFERENCES `cart` (`idcart`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `fk_Product_category1` FOREIGN KEY (`idcategoryFK`) REFERENCES `category` (`idcategory`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
