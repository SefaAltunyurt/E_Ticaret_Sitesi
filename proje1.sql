# Host: localhost  (Version 5.5.5-10.1.36-MariaDB)
# Date: 2019-01-09 17:06:30
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,0,'Erkek','Erkek Kıyafetleri','Kışlık','True'),(2,0,'Kadın','Kadın Kıyafetleri','Yazlık','True'),(3,0,'Çocuk','Çocuk Kıyafetleri','Yazlık','True'),(5,0,'Ayakkabı','Erkek','Kışlık','True'),(7,1,'Tshirt','Erkek','Yazlık','True'),(8,2,'Etek','Kadın','Yazlık','True'),(9,1,'Pantolon','Erkek','Kot','True'),(13,2,'Kazak','Kadın Kıyafetleri','Kışlık','True'),(14,3,'Yelek','Çocuk Kıyafetleri','Genel','True'),(15,3,'Sweatshirt','Çocuk Kıyafetleri','Genel','True'),(16,5,'Bot','Casual','Genel','True'),(17,5,'Spor Ayakkabı','Günlük','Genel','True');

#
# Structure for table "image"
#

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "image"
#

INSERT INTO `image` VALUES (1,2,'1.jpg'),(2,2,'2.jpg'),(3,1,'929a5a8c59a23fa2a51c8bc2d3f19ab6.jpeg'),(4,1,'316e8024b5ba1a8518884f9633645a14.jpeg'),(5,1,'a90dfa781df03ad9a8f993d78e33b11c.jpeg');

#
# Structure for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "messages"
#

INSERT INTO `messages` VALUES (1,'sefa','sefa@gmail.com','İş','Beni işe alın\t','Geri dönüş yapıldı.','Okundu'),(2,'Ahmet','ahmet@gmail.com','İş','Acil arayın\t','Dönüş yapıldı.','Okundu'),(3,'Samet','samet@gmail.com','Toplantı','Kaçta toplantı olucak?','Mail ile geri dönüş sağlandı.','Okundu'),(4,'Mucahit','muco@gmial.com','İş','iş basvurusu','Mail ile geri dönüş yapıldı','Okundu');

#
# Structure for table "migration_versions"
#

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migration_versions"
#

INSERT INTO `migration_versions` VALUES ('20181223205855'),('20190104222914'),('20190105110559'),('20190105111001'),('20190105111907'),('20190108115936');

#
# Structure for table "order_detail"
#

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "order_detail"
#

