-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 06 Décembre 2013 à 01:55
-- Version du serveur: 5.5.34
-- Version de PHP: 5.3.10-1ubuntu3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `letsgo`
--

-- --------------------------------------------------------

--
-- Structure de la table `asso_question_tag`
--

CREATE TABLE IF NOT EXISTS `asso_question_tag` (
  `question` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  PRIMARY KEY (`question`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `asso_question_tag`
--

INSERT INTO `asso_question_tag` (`question`, `tag`) VALUES
(3, 1),
(5, 1),
(5, 2),
(6, 3),
(9, 3),
(11, 3),
(17, 3),
(9, 4),
(1, 5),
(1, 6),
(6, 7),
(2, 8),
(7, 9),
(4, 10),
(4, 12),
(10, 13),
(11, 14),
(10, 15),
(8, 16),
(8, 17),
(14, 18),
(14, 19),
(4, 20),
(13, 20),
(13, 21),
(17, 23),
(15, 24),
(19, 25),
(22, 25),
(19, 26),
(22, 26),
(18, 27),
(20, 28),
(20, 29),
(28, 29),
(21, 30),
(21, 31),
(24, 32),
(27, 33),
(12, 34),
(27, 34),
(26, 37),
(26, 42),
(28, 43),
(28, 44),
(30, 45),
(30, 46);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auteur` int(11) NOT NULL,
  `best_rep` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auteur` (`auteur`),
  KEY `best_rep` (`best_rep`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id`, `titre`, `contenu`, `datetime`, `auteur`, `best_rep`) VALUES
(1, 'Charentaise', 'Bonjour, je cherche des charentaises avec des pingouins dessus. Savez-vous où je peux en trouver ?', '2013-12-05 20:23:43', 10, NULL),
(2, 'Batterie de remplacement', 'Bonjour, je cherche une batterie\r\nde type : Li-lon Battery pack a32-k72 Rating: +10.8V continu 5200mAh, 56W.\r\nPourriez-vous m''aider ?\r\nMerci d''avance.', '2013-12-05 20:27:18', 9, NULL),
(3, 'casque vélo pour enfant', 'Bonjour,\r\nJe cherche un Casque bleu taille M pour enfant. La fiabilité est le principale, la couleur n''est qu''un plus.\r\nMerci d''avance.\r\n', '2013-12-05 21:56:44', 1, NULL),
(4, 'Bonnet rouge.', 'Bonsoir,\r\nSauriez-vous où je peux trouver un bonnet rouge pour mes vacances au ski.\r\nMerci d''avance.', '2013-12-05 20:30:53', 7, NULL),
(5, 'Choix de vélo de route', 'Je ne sais pas trop quoi choisir comme vélo de route.\r\nJ''en ai vu plusieurs mais rien de concret.\r\n\r\nPouvais vous me conseiller ?\r\n\r\nMerci de votre aide !\r\n\r\n', '2013-12-05 20:33:07', 5, NULL),
(6, 'Gasoil.', 'Coucou, je cherche la station gasoil la moins chère du berry. Savez-vous laquelle c''est ?\r\nMerci.', '2013-12-05 20:33:59', 3, NULL),
(7, 'paperboard', 'Où puis-je trouver un paperboard ?', '2013-12-05 20:38:48', 2, NULL),
(8, 'Câbles hdmis et multiprise HDMI', 'Bonjour,\r\nTout est dans le titre.\r\nJe veux utiliser ma TV comme écran secondaire donc j''aurais besoin de deux câbles hdmi  et d''une multiprise HDMI.\r\nSavez-vous où je pourrais me les procurer ? Un lot serai l''idéal.\r\nMerci.', '2013-12-05 20:38:48', 4, NULL),
(9, 'Pare-brise.', 'Bonsoir,\r\nJe suis accidentellement rentré dans un quai de chargement en reculant. Je cherche donc un pare-brise arrière pour ma C4 afin de ne pas impliquer mon assurance.\r\nMerci.', '2013-12-05 20:40:38', 10, NULL),
(10, 'Je cherche un collier pour un couple.', 'Bonjour,\r\n\r\nJe cherche un collier en deux parties pour couple : une noire et une blanche. Je voudrais quelque chose de bonne qualité et avec une chaîne et non une corde de préférence. Chaque partie doit être solide et capable de tenir longtemps.\r\n\r\nMerci d''avance.', '2013-12-05 20:45:41', 4, NULL),
(11, 'Cherche 2CV', 'Je ne sais pas où l''on peut trouver des 2CV d''occasion.\r\n\r\nPouvez vous m''aider ?\r\nEt quelles sont les prix du marché ?\r\n\r\nMerci', '2013-12-05 21:16:34', 13, NULL),
(12, 'Cherche peluche panda', 'Coucou, \r\nOù puis-je trouver une peluche de panda d''environ 30 cm de haut ?', '2013-12-05 21:38:46', 8, NULL),
(13, 'T-shirt humoristique ', 'Bonsoir,\r\nJe cherche un T-shirt que j''ai vu être porté par un homme que j''ai croisé dans la rue. Le T-shirt avait une croix rouge au milieu et autour de la croix en cercle étais écrit : donneur d''orgasmes.\r\nCela me semble le cadeau approprié pour les 20 ans de mon neveu\r\nMerci.', '2013-12-05 21:38:46', 2, NULL),
(14, 'Conseil robot aspirateur', 'Je recherche un aspirateur qui aspire tout seul, genre un robot.\r\nUne copine m''en a parlé.\r\n\r\nMerci de m''aiguiller.', '2013-12-05 21:42:59', 15, NULL),
(15, 'Crayons de bois personnalisés', 'Bonjour,\r\nDans le cadre d''un événement, j''aimerai distribuer en tant que cadeaux de consolation des crayons de bois personnalisés. Sauriez-vous comment je pourrais en trouver ?\r\nMerci d''avance.', '2013-12-05 22:53:38', 17, NULL),
(17, 'Achat pneu', 'Bonjour,\r\n\r\nJe cherche un pneu de qualité et pas chère pour une clio 2 phase 2, les miens sont lisses et s''usent vite.\r\n\r\nLesquelles prendre ?\r\n\r\nMerci', '2013-12-05 22:44:07', 16, NULL),
(18, 'Bitcoin mining', 'Bonsoir,\r\n\r\nJ''aimerai m''acheter du matériel pour faire du Bitcoin mining, mais je ne sais pas quel matériel acheter...\r\nMerci de bien vouloir me conseiller.', '2013-12-05 23:10:59', 19, NULL),
(19, 'Carte Graphique', 'Salut,\r\n\r\nJe cherche une carte graphique performante et pas chère, entre 100 et 150€\r\nDes propositions?\r\n\r\nMerci', '2013-12-05 23:10:59', 20, NULL),
(20, 'Canapé original', 'Je cherche un canapé de salon original et coloré. Pour mettre dans un angle.\r\n\r\nMerci de me conseiller', '2013-12-05 23:22:44', 21, NULL),
(21, 'transparent pour imprimer', 'Bonjour,\r\nJe dois faire une présentation oral et j''aurai aimé imprimer des transparent. J''ai vérifié mon imprimante le fait mais je ne trouve pas de transparent vierge.\r\nQuelqu''un pourrait-il me conseiller quant à l''endroit où en trouver ?\r\nMerci d''avance', '2013-12-05 23:33:37', 22, NULL),
(22, 'PC pour Gaming', 'Salut,\r\n\r\nUne bonne configuration pour gaming sans dépasser 1500€?', '2013-12-05 23:39:31', 28, NULL),
(24, 'panda géant', 'Salut,\r\nJe veux faire une farce à une amie pour son anniversaire en lui offrant un peluche de panda géante.\r\nMais je ne trouve rien dans les rayons enfants des grandes surfaces.\r\nMerci.', '2013-12-05 23:42:08', 22, NULL),
(26, 'Bureau pour enfant', 'Salut,\r\n\r\nJe cherche un bureau pour mon fils de 14 ans. Assez grand et sobre pour qu''il puisse le garder.', '2013-12-05 23:50:58', 30, NULL),
(27, 'Porte-clés', 'Slt,\r\nJe cherche un porte-clef un peu stupide. Du genre avec un personnage de dessin animé, ou de film ,...\r\nQuelqu''un aurait- il une idée ?\r\nthx', '2013-12-05 23:53:34', 8, NULL),
(28, 'Chaise ou tabouret de bar', 'Salut,\r\n\r\nC''est quoi le mieux entre les chaises et les tabourets de bar. J''ai un petit bar dans la pièce a vivre et j''hésite.\r\n\r\nMerci d''avance', '2013-12-06 00:15:18', 33, NULL),
(30, 'Quel livre choisir ?', 'Bonjour,\r\n\r\nJe cherche un livre prenant, intense avec des complots et ou l''avenir de la planète est en jeu.\r\n\r\nSi vous avez des suggestions, j''achète !', '2013-12-06 00:50:53', 34, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE IF NOT EXISTS `reponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` int(11) NOT NULL,
  `auteur` int(11) NOT NULL,
  `contenu` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question` (`question`),
  KEY `auteur` (`auteur`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `reponse`
--

INSERT INTO `reponse` (`id`, `question`, `auteur`, `contenu`) VALUES
(1, 5, 11, 'Je te conseil la marque vitus, ce sont des cycles solides, esthétiques et avec un bon rapport qualité/prix.\r\n\r\nIl y a des boutiques qui en vendent sur Poitiers.'),
(2, 5, 12, 'Oui, Vitus c''est pas mal. Il y a aussi Cannondale mais qui est plus chère.\r\n\r\nPour les boutiques sur Poitiers, il y a celle vers le Futuroscope qui est bien.'),
(3, 1, 4, 'Je ne pense pas que tu en trouveras. En revanche, il est possible de coudre des logos pingouins sur des charentaises classiques que tu trouve en grande surface. Le logo doit se trouver en magasin d''arts créatifs.\r\nEt en prime un petit lien:\r\nhttp://www.amazon.fr/Couture-pour-Nuls-Sauders-maresh/dp/275400193X\r\n'),
(4, 6, 1, 'Après une petite recherche sur google :\r\nElan - Garage du Moulinet - Max Mitriot / Renault\r\nRoute d''Issoudun - D65\r\n18160 Chezal-Benoît\r\nCe n''est pourtant pas très difficile.'),
(5, 2, 1, 'Je n''ai pas trouvé de batterie 5200mah, mais au cas où, voici ma batterie de 4400 solide et toujours aussi fiable après 2 ans.\r\n\r\nhttp://www.cplonline.com.au/asus-a32-k72-4400mah-battery-for-n71jq.html?utm_source=myshopping&utm_medium=cpc&utm_campaign=Batteries&utm_term=Asus+A32+K72+4400Mah+Battery+for+N71JQ'),
(6, 4, 2, 'Color-industry est un très bon site pour les tissus de couleurs. Entre autre ce bonnet est de très bonne facture pour le prix:\r\n\r\nhttp://www.color-industry.fr/produits/948-bonnet-court-en-maille-rouge?ectrans=1&gclid=COPMrveNmrsCFUUOwwodq0QAEg\r\n\r\nJe ne l''ai pas acheté personnellement mais ce site est un must pour les tissus coloré à mon sens.'),
(8, 11, 14, 'Va voir sur le site le bon coin ca marche bien.\r\n\r\nVoila une annonce :\r\nhttp://www.leboncoin.fr/voitures/582435656.htm?ca=16_s\r\n\r\nIl faut savoir que les voitures de collections bien retapées se vendent assez chère. Pour en avoir a prix plus raisonnable, il faut la retaper soit même.\r\n\r\nBon courage'),
(9, 7, 1, 'Je ne connais pas le site mais il n''a pas l''air mal !\r\nhttp://www.leguide.com/sb/leguide/recherche/str_MotCle/Paperboard/org/3/t/1/7050500.htm'),
(10, 4, 2, 'Tu peux essayer dans les grandes enseignes de vêtements ou alors utiliser la solution internet :\r\nhttp://www.cdiscount.com/search/10/bonnet+rouge.html'),
(11, 14, 4, 'C''est super bien ces aspi-automatique !\r\n\r\nJ''ai acheté le mien sur cdiscount c''est celui la : http://www.cdiscount.com/electromenager/aspirateur-nettoyeur-vapeur/aspirateur-robot-i-robot-roomba-770/f-1101409-irobotroomba770.html\r\n\r\nIl est en promo en ce moment, je te le conseil il est moitié prix !'),
(12, 14, 9, 'Ma femme en a un bien ! La marque c''est un Harper ICLEAN il coûte vers 120€ c''est un des moins chere !\r\n\r\nJe recommande'),
(13, 10, 4, 'En fait j''ai trouvé ce superbe collier. Il est exactement comme je le cherchais !\r\n\r\nhttp://www.amazon.fr/Pendentifs-couple-coeur-inoxydable-cha%C3%AEnes/dp/B00F455NLC/ref=sr_1_40?s=jewelry&ie=UTF8&qid=1384531173&sr=1-40&keywords=pendentif+couple\r\n\r\nLa chaîne est inclus et la petite phrase "I know what love is, because of you" colle parfaitement.\r\nEnfin l’emballage dans lequel le collier est envoyé est juste parfait. Pas besoin d''en refaire un.'),
(14, 17, 8, 'Sur les clio 2 et les petites voitures en général autant prendre des pneus michelin ils sont pas beaucoup plus chers et de meilleurs qualités.\r\n\r\nVoila des pneus hivers à 100€ : \r\nhttp://www.pneus-online.fr/pneu-auto-MICHELIN/ALPIN,A4/205,55,R16,91,T.html\r\n\r\nA+'),
(15, 15, 16, 'Ce site est pas mal.\r\nhttp://versionecologique.com/143-crayons-a-papier\r\n\r\nJe l''ai déjà utilisé et il est justement fait pour les grandes quantités.'),
(16, 17, 11, 'Moi je te conseil plutôt les continentale ils sont bien et moins chers que michelin!!! Moitié prix ici !\r\n\r\nhttp://www.pneus-online.fr/pneu-auto-CONTINENTAL/CONTI-WINTERCONTACT,TS,800/175,65,R14,82,T.html'),
(17, 15, 18, 'Sinon tu as aussi ce site là :\r\nParce que un seul crayon c''est un maigre lot de consolation.\r\nhttp://www.mesinvites.com/crayon-de-couleur-personnalise.bapteme.html'),
(18, 18, 5, 'Salut,\r\n\r\nBah c''est une question un peu difficile à répondre. Car je pourrais te recommander du matériel rentable à ce moment mais dans quelques mois ça pourrait plus être le cas... \r\n\r\nCi après un lien qui te permet de faire une simulation\r\n\r\nhttp://mining.thegenesisblock.com/'),
(19, 19, 5, 'Je te conseille la GeForce GTX 660 vers les 150€\r\n\r\ntu trouveras une ici :\r\nhttp://www.rueducommerce.fr/Composants/showdetl.cfm?product_id=4877913%23xtor=SEC-802-GOO-%5BComposants%5D-%5BRSYS:31:4877913%5D-60404439494#!moid:MO-D34EEM22454852'),
(21, 19, 6, 'Mmm cette question ne peut avoir une réponse directe. Tout dépend du matériel que tu as à coté et de ce que tu compte en faire. Par exemple si tu as un i7, tu n''as pas besoin de la même carte que si tu veux faire de la 2D sur un dual core. Alors si tu veux un coup de main, tu va devoir donner un peu plus d''information. Après si tu veux vraiment une bonne carte pas trop chère, une carte d''occasion peut etre un bon plan. Par exemple:\r\n\r\nhttp://www.priceminister.com/offer/buy/124186768/gainward-nvidia-gtx560-2048-mb-pcie-carte-graphique.html\r\n\r\nAprès si tu veux une carte plus adapté à ton utilisation, donne nous plus d''information.'),
(22, 20, 15, 'Bonsoir,\r\n\r\nJe vous conseil quelque chose dans les tons chaud et moderne.\r\nMa cousine en a un qui ressemble beaucoup a celui-ci :\r\n\r\nhttp://www.meublez.com/victoria-canape-d-angle-cuir-rouge.html?LGWCODE=SOGAVICTORIAROUGE;8991;235&gclid=CLaP0-OmmrsCFRSWtAoduWcAqg&ectrans=1'),
(23, 20, 3, 'Voila celui que j''ai chez moi, il est très confortable:\r\n\r\nhttp://www.maisonsdumonde.com/FR/fr/produits/fiche/Canap%C3%A9-d%27angle-5-places-fixe-Antigua-111727.htm?adtype=pla&kw={keyword}&gclid=CM_ZxNSnmrsCFWmWtAod7wwA5g'),
(24, 24, 21, 'Ce n''est pas un panda géant mais l''esprit reste un peu le même :\r\nhttp://peluchepanda.fr/peluches-panda/21-pouf-panda-2862950110394.html'),
(25, 22, 29, 'Jette un coup d''oeil ici:\r\n\r\nhttp://www.dell.com/fr/p/alienware-aurora-r4/pd.aspx#overrides=d00amw01:1~830318;3~646408\r\n\r\net monte ta machine selon ton budget! ;)'),
(26, 13, 6, 'Le T-shirt n''est pas exactement celui que tu demande, mais il y ressemble beaucoup. Le texte n''est juste pas en cercle.\r\n\r\nhttp://www.lantiseche.com/t-shirt-sexy-tee-shirt-sexe/399-donneur-d-orgasme.html\r\n\r\nAutrement un simple site de personnalisation peut être intéressant aussi car il sera exactement comme tu le veux:\r\n\r\nhttp://www.shirtinator.fr/'),
(27, 15, 6, 'C''est selon moi LE site de référence pour les objets de publicité. Entre autre les crayon de papier. Je peux pas trouver mieux je pense !\r\n\r\nhttp://www.objets-publicitaires-cadeaux.com/crayon-publicitaire-personnalise/objets-publicitaires/500/1'),
(28, 26, 21, 'Salut,\r\n\r\nVoila ce que je compte acheter à mon fils pour noël :\r\n\r\nhttp://www.delamaison.fr/meuble-informatique-tiroirs1-caisson-prima-p-55273.html?gclid=CPLUnsOpmrsCFZHItAodMDMAiw#utm_source=google&utm_medium=cpc&utm_campaign=googlMeubles_Meuble-de-bureau_p&utm_term=&mt=&network=g&position=1o1\r\n\r\nC''est classique et visuellement agréable. Et il y a pas mal de rangement.\r\n'),
(29, 7, 6, 'Un simple bonjour, ou un merci ne serais pas de refus... M''enfin bref Les paperboard peuvent avoir plein de fonctionnalité différente. En supposant que tu n''en ai pas choisis car tu n''en voulais pas j''ai trouvé ça:\r\n\r\nhttp://www.pro-signalisation.fr/affichage-presentation/paperboards/paperboard/?utm_source=twenga&utm_medium=referral\r\n\r\nsimple, solide, et pas chère.\r\nAprès pour des recharges pas chère, je te conseille ceux là:\r\n\r\nhttp://www.bureau-vallee.fr/fourniture/recharge-standard-pour-paper-board-uni\r\n\r\n\r\nParce qu’un paperboard c''est bien. Un paperboard avec des feuilles c''est mieux !'),
(30, 26, 6, 'Gain de place, sobre et très pratique dans une chambre bien organisé, voici le bureau d''angle utilisable pendant des années:\r\n\r\nhttp://www.amazon.fr/Bureau-dangle-Swithome-Fabri-blanc/dp/B008M8EJOU/ref=sr_1_5?s=kitchen&ie=UTF8&qid=1386290446&sr=1-5\r\n\r\nUne grande capacité de rangement, avec un espace dédié aux ordinateurs. Seul problème, l''aération de la tour de l''ordinateur dois être soit très puissante, soit frontale et/ou arrière.\r\nAutrement un trou bien coupé sur e coté peut régler le problème, mais demande un peu de doigté et de maîtrise.\r\nDans ce cas, peut aussi servir de chauffage d''appoint pour les jambes en hivers si le PC consomme beaucoup XD !'),
(31, 28, 30, 'Salut,\r\n\r\nMoi je te conseil un truc avec un dossier pour plus de confort genre.\r\nLe mieux c''est ceux la : http://www.matelpro.com/chaise-de-bar-avec-accoudoirs-trendy.html?=&orig=503dd27f2a099&gclid=CNHjm6OxmrsCFW_MtAodgQEAyg\r\n\r\nMon frère les as chez lui, c''est trop bien !'),
(32, 28, 1, 'Bonsoir,\r\n\r\nPour rester dans l''esprit bar je te conseil ce type de chaise :\r\n\r\nhttp://www.vente-unique.com/p/le-tabouret-de-bar-canasta-coloris-blanc-rouge-ou-noir-1?gclid=COWb4MuxmrsCFRSWtAoduWcAqg\r\n\r\nIl y a un dossier minimaliste mais il est classe !'),
(33, 22, 6, 'Question difficile... C''est en fonction de la mentalité là. Plusieurs pistes: \r\nMonter son PC soit même. Là il faut voir les composants un par un . jechercheuntruc peut t''aider pour certains composants:\r\n[Lien vers CG]\r\n[lien vers autre compo ?]\r\n\r\nFaire monter son PC par un pro avec conseille en face à face peut être très utile aussi.\r\n\r\nConcernant l''e-commerce, là dell ou LDLC sont de très bon site, mais les composant sont très chère...\r\n\r\nEnfin si tu veux vraiment gagner du temps (mais la machine sera donc beaucoup moins puissante. Gain de temps pour perte de puissance phénoménal) regarde de ce coté:\r\nhttp://www.ldlc.com/fiche/PB00126222.html\r\n\r\nLà la perte est phénoménal, pourtant c''est une bonne tour pré-monté...\r\nVoilà si j''ai pu répondre a ta question.\r\nAh et question portable: http://www.ldlc.com/fiche/PB00152421.html'),
(34, 3, 9, 'Essaye ici :\r\nhttp://www.decathlon.fr/F-10899-casques'),
(35, 27, 6, 'http://www.amazon.fr/s/ref=nb_sb_noss_2?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&url=search-alias%3Dtoys&field-keywords=porte%20cl%C3%A9%20lapin%20cretin\r\n\r\nLes lapins crétins ... C''est juste l''idéal pour s''amuser. Y a plus de variations de lapin crétins que tous les autres personnages. Plus qu''à choisir quel lapin tu préfères.\r\nSinon 4 ou 5 minions différent sur le même porte-clé, c''est encombrant mais c''est classe !\r\n\r\nhttp://www.amazon.fr/Despicable-Minion-Jorge-Porte-cl%C3%A9s-Charme/dp/B00EQ3P16A');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Contenu de la table `tag`
--

INSERT INTO `tag` (`id`, `tag`, `count`) VALUES
(1, 'velo', 2),
(2, 'route', 1),
(3, 'voiture', 2),
(4, 'pare-brise', 1),
(5, 'charentaise', 1),
(6, 'pingouin', 1),
(7, 'gasoil', 1),
(8, 'batterie', 1),
(9, 'paperboard', 1),
(10, 'bonnet', 1),
(12, 'ski', 1),
(13, 'collier', 1),
(14, 'collection', 1),
(15, 'couple', 1),
(16, 'television', 1),
(17, 'connectique', 1),
(18, 'aspirateur', 1),
(19, 'robot', 1),
(20, 'vetement', 2),
(21, 'humour', 1),
(22, 'test tag', 1),
(23, 'pneu', 1),
(24, 'crayon', 1),
(25, 'ordinateur', 1),
(26, 'carte graphiques', 1),
(27, 'électronique', 1),
(28, 'canape', 1),
(29, 'salon', 1),
(30, 'transparent', 1),
(31, 'imprimer', 1),
(32, 'panda', 1),
(33, 'porte-clés', 1),
(34, 'porte-clefs', 1),
(37, 'bureau', 1),
(42, 'sobre', 1),
(43, 'bar', 1),
(44, 'chaise', 1),
(45, 'livre', 1),
(46, 'thriller', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `username`, `password`, `email`) VALUES
(1, 'robert26', 'rob263', 'robert26@yopmail.com'),
(2, 'jacques59', 'jacq596', 'jacques59@yopmail.com'),
(3, 'titus28', 'tatatiti2588', 'titus28@yopmail.com'),
(4, 'Bonnie', 'ILovePHP', 'Bloodymyrth@yopmail.com'),
(5, 'pascal86', 'psl86', 'pascal86@yopmail.fr'),
(6, 'Chawalot', 'Hgre65De@', 'Chawalot@yopmail.com'),
(7, 'Shinobyte', 'riuoghbur', 'Byte@yopmail.com'),
(8, 'fred4854', 'fredo87', 'fred4854@yopmail.com'),
(9, 'nicolas', 'nico256', 'nicolas@yopmail.com'),
(10, 'jean-charles', 'jc-04', 'jean-charles@yopmail.com'),
(11, 'paul86', 'pul86', 'paul86@yopmail.fr'),
(12, 'patrice86', 'pte86', 'patrice86@yopmail.fr'),
(13, 'jean46', 'jan86', 'jean46@yopmail.fr'),
(14, 'dupont93', 'dpt93', 'dupont93@yopmail.fr'),
(15, 'sophie18', 'spe18', 'sophie18@yopmail.fr'),
(16, 'jaques74', 'jq74', 'jaques74@yopmail.fr'),
(17, 'respevesco', 'cfcvbn5', 'respevesco12454116'),
(18, 'teach158lkj', '654frfokfe58', 'teach158lkj@yopmail.fr'),
(19, 'Thomas', 'thomas', 'thomas@yopmail.com'),
(20, 'Martin', 'martin', 'martin@yopmail.com'),
(21, 'monique15', 'mne15', 'monique15@yopmail.fr'),
(22, 'valentingraph', 'ifjfpr5fe5e', 'vallg2498@yopmail.com'),
(23, 'greggreg', 'rgrg5grgreg5', 'greg55rrf8d1@yopmail.fr'),
(28, 'Pierre', 'pierre', 'pierre@yopmail.com'),
(29, 'Victor', 'victor', 'victor@yopmail.com'),
(30, 'veronique10', 'vre10', 'veronique10@yopmail.fr'),
(31, 'PapaOurs', '$6$nUIMY14C$oWAeQRWmBkyBr1kZQHZ91QrSOqUop6qm.ORUxmQHJJkMMLqot8HRDjKbXlbTKdSKcsNDdA/WDwhv0N9s1mFZQ/', 'gregoire.poinsot@ensi-bourges.fr'),
(32, 'greyg', '$6$vQrgRSwr$xX6Al5NVdNufM1zhQ5mcD/dGFv/ZcO3ewA3ZoHHqcoBWEPlBAy3/ibWns8WiTnOTJCPBoFr5RmAovnNyD/7DC0', 'greyg@greyg.com'),
(33, 'marie56', 'mri56', 'marie56@yopmail.fr'),
(34, 'paul_alphonse', 'pue', 'paul_alphonse@yopmail.fr');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `asso_question_tag`
--
ALTER TABLE `asso_question_tag`
  ADD CONSTRAINT `asso_question_tag_ibfk_2` FOREIGN KEY (`tag`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asso_question_tag_ibfk_1` FOREIGN KEY (`question`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`auteur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`best_rep`) REFERENCES `reponse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`question`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reponse_ibfk_2` FOREIGN KEY (`auteur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
