-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: smart_shopping
-- ------------------------------------------------------
-- Server version       10.11.7-MariaDB-4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(1,'Electronics'),
(2,'Fashion'),
(3,'Home & Garden'),
(4,'Sports');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `specifications` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_public` tinyint(1) DEFAULT 1,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,'Smartphone','smartphone.png','Experience the latest technology with our Smartphone, featuring an advanced camera, stunning display, and long-lasting battery life. Perfect for anyone looking to stay connected and capture life’s moments.',' <li>Display: 6.5-inch OLED</li>\n            <li>Processor: Octa-core</li>\n            <li>RAM: 8GB</li>\n            <li>Storage: 128GB</li>\n            <li>Camera: 108MP rear, 32MP front</li>\n            <li>Battery: 4500mAh</li>\n            <li>OS: Android 12</li>',999.99,1,1),
(2,'UltraBook 15','laptop.png','A sleek, lightweight laptop featuring a 15-inch display, Intel Core i7 processor, 8GB RAM, and 512GB SSD. Perfect for both work and entertainment, it offers long battery life and fast performance in a slim design. Ideal for professionals on the go.',' <li>Display: 15-inch Full HD IPS</li>\n<li>Processor: Intel Core i7</li>\n<li>RAM: 8GB</li>\n<li>Storage: 512GB SSD</li>\n<li>Graphics: Integrated Intel Iris Xe</li>\n<li>Battery: 10 hours of usage</li>\n<li>OS: Windows 11</li>\n<li>Weight: 1.2kg</li>\n',999.99,1,1),
(3,'Noise-Canceling Headphones','headphone.png','Experience immersive sound with these over-ear noise-canceling headphones. Featuring advanced noise-canceling technology, long-lasting comfort, and premium audio quality. Ideal for travel, work, or any noisy environment.','<li>Noise-Cancellation: Active Noise Cancellation (ANC)</li>\n    <li>Driver Size: 40mm</li>\n    <li>Battery Life: 20 hours of continuous playback</li>\n    <li>Connectivity: Bluetooth 5.0</li>\n    <li>Frequency Response: 20Hz - 20kHz</li>\n    <li>Weight: 300g</li>\n    <li>Included: Carrying case, charging cable</li>',249.99,1,1),
(4,'Leather Jacket','jacket.png','A stylish and durable leather jacket designed for both fashion and comfort. Made from premium leather, this jacket offers a classic look with modern touches, ideal for everyday wear and outdoor activities.','<li>Material: 100% Genuine Leather</li>\n    <li>Style: Slim Fit</li>\n    <li>Closure: Zipper Front</li>\n    <li>Color: Black</li>\n    <li>Lining: Soft Polyester</li>\n    <li>Care Instructions: Dry Clean Only</li>\n    <li>Fit: True to size</li>',199.99,1,2),
(5,'Aviator Sunglasses','glass.png','Timeless aviator sunglasses designed for style and protection. Featuring a classic gold frame with UV400 protection lenses, these sunglasses provide both fashion and function for any outdoor activity.','<li>Frame Material: Stainless Steel</li>\n    <li>Lens Type: UV400 Protection</li>\n    <li>Lens Color: Black</li>\n    <li>Frame Color: Gold</li>\n    <li>Shape: Classic Aviator</li>\n    <li>Gender: Unisex</li>\n    <li>Included: Protective Case</li>',129.99,1,2),
(6,'Running Sneakers','sneaker.png','Lightweight and breathable running sneakers designed for maximum comfort and performance. Featuring cushioned soles, ergonomic design, and durable materials, these sneakers are perfect for both casual jogs and intense runs.','<li>Upper Material: Breathable Mesh</li>\n    <li>Sole Material: EVA Foam</li>\n    <li>Fit: Snug and Supportive</li>\n    <li>Color: Black with Red Accents</li>\n    <li>Weight: 250g per shoe</li>\n    <li>Sizes: 6 to 12 US</li>\n    <li>Technology: Shock Absorption and Traction</li>',89.99,1,2),
(7,'Wooden Coffee Table','table.png','A beautifully crafted wooden coffee table that adds a touch of elegance to any living room. Made with high-quality oak wood, it features a sturdy structure and timeless design.','<li>Material: 100% Solid Oak Wood</li>\n<li>Dimensions: 120cm x 60cm x 45cm</li>\n<li>Finish: Natural Wood Grain</li>\n<li>Design: Contemporary with Rustic Touch</li>\n<li>Assembly: Required</li>\n<li>Weight: 15kg</li>',299.99,1,3),
(8,'Designer Floor Lamp','lamp.png','A modern and stylish floor lamp designed to provide ample light while complementing your home decor. Features adjustable height and a sleek, minimalist design.','<li>Material: Steel and Fabric</li>\n<li>Height: Adjustable up to 180cm</li>\n<li>Light Source: LED Bulb (Included)</li>\n<li>Color: Matte Black with White Shade</li>\n<li>Switch: Foot Pedal Switch</li>\n<li>Power: 12W LED</li>',129.99,1,3),
(9,'Outdoor Garden Chair','chair.png','A comfortable and durable garden chair designed for outdoor relaxation. Made with weather-resistant material, this chair is perfect for patios, gardens, or balconies.','<li>Material: Aluminum Frame with UV-resistant Fabric</li>\n<li>Weight Capacity: 120kg</li>\n<li>Dimensions: 65cm x 70cm x 90cm</li>\n<li>Color: Grey with Black Cushion</li>\n<li>Foldable: Yes</li>\n<li>Maintenance: Easy to Clean</li>',79.99,1,3),
(10,'Premium Soccer Ball','ball.png','A high-quality soccer ball designed for professional play. It features a durable, textured surface for enhanced grip and control, perfect for both training and matches.','<li>Material: Synthetic Leather</li>\n<li>Size: Standard 5</li>\n<li>Bladder: Air Bladder with Optimal Bounce</li>\n<li>Color: Black and White with Red Accents</li>\n<li>Usage: Professional and Training</li>\n<li>Weight: 420g</li>',49.99,1,4),
(11,'Professional Tennis Racket','tennis.png','A top-tier tennis racket made for serious athletes. Featuring a lightweight carbon fiber frame for optimal control and power, this racket ensures precision and performance on the court.','<li>Material: Carbon Fiber Frame</li>\n<li>Grip Size: 4 3/8</li>\n<li>String Pattern: 16x19</li>\n<li>Weight: 270g (Unstrung)</li>\n<li>Head Size: 100 Square Inches</li>\n<li>Length: 27 inches</li>',199.99,1,4),
(12,'Adjustable Dumbbells','dubb.png','A set of adjustable dumbbells designed for easy storage and a variety of workouts. Perfect for home gyms, these dumbbells offer flexible weight options for any fitness level.','<li>Weight Range: 5kg - 25kg (per dumbbell)</li>\n<li>Adjustable: Easy to Adjust with Locking Mechanism</li>\n<li>Material: Cast Iron with Plastic Coating</li>\n<li>Handle: Anti-slip Rubber Coating</li>\n<li>Included: 2 Dumbbells with Weight Plates</li>\n<li>Storage: Compact Design</li>',149.99,1,4),
(13,'Eco-Friendly Yoga Mat','mat.png','A high-quality, non-toxic yoga mat designed for comfort and durability. Made from sustainable materials, this mat provides a firm and supportive surface for your practice.','<li>Material: TPE (Thermoplastic Elastomer)</li>\n<li>Dimensions: 183cm x 61cm x 6mm</li>\n<li>Weight: 1.2kg</li>\n<li>Texture: Non-slip surface for better grip</li>\n<li>Color: Green with Black Accents</li>\n<li>Eco-Friendly: 100% Recyclable</li>',39.99,1,4),
(14,'High-Performance Running Shoes','shoes.png','Engineered for long-distance runners, these shoes offer unparalleled comfort, support, and cushioning for your feet. With advanced traction and breathability, they provide optimal performance on any terrain.','<li>Upper Material: Breathable Mesh</li>\n<li>Sole Material: EVA Foam with Rubber Outsole</li>\n<li>Technology: Shock Absorption and Lightweight Cushioning</li>\n<li>Color: Black with Neon Yellow Accents</li>\n<li>Weight: 280g (per shoe)</li>\n<li>Sizes: 7 to 13 US</li>',119.99,1,4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 21:56:23