INSERT INTO `order_detail` VALUES (1,2,NULL,2,NULL,NULL,NULL,NULL,NULL),(2,2,3,16,44.9,2,89.8,NULL,'Ordered'),(3,2,3,13,79,1,79,NULL,'Ordered'),(4,3,3,11,39.9,1,39.9,NULL,'Ordered'),(5,3,3,24,39.9,1,39.9,NULL,'Ordered'),(6,4,5,13,79,1,79,NULL,'Ordered'),(7,5,3,41,79,1,79,NULL,'Ordered'),(8,1,3,41,79,1,79,NULL,'Ordered'),(9,2,4,2,45.99,2,91.98,NULL,'Ordered'),(10,3,3,11,39.9,1,39.9,NULL,'Ordered'),(11,3,3,14,79,1,79,NULL,'Ordered');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,3,79,'Mucahit Özcan',NULL,NULL,NULL,NULL,'InShipping',' Ürün Kargoya Verildi'),(2,4,91.98,'Akif Kuş',NULL,'Izmir',NULL,NULL,'Accepted',' Onaylandı'),(3,3,118.9,'Mucahit Özcan',NULL,NULL,NULL,NULL,'New',NULL),(4,3,0,'Mucahit Özcan',NULL,NULL,NULL,NULL,'New',NULL);

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'Yazlık Tshirt','','Yeni sezon',NULL,NULL,NULL,150,NULL,39.99,NULL,'<p>sq</p>','1.jpg',NULL,7,NULL,'True'),(2,'Mini Etek','','Yeni sezon',NULL,NULL,NULL,200,NULL,45.99,NULL,'<p>sq</p>','2.jpg',NULL,8,NULL,'True'),(3,'Kalem Etek','','Yeni sezon',NULL,NULL,NULL,220,NULL,74.99,NULL,'<p>&nbsp;</p>','3.jpg',NULL,8,NULL,'True'),(4,'Bot',NULL,'Yeni sezon',NULL,NULL,NULL,300,NULL,189.99,NULL,'<p>&nbsp;</p>','4.jpg',NULL,5,NULL,'True'),(6,'Bileklik',NULL,'Yeni sezon',NULL,NULL,NULL,350,NULL,29,NULL,'<p>&nbsp;</p>','08d6c2e4f4a4b75c70a59daa333c4d61.jpeg',NULL,12,NULL,'True'),(7,'Tshirt','Mavi','Yeni sezon',NULL,NULL,NULL,150,NULL,59.9,NULL,'<p>&nbsp;</p>','72fe95f3f6849699eff7e05c75f1f8e2.jpeg',NULL,7,NULL,'True'),(8,' Kot Pantolon','Mevsimlik','Yeni sezon',NULL,NULL,NULL,200,NULL,69.9,NULL,'<p>&nbsp;</p>','e2bb4a077f8916a5873ea0ec0c36fbae.jpeg',NULL,9,NULL,'True'),(9,'Tshirt','Sarı','Yeni sezon',NULL,NULL,NULL,200,NULL,39.9,NULL,'<p>&nbsp;</p>','d7da8a302d5a475d7817d7caa0297a2c.jpeg',NULL,7,NULL,'True'),(10,'Tshirt','Beyaz','Yeni sezon',NULL,NULL,NULL,300,NULL,39.9,NULL,'<p>&nbsp;</p>','82910e4c26184e04af6f2a1140fb358f.jpeg',NULL,7,NULL,'True'),(11,'Tshirt','Kırmızı','Yeni sezon',NULL,NULL,NULL,350,NULL,39.9,NULL,'<p>&nbsp;</p>','bb3a01fd6d79a61542aea0dffb038cb6.jpeg',NULL,7,NULL,'True'),(12,'Kumaş Pantolon','Kumaş','Yeni sezon',NULL,NULL,NULL,300,NULL,69.99,NULL,'<p>&nbsp;</p>','df62f7a1600748f808cdcfcac277c8e9.jpeg',NULL,9,NULL,'True'),(13,'Pantolon',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,79,NULL,'<p>&nbsp;</p>','cdfa6a794db75d89cd41013e33cddc78.jpeg',NULL,9,NULL,'True'),(14,'Pantolon',NULL,'Yeni sezon',NULL,NULL,NULL,300,NULL,79,NULL,'<p>&nbsp;</p>','89f049943c1a79b8835230413bbab905.jpeg',NULL,9,NULL,'True'),(15,'Pantolon',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,79,NULL,'<p>&nbsp;</p>','bdeb2c3650f8f699b581e9b6f1c42ca3.jpeg',NULL,9,NULL,'True'),(16,'Kazak',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,44.9,NULL,'<p>&nbsp;</p>','32c8ce5402acfc0342f8f4c173181a93.jpeg',NULL,13,NULL,'True'),(17,'Kazak',NULL,'Yeni sezon',NULL,NULL,NULL,300,NULL,45.99,NULL,'<p>&nbsp;</p>','a1a87dec13e789b394a8411c69c0e875.jpeg',NULL,13,NULL,'True'),(18,'Boğazlı Kazak',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,45.99,NULL,'<p>&nbsp;</p>','8210e3210fd35e283398148062148e5f.jpeg',NULL,13,NULL,'True'),(19,'V Yaka Kazak',NULL,'Yeni sezon',NULL,NULL,NULL,350,NULL,45.99,NULL,'<p>&nbsp;</p>','85b248d06ca9972f5890491297ea87f5.jpeg',NULL,13,NULL,'True'),(20,'Yüksek Yaka Kazak',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,79,NULL,'<p>&nbsp;</p>','da9c93b6859c4ac24282bbe0b64b299c.jpeg',NULL,13,NULL,'True'),(21,'Yırtmaç Etek',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,127.9,NULL,'<p>&nbsp;</p>','15330751df1527305bb1446ae60405d9.jpeg',NULL,8,NULL,'True'),(22,'Kareli Etek',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,79,NULL,'<p>&nbsp;</p>','ec0aa653a8bb3ca2445ee78c1bced5b0.jpeg',NULL,8,NULL,'True'),(23,'Kadife Etek',NULL,'Yeni sezon',NULL,NULL,NULL,200,NULL,29,NULL,'<p>&nbsp;</p>','329736b7df8b6ad526a2c5d87db48c52.jpeg',NULL,8,NULL,'True'),(24,'Suni Kürk Detaylı Yelek',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,39.9,NULL,'<p>&nbsp;</p>','b1008d937f5cb5352c602848a49c9199.jpeg',NULL,14,NULL,'True'),(25,'Şişme Yelek',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,65.9,NULL,'<p>&nbsp;</p>','356ac6dcfbd7f784576db288b5bf2047.jpeg',NULL,14,NULL,'True'),(26,'Kapüşonlu Yelek',NULL,'Yeni sezon',NULL,NULL,NULL,320,NULL,52.46,NULL,'<p>&nbsp;</p>','5e566678d4970c9d9ab69f6bf9a8741d.jpeg',NULL,14,NULL,'True'),(27,'Kamuflaj Desenli Yelek',NULL,'Yeni sezon',NULL,NULL,NULL,50,NULL,52.49,NULL,'<p>&nbsp;</p>','53c5e1facf5286c605bfed8a6aade4ac.jpeg',NULL,14,NULL,'True'),(28,'Suni Kürk Detaylı Yelek',NULL,'Yeni sezon',NULL,NULL,NULL,40,NULL,56.9,NULL,'<p>&nbsp;</p>','866220b33570f149b2cf086f09479ab8.jpeg',NULL,14,NULL,'True'),(29,'Kamuflaj Desenli Sweatshirt',NULL,'Yeni sezon',NULL,NULL,NULL,222,NULL,44.99,NULL,'<p>&nbsp;</p>','50ba85429e9b37e32db444955f3200a0.jpeg',NULL,15,NULL,'True'),(30,'Baskılı Sweatshirt',NULL,'Yeni sezon',NULL,NULL,NULL,300,NULL,39.9,NULL,'<p>&nbsp;</p>','2ef61efe5292762ff79b94ca73c91b22.jpeg',NULL,15,NULL,'True'),(31,'Baskılı- Sweatshirt',NULL,'Yeni sezon',NULL,NULL,NULL,350,NULL,39.9,NULL,'<p>&nbsp;</p>','e0728355b12316254302adc6ad77696e.jpeg',NULL,15,NULL,'True'),(32,'Kamuflaj Desenli Sweatshirt',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,45.99,NULL,'<p>&nbsp;</p>','d50f47f6ecd29a39457cf53c3b4c4a97.jpeg',NULL,15,NULL,'True'),(33,'Baskılı--Sweatshirt',NULL,'Yeni sezon',NULL,NULL,NULL,300,NULL,45.99,NULL,'<p>&nbsp;</p>','7b27318ca1ff1b7b41e50ac95f1f6b26.jpeg',NULL,15,NULL,'True'),(34,'Bağcıklı Bot',NULL,'Yeni sezon',NULL,NULL,NULL,350,NULL,257.9,NULL,'<p>&nbsp;</p>','39d0b091bf70f011857aa9bcd9514455.jpeg',NULL,16,NULL,'True'),(35,'Bağcıksız Bot',NULL,'Yeni sezon',NULL,NULL,NULL,200,NULL,189.99,NULL,'<p>&nbsp;</p>','f5d3dffd4fc6abacc652cf1f3627d0ff.jpeg',NULL,16,NULL,'True'),(36,'Bağcıklı Bot',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,189.99,NULL,'<p>&nbsp;</p>','b6250a5ecd273a49fc1a237b58ad8fa9.jpeg',NULL,16,NULL,'True'),(37,'Kadife Bot',NULL,'Yeni sezon',NULL,NULL,NULL,150,NULL,287.9,NULL,'<p>&nbsp;</p>','48a499c570f548dc4d1112b75d8dc609.jpeg',NULL,16,NULL,'True'),(38,'Süet Görünümlü Bot',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,189.99,NULL,'<p>&nbsp;</p>','02ed918355dc33e0f8f4d5509f15cfcf.jpeg',NULL,16,NULL,'True'),(39,'Bağcıklı Ayakkabı',NULL,'Yeni sezon',NULL,NULL,NULL,350,NULL,79,NULL,'<p>&nbsp;</p>','d888611b8b05395cd481370607f7cfcf.jpeg',NULL,17,NULL,'True'),(40,'Bağcıklı Ayakkabı(Beyaz)',NULL,'Yeni sezon',NULL,NULL,NULL,350,NULL,29,NULL,'<p>&nbsp;</p>','dc34b3e1b3d20f64acc5f3e5b8f2dad3.jpeg',NULL,17,NULL,'True'),(41,'Taba Bağcıklı Ayakkabı',NULL,'Yeni sezon',NULL,NULL,NULL,220,NULL,79,NULL,'<p>&nbsp;</p>','a4df1517045cda51a064d716fb5345d0.jpeg',NULL,17,NULL,'True'),(42,'Bağcıklı Ayakkabı(Gri)',NULL,'Yeni sezon',NULL,NULL,NULL,200,NULL,29,NULL,'<p>&nbsp;</p>','7bf1f26d6466abbde83e2c30776c58a9.jpeg',NULL,17,NULL,'True'),(43,'Bağcıklı Ayakkabı(Sarı)',NULL,'Yeni sezon',NULL,NULL,NULL,300,NULL,39.9,NULL,'<p>&nbsp;</p>','c26e9c4639abaeed334da8894fd3ddd5.jpeg',NULL,17,NULL,'True');

