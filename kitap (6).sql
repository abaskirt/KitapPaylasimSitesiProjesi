-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Ağu 2017, 14:45:25
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kitap`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `authors`
--

CREATE TABLE `authors` (
  `authorAvatar` text COLLATE utf8_turkish_ci NOT NULL,
  `authorId` int(11) NOT NULL,
  `authorName` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `authorSurname` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `birthDate` date DEFAULT NULL,
  `birthPlace` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `religiousBelief` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phiBelief` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `deathDate` date DEFAULT NULL,
  `jobs` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `biography` text COLLATE utf8_turkish_ci,
  `articles` text COLLATE utf8_turkish_ci,
  `others` text COLLATE utf8_turkish_ci,
  `authorPoint` int(11) NOT NULL,
  `prize` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `authors`
--

INSERT INTO `authors` (`authorAvatar`, `authorId`, `authorName`, `authorSurname`, `birthDate`, `birthPlace`, `religiousBelief`, `phiBelief`, `deathDate`, `jobs`, `biography`, `articles`, `others`, `authorPoint`, `prize`) VALUES
('./uploads/images/George_R._R._Martin.jpg', 1, 'George', 'R. R. Martin', '1948-09-20', 'New Jersey, ABD', NULL, NULL, NULL, 'Yazar', 'George Raymond Richard Martin (d. 20 Eylül 1948), Amerikalı yazar ve fantezi, korku ve bilim kurgu senaryo yazarı. Kendisi en çok Türkçe\'ye Buz ve Ateşin Şarkısı olarak çevrilen ve daha sonra Game of Thrones adıyla dizisi çekilen A Song of Ice and Fire isimli epik fantezi roman serisinin yazarı olarak bilinir. Martin, Time tarafından \"2011\'in en etkili 100 kişisi\" arasına seçilmiştir.', NULL, NULL, 5, 'Ignotius Award, Best Foreign Novel of 2002'),
('./uploads/images/janeharper.jpg', 2, 'Jane', 'Harper', '1980-08-10', 'Manchester,Birleşik Krallık ', NULL, NULL, NULL, 'Yazar', 'Jane Harper was born in Manchester in the UK, and moved to Australia with her family at age eight.\r\n\r\nShe spent six years in Boronia, Victoria, and during that time gained Australian citizenship.\r\n\r\nReturning to the UK with her family as a teenager, she lived in Hampshire before studying English and History at the University of Kent in Canterbury.\r\n\r\nOn graduating, she completed a journalism entry qualification and got her first reporting job as a trainee on the Darlington & Stockton Times in County Durham.\r\n\r\nJane worked for several years as a senior news journalist for the Hull Daily Mail, before moving back to Australia in 2008.\r\n\r\nShe worked first on the Geelong Advertiser, and in 2011 took up a role with the Herald Sun in Melbourne.\r\n\r\nIn 2014, Jane submitted a short story which was one of 12 chosen for the Big Issue\'s annual Fiction Edition.\r\n\r\nThat inspired her to pursue creative writing more seriously, and that year she applied for the Curtis Brown Creative online 12-week novel writing course.\r\n\r\nShe was accepted with a submission for the book that would become The Dry and wrote the first full draft during the three-month course.\r\n\r\nJane lives in St Kilda with her husband and daughter.', NULL, NULL, 1, 'Victorian Premier Edebiyat › En İyi Kitap Ödülü'),
('./uploads/images/yasarkemal.jpg', 3, 'Yasar', 'Kemal', '1923-10-06', 'Kadirli,Osmaniye', NULL, NULL, '2015-02-28', 'Yazar', 'Yaşar Kemal (d. Kemal Sadık Gökçeli,] 1923; Gökçedam, Osmaniye), Kürt romancı, senaryo ve öykü yazarı. Türk edebiyatının en önde gelen kalemlerinden biridir. İlk öykü kitabı Sarı Sıcak\'ta da yer alan Bebek öyküsü ile ilk romanı İnce Memed, Cumhuriyet\'te tefrika edildi. İnce Memed, yaklaşık kırk dile çevrilerek yayımlandı ve kitaplarının yurtdışındaki baskısı yüz kırktan fazladır.\r\n\r\nYaşar Kemal pek çok yapıtında Anadolu\'nun efsane ve masallarından yararlanmıştır. PEN Yazarlar Derneği üyesidir. Nobel Edebiyat Ödülü\'ne aday gösterilen ilk Türk yazardır.\r\n\r\nÇocukluğu\r\n\r\nYaşar Kemal, Nigâr Hanım ile çiftçi Sadık Efendi\'nin oğlu olarak aslen Van-Erciş yolu üzerinde ve Van Gölü\'ne yakın Muradiye ilçesine bağlı Ernis (bugün Ünseli) köyünden olan bir aileden dünyaya geldi. Kendi anlatımına göre bir Türkmen köyünde tek Kürt ailenin çocuğu olarak doğup büyüyen Yaşar Kemal, evde sadece Kürtçe köyde ise Türkçe konuşurdu. Ailesi, Birinci Dünya Savaşı\'ndan dolayı Adana\'nın Osmaniye ilçesine bağlı Hemite (bugün Gökçedam) köyüne yerleşti. Beş yaşındayken, babasının camide öldürülüşüne tanık oldu. Orta okul döneminde çeşitli işlerde çalıştı. Kuzucuoğlu Pamuk Üretme Çiftliği\'nde ırgat kâtipliği (1941), Adana Halkevi Ramazanoğlu kitaplığında memurluk (1942), Zirai Mücadele\'de ırgatbaşlığı, daha sonra Kadirli\'nin Bahçe köyünde öğretmen vekilliği (1941-42), pamuk tarlalarında, batozlarda ırgatlık, traktör sürücülüğü, çeltik tarlalarında kontrolörlük yaptı.\r\n\r\nSanat hayatı\r\n\r\n1978 yılındaki yaptığı bir söyleşide sanat çalışmalarına ilkokula başlamadan önce şiirle işe koyulduğunu ve okula başladığında \"yaşlı halk şairleriyle çakıştığını\" anımsadığını belirtti. İlkokulun son sınıfındayken arkadaşı Aşık Mecit, çok iyi saz çalarken kendisi annesinden ötürü sazı \"berbat\" çalmaktaydı. Bunun nedenini şu sözlerle dile getirdi:\r\n\r\n\r\n\"Benim saz çalamamamın sebebi var, anam aşık olacağım da diyar diyar dolaşacağım diye saza, aşıklığa düşman olmuştu. Onun tek çocuğuydum ve gözünden ayırmıyordu beni. Okulda, düğünlerde bayramlarda beni hep Aşık Mecitle çakıştırırlardı. Aşık Mecitle Kadirlide bir kahvede bir gece sabaha kadar çakıştığımı şimdi iyice anımsıyorum.\"\r\n\r\n\r\nOrtaokuldan ayrıldıktan sonra folklor derlemelerine başladı ve 1940-1941 yılları arasında Çukurovadan ile Toroslardan derlediği ağıtları içeren ilk kitabı olan Ağıtlar, Adana Halkevi tarafından 1943 yılında yayınladı. 1944 yılında ilk hikâyesi Pis Hikâye\'yi yayınladı. Bunu, Kayseri\'de askerlik yaparken yazmıştı. Bebek, Dükkâncı, Memet ile Memet öyküleri 1950\'lerde yayımlandı.\r\n\r\nKemal Sadık Göğceli adı ile çeşitli yayımlarda yazarken Yaşar Kemal adını Cumhuriyet gazetesine girince kullanmaya başladı. 1952 yılında yayımlanan ilk öykü kitabı olan Sarı Sıcak\'ta da yer alan Bebek öyküsü burada tefrika edildi.\r\n\r\n1947\'de İnce Memed\'i yazdı fakat yarım bıraktı ve 1953-54’te bitirdi. Romanı yazma nedeni eşkiya olan ve dağda vurulan amcasının oğlunun vurulması olduğunu 1987 yılındaki bir söyleşisinde belirtti. Ayrıca aynı söyleşide, çocukluğunun eşkiyalığın içinde geçtiğini, dayısının \"en büyük\" eşkiyalardan biri olduğunu, o çevrede 1936\'lara kadar beş yüze yakın eşkiya bulunduğunu ve bunlardan birinin de Kurtuluş Savaşı\'nda Kadirli\'yi ilk örgütleyenlerden olan Karamüftüoğlu ailesinden ünlü Remzi Bey olduğunu söyledi. Remzi Bey\'in kendisine, ilk İnce Memed hikayesinde \"Çakırdikeni\" diye yer alan diken hikâyesini anlattı ve Yaşar Kemal\'le \"eşkıyalığın felsefesini\" yaptı.\r\n\r\nYaşar Kemal\'in dünyada ilk kez yayımlanan eseri, Bebek öyküsüdür ve önce Fransızcaya, sonra İngilizceye, İtalyancaya, Rusçaya, Romenceye ve diğer dillere çevrildi.\r\n\r\nSiyaset\r\n\r\n17 yaşından bu yana sosyalist politikanın içindedir. 1961 Anayasası\'ndan sonra kurulan Türkiye İşçi Partisi\'ne 1962\'de katıldı. Emekçi sınıfının tamamen yönetime gelmesini isteyen Kemal, TİP\'te sekiz yıl çalıştı ve yöneticilerden biriydi. 1987\'deki bir söyleşisinde Türkiye\'de bir Marksist partiye ihtiyaç olduğunu belirtmiştir. Aynı söyleşideki \"Nasıl bir sol modelden yanasınız?\" sorusuna, şu cevabı vermiştir:\r\n\r\n\r\n\"Her ülke sosyalist modelini kendisi kurar. Sovyetlerin 70 yıldır yaşama geçmiş modelini kabul edemeyiz. Yüzde yüz bağımsızlıktır sosyalizm. Kişi bağımsızlığı, ülke bağımsızlığı, politik bağımsızlık, ekonomik bağımsızlık, özellikle de kültürel bağımsızlık... Sosyalizmin başka bir anlamı yok benim için. Bu çağa gelinceye kadar kültürler birbirlerini beslemişlerdir, yok etmemişlerdir. Oysa çağımızda, kültürler kültürleri yok etmek için, bilinçli olarak kullanılmışlardır, emperyalistler tarafından. Benim için dünya bin çiçekli bir kültür bahçesidir; bir çiçeğin bile yok olmasını, dünya için büyük bir kayıp sayarım.\"\r\n\r\n\r\nTİP\'ten ayrılan yazar, nedenini partinin niteliğini yitirmesine, bürokratların eline geçmesine ve emekçilerden kopmasına bağladı. Sovyetler Birliği çökmesinin, sosyalizmin de çökmesi değil, tam tersine dünya sosyalizminin zaferi olduğunu 1993\'teki bir söyleşisinde dile getirmiştir.\r\n\r\nTemalar\r\n\r\n\r\n« Halka kim zulmediyorsa, etmişse, halkı kim eziyor, ezmişse, onu kim sömürmüş, sömürüyorsa, feodalite mi, burjuvazi mi... Halkın mutluluğunun önüne kim geçiyorsa ben sanatımla ve bütün hayatımla onun karşısındayım. [...] Ben etle kemik nasıl biribirinden ayrılmazsa, sanatımın halktan ayrılmamasını isterim. Bu çağda halktan kopmuş bir sanata inanmıyorum. »\r\n\r\n\r\nYaşar Kemal\'im edebi çalışmalarında halka dönük bir düşünce hakim oldu ve bunu, bir yerde politik düşünce ile birleştirerek yürüttü. Yapıtlarıda halk şiirinde, epopelerde olduğu gibi insan değerlerinden kopmamaya çalıştı. Yaşar Kemal, siyasi görüşü ile sanatının paralel olduğunu, \"halk ve doğa\"ya inandığını, sanatının proletaryanın çıkarlarının emrinde olduğunu dile getirmiştir.', NULL, NULL, 5, '<br />\r\n  * 1955 Gazeteciler Cemiyeti Başarı Armağanı (“Dünyanın En Büyük Çiftliğinde Yedi Gün” adlı röportaj dizisi ile)<br />\r\n<br />\r\n  * 1956 Varlık Roman Armağanı (İnce Memed ile)<br />\r\n<br />\r\n  * 1966 İlhan İskender Armağanı (Teneke’den aynı adla uyarlanan oyunu ile)<br />\r\n<br />\r\n  * 1966 Uluslararası Nancy Tiyatro Festivali Birincilik Ödülü (“Teneke” oyunu ile)<br />\r\n<br />\r\n  * 1974 Madaralı Roman Armağanı (Demirciler Çarşısı Cinayeti ile)<br />\r\n<br />\r\n  * 1977 Fransa Eleştirmenler Sendikası En İyi Yabancı Roman Ödülü (Yer Demir Gök Bakır ile)<br />\r\n<br />\r\n  * 1978 Fransa’da En İyi Yabancı Kitap Ödülü (Ölmez Otu ile)<br />\r\n<br />\r\n  * 1979 Fransa “Büyük Jüri” En İyi Kitap Ödülü (Binboğalar Efsanesi ile)<br />\r\n<br />\r\n  * 1982 Uluslararası Cino Del Duca Ödülü<br />\r\n<br />\r\n  * 1984 Fransız Legion d’Honneur Ödülü Commandeur payesi<br />\r\n<br />\r\n  * 1984 TÜYAP Kitap Fuarı Halk Ödülü<br />\r\n<br />\r\n  * 1985 Sedat Simavi Vakfı Edebiyat Ödülü<br />\r\n<br />\r\n  * 1986 Orhan Kemal Roman Ödülü (Kale Kapısı ile)<br />\r\n<br />\r\n  * 1988 TÜYAP Kitap Fuarı Halk Ödülü<br />\r\n<br />\r\n  * 1988 Fransa Kültür Bakanlığı Commandeur des Arts et des Lettres Nişanı<br />\r\n<br />\r\n  * 1991 Fransa Strasbourg Üniversitesi Onur Doktorası<br />\r\n<br />\r\n  * 1992 11. TÜYAP Kitap Fuarı Onur Yazarı<br />\r\n<br />\r\n  * 1992 Antalya Akdeniz Üniversitesi Onur Doktorası<br />\r\n<br />\r\n  * 1993 Kültür Bakanlığı Büyük Ödülü<br />\r\n<br />\r\n  * 1994 Mülkiyeliler Birliği Rüştü Koray Armağanı<br />\r\n<br />\r\n  * 1995 Morgenavissen Jylaand-Pösten Ödülü (Danimarka)<br />\r\n<br />\r\n  * 1996 Türkiye Yayıncılar Birliği Düşünce Özgürlüğü Ödülü<br />\r\n<br />\r\n  * 1996 Kanın Sesi ile Akdeniz Yabancı Kitap Ödülü (Perpignan, Fransa)<br />\r\n<br />\r\n  * 1996 VIII Katalunya Uluslararası Ödülü (Barcelona, İspanya)<br />\r\n<br />\r\n  * 1996 Lillian Hellman/Dashiell Hammett Baskıya Karşı Cesaret Ödülü, İnsan Hakları İhlallerini İzleme Örgütü, New York<br />\r\n<br />\r\n  * 1997 Toplu eserleri için Premio Internazionale Nonino Ödülü, İtalya<br />\r\n<br />\r\n  * 1997 Kenne Vakfı Düşünce ve Söz Özgürlüğü Ödülü (Uppsala, İsveç)<br />\r\n<br />\r\n  * 1997 Norveç Yazarlar Birliği ödülü, Wole Soyinka ile ortak<br />\r\n<br />\r\n  * 1997 Frankfurt Kitap Fuarı Alman Yayıncalar Birliği Ödülü<br />\r\n<br />\r\n  * 1998 Frei Üniversitesi Berlin Fahri Doktora<br />\r\n<br />\r\n  * 1998 Bordeaux Yayıncılar Birliği Yabancı Edebiyat Ödülü<br />\r\n<br />\r\n  * 2002 Bilkent Üniversitesi Fahri Doktora<br />\r\n<br />\r\n  * 2003 Z. Homerus Şiir Ödülü<br />\r\n<br />\r\n  * 2003 Savanos Ödülü (Selanik)<br />\r\n<br />\r\n  * 2003 Türkiye Yayıncılar Birliği Yayıncılık Emek Ödülü.<br />\r\n<br />\r\n  * 2008 Cumhurbaşkanlığı Kültür ve Sanat Büyük ödülü<br />\r\n'),
('./uploads/images/nazımhran.jpg', 4, 'Nazım Hikmet ', 'RAN', '1902-01-15', 'Selanik-Osmanlı', NULL, NULL, '1963-06-03', 'Şair-Oyun Yazarı', '1902 yılında Selanik\'te doğdu. İlköğrenimini İstanbul\'da Göztepe Taşmektep, Galatasaray Lisesi ilk bölümü (1914) ve Nişantaşı Numune Mektebi\'nde tamamladı. Orta öğrenimi Heybeliada Bahriye Mektebi\'nda yaptı (1918). Bahriye\'yi bitirdikten sonra, Hamidiye Kruvazörü\'ne stajyer güverte subayı olarak verildi. Bir gece nöbetinde üşütüp zatülcem oldu (1919). Sağlığını kazanamayınca, askerlikten çürüğe çıkarıldı (1920).\r\n\r\nMillî Mücadele\'ye katılmak üzere Anadolu\'ya geçti. Bolu Lisesi\'nde kısa bir süre öğretmenlik yaptı (1921). Rus devrimiyle ilgilendi. Bir süre sonra Batum\'dan Moskova\'ya gitti. Doğu Üniversitesi\'nde ekonomi ve toplumbilim okudu (1922-1924). Yurda dönüşünden sonra Aydınlık dergisine katıldı. Burada çıkan şiirlerinden dolayı, hakkında mahkumiyet kararı verildiğini öğrenince, yeniden Rusya\'ya kaçtı. Af çıkması üzerine Türkiye\'ye döndü. Bir süre Hopa Cezaevi\'nde tutuklu kaldı (1928). \r\n\r\nDaha sonra İstanbul\'a yerleşti. Çeşitli gazetelerde ve film stüdyolarında çalıştı. İlk şiir kitaplarını çıkardı ve oyunlarını yazdı (1928-1932). Bir ara yine tutuklandı. Cumhuriyet\'in 10. yılı dolayısıyla çıkarılan af yasasıyla serbest bırakıldı. \r\n\r\nAkşam, Son Posta ve Tan gazetelerinde \'Orhan Selim\' takma adıyla fıkra yazarlığı ve başyazarlık yaptı (1933). \r\n\r\nKara Harp Okulu öğrencileri arasında propaganda yaptığı iddiasıyla yargılandı. Harp Okulu, Askeri Mahkemesi\'nce 15 yıl, ardından Donanma içinde faaliyette bulunduğu iddiasıyla da Donanma Komutanlığı Askeri Mahkemesi\'nce 20 yıl olmak üzere toplam 35 yıl hapis cezasına çarptırıldı. Cezası Türk Ceza Kanunu\'nun 68 ve 77 maddeleri uyarınca, 28 yıl dört aya indirildi (1938). \r\n\r\nDemokrat Parti\'nin iktidara gelmesinden sonra çıkarılan af yasası (1950) kapsamına alınması için açılan büyük bir kampanya başlatıldı. Bu arada hapishanede açlık grevine başladı. Sonunda geri kalan cezası affedildi.\r\n\r\nSerbest bırakıldıktan sonra hakkında askerlik kararı alındı. 50 yaşında, çok zor durumda kaldı. Kız kardeşinin kocası Refik Erduran\'ın yardımıyla bir motorla Karadeniz\'de seyreden Romanya bandıralı bir gemiye binerek Türkiye\'den kaçtı. Bundan sonraki hayatı, baskı altında ve zorunlu Sovyet propogandası yapmakla geçmiştir. 3 Haziran 1963 tarihinde Moskova\'da öldü. ', NULL, NULL, 0, '1902 yılında Selanik\'te doğdu. İlköğrenimini İstanbul\'da Göztepe Taşmektep, Galatasaray Lisesi ilk bölümü (1914) ve Nişantaşı Numune Mektebi\'nde tamamladı. Orta öğrenimi Heybeliada Bahriye Mektebi\'nda yaptı (1918). Bahriye\'yi bitirdikten sonra, Hamidiye Kruvazörü\'ne stajyer güverte subayı olarak verildi. Bir gece nöbetinde üşütüp zatülcem oldu (1919). Sağlığını kazanamayınca, askerlikten çürüğe çıkarıldı (1920).\r\n\r\nMillî Mücadele\'ye katılmak üzere Anadolu\'ya geçti. Bolu Lisesi\'nde kısa bir süre öğretmenlik yaptı (1921). Rus devrimiyle ilgilendi. Bir süre sonra Batum\'dan Moskova\'ya gitti. Doğu Üniversitesi\'nde ekonomi ve toplumbilim okudu (1922-1924). Yurda dönüşünden sonra Aydınlık dergisine katıldı. Burada çıkan şiirlerinden dolayı, hakkında mahkumiyet kararı verildiğini öğrenince, yeniden Rusya\'ya kaçtı. Af çıkması üzerine Türkiye\'ye döndü. Bir süre Hopa Cezaevi\'nde tutuklu kaldı (1928). \r\n\r\nDaha sonra İstanbul\'a yerleşti. Çeşitli gazetelerde ve film stüdyolarında çalıştı. İlk şiir kitaplarını çıkardı ve oyunlarını yazdı (1928-1932). Bir ara yine tutuklandı. Cumhuriyet\'in 10. yılı dolayısıyla çıkarılan af yasasıyla serbest bırakıldı. \r\n\r\nAkşam, Son Posta ve Tan gazetelerinde \'Orhan Selim\' takma adıyla fıkra yazarlığı ve başyazarlık yaptı (1933). \r\n\r\nKara Harp Okulu öğrencileri arasında propaganda yaptığı iddiasıyla yargılandı. Harp Okulu, Askeri Mahkemesi\'nce 15 yıl, ardından Donanma içinde faaliyette bulunduğu iddiasıyla da Donanma Komutanlığı Askeri Mahkemesi\'nce 20 yıl olmak üzere toplam 35 yıl hapis cezasına çarptırıldı. Cezası Türk Ceza Kanunu\'nun 68 ve 77 maddeleri uyarınca, 28 yıl dört aya indirildi (1938). \r\n\r\nDemokrat Parti\'nin iktidara gelmesinden sonra çıkarılan af yasası (1950) kapsamına alınması için açılan büyük bir kampanya başlatıldı. Bu arada hapishanede açlık grevine başladı. Sonunda geri kalan cezası affedildi.\r\n\r\nSerbest bırakıldıktan sonra hakkında askerlik kararı alındı. 50 yaşında, çok zor durumda kaldı. Kız kardeşinin kocası Refik Erduran\'ın yardımıyla bir motorla Karadeniz\'de seyreden Romanya bandıralı bir gemiye binerek Türkiye\'den kaçtı. Bundan sonraki hayatı, baskı altında ve zorunlu Sovyet propogandası yapmakla geçmiştir. 3 Haziran 1963 tarihinde Moskova\'da öldü. '),
('./uploads/images/artist_301370.jpg', 5, 'Yuval', 'Noah Harari ', '1976-02-24', 'İsrail', NULL, NULL, NULL, 'Yazar', 'Uluslararası çok satanlar listesine girmeyi başaran Profesör, Harari, Hayvanlardan Tanrılara adlı kolektif inceleme kitabının yazarıdır. 2002 yılında doktorasını Oxford\'da tamamlayan tarihçinin uzmanlık alanı Dünya Tarihidir. 2013 yılında görev aldığı Kudüs Hebrew Üniversitesinde dünyanın bir çok yerinden gelen 80.000\'den fazla öğrenciye ders vermiştir.', NULL, NULL, 0, 'Polonsky Prize for Creativity and Originality, in 2009 and 2012'),
('./uploads/images/Jean-Christophe-Grange_502.jpg', 6, 'Jean', 'Christophe Grange', '1961-07-15', 'Paris, Fransa', NULL, NULL, NULL, 'Yazar', 'Fransız yazar Jean-Christophe Grang&eacute; 15 Temmuz 1961&rsquo;de Paris&rsquo;te doğdu. Serbest gazeteci olarak &ccedil;eşitli haber ajansları ve gazeteler i&ccedil;in &ccedil;alıştı.<br />\r\n<br />\r\nLeyleklerin U&ccedil;uşu adlı ilk romanı 1994&#39;te yayımlandı. Bu kitap Fransa&#39;da 450.000 adet sattı ve sekiz b&ouml;l&uuml;ml&uuml;k bir TV dizisi haline getirildi.<br />\r\n<br />\r\nYazarın ikinci eseri T&uuml;rkiye baskısını Şubat 2001&#39;de yapan ve 20 dile &ccedil;evrilen Kızıl Nehirler&#39;di. Roman beyazperdeye taşındığında y&ouml;netmen koltuğundaMathieu Kassovitz, başrollerde ise Jean Reno ve Vincent Cassel yer aldı.<br />\r\n<br />\r\nGrang&eacute;&#39;ın &uuml;&ccedil;&uuml;nc&uuml; romanı Taş Meclisi, Eyl&uuml;l 2000&#39;de piyasaya &ccedil;ıktı ve Fransa&#39;da kısa s&uuml;rede 150.000 adet sattı. T&uuml;rkiye&#39;de Ağustos 2001&#39;de yayımlandı. 2006 yılında St&eacute;phane Cabel ve Guillaume Nicloux tarafından senaryolaştırılan kitap, Guillaume Nicloux y&ouml;netiminde sinemaya uyarlandı. Filmin oyuncu kadrosunda Monica Bellucci, Catherine Deneuve, Moritz Bleibtreu, Sami Bouajila, Elsa Zylberstein, Nicolas Thau, Tubtchine Bayaertu, Laurent Gr&eacute;villgibi g&uuml;&ccedil;l&uuml; isimler yer aldı.<br />\r\n<br />\r\n2001 yılında vizyonda yer bulan Vidocq filminin senaryosunu Pitof ile birlikte yazdı.<br />\r\n<br />\r\n2003 yılında Kurtlar İmparatorluğu&#39;nu yayımladı. Eser 2005 yılında Chris Nohan&#39;ın y&ouml;netmenliğinde beyazperdeye aktarıldı. Kurtlar İmparatorluğu&#39;ndaJean Reno&#39;nun yanı sıra Emre Kınay da yer aldı. Kitabın T&uuml;rkiye baskısı Temmuz 2003&#39;te yapıldı.<br />\r\n<br />\r\nGrang&eacute;&#39;ın bir yıl gibi kısa bir s&uuml;rede kaleme aldığı Siyah Kan ise Mayıs 2005&#39;te yaptığı ilk baskısı ile raflardaki yerini aldı.<br />\r\n<br />\r\nYazarın 2007 yılında yayımlanan eseri Şeytan Yemini T&uuml;rkiye&#39;de ilk baskısını Ağustos 2007&#39;de yaptı.<br />\r\n<br />\r\nSonraki kitabı Koloni, Ağustos 2009&#39;da T&uuml;rkiye&#39;de satışa &ccedil;ıktı.<br />\r\n<br />\r\nBir sonraki kitabı &Ouml;l&uuml; Ruhlar Ormanı, 2010 yılında T&uuml;rk okuyucularıyla buluştu.<br />\r\n<br />\r\nYazarın son kitabı ise 2011 yılında &ccedil;ıkan ve T&uuml;rkiye&#39;de de 2012 yazında satışa &ccedil;ıkmış olan Le Passager(Sisle Gelen Yolcu)isimli eserdir.<br />\r\n<br />\r\nBunların yanı sıra yazarın Zener&#39;in Laneti isimli bir &ccedil;izgi roman &ccedil;alışması da bulunmaktadır.', NULL, NULL, 5, ''),
('./uploads/images/Adam-fawer_120.jpg', 7, 'Adam', 'Fawer', '1970-08-08', 'New York, Amerika Birleşik Devletleri', NULL, NULL, NULL, 'Yazar', 'İlk romanı Olasılıksız, onsekiz dile &ccedil;evrilmiş ve en iyi ilk roman dalında 2006 International Thriller Writers &Ouml;d&uuml;l&uuml;n&uuml; kazanmıştır. 2008 Nisan ayında da ikinci kitabı olan Empati &ccedil;ıkmıştır. Empati, 2008 yılında Almanca, Japonca ve T&uuml;rk&ccedil;e yayımlanmıştır.<br />\r\n<br />\r\nFawer, Pennsylvania &Uuml;niversitesi&#39;nde lisans ve lisans&uuml;st&uuml; derecelerini tamamlamıştır. Stanford Graduate School of Business&#39;da MBA&#39;ini yapmıştır. Kariyeri esnasında Fawer; Sony Music, J.P. Morgan ve son olarak da About.com gibi t&uuml;rl&uuml; şirketler i&ccedil;in &ccedil;alışmıştır.', NULL, NULL, 5, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `bookName` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `originalName` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `pageNumber` int(11) DEFAULT NULL,
  `size` varchar(11) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fistDate` int(11) DEFAULT NULL,
  `firstPublisher` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `publisherId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `translatorId` int(11) DEFAULT NULL,
  `category` text COLLATE utf8_turkish_ci,
  `summary` text COLLATE utf8_turkish_ci,
  `frontcoverphoto` text COLLATE utf8_turkish_ci NOT NULL,
  `backcoverphoto` text COLLATE utf8_turkish_ci,
  `firstpagephoto` text COLLATE utf8_turkish_ci,
  `quotation` text COLLATE utf8_turkish_ci,
  `bookPoint` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `books`
--

INSERT INTO `books` (`bookId`, `bookName`, `language`, `originalName`, `pageNumber`, `size`, `fistDate`, `firstPublisher`, `publisherId`, `authorId`, `translatorId`, `category`, `summary`, `frontcoverphoto`, `backcoverphoto`, `firstpagephoto`, `quotation`, `bookPoint`) VALUES
(1, 'Olasılıksız', 'türkçe', 'Improbable', 475, '13,5 x 21', 2006, 'April Yayıncılık', 15, 7, NULL, 'Roman, Fantastik, Polisiye, Bilim-Kurgu, Edebiyat', 'Bir sabah, yıllardır görmediğiniz bir arkadaşınızı düşünerek uyandınız. Bir saat sonra, onunla sokakta karşılaştınız. Sizce bu sadece bir tesadüf mü, yoksa çok daha farklı bir anlamı olabilir mi? Siz hiç Loto\'da büyük ikramiyeyi kazanmadınız. Ama birileri kazanıyor. Hem de sürekli! Onlar sizden daha mı şanslılar?<br />\r\n<br />\r\nŞans nedir gerçekten? İçinizde bütün parayı kırmızıya yatırmanız gerektiğini söyleyen bir his var. Bu his bir öngörü müdür? Yoksa daha fazlası mı?<br />\r\n<br />\r\nYolda gidiyorsunuz. Kafanızı çevirip yandaki küçük parka baktınız ve bir anda bu anı daha önce de yaşamış olduğunuzu hissettiniz. Evet, Deja Vu. Sizce nedir Deja Vu; Geçmiş mi, rüya mı yoksa geleceği mi görüyorsunuz? Eğer siz de kontrolün kimde olduğunu merak ediyorsanız, OlasılıkSız tam size göre bir roman.. ', './uploads/images/olasiliksiz.jpg', NULL, NULL, NULL, '4.5'),
(3, 'Kongo\'ya Ağıt', 'türkçe', 'Congo Requiem', 608, '14 x 23', 2017, 'Doğan Kitap', 15, 6, NULL, 'Roman, Polisiye, Edebiyat', 'Bütün yollar cehenneme çıkıyor…<br />\r\n<br />\r\nAfrika’da, Floransa’da, Paris’te…<br />\r\n<br />\r\nDüşman aynı: Çivi Adam!<br />\r\n<br />\r\nİblisle son düello başlıyor!.. ', './uploads/images/kongo.jpg', NULL, NULL, NULL, '4.0'),
(4, 'Lontano', 'türkçe', 'Lontano', 656, '14 x 23', 2016, 'Doğan Kitap', 15, 6, NULL, 'Roman, Polisiye, Edebiyat, Korku-Gerilim', 'Jean-Christophe Grangé’den Kongo-Fransa-Belçika üçgeninde tüyler ürpertici, soluk soluğa bir kovalamaca.<br />\r\nOnlar ölümsüzlüğün sırrına vâkıf olanlardı.<br />\r\nİntikam hissiyle yanıp tutuşan, kötülüğün öncüleriydi.<br />\r\nZamanın ve mekânın ötesine geçebilenlerdi. Afrika’nın derinliklerinden getirdikleri<br />\r\nkara büyüleriyle aklın sınırlarını aşanlardı.', './uploads/images/lontano.jpg', NULL, NULL, NULL, '3.5'),
(5, 'Hayvanlardan Tanrılara Sapiens', 'türkçe', 'Sapiens: A Brief History of Humankind', 412, '14 x 23', 2015, 'Kolektif Kitap', 15, 5, NULL, 'Araştırma-İnceleme, Tarih, İnsan ve Toplum, Bilim-Teknoloji-Mühendislik', '- Homo sapiens neden ekolojik bir seri katile dönüştü?<br />\r\n- Para neden herkesin güvendiği tek şey?<br />\r\n- Kadınlar üstün sosyal becerilere sahipken, neden çoğu toplum erkek egemen?<br />\r\n- Güç elde etmekte böylesine yetenekli olan insanlar neden bu gücü mutluluğa dönüştürmekte başarısızlar?<br />\r\n- Geleceğin dini bilim mi?<br />\r\n- İnsanların miadı çoktan doldu mu?<br />\r\n<br />\r\n100 bin yıl önce Yeryüzü’nde en az altı farklı insan türü vardı. Günümüzdeyse sadeceHomo Sapiens var. Diğerlerinin başına ne geldi ve bize ne olacak?<br />\r\n<br />\r\nÇoğu çalışma insanlığın serüvenini ya tarihi ya da biyolojik bir yaklaşımla ele alır, ancak Harari 70 bin yıl önce gerçekleşen Bilişsel Devrim’le başlattığı bu kitabında gelenekleri yerle bir ediyor.<br />\r\n<br />\r\nİnsanların küresel ekosistemde oynadıkları rolden imparatorlukların yükselişine ve modern dünyaya kadar pek çok konuyu irdeleyen Sapiens, tarihle bilimi bir araya getirerek kabul görmüş anlatıları yeniden ele alıyor.<br />\r\n<br />\r\nHarari ayrıca geleceğe bakmaya da zorluyor okuru. Yakın zamanda insanlar, dört milyar yıldır yaşama hükmeden doğal seçilim yasalarını esnetmeye başladılar. Artık sadece dünyayı değil, kendimizi ve diğer canlıları tasarlama becerisi de kazandık. Peki bu bizi nereye götürüyor, bizi neye dönüştürebilir?<br />\r\n<br />\r\n30’dan fazla dile çevrilmiş bu kışkırtıcı çalışma özellikle Jared Diamond, James Gleick, Matt Ridley ve Robert Wright’ın eserlerine aşina okurlar için muhteşem bir kaynak.<br />\r\n<br />\r\n“Sapiens, tarihin ve modern dünyanın en büyük sorularını gayet yalın bir dille ele alıyor. Çok seveceksiniz!”<br />\r\nJared Diamond, Tüfek, Mikrop ve Çelik’in yazarı<br />\r\n<br />\r\n“Harari’nin eseri kabul görmüş doktrinlerin karşısında duran fikirler ve şaşırtıcı gerçeklerle bezeli.”<br />\r\nJohn Gray, Financial Times', './uploads/images/sapiens.jpg', NULL, NULL, NULL, '3.5'),
(6, 'Taht Oyunları ', 'türkçe', 'A Game of Thrones', 240, '13,5 x 21', 2013, 'Akılçelen Kitaplar', 15, 1, NULL, 'Çizgi-Roman', 'Entrika,baştan &ccedil;ıkarma,ihanet<br />\r\nYedi aile bir taht<br />\r\nOlağan&uuml;st&uuml; &ccedil;izgilerle<br />\r\nA Game Of Thrones: Taht Oyunları<br />\r\nBaşlıyor... <br />\r\n<br />\r\nA Game of Thrones: Taht Oyunları, George R. R. Martin ve fantastik romanların bir başka ustası Daniel Abraham tarafından romanın aslına sadık kalınarak uyarlandı ve Tommy Patterson&#39;un olağan&uuml;st&uuml; &ccedil;izgileriyle g&ouml;rsel bir ş&ouml;lene d&ouml;n&uuml;şt&uuml;r&uuml;ld&uuml;.<br />\r\n<br />\r\nHer karesi bir poster niteliğinde olan &ccedil;izgilerle A Game of Thrones: Taht Oyunları&#39;nı keyifle okuyacak ve kitaplığınızda yıllarca saklayacaksınız.<br />\r\n<br />\r\nA Game of Thrones: Taht Oyunları hayranları ve &ccedil;izgi roman hayranları i&ccedil;in tam bir hazine. ', './uploads/images/got.jpg', NULL, NULL, NULL, '2.0'),
(7, 'Kurak', 'türkçe', 'The Dry', 360, '13,5 x 21', 2017, 'İthaki Yayınları', 16, 2, NULL, 'Roman, Polisiye, Edebiyat', 'Büyük sırlarla dolu küçük bir kasabada umutsuz bir arayış.<br />\r\nAmazon › Ayın En İyi Kitabı, Ocak 2017<br />\r\nVictorian Premier Edebiyat › En İyi Kitap Ödülü<br />\r\nAvustralya Kitap Endüstrisi › En İyi Kitap Ödülü<br />\r\nIndie Kitap › En İyi Çıkış Kitabı Ödülü › Yılın Kitabı Ödülü<br />\r\n <br />\r\nLuke Hadler’ın namlusunun ucunda önce karısı ve çocuğu, ardından da kendisi var. Kiewarra’nın tarım topluluğu her gün ölüm kalım meseleleriyle karşı karşıya. İçlerinden biri, olur da bu yükün altından kalkamazsa…<br />\r\nOnu yirmi yıl önce reddetmiş insanlardan dolayı federal dedektif Aaron Falk cenaze törenleri için Kiewarra’ya dönme konusunda isteksizdi. Ancak dedektiflik hünerleri, Hadler davasıyla ilgili gerçeklerden ve bu cinayet-intihar vakasından şüphe duymasına neden olmuştu.<br />\r\nFalk ölümleri daha derinlemesine araştırdıkça eski yaralar da açılmaya başlıyor: Falk ve çocukluk arkadaşı Luke’un paylaştığı, Falk’un uzun zaman önce unutulduğuna inandığı, Luke’un ölümüyle ortaya çıkmaya başlamış olan bir sır…<br />\r\n <br />\r\n“Sıcağı hissedecek ve toprağı tadacaksınız. Kurak, güneşte kavrulmuş bir kasabanın en sıcak köşesine ışık tutan harikulade bir suç romanı.” –Michael Robotham<br />\r\n“Okuduğum en iyi romanlardan biri. Avustralya’nın yakıcı sıcağını hissedebiliyordum. Her bir sözcüğü mükemmele yakın. Anlatı, bildiğinizi sandığınız her şeyi dev bir dalga misali yıkarcasına silip atıyor. Bu romanı okuyun!” –David Baldacci<br />\r\n “Nefes kesici bir roman. Anında kapılacaksınız. Her sayfa yeni bir sırrı açığa çıkaracak.”<br />\r\n-The New York Times-', './uploads/images/kurak.jpg', NULL, NULL, NULL, '4.0'),
(9, 'İnce Memed 1', 'Türkçe', 'İnce Memed 1', 436, '13,5 x 21', 2016, 'Yapı Kredi Yayınları', 17, 3, NULL, 'Roman', 'Otuz iki yıllık bir zaman diliminde yazılan İnce Memed dörtlüsü düzene başkaldıran Memed\'in ve insan ilişkileri, doğası ve renkleriyle Çukurova\'nın öyküsüdür. Yaşar Kemal\'in söyleyişiyle \'\'içinde başkaldırma kurduysa doğmuş\'\' bir insanın, \'\'mecbur adam\'\'ın romanı.<br /> <br /> Abdi Ağa\'nın zulmüyle köyünü terk etmek zorunda kalan Memed, Ağa\'nın yeğeniyle evlendirilmek üzere olan Hatçe\'yi kaçırır. Abdi Ağa\'yı yaralayan, yeğenini de öldüren Memed eşkıya Deli Durdu\'ya katılır, ancak kıyıcılığına katlanamadığı Deli Durdu\'dan iki arkadaşıyla birlikte ayrılır. Memed, sıradan bir köy çocuğuyken, zulmedenler için eşkıyaya, köylüler içinse bir kurtarıcıya dönüşür. <br />', './uploads/images/incememed1.jpg', NULL, NULL, 'Konuşan insan, öyle kolay kolay dertten ölmez. Bir insan konuşmadı da içine gömüldü müydü, sonu felakettir.', '4.7'),
(10, 'İnce Memed 2', 'Türkçe', 'İnce Memed 2', 459, '13,5 x 21', 2016, 'Yapı Kredi Yayınları', 17, 3, NULL, 'Roman', 'Öldürülen Abdi Ağa\'nın yerini kardeşi Hamza alır. Memed, topraklarını ele geçirmek için Vayvay köylülerine zulmeden Ali Safa Bey\'i ve Hamza\'yı öldürür. Ancak köylüler için tam bir efsaneye dönüşmesine rağmen zulmedenlerin öldürmekle bitmeyeceği konusunda kuşku duymaya başlar. Abdi Ağa gitmiş, yerine Hamza gelmiştir, onun yerini de bir başkası alacaktır. ', './uploads/images/incememed2.jpg', NULL, NULL, 'Bu dünya böyledir. Sular hedefine dolar. İnsanlar doğar ölür,gün doğar batar. Ağaçlar büyür çürür. Sular akar,bulut ağar. Ağayı öldürürsün,ağa gelir yerine. Bir daha öldürürsün,bir daha gelir.', '3.8'),
(11, 'İnce Memed 3', 'Türkçe', 'İnce Memed 3', 629, '13,5 x 21', 2016, 'Yapı Kredi Yayınları', 17, 3, NULL, 'Roman-Edebiyat', '\r\nİnce Memed, Ali Safa’yı ve Kel Hamza’yı öldürdükten sonra atını dağlara sürer. Ali Safa bey’in ölüsü kokar. Bütün ağalar ve kasaba eşrafı kasabada toplanır. Zülfü, küçük bir kasabada tapucudur. Arif Saim Bey’le arası iyidir, tarlalar alır, çeşitli meyveler yetiştirir, yetiştirdiklerini Ankara’dakilere göstermek ister.\r\nMurtaza Ağa’yı, İnce Memed korkusu sarar; A. Sami Bey’den habersiz, Ankara’ya bir sürü tel çeker. Murtaza, Topal Ali’nin, İnce Memed’in adamı olduğundan şüphelenmektedir. Murtaza, Topal Ali’yi giydirir, kuşatır, onun, kendisine yakın olmasını sağlamaya çalışır, ama içinde bir şüphe vardır. Ölüsü, bütün kasabayı kokutan Ali Safa Bey gömülür.\r\nJandarmalar, İnce Memed’in peşine düşer. Yüzbaşı Faruk ve Kertiş Ali, yaylada çobanlık eden Müslüm ile karşılaşır. Müslüm’ü falakaya yatırırlar, Memed’in yerini öğrenirler. Jandarmalar İnce Memed’in etrafını çevirirler. Kızıl Atı yüzbaşı da vuramaz.', './uploads/images/incememed3.jpg', NULL, NULL, 'Aldırma, üzülme, insan olanın başına akla gelmedik iyilik de gelir, kötülük de... İnsan olanın başına her türlü alçaklık da gelir, yiğitlik de. İnsan, insandan her şeyi beklemeli...', '4.2'),
(12, 'İnce Memed 4', 'Türkçe', 'İnce Memed 4', 648, '13,5 x 21', 2015, 'Yapı Kredi Yayınları', 17, 3, NULL, 'Roman-Edebiyat', '  Torosların tasviri. Memed’in, yılanı öldürmesi, candarmalarla çatışma. Müslüm’le Memed’in buluşması. Murtaza’nın korkusu. Yüzbaşı Faruk’ın Memed’i araması, bulamaması.\r\n    İnce Memed, saklandıkları söğütlükte çevrildikerini anlar. Müslüm’le, yılan dolu gecede bir köye gelirler. Zeynep Bacı’nın evine. Bütün köyler, Memed’in peşindedirler. Zeynep’in oğlu da. Zeynep Bacı, Memed’in peşine düşen köylülere  kızmaktadır. Memed’i de onlardan biri sanır. Memed, yüzüğünü gösterir. Zeynep de Ona inanır, kurbanlar keser. Memed’i kovalayan köylü tuhaftır, sevinç içinde Memed’i bağrına basarlar.\r\n    Murtaza korkudan uyuyamaz, Deli Rüstem’e gider, Ondan Topla Ali’yi öldürmesini ister, çünkü Memed, Mahmut’u öldürürken “seni Topal Ali’ye havale ediyorum.” Demiştir. Deli Rüstem teklifi kabul etmez. Taşkın Halil Bey, Murtaza’yı çağırır, İnce Memed üzerine konuşurlar. İnce Memed’in atı üzerine 1500 lira ödül koyarlar, ödül sonradan 3000 liraya çıkacaktır. Kambur Ahmet, her yere tellal gider, Sami Turgut ilanları dağıtır.\r\n    Memed ve Müslüm, Ferhat Hoca’nın arkadaşı Abdülselam Hoca’nın köyüne giderler. A. Hoca, Memed’i köylüye yeğeni olarak tanıtır. Zeynullah’ın dükkanı bütün dedikoduların yayıldığı bir mekandır, bu dükkanda her şey vardır. Kebapçı dükkanında bir adam, Memed’i tanır, adam kaçar, Memed, adamı yakalayamaz, zaman zaman bu adam Memed’e görünmeye devam edecektir…', './uploads/images/incememed4.jpg', NULL, NULL, 'Zor,dedi gülerek Dursun Dede.İnsan olmak çok zor sultanım. Dünyada çok şey kolay da, insan olmak zor.', '4.9'),
(13, 'Kuşlar da Gitti', 'Türkçe', 'Kuşlar da Gitti', 79, '13,5 x 21', 2003, 'Yapı Kredi Yayınları', 17, 3, NULL, 'Roman-Edebiyat', 'Her yıl ekim ayı gelince insanlar Florya düzlüğüne gelir, ağlarını gerer, çadırlarını kurar ve tuzaklarını hazırlarlar. Kuşları avlamak için adeta birbirleriyle yarışa girişirler. Kafeslerin içi sarılı, kırmızılı, mavili kuşlarla ağzına kadar dolar. Eskiden insanlar yakaladıkları bu kuşları kiliselerin, sinagogların, camilerin önünde “azat buzat beni cennet kapısında gözet” diyerek satarlarmış. Ancak zamanla bu adet ortadan kalkar. Yakalanan kuşlar zar zor Eminönü’ndeki kuş pazarlarında satılır olur.', './uploads/images/ykkuslardagitti.jpg', NULL, NULL, '...böyle bir tek söz bile söylemeden gitmek de,sırtını dönüp gitmek de neyin nesi?', '3.1'),
(14, 'Henüz Vakit Varken Gülüm', 'Türkçe', 'Henüz Vakit Varken Gülüm', 112, '13,5 x 21', 2013, 'Yapı Kredi Yayınları', 17, 4, NULL, 'Şiir', 'Henüz vakit varken, gülüm, Paris yanıp yıkılmadan, henüz vakit varken, gülüm, yüreğim dalındayken henüz, ben bir gece, şu Mayıs gecelerinden biri Volter Rıhtımı\'nda dayayıp seni duvara öpmeliyim ağzından sonra dönüp yüzümüzü Notrdam\'a çiçeğini seyretmeliyiz onun, birden bana sarılmalısın, gülüm, korkudan, hayretten, sevinçten ve de sessiz sessiz ağlamalısın, yıldızlar da çiselemeli incecikten bir yağmurla karışarak.\r\nHenüz Vakit Varken Gülüm kitabı Hiç unutamayacağım dediğimiz kitaplar listesinde yer almaktadır.', './uploads/images/VakitVarkenGulumNHR.jpg', NULL, NULL, 'Sende ben, imkansızlığı seviyorum,\r\nFakat asla ümitsizliği değil...', '2.4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`) VALUES
(1, 'Roman'),
(2, 'Roman'),
(3, 'Çizgi Roman'),
(4, 'Çizgi Roman'),
(5, 'asdf'),
(6, 'aaaaa');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `commentType` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `cdata` text COLLATE utf8_turkish_ci NOT NULL,
  `ctime` int(100) NOT NULL,
  `checkComment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`commentId`, `userId`, `commentType`, `cdata`, `ctime`, `checkComment`) VALUES
(1, 1, 'likes', 'asdfghbvcxz', 1500986896, 16),
(2, 1, 'likes', 'asdfghbvcxaqwerfvc', 1500986895, 16),
(3, 9, 'share', 'asdfvcx', 1500986894, 12),
(4, 9, 'xx', 'szdxcfgvbnm', 1500986893, 0),
(5, 55, '', 'asdfgbbfdsaASD', 1500986889, 0),
(6, 23, 'ASDFFGDFD', 'ASDFGsdfdffdf', 1500986891, 0),
(7, 22, 'sdvfdsa', 'asdfvfbvcvx', 1500986892, 0),
(12, 89, 'shares', 'şlkjh', 1500986872, 15),
(13, 77, 'lkjhgf', 'lkjhgfe', 1500986883, 0),
(14, 78, 'images', 'sddd', 1500986881, 0),
(15, 79, 'books', 'aaaaa', 1500986879, 0),
(16, 80, '2', 'lale', 1500986877, 0),
(17, 81, '20', 'joker', 1500986875, 0),
(18, 82, '5', 'eskovar', 1500986874, 0),
(21, 43, 'aa', 'aaaa', 1500986890, 0),
(22, 69, 'ee', 'eeee', 1500986886, 0),
(23, 66, '', 'eewewewdwewdwd', 1500986887, 0),
(24, 73, 'wsws', 'swsw', 1500986884, 0),
(25, 60, 'kitap', 'yazar', 1500986888, 0),
(26, 70, 'yazar', 'kitap', 1500986885, 0),
(27, 77, 'ccc', 'cccccccccc', 1500986882, 0),
(28, 78, 'vvvvvvv', 'vvvvvvvvv', 1500986880, 0),
(29, 88, 'www', 'wwwww', 1500986873, 0),
(30, 79, 'aaaaaaaaaaa', 'aaaaaa', 1500986878, 0),
(31, 80, 'fvndfvdf', 'bvjnvkdf', 1500986876, 0),
(32, 91, 'sharebook', 'Güzel kitap öneririm.', 1501571513, 3),
(33, 78, '', '', 0, 0),
(40, 78, 'likes', '[object HTMLInputElement]', 1501663428, 16),
(41, 78, 'likes', 'arda', 1501663593, 16),
(42, 78, 'likes', 'bbb', 1501663654, 16),
(43, 78, 'likes', '123123123', 1501663665, 16),
(44, 78, 'likes', 'rrrr', 1501664242, 16),
(45, 78, 'likes', 'tttt', 1501664545, 16),
(46, 78, 'likes', 'hocam', 1501664752, 30),
(47, 78, 'likes', 'hocam', 1501664752, 16),
(48, 78, 'likes', 'Hocam merhaba', 1501665570, 30),
(49, 78, 'likes', 'Hocam merhaba', 1501665570, 16),
(50, 78, 'likes', 'Hocam merhaba!!!!!!', 1501665583, 16),
(51, 78, 'likes', 'Hocam merhaba!!!!!!', 1501665583, 30),
(52, 78, 'likes', '', 1501670713, 30),
(53, 78, 'likes', '', 1501670714, 16),
(54, 78, 'likes', 'yorum oldu', 1501670848, 30),
(55, 78, 'likes', 'yorum oldu', 1501670848, 16),
(56, 78, 'likes', 'deneme', 1501671813, 16),
(57, 78, 'likes', 'deneme', 1501671813, 30),
(58, 78, 'likes', 'arda', 1501672647, 16),
(59, 78, 'likes', 'sadi', 1501672654, 30),
(60, 78, 'likes', 'id', 1501672931, 30),
(61, 78, 'likes', 'hacı', 1501672976, 16),
(62, 78, 'likes', 'kardeşim ol artık', 1501673085, 30),
(63, 78, 'likes', 'kadir', 1501673109, 31),
(64, 78, 'likes', 'deneeee', 1501673312, 31),
(65, 78, 'likes', 'Sadi Evren Şeker', 1501673718, 30),
(66, 78, 'likes', 'Daredevil', 1501673730, 31),
(67, 78, 'likes', 'dodododododododododo', 1501673741, 16),
(68, 78, 'likes', 'ramazan', 1501675168, 29),
(69, 78, 'quatations', 'undefined', 1501675173, 23),
(70, 78, 'quatations', 'saddsd', 1501675399, 23),
(71, 78, 'quatations', 'yasda', 1501675445, 23),
(72, 78, 'quatations', 'yasda', 1501675447, 23),
(73, 78, 'quatations', 'yasda', 1501675448, 23),
(74, 78, 'quatations', 'yasda', 1501675448, 23),
(75, 78, 'quatations', 'kas', 1501675487, 23),
(76, 78, 'likes', 'kads', 1501675505, 31),
(77, 78, 'sharebook', 'Valla', 1501675518, 3),
(78, 78, 'shares', 'baba', 1501675548, 25),
(79, 78, 'likes', '', 1501676063, 30),
(80, 78, 'likes', 'ol artık', 1501676170, 30),
(81, 78, 'quatations', 'alıntı', 1501676181, 23),
(82, 78, 'quatations', 'deneme', 1501676227, 23),
(83, 78, 'likes', 'sonn', 1501676378, 30),
(84, 78, 'likes', 'bababaa', 1501676667, 31),
(85, 78, 'likes', 'dede', 1501676675, 31),
(86, 78, 'likes', 'selam', 1501678700, 31),
(87, 78, 'books', 'olasılısıza yorum yaptım', 1502453986, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `likes`
--

CREATE TABLE `likes` (
  `likeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `likeType` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `checkId` int(11) NOT NULL,
  `time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `likes`
--

INSERT INTO `likes` (`likeId`, `userId`, `likeType`, `checkId`, `time`) VALUES
(2, 78, '0', 4, 1502450737),
(33, 78, '0', 3, 1502453666);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lists`
--

CREATE TABLE `lists` (
  `listId` int(11) NOT NULL,
  `listName` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `startingDate` int(11) DEFAULT NULL,
  `listTag` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `finishingDate` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `books` text COLLATE utf8_turkish_ci NOT NULL,
  `listType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `lists`
--

INSERT INTO `lists` (`listId`, `listName`, `startingDate`, `listTag`, `finishingDate`, `userId`, `books`, `listType`) VALUES
(7, 'Yeni Basladiklarim', 1500986896, NULL, 1500986950, 78, '1,3,4,5', 0),
(8, 'Okumak istediklerim', 1500986898, NULL, 1500986975, 78, '7,3,4,5', 0),
(11, 'Okuduklarim', 1500986900, NULL, 1500986999, 78, '1,5,6', 1),
(13, 'ramazan', 1234567891, '4', 1234569875, 92, '1,3,5,10', 0),
(14, 'Okuduklarim', 1500986950, NULL, 1500986950, 92, '3,4,7,10', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `point`
--

CREATE TABLE `point` (
  `id` int(11) NOT NULL,
  `pointId` int(11) NOT NULL,
  `pointType` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `point`
--

INSERT INTO `point` (`id`, `pointId`, `pointType`, `userId`, `point`, `time`) VALUES
(1, 1, 0, 93, 5, 1501749252),
(2, 2, 0, 1, 3, 1501749459),
(3, 1, 1, 92, 4, 1501749677),
(4, 1, 0, 91, 2, 1501749702),
(5, 5, 0, 78, 2, 1501858215),
(6, 7, 0, 78, 4, 1501858238),
(7, 6, 0, 78, 2, 1501858260),
(8, 3, 0, 78, 5, 1501858347),
(9, 5, 0, 92, 5, 1502087306),
(10, 3, 0, 92, 3, 1502087326);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `publishers`
--

CREATE TABLE `publishers` (
  `publisherAvatar` text COLLATE utf8_turkish_ci NOT NULL,
  `publisherId` int(11) NOT NULL,
  `publisherName` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `establish` date DEFAULT NULL,
  `address` text COLLATE utf8_turkish_ci,
  `bookCategory` text COLLATE utf8_turkish_ci NOT NULL,
  `about` text COLLATE utf8_turkish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `publishers`
--

INSERT INTO `publishers` (`publisherAvatar`, `publisherId`, `publisherName`, `establish`, `address`, `bookCategory`, `about`) VALUES
('./uploads/images/der.gif', 15, 'DER YAYINLARI', '2017-08-02', 'Ahi Evran Cad. No: 4 34398 Maslak ISTANBUL', 'macera,bilim,sanat', 'Hakkında'),
('./uploads/images/ithaki.jpg', 16, 'İthaki Yayınları', '1997-01-01', 'Caferağa Mahallesi, Neşe Sokağı No:31, 34846 Kadıköy/İstanbul', 'Macera,Roman,Bilim,Sanat', '1997 yılında kurulan ve 2017 itibariyle 1.000\\\\ den fazla kitap yayımlamış olan İthaki Yayınları, Türkiye’nin en büyük on yayınevinden biri. Fantastik edebiyat ve bilimkurgu türlerinde zirvedeki yerini kimseye kaptırmayan İthaki, çağdaş edebiyat, felsefe, tarih, siyaset kuramı, edebiyat eleştirisi, çocuk kitapları, futbol kitapları, dünya klasikleri ve çizgi roman gibi alanlarda önemli eserler yayınlayarak yerini sağlamlaştırıyor. Alan Moore, Neil Gaiman, Iain M. Banks, Arthur C. Clarke, Isaac Asimov, Thomas Pynchon, Boris Vian, Edgar Allan Poe, Ray Bradbury, Hermann Broch, Ursula K. Le Guin, Aldous Huxley, J. R. R. Tolkien, Harold Bloom; Kemal Tahir, Yılmaz Güney, Mehmed Uzun gibi isimlerin kitaplarını kataloğuna ekleyen İthaki Yayınları, önümüzdeki yıllarda da değişik türlerden ve ilgi alanlarından önemli eserleri yayınlamaya devam edecek\r\n\r\n \r\n\r\n \r\n\r\nEstablished 1997 in Istanbul, Ithaki (it comes from Homer\\\\ s Ithaca) is a publisher of fiction and non-fiction books. Ithaki is one of the most successful science fiction and fantasy publisher in Turkey and it is amongst ten leading publishing houses in the market. As of 2017, Ithaki has published more than 1.000 books and it secures its position by publishing genres such as Contemporary Literature, Philosophy, History, Literary Criticism, Political Theory, Children\\\\ s Books, World Classics, Football Books, Comics, etc… Some of the significant names whose books being published by Ithaki are Alan Moore, Neil Gaiman, Iain M. Banks, Arthur C. Clarke, Isaac Asimov, Thomas Pynchon, Boris Vian, Edgar Allan Poe, Mircea Eliade, Ray Bradbury, Hermann Broch, Ursula K. Le Guin, Aldous Huxley, J. R. R. Tolkien, Harold Bloom and many others.\r\n\r\nIthaki will continue to publish essential works from different genres and interests in the future years.'),
('./uploads/images/yapikrediy.png', 17, 'Yapı Kredi Yayınları', '1992-08-09', 'Yapı Kredi Kültür Sanat\r\nİstiklal Caddesi No: 161 \r\n34433, Beyoğlu / İstanbul', 'Sosyoloji-Sağlık Tarih Şiir Sanat Roman Deneme ', '<p>Yapı Kredi k&uuml;lt&uuml;r ve sanata verdiği &ouml;nemin, g&ouml;sterdiği ilginin bir meyvesi olan Yapı Kredi Yayınları (YKY) 1945 yılında &quot;Doğan Kardeş&quot; dergisi ve yayınlarıyla başlayan k&ouml;kl&uuml; bir yayıncılık geleneğinin g&uuml;n&uuml;m&uuml;zdeki temsilcisi, T&uuml;rk yayıncılığının en b&uuml;y&uuml;k ve en etkili kuruluşlarından biridir. T&uuml;rkiye&rsquo;den ve d&uuml;nyadan titizlikle se&ccedil;ilmiş yapıtları okurlarına sunmayı ama&ccedil;layan YKY, edebiyattan sanata, &ccedil;izgi romandan tarihe, felsefeden yemek kitaplarına farklı alanlardan kitapları ve s&uuml;reli yayınlarıyla okur, yazar, &ccedil;evirmen t&uuml;m &ldquo;kitap insanları&rdquo; i&ccedil;in ayrıcalıklı bir yayınevidir. YKY&rsquo;nin pek &ccedil;ok alanı kapsayan geniş yayın yelpazesindeki kitaplara bakmadan, bu kitaplardan yararlanmadan, artık sadece T&uuml;rk edebiyatına değil, d&uuml;nya edebiyatına, sanatına ve felsefesine ilişkin bir araştırma yapmak m&uuml;mk&uuml;n değildir.</p>\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quatations`
--

CREATE TABLE `quatations` (
  `quatationId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `qdata` text COLLATE utf8_turkish_ci NOT NULL,
  `time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `quatations`
--

INSERT INTO `quatations` (`quatationId`, `bookId`, `userId`, `qdata`, `time`) VALUES
(1, 1, 47, 'sadfgfhjklö', 1500986846),
(2, 3, 26, '<dzfghjkl', 1500986845),
(3, 1, 92, 'Kararlar doğru veya yanlış değildir. Kararlar karardır. Sen, sana göre en iyisini seç.', 1500986844),
(4, 3, 84, 'ıdjıuwhduyweh', 1500986843),
(5, 1, 43, 'dssfghjklş', 1500986842),
(6, 3, 68, 'zfgdhjklş', 1500986841),
(7, 3, 9, 'abcabc', 1500986840),
(8, 6, 92, 'Güç, siz nerede olduğuna inanıyorsanız oradadır lordum. Ne eksik ne fazla.', 1500986839),
(9, 5, 63, 'sdfghbvc', 1500986838),
(11, 5, 59, 'wertgfd', 1500986836),
(12, 1, 90, 'Gelecek, onu görene kadar şekilsizdir. Bir parayı havaya attığında iki olası gelecek vardır, birinde para yazı gelir, diğerinde tura, ama sen görene kadar ikisi de değildir.', 1500986835),
(13, 1, 77, 'selam', 1500986834),
(14, 3, 78, 'ali', 1500986833),
(15, 1, 81, 'ayse', 1500986832),
(16, 4, 82, 'mehmetali', 1500986831),
(17, 5, 79, 'mavi', 1500986830),
(18, 1, 80, 'lale', 1500986829),
(21, 5, 77, 'ali', 1500986826),
(22, 3, 82, 'kitap', 1551968940),
(23, 7, 78, 'Birilerinin yasattıgı hayal kırıklıgı baskalarına tanınacak şansların katili olur.', 1501486399),
(25, 7, 92, 'Güçlüymüş gibi görünmeye çalışmak insanın bütün gücünü tüketir.', 1502086468);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sharebook`
--

CREATE TABLE `sharebook` (
  `sharebookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `time` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sharebook`
--

INSERT INTO `sharebook` (`sharebookId`, `userId`, `bookId`, `time`) VALUES
(1, 78, 6, 1500986851),
(2, 95, 1, 1501241024),
(3, 90, 7, 1501241050),
(4, 78, 5, 1501848409),
(5, 78, 3, 1501858344),
(12, 78, 5, 1502085965),
(13, 92, 5, 1502086423),
(14, 78, 14, 1502448748),
(15, 78, 7, 1502450936);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shares`
--

CREATE TABLE `shares` (
  `shareId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `time` int(100) NOT NULL,
  `sdata` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `shares`
--

INSERT INTO `shares` (`shareId`, `userId`, `time`, `sdata`) VALUES
(3, 1, 1500986825, 'asdftyuşlkjhgfdsdfghjkkjhgf'),
(4, 3, 1500986824, 'sdfghjklşçömnbvc'),
(5, 23, 1500986823, 'dfsghjklşi'),
(6, 79, 1500986822, 'sdafghjklş'),
(7, 3, 1500986821, 'dsfghjk'),
(8, 45, 1500986820, 'dsfghjkj'),
(9, 1, 1500986819, 'sdfghjkl'),
(10, 3, 1500986818, 'sdrtyj\r\n'),
(11, 6, 1500986817, 'sdfgh'),
(12, 42, 1500986816, 'sdfgh\r\n'),
(13, 23, 1500986815, 'sfg'),
(14, 32, 1500986814, 'sdfg\r\n'),
(15, 78, 1500986813, 'dada'),
(16, 77, 1500986812, 'ffff'),
(19, 79, 1500986811, 'sdfghjk\r\n'),
(20, 80, 1500986810, 'lkjhgfds'),
(21, 81, 1500986809, 'ölmkjhgfcvbn'),
(22, 82, 1500986808, 'çönbvdrtyj'),
(24, 77, 1500986807, 'edrfggvcf'),
(25, 78, 1500986806, 'rfgvbvf'),
(26, 79, 1500986805, 'AASDFG'),
(27, 80, 1500986804, 'jhgfd'),
(29, 1, 1500986802, 'alimebi'),
(30, 82, 1500986801, 'mavi'),
(31, 89, 1500986896, 'siyah'),
(32, 92, 1500986899, 'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.'),
(33, 76, 1500986898, 'dadada'),
(34, 85, 1500986899, 'xwqqwxq');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `translators`
--

CREATE TABLE `translators` (
  `translatorId` int(11) NOT NULL,
  `translatorName` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `translatorSurname` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `avatar` text COLLATE utf8_turkish_ci,
  `userId` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `userName` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `followers` text COLLATE utf8_turkish_ci,
  `password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `birthPlace` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `education` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `job` text COLLATE utf8_turkish_ci,
  `hobby` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phobia` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `team` varchar(30) COLLATE utf8_turkish_ci DEFAULT NULL,
  `religion` text COLLATE utf8_turkish_ci,
  `adress` text COLLATE utf8_turkish_ci,
  `colour` text COLLATE utf8_turkish_ci,
  `number` int(50) DEFAULT NULL,
  `food` text COLLATE utf8_turkish_ci,
  `art` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `sport` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `car` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `introduce` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `relitionship` text COLLATE utf8_turkish_ci,
  `favoriteAuthor` text COLLATE utf8_turkish_ci,
  `userType` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`avatar`, `userId`, `name`, `surname`, `userName`, `mail`, `followers`, `password`, `gender`, `birthPlace`, `birthDate`, `education`, `job`, `hobby`, `phobia`, `team`, `religion`, `adress`, `colour`, `number`, `food`, `art`, `sport`, `car`, `introduce`, `relitionship`, `favoriteAuthor`, `userType`) VALUES
('./uploads/images/user.jpg', 1, 'Ahmet', 'Çam', 'ahmet', 'abc@abc.com', '90,91,92', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 3, 'Arda', 'askdsa', 'sadad', 'kasdad', NULL, '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 6, 'asdsa', 'sadads', 'sdd', 'dasd', NULL, '12324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 9, 'asdasd', 'adsasd', 'kadirmutluasdas', 'asdads', NULL, 'asddasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 10, 'sads', 'asdas', 'wewewe', 'dsads', NULL, 'asdwewe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 11, 'a', 'b', 'sdsdsd', 'c', NULL, '202cb962ac59075b964b07152d234b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 13, 'b', 'b', 'b', 'b', NULL, '92eb5ffee6ae2fec3ad71c77753157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 16, 'pooo', 'pooo', 'pooo', 'pooo', NULL, '003c578ff299e637cc67bbdcf46bef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 17, 'qwerghjhgfe', 'asdfhjhgfd', 'kadirmutlu', 'pooodfd', NULL, 'f2f2aec953227b4a11ee5f7b3af572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 18, 'q', 'q', 'q', 'q', NULL, '7694f4a66316e53c8cdd9d9954bd61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 19, 't', 't', 't', 't', NULL, 'e358efa489f58062f10dd7316b6564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 20, 'zaq', 'zaq', 'zaq', 'zaq', NULL, '9e3895cedfa93fc7d6f63cb00ad91d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 21, 'asd', 'asd', 'asd', 'asd', NULL, '7815696ecbf1c96e6894b779456d33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 22, 'zxcvbn', 'zxcvbn', 'zxcvb', 'zxcvb', NULL, '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 23, 'Kadir', 'Mutlu', 'kadirmutluu', 'kadirmutluu@gmail.com', NULL, 'fcea920f7412b5da7be0cf42b8c93759', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 24, 'azsxdcfvg', 'xcvbnn', 'xcvbnmö', 'sdxcfvgbhjklş', NULL, '204d0176d827d18b7424f28a0ebb1c03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 25, 'as', 'as', 'as', 'as', NULL, 'f970e2767d0cfe75876ea857f92e319b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 26, 'cde', 'cde', 'cde', 'cde', NULL, 'a256e6b336afdc38c564789c399b516c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 27, 'rty', 'rty', 'rty', 'rty', NULL, '24113791d2218cb84c9f0462e91596ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 28, 'poll', 'poll', 'poll', 'poll', NULL, 'b0f6dfb42fa80caee6825bfecd30f094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 29, 'zxcv', 'zxcv', 'zxcv', 'zxcv', NULL, 'fd2cc6c54239c40495a0d3a93b6380eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 30, 'dad', 'dad', 'dad', 'dad', NULL, 'df3939f11965e7e75dbc046cd9af1c67', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 31, 'nbv', 'nbv', 'nbv', 'nbv', NULL, '0fde9b5d39abc84397749bc7532e2ae3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 32, 'tuy', 'tyu', 'tuy', 'tuy', NULL, '99618fbde2b2123b4c09403939766e89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 33, 'qwerr', 'qwerr', 'qwerr', 'qwerr', NULL, '7085ed00bd92dc3160e1c1e9841a0f35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 34, 'kul', 'kul', 'kul', 'kul', NULL, '212747dc84369b811b3bd8611c78422f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 35, 'mo', 'mo', 'mo', 'mo', NULL, '27c9d5187cd283f8d160ec1ed2b5ac89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 36, 'yoo', 'yo', 'yo', 'yo', NULL, '6d0007e52f7afb7d5a0650b0ffb8a4d1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 37, 'pol', 'pol', 'pol', 'opl', NULL, '627a1f8f3e1f8a2a0cbb9aedc33ade8c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 38, 'trtrt', 'ertert', 'ertert', 'ertert', NULL, 'a919d23ddb760cff5473a9d05f6ebac2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 39, 'qwer', 'qwer', 'kadirqwemutlu', 'qwer', NULL, '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 40, 'hrttttttt', 'hrtt', 'kadirmrhthutlu', 'rhtrh', NULL, '116aa5f365d6a0f1d0a2e6692462dfa8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 41, '213', 'dasdsad', 'sdadadasdasd', 'sdasdsad', NULL, '077376b80ce60a7ab8c9de1789c90263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 42, 'qwe', 'werty', '12', 'qwretu', NULL, '157eb9ce33644ada6d0499c1097c4f5d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 43, 'qw', 'qw', 'qw', 'qw', NULL, '006d2143154327a64d86a264aea225f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 44, '1212', '21wwsd', 'asdfghjklş', 'dasf', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 45, 'qwert', 'qwert', 'd', '123', NULL, 'b2f5ff47436671b6e533d8dc3614845d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 46, 'qwertyuı', 'qwertyuı', 'qwertyuı', 'qwertyuı', NULL, 'a947c1d31e9e9626b2a88d8b21618850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 47, 'wd', 'f', 'f', 'f', NULL, '8fa14cdd754f91cc6554c9e71929cce7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 48, 'mn', 'mn', 'mn', 'mn', NULL, 'mn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 49, 'qwqwrewrewd', 'safdsdggfhghfh', 'hfghgfhfghf', 'hfghfghfghfgh', NULL, 'gfhghfghfgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 50, 'poll', 'poll', 'polldfsdfdsf', 'pollcvxvc', NULL, 'pollllkl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 51, 'a', 'b', 'kadirbbmutlu', 'bb', NULL, 'asdbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 52, 'asddd', 'asddd', 'asddd', 'asddd', NULL, 'asddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 53, 'dada', 'dada', 'dada', 'dada', NULL, 'dada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 54, 'rewq', 'rewq', 'rewq', 'rewq', NULL, 'rewq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 55, 'fad', 'fad', 'fad', 'fad', NULL, 'fad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 57, '2', '2', '2', '2', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 58, '33', '33', '33', '33', NULL, '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 59, 'daa', 'daa', 'daa', 'daa', NULL, 'daa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 60, 'sads', 'daaas', 'daaadsasd', 'daasdadsad', NULL, 'daadsads', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 61, '32', '23', '23', '23', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 62, 'trytyrt', 'rtyrtyr', 'tryrtyrty', 'tryrtyrt', NULL, 'rtyrty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 63, 'ol', 'ol', 'ol', 'olo', NULL, '9d5da4f31eddc5eea1c1222da1d7ff12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 64, 'ol', 'ol', 'kadirmutluu@gmail.com', 'sdfsfgdfgd', NULL, '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 65, 'dasdasd', 'dsfsdf', 'sdfsdfds', 'fsdfsdf', NULL, 'd6e9c56d7f078d298ed4695d899effbe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 66, 'poll', 'poll', 'polllll', 'polllll', NULL, 'b0f6dfb42fa80caee6825bfecd30f094', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 67, 'da', 'sdsads', 'sadasd', 'kadirrrrrmutluu@gmail.com', NULL, 'c99a11a53a3748269e3f86d7ac38df11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 68, 'asd', 'sadsdsa', 'sadsd', 'sdasd', NULL, '04d80519040d8595a0156c9cde939f20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 69, 'asd', 'asd', 'asds', 'das', NULL, '7815696ecbf1c96e6894b779456d330e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 70, 'sws', 's', 'wsw', 'swwsws', NULL, '0586877cc0a648755950af2f17a083cc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 73, 'name', 'surname', 'userName', 'mail', NULL, 'password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 76, '4', '4', '4', '4', NULL, 'a87ff679a2f3e71d9181a67b7542122c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 77, 'asdsdfsdf', '4dsfsdfsdf', '4sdfsdf', '4sdfsdf', NULL, 'eaa546638d97e3bc21161e81dc11c813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('./uploads/images/durden.jpg', 78, 'dodo', 'dodo', 'dodo', 'dodo', '90,91,92,93', '721c6ff80a6d3e4ad4ffa52a04c60085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0'),
(NULL, 79, 'dodo', 'dodo', 'dodoo', 'dodoo', NULL, '721c6ff80a6d3e4ad4ffa52a04c60085', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 80, 'rewq', 'rewq', 'rewqsd', 'rewqds', NULL, 'ca092c71d6be4e9dd735fbceb0890093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 81, 'adımız', 'soyadımız', 'jasdjasj', 'mailimiz', NULL, '863b128e73689b294e737f38c553c2d5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 82, 'ddsdsd', 'sds', 'ds', 'dsd', NULL, 'b53f5fb02527547096eff3baf8eb24e2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 83, 'qwertyu', 'qwertyu', 'qwertyu10', 'qwertyu', NULL, '17d15f6ce2994fc4572a4a4cd5a3dc11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 84, 'zxcvbnmm', 'zxcvbnmm', 'zxcvbnmm', 'zxcvbnmm', NULL, 'b805fbd726890259e8c7d43040caec33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 85, 'sadasda', 'asdasdasd', 'kadirmutluasdasd', 'asdasdasd', NULL, 'd02530d0ecb26d4536942dc3d46652d1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 86, 'bgtrfvbg', 'bgtrfvbg', 'bgtrfvbg', 'bgtrfvbg', NULL, 'd79f420237f816df7a88e40ebfa17c99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 87, 'asdfghjk', 'asdfghjk', 'asdfghjk', 'asdfghjk', NULL, 'bf709005906087dc1256bb4449d8774d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 88, 'asdfghjka', 'asdfghjka', 'asdfghjka', 'asdfghjka', NULL, '765b7715cd8faa58a09fa958449f1b13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('./uploads/images/user.jpg', 89, 'qqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqq', NULL, 'a4600fc96bd27d6f2670625d8484ae44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('./uploads/images/sadi.jpg', 90, 'Sadi Evren', 'Şeker', 'prof', 'dasda', '91, 92, 93 ,94', '701c8baf5dcefea4cff69126eafefa6c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('./uploads/images/mattmurdock.jpg\n', 91, 'Matt', 'Murdock', 'aaa', 'aaa', NULL, '3dbe00a167653a1aaee01d93e77e730e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('./uploads/images/onuralin.jpg', 92, 'Onur', 'Alın', 'onr995', 'onur', '', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'merhaba', NULL, NULL, ''),
(NULL, 93, 'onur', 'alin', 'onr', 'onr995@yandex.com', '', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aaa'),
(NULL, 94, 'poko', 'poko', 'poko', 'poko', '', 'b748e6a119d4aeacb1d9a095490f173e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 95, 'bebe', 'bebe', 'bebe', 'bebe', '90,91,92', '59e516a920dc071455285dd79130a07c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(NULL, 96, 'asdlasasda', 'sadasd', '$,,', 'sdasddsfdfd', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
('./uploads/images/user.jpg', 97, 'ahmet', 'mehmet', 'mehmet', 'mehmet@ali.com', NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorId`);

--
-- Tablo için indeksler `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`),
  ADD KEY `publisherId` (`publisherId`),
  ADD KEY `authorId` (`authorId`),
  ADD KEY `translatorId` (`translatorId`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `userId` (`userId`);

--
-- Tablo için indeksler `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeId`),
  ADD KEY `userId` (`userId`);

--
-- Tablo için indeksler `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`listId`),
  ADD KEY `userId` (`userId`);

--
-- Tablo için indeksler `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Tablo için indeksler `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisherId`);

--
-- Tablo için indeksler `quatations`
--
ALTER TABLE `quatations`
  ADD PRIMARY KEY (`quatationId`),
  ADD KEY `bookId` (`bookId`),
  ADD KEY `userId` (`userId`);

--
-- Tablo için indeksler `sharebook`
--
ALTER TABLE `sharebook`
  ADD PRIMARY KEY (`sharebookId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `bookId` (`bookId`);

--
-- Tablo için indeksler `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`shareId`),
  ADD KEY `userId` (`userId`);

--
-- Tablo için indeksler `translators`
--
ALTER TABLE `translators`
  ADD PRIMARY KEY (`translatorId`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `authors`
--
ALTER TABLE `authors`
  MODIFY `authorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- Tablo için AUTO_INCREMENT değeri `likes`
--
ALTER TABLE `likes`
  MODIFY `likeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Tablo için AUTO_INCREMENT değeri `lists`
--
ALTER TABLE `lists`
  MODIFY `listId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `point`
--
ALTER TABLE `point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tablo için AUTO_INCREMENT değeri `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisherId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `quatations`
--
ALTER TABLE `quatations`
  MODIFY `quatationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Tablo için AUTO_INCREMENT değeri `sharebook`
--
ALTER TABLE `sharebook`
  MODIFY `sharebookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Tablo için AUTO_INCREMENT değeri `shares`
--
ALTER TABLE `shares`
  MODIFY `shareId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Tablo için AUTO_INCREMENT değeri `translators`
--
ALTER TABLE `translators`
  MODIFY `translatorId` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `authors` (`authorId`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`translatorId`) REFERENCES `translators` (`translatorId`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`publisherId`) REFERENCES `publishers` (`publisherId`);

--
-- Tablo kısıtlamaları `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Tablo kısıtlamaları `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Tablo kısıtlamaları `lists`
--
ALTER TABLE `lists`
  ADD CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Tablo kısıtlamaları `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `point_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Tablo kısıtlamaları `quatations`
--
ALTER TABLE `quatations`
  ADD CONSTRAINT `quatations_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `books` (`bookId`),
  ADD CONSTRAINT `quatations_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

--
-- Tablo kısıtlamaları `sharebook`
--
ALTER TABLE `sharebook`
  ADD CONSTRAINT `sharebook_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`),
  ADD CONSTRAINT `sharebook_ibfk_2` FOREIGN KEY (`bookId`) REFERENCES `books` (`bookId`);

--
-- Tablo kısıtlamaları `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
