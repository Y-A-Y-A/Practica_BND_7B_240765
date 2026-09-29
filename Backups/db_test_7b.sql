-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_test_7b
-- ------------------------------------------------------
-- Server version	8.0.36

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

CREATE DATABASE IF NOT EXISTS db_test_7b;
USE db_test_7b;

--
-- Table structure for table `tb_logs`
--

DROP TABLE IF EXISTS `tb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(80) NOT NULL,
  `table_operation` enum('Create','Read','Update','Delete') DEFAULT NULL,
  `db_user` varchar(80) NOT NULL,
  `operation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operation_description` text NOT NULL,
  `operation_status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logs`
--

LOCK TABLES `tb_logs` WRITE;
/*!40000 ALTER TABLE `tb_logs` DISABLE KEYS */;
INSERT INTO `tb_logs` VALUES (1,'tb_users','Create','root@localhost','2026-09-10 10:22:48','Usuario creado. ID=1, email=240765@utxicotepec.edu.mx, nick=Dara, Creation_date=2026-09-10 10:22:48, status=',_binary ''),(2,'tb_users','Create','root@localhost','2026-09-10 10:40:19','Usuario creado. ID=3, email=240036@utxicotepec.edu.mx, nick=Osmar, Creation_date=2026-09-10 10:40:19, status=',_binary ''),(3,'tb_users','Create','root@localhost','2026-09-10 10:43:51','Usuario creado. ID=4, email=240272@utxicotepec.edu.mx, nick=Josu, Creation_date=2026-09-10 10:43:51, status=',_binary ''),(4,'tb_users','Create','Josu.Oloarte@PC-12','2026-09-10 12:56:34','Usuario creado. ID=5, email=240001@utxicotepec.edu.mx, nick=Pancracia, Creation_date=2026-09-10 12:56:34, status=',_binary ''),(5,'tb_users','Create','Josu.Oloarte@PC-12','2026-09-10 12:58:44','Usuario creado. ID=6, email=240002@utxicotepec.edu.mx, nick=Pepillo, Creation_date=2026-09-10 12:58:44, status=',_binary ''),(6,'tb_users','Create','Josu.Oloarte@PC-12','2026-09-10 13:00:31','Usuario creado. ID=7, email=240003@utxicotepec.edu.mx, nick=PatoDonald, Creation_date=2026-09-10 13:00:31, status=',_binary ''),(18,'tb_products','Create','root@localhost','2026-09-24 11:04:38','Se creó el producto: Coca-Cola 600 ml con SKU: 7501055300015',_binary ''),(19,'tb_products','Create','root@localhost','2026-09-24 11:04:38','Se creó el producto: Sabritas Original 45 g con SKU: 7501011110017',_binary ''),(20,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:04:38','Se creó el producto: Smartwatch Garmin Forerunner con SKU: JEN-001',_binary ''),(21,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:04:38','Se creó el producto: Micrófono Condensador Blue Yeti con SKU: JEN-002',_binary ''),(22,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:04:38','Se creó el producto: Memoria RAM DDR4 16GB con SKU: JEN-003',_binary ''),(23,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:04:38','Se creó el producto: Disco SSD NVMe 1TB con SKU: JEN-004',_binary ''),(24,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:04:38','Se creó el producto: Cargador Carga Rápida 65W con SKU: JEN-005',_binary ''),(25,'tb_products','Update','jennifer.canales@PC-16','2026-09-24 11:04:45','Se actualizó el producto: Memoria RAM DDR4 16GB. Precio anterior: $1100.00, precio nuevo: $999.00. Stock anterior: 30, stock nuevo: 35',_binary ''),(26,'tb_products','Delete','jennifer.canales@PC-16','2026-09-24 11:04:54','Se eliminó el producto: Cargador Carga Rápida 65W con SKU: JEN-005',_binary ''),(27,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:48:32','Se creó el producto: Smartwatch Garmin Forerunner con SKU: JENNY-101',_binary ''),(28,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:48:32','Se creó el producto: Micrófono Condensador Blue Yeti con SKU: JENNY-102',_binary ''),(29,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:48:32','Se creó el producto: Memoria RAM DDR4 16GB con SKU: JENNY-103',_binary ''),(30,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:48:32','Se creó el producto: Disco SSD NVMe 1TB con SKU: JENNY-104',_binary ''),(31,'tb_products','Create','jennifer.canales@PC-16','2026-09-24 11:48:32','Se creó el producto: Cargador Carga Rápida 65W con SKU: JENNY-105',_binary ''),(32,'tb_users','Create','josu.oloarte@DESKTOP-7M9IC15','2026-09-24 12:33:04','Usuario creado. ID=8, email=240556@utxicotepec.edu.mx, nick=JenniferA, Creation_date=2026-09-24 12:33:04, status=',_binary ''),(33,'tb_users','Create','josu.oloarte@DESKTOP-7M9IC15','2026-09-24 12:33:04','Usuario creado. ID=9, email=240112@utxicotepec.edu.mx, nick=ValeriaR, Creation_date=2026-09-24 12:33:04, status=',_binary ''),(34,'tb_users','Create','josu.oloarte@DESKTOP-7M9IC15','2026-09-24 12:33:04','Usuario creado. ID=10, email=240334@utxicotepec.edu.mx, nick=CarlosM, Creation_date=2026-09-24 12:33:04, status=',_binary ''),(35,'tb_users','Update','josu.oloarte@DESKTOP-7M9IC15','2026-09-24 12:33:48','Usuario actualizado. ID=10, email anterior=240334@utxicotepec.edu.mx, email nuevo=240334@utxicotepec.edu.mx, nick anterior=CarlosM, nick nuevo=Aaron.Carballo, status anterior=, status nuevo=',_binary '');
/*!40000 ALTER TABLE `tb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `SKU` varchar(50) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text,
  `current_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `current_stock` int unsigned NOT NULL DEFAULT '0',
  `status` bit(1) DEFAULT b'1',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SKU` (`SKU`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'LAP-001','Laptop HP Pavilion','Intel Core i5, 16GB RAM, 512GB SSD',12999.99,12,_binary '','2026-09-24 10:59:06','2026-09-24 10:59:40'),(2,'MOU-002','Mouse Inalámbrico Logitech','Óptico, conexión USB 2.4GHz',350.50,50,_binary '','2026-09-24 10:59:06','2026-09-24 10:59:06'),(3,'KEY-003','Teclado Mecánico RGB','Switches Blue, retroiluminado',890.00,25,_binary '','2026-09-24 10:59:06','2026-09-24 10:59:06'),(4,'MON-004','Monitor Samsung 24','Full HD, 75Hz, panel IPS',2700.00,15,_binary '','2026-09-24 10:59:06','2026-09-24 10:59:06'),(6,'CAM-006','Cámara Web Logitech C920','Full HD 1080p con micrófono estéreo',1450.00,20,_binary '','2026-09-24 11:02:10','2026-09-24 11:02:10'),(17,'7501055300015','Coca-Cola 600 ml','Refresco Coca-Cola de 600 ml',20.00,50,_binary '','2026-09-24 11:04:38','2026-09-24 11:04:38'),(18,'7501011110017','Sabritas Original 45 g','Botana de papa Sabritas Original de 45 g',18.00,30,_binary '','2026-09-24 11:04:38','2026-09-24 11:04:38'),(19,'JEN-001','Smartwatch Garmin Forerunner','Reloj deportivo con GPS y pulso',4200.00,15,_binary '','2026-09-24 11:04:38','2026-09-24 11:04:38'),(20,'JEN-002','Micrófono Condensador Blue Yeti','Conexión USB ideal para streaming',2300.00,10,_binary '','2026-09-24 11:04:38','2026-09-24 11:04:38'),(21,'JEN-003','Memoria RAM DDR4 16GB','Kingston Fury 3200MHz RGB',999.00,35,_binary '','2026-09-24 11:04:38','2026-09-24 11:04:45'),(22,'JEN-004','Disco SSD NVMe 1TB','Samsung 980 Pro PCIe 4.0',2150.00,20,_binary '','2026-09-24 11:04:38','2026-09-24 11:04:38'),(24,'JENNY-101','Smartwatch Garmin Forerunner','Reloj deportivo con GPS y pulso',4200.00,15,_binary '','2026-09-24 11:48:32','2026-09-24 11:48:32'),(25,'JENNY-102','Micrófono Condensador Blue Yeti','Conexión USB ideal para streaming',2300.00,10,_binary '','2026-09-24 11:48:32','2026-09-24 11:48:32'),(26,'JENNY-103','Memoria RAM DDR4 16GB','Kingston Fury 3200MHz RGB',1100.00,30,_binary '','2026-09-24 11:48:32','2026-09-24 11:48:32'),(27,'JENNY-104','Disco SSD NVMe 1TB','Samsung 980 Pro PCIe 4.0',2150.00,20,_binary '','2026-09-24 11:48:32','2026-09-24 11:48:32'),(28,'JENNY-105','Cargador Carga Rápida 65W','Baseus GaN USB-C múltiple',550.00,45,_binary '','2026-09-24 11:48:32','2026-09-24 11:48:32');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_insert` AFTER INSERT ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (table_name, table_operation, db_user, operation_description)
    VALUES
    (
        'tb_products',
        'Create',
        USER(),
        CONCAT('Se creó el producto: ', NEW.name,
               ' con SKU: ', NEW.SKU)
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_update` AFTER UPDATE ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (table_name, table_operation, db_user, operation_description)
    VALUES
    (
        'tb_products',
        'Update',
        USER(),
        CONCAT('Se actualizó el producto: ', NEW.name,
               '. Precio anterior: $', OLD.current_price,
               ', precio nuevo: $', NEW.current_price,
               '. Stock anterior: ', OLD.current_stock,
               ', stock nuevo: ', NEW.current_stock)
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_products_after_delete` AFTER DELETE ON `tb_products` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (table_name, table_operation, db_user, operation_description)
    VALUES
    (
        'tb_products',
        'Delete',
        USER(),
        CONCAT('Se eliminó el producto: ', OLD.name,
               ' con SKU: ', OLD.SKU)
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nick` (`nick`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'240765@utxicotepec.edu.mx','Dara','871534c2971fceb021437786bc940bd2','2026-09-10 10:22:48',NULL,NULL,_binary ''),(2,'240023@utxicotepec.edu.mx','Sam','bbad76ecd6c61301dd44b0cce29625f6','2026-09-10 10:26:05',NULL,NULL,_binary ''),(4,'240272@utxicotepec.edu.mx','JosuDev','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:43:51','2026-09-23 20:28:15',NULL,_binary ''),(5,'240001@utxicotepec.edu.mx','Pancracia','871534c2971fceb021437786bc940bd2','2026-09-10 12:56:34',NULL,NULL,_binary ''),(6,'240002@utxicotepec.edu.mx','Pepillo','871534c2971fceb021437786bc940bd2','2026-09-10 12:58:44',NULL,NULL,_binary ''),(7,'240003@utxicotepec.edu.mx','PatoDonald','871534c2971fceb021437786bc940bd2','2026-09-10 13:00:31',NULL,NULL,_binary ''),(8,'240556@utxicotepec.edu.mx','JenniferA','240556','2026-09-24 12:33:04',NULL,NULL,_binary ''),(9,'240112@utxicotepec.edu.mx','ValeriaR','240112','2026-09-24 12:33:04',NULL,NULL,_binary ''),(10,'240334@utxicotepec.edu.mx','Aaron.Carballo','240334','2026-09-24 12:33:04',NULL,NULL,_binary '');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tgr_users_after_insert` AFTER INSERT ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (
        table_name,
        table_operation,
        db_user,
        operation_description,
        operation_date,
        operation_status
    )
    VALUES
    (
        'tb_users',
        'Create',
        USER(),
        CONCAT(
            'Usuario creado. ID=', NEW.ID,
            ', email=', NEW.email,
            ', nick=', NEW.nick,
            ', Creation_date=', NEW.creation_date,
            ', status=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tgr_users_after_update` AFTER UPDATE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (
        table_name,
        table_operation,
        db_user,
        operation_description,
        operation_date,
        operation_status
    )
    VALUES
    (
        'tb_users',
        'Update',
        USER(),
        CONCAT(
            'Usuario actualizado. ID=', NEW.ID,
            ', email anterior=', OLD.email,
            ', email nuevo=', NEW.email,
            ', nick anterior=', OLD.nick,
            ', nick nuevo=', NEW.nick,
            ', status anterior=', OLD.status,
            ', status nuevo=', NEW.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tgr_users_after_delete` AFTER DELETE ON `tb_users` FOR EACH ROW BEGIN
    INSERT INTO tb_logs
    (
        table_name,
        table_operation,
        db_user,
        operation_description,
        operation_date,
        operation_status
    )
    VALUES
    (
        'tb_users',
        'Delete',
        USER(),
        CONCAT(
            'Usuario eliminado. ID=', OLD.ID,
            ', email=', OLD.email,
            ', nick=', OLD.nick,
            ', Creation_date=', OLD.creation_date,
            ', status=', OLD.status
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vw_trazabilidad_productos`
--

DROP TABLE IF EXISTS `vw_trazabilidad_productos`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_productos` AS SELECT 
 1 AS `id`,
 1 AS `sku`,
 1 AS `name`,
 1 AS `description`,
 1 AS `current_price`,
 1 AS `current_stock`,
 1 AS `status`,
 1 AS `user_operation`,
 1 AS `roles`,
 1 AS `operation`,
 1 AS `operation_description`,
 1 AS `operation_date`,
 1 AS `operation_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trazabilidad_users`
--

DROP TABLE IF EXISTS `vw_trazabilidad_users`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_users`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_users` AS SELECT 
 1 AS `id`,
 1 AS `email`,
 1 AS `nick`,
 1 AS `creation_date`,
 1 AS `last_update`,
 1 AS `last_login`,
 1 AS `status`,
 1 AS `performed_by`,
 1 AS `roles`,
 1 AS `operation`,
 1 AS `operation_description`,
 1 AS `operation_date`,
 1 AS `operation_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_trazabilidad_productos`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_productos` AS select `p`.`ID` AS `id`,`p`.`SKU` AS `sku`,`p`.`name` AS `name`,`p`.`description` AS `description`,`p`.`current_price` AS `current_price`,`p`.`current_stock` AS `current_stock`,`p`.`status` AS `status`,`b`.`db_user` AS `user_operation`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_operation` AS `operation`,`b`.`operation_description` AS `operation_description`,`b`.`operation_date` AS `operation_date`,`b`.`operation_status` AS `operation_status` from ((`tb_products` `p` join `tb_logs` `b` on(((`b`.`table_name` = 'tb_products') and (`b`.`operation_description` like concat('%SKU: ',`p`.`SKU`,'%'))))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) group by `p`.`ID`,`p`.`SKU`,`p`.`name`,`p`.`description`,`p`.`current_price`,`p`.`current_stock`,`p`.`status`,`b`.`db_user`,`b`.`table_operation`,`b`.`operation_description`,`b`.`operation_date`,`b`.`operation_status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trazabilidad_users`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_users` AS select `u`.`ID` AS `id`,`u`.`email` AS `email`,`u`.`nick` AS `nick`,`u`.`creation_date` AS `creation_date`,`u`.`last_update` AS `last_update`,`u`.`last_login` AS `last_login`,`u`.`status` AS `status`,`l`.`db_user` AS `performed_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`l`.`table_operation` AS `operation`,`l`.`operation_description` AS `operation_description`,`l`.`operation_date` AS `operation_date`,`l`.`operation_status` AS `operation_status` from ((`tb_users` `u` left join `tb_logs` `l` on(((`l`.`table_name` = 'tb_users') and (`l`.`db_user` = `u`.`email`)))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`l`.`db_user`,'@',1)))) group by `u`.`ID`,`u`.`email`,`u`.`nick`,`u`.`creation_date`,`u`.`last_update`,`u`.`last_login`,`u`.`status`,`l`.`db_user`,`l`.`table_operation`,`l`.`operation_description`,`l`.`operation_date`,`l`.`operation_status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-24 13:05:50