#
# Structure for table "setting"
#

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` longtext COLLATE utf8mb4_unicode_ci,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "setting"
#

INSERT INTO `setting` VALUES (1,'ALTUNYURT HOLDİNG','KİŞİSEL WEBSİTE','SEFA ALTUNYURT','ALTUNYURT','ÇANKAYA/ANKARA','03122141548',NULL,'<p>&nbsp;</p>','<p>&nbsp;</p>','<p>altunuyurt@gmail.com</p>','12358',639,'<h2>Hakkımızda</h2><p>178 yıllık köklü bir geçmişe sahip olan Türk Telekom, Türkiye’nin ilk entegre telekomünikasyon operatörüdür. Müşterilerin hızla değişen iletişim ve teknoloji ihtiyaçlarına en güçlü ve en doğru şekilde cevap verebilmek amacıyla 2015 yılında Türk Telekomünikasyon A.Ş., TT Mobil İletişim Hizmetleri A.Ş. ve TTNET A.Ş. tüzel kişiliklerini mevcut şekliyle muhafaza ederek ve tabi oldukları mevzuat ve regülasyonlara tamamen uyarak, “müşteri odaklı” ve entegre bir yapıya geçmiştir. Bireysel ve kurumsal hizmetler alanında geniş hizmet ağı ve zengin ürün çeşitliliğine sahip olan Türk Telekom, Ocak 2016 itibarıyla mobil, internet, telefon ve TV ürün ve hizmetlerini ‘Türk Telekom’ tek marka çatısı altında bir araya getirmiştir.</p><p>“Türkiye’nin Çoklu Oyuncusu” Türk Telekom, 30 Eylül 2018 itibarıyla 14,3 milyon sabit erişim hattı, 10,6 milyon genişbant, 3,5 milyon TV ve 20,8 milyon mobil aboneye hizmet vermektedir. Türk Telekom Grubu şirketleri Türkiye’yi yeni teknolojilerle buluşturma ve bilgi toplumuna dönüşüm sürecini hızlandırma vizyonuyla, 81 ilde 33.226 çalışanıyla hizmet vermektedir.</p><p>Türk Telekomünikasyon A.Ş., PSTN ve toptan genişbant hizmetlerini sunmakta olup, mobil operatör TT Mobil İletişim Hizmetleri A.Ş., perakende internet hizmeti, IPTV, Uydu TV, Web TV, Mobile TV, Smart TV Hizmetleri sağlayıcısı TTNET A.Ş., yakınsama teknolojileri şirketi Argela Yazılım ve Bilişim Teknolojileri A.Ş., BT çözüm sağlayıcısı Innova Bilişim Çözümleri A.Ş., çevrimiçi eğitim yazılımları şirketi Sebit Eğitim ve Bilgi Teknolojileri A.Ş., çağrı merkezi şirketi AssisTT Rehberlik ve Müşteri Hizmetleri A.Ş., proje geliştirme ve kurumsal risk sermayesi şirketi TT Ventures Proje Geliştirme A.Ş., elektrik tedarik ve satış şirketi TTES Elektrik Tedarik Satış A.Ş.’nin, toptan veri ve kapasite servis sağlayıcısı Türk Telekom International’ın doğrudan; Türk Telekom International iştiraklerinin, Televizyon yayıncılığı ile isteğe bağlı yayıncılık (VOD) hizmetleri sağlayıcısı Net Ekran şirketlerinin, cihaz satış şirketi TT Satış ve Dağıtım Hizmetleri A.Ş.’nin ve ödeme hizmetleri şirketi TT Ödeme Hizmetleri A.Ş.’nin ve rehberlik hizmetleri şirketi 11818 Rehberlik ve Müşteri Hizmetleri A.Ş.’nin ise dolaylı olarak %100’üne sahiptir.</p><h2>Ortaklık Yapısı</h2><p>Türk Telekomünikasyon A.Ş. hisselerinin %55\'i Oger Telekomünikasyon A.Ş., %25\'i T.C. Hazine ve Maliye Bakanlığı\'na ve %5\'i Türkiye Varlık Fonu\'na aittir. Geriye kalan %15\'lik hissesi de halka arz edilmiştir.</p><p>Türk Telekomünikasyon A.Ş. hisseleri, Mayıs 2008 itibarıyla Borsa İstanbul\'da (BİST) işlem görmektedir.</p><p>Türk Telekomünikasyon A.Ş., mobil operatör TT Mobil İletişim Hizmetleri A.Ş., genişbant operatörü TTNET A.Ş., yakınsama teknolojileri şirketi Argela Yazılım ve Bilişim Teknolojileri A.Ş., BT çözüm sağlayıcısı Innova Bilişim Çözümleri A.Ş., çevrimiçi eğitim yazılımları şirketi Sebit Eğitim ve Bilgi Teknolojileri A.Ş., çağrı merkezi şirketi AssisTT Rehberlik ve Müşteri Hizmetleri A.Ş., toptan veri ve kapasite servis sağlayıcısı Türk Telekom International ve iştiraklerinin&nbsp;yüzde 100\'üne sahiptir.</p><p>​</p><figure class=\"image\"><img src=\"https://www.turktelekom.com.tr/Assets/img/tr-ownership-img.jpg\" alt=\"\"></figure><p>*5 Şubat 2017 tarihinde yayınlanan Resmi Gazete\'ye göre, Bakanlar Kurulu\'nca, Şirket\'in T.C. Hazine ve Maliye Bakanlığına ait %6,68 (%5 B Grubu, %1,68 D Grubu) oranındaki hisselerinin Türkiye Varlık Fonu\'na aktarılmasına karar verilmiştir.​​</p>','<h2><i><strong>Koç Topluluğu Şirketleri İletişim Bilgileri</strong></i></h2><figure class=\"table\"><table><tbody><tr><th>&nbsp;</th></tr><tr><th><h4>Arçelik A.Ş.</h4><p>Yetkili Kişi:</p><p>Hakan Hamdi Bulgurlu</p><p>Telefon:</p><p>0 (212) 314 34 34</p><p>Adres:</p><p>Karaağaç Cad. No:2-6 Sütlüce, 34445 Beyoğlu / İstanbul - Türkiye</p><p>Web Adresi:</p><p><a href=\"http://www.arcelikas.com/\">http://www.arcelikas.com</a></p></th></tr><tr><th><h4>Arçelik LG Klima San. Tic. A.Ş.</h4><p>Yetkili Kişi:</p><p>Mehmet Emin Bulak</p><p>Telefon:</p><p>0 (262) 678 78 78</p><p>Adres:</p><p>Gebze Organize San. Bölg. İhsan Dede Cad. 41400 Gebze / Kocaeli - Türkiye</p><p>Web Adresi:</p><p><a href=\"http://www.arcelik-lg.com.tr/\">http://www.arcelik-lg.com.tr</a></p></th></tr><tr><th>&nbsp;</th></tr><tr><th><h4>Aygaz A.Ş.</h4><p>Yetkili Kişi:</p><p>Gökhan Tezel</p><p>Telefon:</p><p>0 (212) 354 15 15</p><p>Adres:</p><p>Büyükdere Cad. No:145/1 Aygaz Han 80300 Zincirlikuyu / İstanbul - Türkiye</p><p>Web Adresi:</p><p><a href=\"http://www.aygaz.com.tr/\">http://www.aygaz.com.tr</a></p></th></tr><tr><th><h4>Aygaz Doğal Gaz Toptan Satış A.Ş.</h4><p>Yetkili Kişi:</p><p>Gökhan Ekici</p><p>Telefon:</p><p>0 (212) 354 16 10</p><p>Adres:</p><p>Büyükdere Cad. No:145 Kat:4 Aygaz Han 34394 Zincirlikuyu / İstanbul - Türkiye</p><p>Web Adresi:</p><p><a href=\"http://www.aygazdg.com.tr/\">http://www.aygazdg.com.tr</a></p></th></tr><tr><th>&nbsp;</th></tr><tr><th>&nbsp;</th></tr><tr><th>&nbsp;</th></tr><tr><th>&nbsp;</th></tr></tbody></table></figure>','<figure class=\"image\"><img src=\"http://www.sundanismanlik.net/images/erasmus-plus.jpg\" alt=\"erasmus referanslarÄ± ile ilgili gÃ¶rsel sonucu\"></figure>','True');

#
# Structure for table "shopcart"
#

DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "shopcart"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'sefa@gmail.com','ROLE_ADMIN','$2y$13$lYzcOKivRF9q3XgBp1OH8.nhXDMhrORCeKU2V7ChwjxD3.7pG9ua2','SEFA ALTUNYURT','True',NULL,NULL,NULL,NULL),(3,'muco@gmail.com','ROLE_USER','$2y$10$AfXUQ2QcFrwaiQ/WsAAaueFJCwjsLw1blGiV3hUdSMc9zwTE9pLEK','Mucahit Özcan','True',NULL,NULL,NULL,NULL),(4,'akif@gmail.com','ROLE_USER','$2y$10$SyRJTvFEjsOGJCxKFxCH6OqtStVhJ0vLOqKfNDBusXbBf2HlUf69a','Akif Kuş',NULL,NULL,NULL,'Izmir',NULL);

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'SEFA ALTUNYURT','altunyurt.sefa@gmail.com','123','Admin','True','2018-12-18 22:38:43','2018-12-18 22:38:43'),(2,'Mustafa Koçak','mustafa@gmail.com','123','Admin','True','2018-12-18 22:39:07','2018-12-18 22:39:07');
