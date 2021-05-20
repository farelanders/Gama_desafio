-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: desafio_hacker_gama
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cidadeestado`
--

LOCK TABLES `cidadeestado` WRITE;
/*!40000 ALTER TABLE `cidadeestado` DISABLE KEYS */;
INSERT INTO `cidadeestado` VALUES (1,'recife','pe'),(2,'sao paulo','sp'),(3,'santa catarina','sc'),(4,'rio de janeiro','rj');
/*!40000 ALTER TABLE `cidadeestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'anaferraz@gmail.com','ana ferraz',119876232,'anaferraz'),(2,'joaomiguel@gmail.com','joao miguel',119288311,'1234'),(3,'beatrizlima@gmail.com','beatriz lima',119233811,'4321'),(4,'fernandoaugusto@gmail.com','fernando augusto',118839291,'ferfer'),(5,'afonsoazevedo@gmail.com','afonso azevedo',112311223,'afonsinho');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Informatica'),(2,'Eletronica'),(3,'Acessórios'),(4,'Games'),(5,'Adaptadores');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Residencial','Rua','Monte Alegre','649','perdizes','12','05014000',2,1),(2,'Comercial','Avenida','Pacaembu','1213','higienopolis','13','05013000',2,2),(3,'Presente','Rua','Jose Augusto Siqueira','1002','Centro',NULL,'075000',3,3),(4,'Residencial','Rua','Flores','12','centro','123 fundos','08500128',4,4),(5,'Comercial','Praça','Chora Menino','51','Centro',NULL,'0882910',1,5),(6,'Casa','Rua','Ema','123','Centro',NULL,'13033111',2,2);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,1,15),(2,2,25),(3,3,0),(4,4,111),(5,5,253),(6,6,15);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,10001,'2021-05-20 10:00:03',1,2),(2,20001,'2021-02-15 10:05:03',2,3),(3,30001,'2021-05-19 10:00:04',3,4),(4,40001,'2021-05-18 12:16:03',4,5),(5,50001,'2021-03-12 00:05:03',5,1),(6,60001,'2021-05-14 15:05:01',6,3),(7,70001,'2021-04-15 10:05:03',7,2),(8,80001,'2021-01-30 10:15:03',8,1);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidosstatus`
--

LOCK TABLES `pedidosstatus` WRITE;
/*!40000 ALTER TABLE `pedidosstatus` DISABLE KEYS */;
INSERT INTO `pedidosstatus` VALUES (1,'novo pedido'),(2,'cancelado'),(3,'aguardando pagamento'),(4,'pagamento autorizado'),(5,'pagamento negado'),(6,'em separação'),(7,'em transporte'),(8,'entregue');
/*!40000 ALTER TABLE `pedidosstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1000,'Mouse Logitech G402',150,1,1,1,1),(2,2000,'Kindle',100,1,0,2,2),(3,3000,'Miband 5',250,0,0,3,3),(4,4000,'Donkey Kong 5',80,1,1,4,4),(5,5000,'Adaptador hdmi(m)xvga(f)',25,1,0,5,5),(6,1001,'Monitor Acer',780,1,1,1,6);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `produtospedido`
--

LOCK TABLES `produtospedido` WRITE;
/*!40000 ALTER TABLE `produtospedido` DISABLE KEYS */;
INSERT INTO `produtospedido` VALUES (1,'Mouse Logitech G402','150',1,150,1),(2,'Kindle','100',2,200,1),(3,'Adaptador hdmi(m)xvga(f)','25',1,25,1),(4,'Donkey Kong 5','80',1,80,2),(5,'Miband 5','250',1,250,3),(6,'Kindle','100',1,100,4),(7,'Donkey Kong 5','80',1,80,5),(8,'Miband 5','250',1,250,6),(9,'Miband 5','250',1,250,7),(10,'Donkey Kong 5','80',1,80,8);
/*!40000 ALTER TABLE `produtospedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20 20:17:36
