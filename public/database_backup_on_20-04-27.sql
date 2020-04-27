

CREATE TABLE `add_depts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `add_diagnoses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `addcares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `authorizations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hmo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `consultations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NHIS` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HCP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discharge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `dailies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `descriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `diagnoses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `diagnosis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `doctors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choose` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `drug_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO drug_categories (id, name, created_at, updated_at) VALUES ('1','Paracetamol','2020-04-09 14:02:24','2020-04-09 14:02:24');

INSERT INTO drug_categories (id, name, created_at, updated_at) VALUES ('2','ANTI INFECTIVES DRUGS','2020-04-15 15:26:49','2020-04-15 15:26:49');


CREATE TABLE `drug_prescribes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `drugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `strength` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1','ANAESTHETICS','Halothane','Inhalation, liquid','10mg/ml in 20ml','250ml bottle','0','2020-04-13 17:20:49','2020-04-13 17:20:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('2','ANAESTHETICS','Ketamine','Injection (HCL)','50mg/ml in 10ml, 100mg/ml in 5ml','vial','0','2020-04-13 17:22:03','2020-04-13 17:22:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('3','ANAESTHETICS','Nitrous Oxide','Inhalation, medicinal gas','nil','nil','0','2020-04-13 17:23:05','2020-04-13 17:23:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('4','ANAESTHETICS','Oxygen','inhalation, medicinal gas','nil','nil','0','2020-04-13 17:24:58','2020-04-13 17:24:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('5','ANAESTHETICS','Thiopental','Injection (powder) for IV as Sodium Salt','100mg/ml in 5ml','Vial','0','2020-04-13 17:26:25','2020-04-13 17:26:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('6','ANAESTHETICS','Atropine','Injection ( Sulphate)','0.5mg/amp','Amp','50.00','2020-04-13 17:27:13','2020-04-13 17:27:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('7','ANAESTHETICS','Atropine','Injection ( Sulphate)','1mg/1ml','Amp','50.00','2020-04-13 17:27:50','2020-04-13 17:27:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('8','ANAESTHETICS','Atropine','Injection ( Sulphate)','1mg/1ml','Amp','50.00','2020-04-13 17:27:50','2020-04-13 17:27:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('9','ANAESTHETICS','Diazepam','Injection','5mg/ml in 2ml','Amp','150.00','2020-04-13 17:28:35','2020-04-13 17:28:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('10','ANAESTHETICS','Hyoscine N-Butylbromide','injection','20mg/ml','Amp','20.00','2020-04-13 17:30:32','2020-04-13 17:30:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('11','ANAESTHETICS','Morphine','Injection ( Sulphate or HCL)','10mg/ml; 15mg/ml in 1ml ampoule','Amp','200.00','2020-04-13 17:31:30','2020-04-13 17:31:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('12','ANAESTHETICS','Morphine','Injection ( Sulphate or HCL)','10mg/ml; 15mg/ml in 1ml ampoule','Amp','200.00','2020-04-13 17:31:30','2020-04-13 17:31:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('13','ANAESTHETICS','Morphine','Injection ( Sulphate or HCL)','25mg, (Hydrochloride)','Amp','300.00','2020-04-13 17:32:06','2020-04-13 17:32:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('14','ANAESTHETICS','Morphine','Injection ( Sulphate or HCL)','25mg, (Hydrochloride)','Amp','300.00','2020-04-13 17:32:06','2020-04-13 17:32:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('15','ANAESTHETICS','Promethazine','Tablet','5mg/5ml','Tab','5.00','2020-04-13 17:32:46','2020-04-13 17:32:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('16','ANAESTHETICS','Promethazine','Syrup','25mg/ml (HCL) in 1 ml','60mls','150.00','2020-04-13 17:33:31','2020-04-13 17:33:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('17','ANAESTHETICS','Promethazine','Injection','2ml Ampoule','Amp','20.00','2020-04-13 17:34:44','2020-04-13 17:34:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('18','ANAESTHETICS','Atracurium','Injection','50mg/ml','Amp','1600.00','2020-04-13 17:35:57','2020-04-13 17:35:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('19','ANAESTHETICS','Atracurium','Injection','50mg/ml','Amp','1600.00','2020-04-13 17:35:57','2020-04-13 17:35:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('20','ANAESTHETICS','Edrophonium','Injection (Chloride)','10mg/ml','Amp','0','2020-04-13 17:36:59','2020-04-13 17:36:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('21','ANAESTHETICS','Edrophonium','Injection (Chloride)','10mg/ml','Amp','0','2020-04-13 17:36:59','2020-04-13 17:36:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('22','ANAESTHETICS','Neostigmine','injection (Methylsulphate)','2.5mg/ml in 1ml ampoule','Amp','250.00','2020-04-13 17:39:19','2020-04-13 17:39:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('23','ANAESTHETICS','Neostigmine','injection (Methylsulphate)','2.5mg/ml in 1ml ampoule','Amp','250.00','2020-04-13 17:39:19','2020-04-13 17:39:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('24','ANAESTHETICS','Pancuronium','Injection ( Bromide)','4mg/2ml','Amp','360.00','2020-04-13 17:40:05','2020-04-13 17:40:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('25','ANAESTHETICS','Pancuronium','Injection ( Bromide)','4mg/2ml','Amp','360.00','2020-04-13 17:40:05','2020-04-13 17:40:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('26','ANAESTHETICS','Pancuronium','Injection ( Bromide)','nil','Amp','360.00','2020-04-13 17:40:40','2020-04-13 17:40:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('27','ANAESTHETICS','Pancuronium','Injection ( Bromide)','nil','Amp','360.00','2020-04-13 17:40:40','2020-04-13 17:40:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('28','ANAESTHETICS','Suxamethonium','Injection (Chloride)','100mg/2ml','Amp','250.00','2020-04-13 17:42:32','2020-04-13 17:42:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('29','ANAESTHETICS','Suxamethonium','Injection (Chloride)','100mg/2ml','Amp','250.00','2020-04-13 17:42:32','2020-04-13 17:42:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('30','ANAESTHETICS','Lidocaine','Injection ( HCL)','1%,/2%+ Adrenaline 1:200000','vial 50mls','400.00','2020-04-13 17:44:12','2020-04-13 17:44:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('31','ANAESTHETICS','Bupivacaine','Injection ( HCL)','Plain or with epinephrine','Amp','800.00','2020-04-13 17:44:55','2020-04-13 17:44:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('32','ANAESTHETICS','Lidocaine','nil','10%','nil','400.00','2020-04-13 17:45:46','2020-04-13 17:45:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('33','ANAESTHETICS','Lidocaine','nil','10%','nil','400.00','2020-04-13 17:45:46','2020-04-13 17:45:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('34','ANAESTHETICS','Lidocaine','Topical spray','2.4%','spray','1500.00','2020-04-13 17:46:26','2020-04-13 17:46:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('35','ANAESTHETICS','Lidocaine','Topical spray','2.4%','spray','1500.00','2020-04-13 17:46:26','2020-04-13 17:46:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('36','ANAESTHETICS','Lidocaine','Jelly','2-5%','Tube','900.00','2020-04-13 17:47:20','2020-04-13 17:47:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('37','ANAESTHETICS','Lidocaine','Jelly','2-5%','Tube','900.00','2020-04-13 17:47:20','2020-04-13 17:47:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('38','ANAESTHETICS','Lidocaine','Cream, Oitment','2%,+epinephrine (adrenaline) 1:80000','Tube','850.00','2020-04-13 17:48:14','2020-04-13 17:48:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('39','ANAESTHETICS','Lidocaine','Cream, Oitment','2%,+epinephrine (adrenaline) 1:80000','Tube','850.00','2020-04-13 17:48:14','2020-04-13 17:48:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('40','ANAESTHETICS','Lidocaine','Dental catridge','0.25%, 0.5% in 10ml amp (with or without epinephrine (adrenaline) 1:200,000','Tube','0','2020-04-13 17:49:02','2020-04-13 17:49:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('41','ANAESTHETICS','Prilocaine','Injection','3% with felypressin 0.03units/ml','Amp','800.00','2020-04-13 17:49:47','2020-04-13 17:49:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('42','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Morphine','Injection','10mg (SO4, HCL) IN 1ML AMPOULE','Amp','200.00','2020-04-13 17:54:42','2020-04-13 17:54:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('43','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Morphine','Injection','10mg (SO4, HCL) IN 1ML AMPOULE','Amp','200.00','2020-04-13 17:54:42','2020-04-13 17:54:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('44','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Morphine','Injection','15mg (SO4, HCl) in 1ml Ampoule','Amp','300.00','2020-04-13 17:55:17','2020-04-13 17:55:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('45','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Morphine','Injection','15mg (SO4, HCl) in 1ml Ampoule','Amp','300.00','2020-04-13 17:55:17','2020-04-13 17:55:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('46','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Morphine','Tablet','30mg','Tab','100.00','2020-04-13 17:56:14','2020-04-13 17:56:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('47','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pentazocine','Injection ( lactate)','30mg/ml','Amp','200.00','2020-04-13 17:58:05','2020-04-13 17:58:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('48','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pentazocine','Injection ( lactate)','30mg/ml','Amp','200.00','2020-04-13 17:58:05','2020-04-13 17:58:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('49','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pentazocine','Tablet','25mg','Tab','50.00','2020-04-13 17:59:03','2020-04-13 17:59:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('50','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pentazocine','Capsule','50mg','Caps','50.00','2020-04-13 18:00:11','2020-04-13 18:00:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('51','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pethidine','Injection','50mg/ml in 2ml Ampoule','Amp','200.00','2020-04-13 18:01:43','2020-04-13 18:01:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('52','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pethidine','Injection','50mg','Amp','150.00','2020-04-13 18:02:17','2020-04-13 18:02:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('53','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pethidine','Tablet','50mg or 100mg','Tab','50.00','2020-04-13 18:02:58','2020-04-13 18:02:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('54','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Pethidine','Tablet','50mg or 100mg','Tab','50.00','2020-04-13 18:02:58','2020-04-13 18:02:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('55','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Tramadol','Tablet','50mg','Tab','30.00','2020-04-13 18:03:34','2020-04-13 18:03:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('56','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Tramadol','Tablet','50mg','Tab','30.00','2020-04-13 18:03:34','2020-04-13 18:03:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('57','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Tramadol','Injection','50mg/ml ampoule','Amp','100.00','2020-04-13 18:04:37','2020-04-13 18:04:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('58','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Tramadol','Injection','50mg/ml ampoule','Amp','100.00','2020-04-13 18:04:37','2020-04-13 18:04:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('59','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Naloxone','Injection','0.4mg/ml in 1ml Ampoule','Amp','3500.00','2020-04-13 18:05:27','2020-04-13 18:05:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('60','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Naloxone','Injection','0.4mg/ml in 1ml Ampoule','Amp','3500.00','2020-04-13 18:05:27','2020-04-13 18:05:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('61','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Acetyl Salicylic Acid','Tablet, Capsule','300mg','Tab/Cap','2.00','2020-04-13 18:06:22','2020-04-13 18:06:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('62','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Tablet','500mg','Tab','3.00','2020-04-13 18:07:01','2020-04-13 18:07:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('63','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Suppository','100mg','Supp','30.00','2020-04-13 18:07:44','2020-04-13 18:07:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('64','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Syrup/Suspension','125mg/5ml','60mls','120.00','2020-04-13 18:08:34','2020-04-13 18:08:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('65','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Syrup/Suspension','125mg/5ml','60mls','120.00','2020-04-13 18:08:34','2020-04-13 18:08:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('66','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Drop','125mg/5ml','15ml','200.00','2020-04-13 18:09:52','2020-04-13 18:09:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('67','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Drop','125mg/5ml','15ml','200.00','2020-04-13 18:09:52','2020-04-13 18:09:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('68','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Injection','150mg/ml','Amp','30.00','2020-04-13 18:10:28','2020-04-13 18:10:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('69','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Injection','150mg/ml','Amp','30.00','2020-04-13 18:10:28','2020-04-13 18:10:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('70','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Infusion','50ml','Infusion','400.00','2020-04-13 18:11:19','2020-04-13 18:11:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('71','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Paracetamol','Infusion','50ml','Infusion','400.00','2020-04-13 18:11:19','2020-04-13 18:11:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('72','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Allopurinol','Tablet','100mg','Tab','20.00','2020-04-13 18:12:17','2020-04-13 18:12:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('73','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Allopurinol','Tablet','100mg','Tab','20.00','2020-04-13 18:12:17','2020-04-13 18:12:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('74','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Celecoxib','Capsule','200mg','Caps','180.00','2020-04-13 18:13:04','2020-04-13 18:13:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('75','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Celecoxib','Capsule','200mg','Caps','180.00','2020-04-13 18:13:04','2020-04-13 18:13:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('76','NONE','NO DRUG','NONE','NONE','NONE','0','2020-04-13 18:48:17','2020-04-13 18:48:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('77','NONE','NO DRUG','NONE','NONE','NONE','0','2020-04-13 18:48:17','2020-04-13 18:48:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('78','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Chondriothin Sulphate + Glucoseamine','Capsule','200mg+250mg','Caps','60.00','2020-04-14 15:49:18','2020-04-14 15:49:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('79','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac (Sodium or Potassium Salt)','Tablet','100mg','Tab','20.00','2020-04-14 15:49:51','2020-04-14 15:49:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('80','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac (Sodium or Potassium Salt)','Tablet','50mg','Tab','15.00','2020-04-14 15:50:30','2020-04-14 15:50:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('81','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac (Sodium or Potassium Salt)','Injection','25mg/ml Ampoule','Amp','50.00','2020-04-14 15:51:31','2020-04-14 15:51:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('82','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium','Gel','1%','Tube','400.00','2020-04-14 15:53:16','2020-04-14 15:53:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('83','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium + Misoprostol','Tablet','Single','Tab','65.00','2020-04-14 15:53:51','2020-04-14 15:53:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('84','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium + Misoprostol','Tablet','Forte','Tab','65.00','2020-04-14 15:54:59','2020-04-14 15:54:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('85','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium + Misoprostol','Tablet','50mg/200mcg','Tab','70.00','2020-04-14 15:56:08','2020-04-14 15:56:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('86','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium + Misoprostol','Tablet','75mg/200mcg','Tab','80.00','2020-04-14 15:56:49','2020-04-14 15:56:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('87','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium+B1+B6+B12','Tablet','nil','nil','20.00','2020-04-14 15:57:31','2020-04-14 15:57:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('88','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Diclofenac Sodium+Cholestyramine','Tablet','75mg/65mg','Tab','150.00','2020-04-14 15:58:06','2020-04-14 15:58:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('89','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ibuprofen','Tablet, Capsule','200mg','Tab','10.00','2020-04-14 15:58:37','2020-04-14 15:58:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('90','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ibuprofen','Tablet, Capsule','400mg','Tab','20.00','2020-04-14 16:00:12','2020-04-14 16:00:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('91','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ibuprofen','Suspension','100mg/5ml','100ml','250.00','2020-04-14 16:01:01','2020-04-14 16:01:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('92','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ketoprofen','Capsule','150mg or 200mg','caps/Tab','50.00','2020-04-14 16:01:57','2020-04-14 16:01:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('93','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ketoprofen','Injection','100mg','2ml Amp','100.00','2020-04-14 16:02:45','2020-04-14 16:02:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('94','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Naproxen','Tablet','250mg','Tab','40.00','2020-04-14 16:03:51','2020-04-14 16:03:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('95','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Naproxen','Tablet','500mg','Tab','60.00','2020-04-14 16:04:29','2020-04-14 16:04:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('96','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Piroxicam','Capsule','20mg','Caps','10.00','2020-04-14 16:08:45','2020-04-14 16:08:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('97','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Piroxicam','Injection','10mg/ml','2ml Amp','100.00','2020-04-14 16:10:13','2020-04-14 16:10:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('98','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ophenadrine','Tablet (citrate)','100mg','Tab','20.00','2020-04-14 16:10:48','2020-04-14 16:10:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('99','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Ophenadrine + Paracetamol','Tablet (citrate)','35mg+450mg','Tab','20.00','2020-04-14 16:11:36','2020-04-14 16:11:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('100','ANALGESICS, ANTIPYRETICS & NON-STEROID ANTI-INFLAMATORY','Tizanidine','Tablet','6mg','Tab','50.00','2020-04-14 16:12:14','2020-04-14 16:13:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('101','ANTI-ALLERGICS','Cetrizine','Tablet','10mg','Tab','30.00','2020-04-14 16:14:04','2020-04-14 16:14:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('102','ANTI-ALLERGICS','Cetrizine','Syrup','1mg/5ml','100ml','1500.00','2020-04-14 16:15:22','2020-04-14 16:15:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('103','ANTI-ALLERGICS','Chlorpheniramine','Tablet','4mg (Maleate)','Tab','5.00','2020-04-14 16:16:53','2020-04-14 16:16:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('104','ANTI-ALLERGICS','Chlorpheniramine','Syrup','2mg/5ml','60mls','180.00','2020-04-14 16:17:31','2020-04-14 16:17:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('105','ANTI-ALLERGICS','Chlorpheniramine','Injection','10mg (Maleate) in 1ml Ampoule','Amp','25.00','2020-04-14 16:18:25','2020-04-14 16:18:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('106','ANTI-ALLERGICS','Clemastine','Tablet','1mg','Tab','20.00','2020-04-14 16:20:00','2020-04-14 16:20:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('107','ANTI-ALLERGICS','Clemastine','Syrup','500mcg/5ml','100ml','400.00','2020-04-14 16:21:47','2020-04-14 16:24:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('108','ANTI-ALLERGICS','Loratidine','Tablet','10mg','Tab','20.00','2020-04-14 16:22:29','2020-04-14 16:22:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('109','ANTI-ALLERGICS','Loratidine','Syrup','5mg/5ml','60mls','1000.00','2020-04-14 16:25:17','2020-04-14 16:25:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('110','ANTI-ALLERGICS','Promethazine','Tablet','25mg, (Hydrochloride)','Tab','5.00','2020-04-14 16:25:49','2020-04-14 16:25:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('111','ANTI-ALLERGICS','Promethazine','Syrup','5mg/5ml','60mls','150.00','2020-04-14 16:28:30','2020-04-14 16:28:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('112','ANTI-ALLERGICS','Promethazine','Injection','25mg/ml (HCL) in 2 ml Ampoule','Amp','20.00','2020-04-14 16:30:03','2020-04-14 16:30:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('113','ANTI-ALLERGICS','Dexamethasone','Injection (sodim phosphate)','4mg/ml','Amp','20.00','2020-04-14 16:31:14','2020-04-14 16:31:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('114','ANTI-ALLERGICS','Epinephrine (Adrenaline)','Injection','1mg/ml (1 in 1000) as Acid tartrate','Amp','30.00','2020-04-14 16:31:52','2020-04-14 16:31:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('115','ANTI-ALLERGICS','Epinephrine (Adrenaline)','Injection','Hcl  in 1ml ampoule','Amp','30.00','2020-04-14 16:32:40','2020-04-14 16:32:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('116','ANTI-ALLERGICS','Hydrocortisone','Injection','Powder for reconstitution, 100mg','Vial','120.00','2020-04-14 16:34:24','2020-04-14 16:34:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('117','ANTI-ALLERGICS','Hydrocortisone','Injection','(Sodium Succinate) in vial','Vial','120.00','2020-04-14 16:35:16','2020-04-14 16:35:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('118','ANTIDOTES','Atropine','Injection','1mg (sulphate) in 1ml Ampoule','Amp','50.00','2020-04-14 16:48:15','2020-04-14 16:48:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('119','ANTIDOTES','Atropine','Tablet','1mg','Tab','50.00','2020-04-14 16:48:52','2020-04-14 16:48:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('120','ANTIDOTES','Deferoxamine','Injection (mesilate)','500mg/vial','Vial','2250.00','2020-04-14 16:49:45','2020-04-14 16:49:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('121','ANTIDOTES','Dimercaprol','Injection','50mg/ml in 2ml Ampoule','Amp','0','2020-04-14 17:01:45','2020-04-14 17:01:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('122','ANTIDOTES','Methylene blue','Injection','5ml','Amp','400.00','2020-04-14 17:02:27','2020-04-14 17:02:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('123','ANTIDOTES','Methylene blue','Injection','50ml','Amp','2500.00','2020-04-14 17:03:12','2020-04-14 17:03:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('124','ANTIDOTES','Naloxone','Injection ( HCL)','400mcg/ml','Amp','3500.00','2020-04-14 17:04:19','2020-04-14 17:04:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('125','ANTIDOTES','Phytomenadione (Vitamin K1)','Ampoule','10mg/ml','Amp','180.00','2020-04-14 17:05:00','2020-04-14 17:05:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('126','ANTIDOTES','Potassium ferric hexacyanoferrate(11) (Prussian blue)','powder for oral administration','nil','powder','0','2020-04-14 17:05:34','2020-04-14 17:05:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('127','ANTIDOTES','Prothamine sulphate','Injection','10mg/ml in 5ml','Amp','750.00','2020-04-14 17:06:15','2020-04-14 17:06:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('128','ANTIDOTES','Sodium calcium edetate','Injection','200mg/ml in 5ml','Amp','500.00','2020-04-14 17:07:02','2020-04-14 17:07:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('129','ANTIDOTES','Sodium nitrite','Injection','30mg/ml','Vial','330.00','2020-04-14 17:07:42','2020-04-14 17:07:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('130','ANTIDOTES','Sodium Thiosulphate','Injection','500mg/ml','Amp','0','2020-04-14 17:08:15','2020-04-14 17:08:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('131','ANTIDOTES','Activated Charcoal','Tablet','tablet','Tab','40.00','2020-04-14 17:15:07','2020-04-14 17:15:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('132','ANTIDOTES','Activated Charcoal','Granule, Powder for','5g/sachet, powder 25g, 50g pack, for','nil','700.00','2020-04-14 17:24:50','2020-04-14 17:24:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('133','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Carbamazepine','Tablet','200mg','Tab','10.00','2020-04-14 17:25:39','2020-04-14 17:25:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('134','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Carbamazepine','Tablet','400mg SR','Tab','60.00','2020-04-14 17:26:20','2020-04-14 17:26:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('135','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Carbamazepine','Syrup','100mg/5ml','100ml','1500.00','2020-04-14 17:27:17','2020-04-14 17:27:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('136','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Diazepam','Injection','5mg/ml in 2ml','Amp','150.00','2020-04-14 17:27:58','2020-04-14 17:27:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('137','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Ethosuximide','Tablet, Capsule','250mg','Caps','55.00','2020-04-14 17:28:58','2020-04-14 17:28:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('138','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Ethosuximide','Syrup','250mg/5ml','100mls','0','2020-04-14 17:29:36','2020-04-14 17:29:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('139','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Magnesium Sulphate','Injection','50% (500mg/ml) in 2ml','Amp','400.00','2020-04-14 17:30:08','2020-04-14 17:30:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('140','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Paraldehyde','Injection','10ml,5mls','Amp','200.00','2020-04-14 17:30:54','2020-04-14 17:30:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('141','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Phenobarbital','Tablet','15mg','Tab','5.00','2020-04-14 17:31:42','2020-04-14 17:31:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('142','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Phenobarbital','Tablet','30mg, 60mg','Tab','10.00','2020-04-14 17:32:17','2020-04-14 17:32:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('143','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Phenobarbital','Elixir, Syrup','15mg/ml','60mls','250.00','2020-04-14 17:33:05','2020-04-14 17:33:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('144','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Phenobarbital','Injection','200mg/ml','Amp','150.00','2020-04-14 17:34:02','2020-04-14 17:34:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('145','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Phenytoin Sodium','Capsule','100mg, 50mg, 25mg','Caps','30.00','2020-04-14 17:34:43','2020-04-14 17:34:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('146','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Sodium Valproate','Tablet','200mg','Tab','60.00','2020-04-14 17:35:28','2020-04-14 17:35:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('147','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Sodium Valproate','Tablet','500mg SR','Tab','140.00','2020-04-14 17:36:03','2020-04-14 17:36:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('148','ANTI CONVULSANTS (ANTI-EPILEPTICS)','Sodium Valproate','Elixir, Syrup','200mg/5ml','200mls','3500.00','2020-04-14 17:37:14','2020-04-14 17:37:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('149','ANTI INFECTIVES DRUGS','Metronidazole','Tablet','200mg','Tab','5.00','2020-04-15 15:28:38','2020-04-15 15:28:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('150','ANTI INFECTIVES DRUGS','Metronidazole','Tablet','400mg','Tab','6.00','2020-04-15 15:34:07','2020-04-15 15:34:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('151','ANTI INFECTIVES DRUGS','Metronidazole','Suspension','200mg/5ml','60mls','100.00','2020-04-15 15:35:06','2020-04-15 15:35:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('152','ANTI INFECTIVES DRUGS','Metronidazole','IV Injection','500mg in 100ml bottle','100mls','100.00','2020-04-15 15:37:40','2020-04-15 15:37:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('153','ANTI INFECTIVES DRUGS','Metronidazole','Suppository','500mg','supp/ovule','100.00','2020-04-15 15:39:05','2020-04-15 15:39:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('154','ANTI INFECTIVES DRUGS','Secnidazole','4 Tablets (single dose)','500mg','4 tabs','360.00','2020-04-15 15:40:44','2020-04-15 15:40:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('155','ANTI INFECTIVES DRUGS','Tinidazole','4 Tablets (single dose)','500mg','4 tabs','100.00','2020-04-15 15:41:42','2020-04-15 15:41:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('156','ANTI INFECTIVES DRUGS','Albendazole','Tablet','200mg','2 tabs','150.00','2020-04-15 15:42:49','2020-04-15 15:42:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('157','ANTI INFECTIVES DRUGS','Albendazole','Suspension Oral','100mg/5ml','30mls','180.00','2020-04-15 15:44:18','2020-04-15 15:44:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('158','ANTI INFECTIVES DRUGS','Levamisole','Tablet','40mg','Tab','20.00','2020-04-15 15:44:59','2020-04-15 15:44:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('159','ANTI INFECTIVES DRUGS','Levamisole','Suspension','40mg/5mls','30mls','150.00','2020-04-15 15:45:56','2020-04-15 15:45:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('160','ANTI INFECTIVES DRUGS','Mebendazole','Tablet','100mg','6's','350.00','2020-04-15 15:47:19','2020-04-15 15:47:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('161','ANTI INFECTIVES DRUGS','Mebendazole','Tablet','500mg','x1','350.00','2020-04-15 15:48:48','2020-04-15 15:48:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('162','ANTI INFECTIVES DRUGS','Mebendazole','Suspension','100mg/5ml','30mls','900.00','2020-04-15 15:49:37','2020-04-15 15:49:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('163','ANTI INFECTIVES DRUGS','Pyrantel Pamoate','Tablet','125mg (pamoate)','6's','250.00','2020-04-15 15:51:16','2020-04-15 15:51:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('164','ANTI INFECTIVES DRUGS','Pyrantel Pamoate','Syrup','125mg/5ml','15mls','250.00','2020-04-15 15:52:05','2020-04-15 15:52:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('165','ANTI INFECTIVES DRUGS','Praziquantel','Tablet','600mg','Tab','60.00','2020-04-15 15:53:06','2020-04-15 15:53:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('166','ANTI INFECTIVES DRUGS','Ivermectin','Tablet','6mg','Tab','5.00','2020-04-15 15:53:47','2020-04-15 15:53:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('167','ANTI INFECTIVES DRUGS','a-B-Artemether Injection','Ampoule','150mg/2ml','Amp x 3s','1350.00','2020-04-15 15:55:48','2020-04-15 15:55:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('168','ANTI INFECTIVES DRUGS','Artemether','Injection (phosphate)','80mg/ml','Amp','200.00','2020-04-15 15:57:25','2020-04-15 15:57:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('169','ANTI INFECTIVES DRUGS','Artemether','Injection (phosphate)','40mg/ml in 1ml Ampoule','Amp','150.00','2020-04-15 15:59:19','2020-04-15 15:59:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('170','ANTI INFECTIVES DRUGS','Artemether + Lumefantrine','Tablet','20mg/120mg','Tab x 12s','600.00','2020-04-15 16:01:11','2020-04-15 16:01:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('171','ANTI INFECTIVES DRUGS','Artemether + Lumefantrine','Tablet','80mg/480mg','tab x 6s','500.00','2020-04-15 16:03:36','2020-04-15 16:03:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('172','ANTI INFECTIVES DRUGS','Artemether + Lumefantrine','Paediatric Dispersible Tabet','10mg/60mg','tab x 24s','600.00','2020-04-15 16:05:18','2020-04-15 16:05:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('173','ANTI INFECTIVES DRUGS','Artemether + Lumefantrine','Suspension','180mg/1080mg','60mls','600.00','2020-04-15 16:06:09','2020-04-15 16:06:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('174','ANTI INFECTIVES DRUGS','Artemether + Lumefantrine','Suppository','20mg/120mg','x 6s','600.00','2020-04-15 16:07:07','2020-04-15 16:07:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('175','ANTI INFECTIVES DRUGS','Artesunate','Tablet','50mg/tab','Tab','40.00','2020-04-15 16:11:13','2020-04-15 16:11:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('176','ANTI INFECTIVES DRUGS','Artesunate','Syrup','80mg/5ml','100mls','600.00','2020-04-15 16:15:35','2020-04-15 16:15:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('177','ANTI INFECTIVES DRUGS','Atersunate + Sulfadoxine+Pyrimethamine','Tablet (Adult)','200mg/500mg/25mg','Tab x3s','600.00','2020-04-15 16:19:22','2020-04-15 16:19:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('178','ANTI INFECTIVES DRUGS','Atersunate + Sulfadoxine+Pyrimethamine','(Paed)','100mg/250mg/12.5mg','Tab x3s','400.00','2020-04-15 16:23:03','2020-04-15 16:23:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('179','ANTI INFECTIVES DRUGS','Atersunate+Amodiaquine','Tablet','50mg/200mg','Tab x 12s','600.00','2020-04-15 16:26:33','2020-04-15 16:26:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('180','ANTI INFECTIVES DRUGS','Atersunate+Amodiaquine','DS','200MG/600MG','6's','600.00','2020-04-15 16:27:58','2020-04-15 16:27:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('181','ANTI INFECTIVES DRUGS','Atersunate + Mefloquine','Tablet (Adult)','200mg/250mg','tab x 6s','1000.00','2020-04-15 16:30:02','2020-04-15 16:30:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('182','ANTI INFECTIVES DRUGS','Atersunate + Mefloquine','(Paed)','100mg/125mg','tab x 6s','350.00','2020-04-15 16:30:54','2020-04-15 16:30:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('183','ANTI INFECTIVES DRUGS','Cloroquine (restricted)','Tablet, Capsule','300mg','Tab/Cap','10.00','2020-04-15 16:31:59','2020-04-15 16:31:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('184','ANTI INFECTIVES DRUGS','Chloroquine (restricted)','Injection','200mg/5ml','Amp','30.00','2020-04-15 16:33:33','2020-04-15 16:33:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('185','ANTI INFECTIVES DRUGS','Chloroquine (restricted)','Syrup','75mg/ml','60ml','120.00','2020-04-15 16:34:25','2020-04-15 16:34:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('186','ANTI INFECTIVES DRUGS','Dihydroartemisinin','Tablet','60mg/tablet','8s','640.00','2020-04-15 16:38:44','2020-04-15 16:38:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('187','ANTI INFECTIVES DRUGS','Dihydroartemisinin','Suspension','160mg/80mls','80mls','600.00','2020-04-15 16:39:31','2020-04-15 16:39:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('188','ANTI INFECTIVES DRUGS','Dihydroartemisinin + Piperaquine phosphate','Tablet','40mg/320mls','tab x 8s','650.00','2020-04-15 16:43:00','2020-04-15 16:43:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('189','ANTI INFECTIVES DRUGS','Dihydroartemisinin + Piperaquine phosphate','Tablet','30mg/225mg','tab x 8s','550.00','2020-04-15 16:44:19','2020-04-15 16:44:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('190','ANTI INFECTIVES DRUGS','Dihydroartemisinin + Piperaquine phosphate','''DS','62.5MG/375MG','tab x 8s','600.00','2020-04-15 16:45:26','2020-04-15 16:45:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('191','ANTI INFECTIVES DRUGS','Dihydroartemisinin + Piperaquine phosphate','Suspension','80/640mg','80mls bottle','600.00','2020-04-15 16:46:23','2020-04-15 16:46:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('192','ANTI INFECTIVES DRUGS','Proguanil','Tablet','100mg(HC1)','Tab','10.00','2020-04-15 16:47:57','2020-04-15 16:47:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('193','ANTI INFECTIVES DRUGS','Pyrimethamine + Sulphadoxine','Tablet','25mg Pyrimethamine +500mg Sulphadoxine','3's','150.00','2020-04-15 16:50:06','2020-04-15 16:50:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('194','ANTI INFECTIVES DRUGS','Pyrimethamine','Tablet','25mg pyrimethamine','Tab','10.00','2020-04-15 16:52:25','2020-04-15 16:52:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('195','ANTI INFECTIVES DRUGS','Quinine','Tablet','300mg','Tab','10.00','2020-04-15 16:53:36','2020-04-15 16:53:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('196','ANTI INFECTIVES DRUGS','Quinine','Injection','300mg(dihydrochloride)/ml in 2ml ampoule','Amp','100.00','2020-04-15 16:55:08','2020-04-15 16:55:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('197','ANTI INFECTIVES DRUGS','Quinine','Syrup','nil','100ml','450.00','2020-04-15 16:55:48','2020-04-15 16:55:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('198','ANTI INFECTIVES DRUGS','Meglumine antimonate','Injection','30% equiv to 8.5% of total antimony in 5ml amp','Amp','0','2020-04-15 16:59:37','2020-04-15 16:59:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('199','ANTI INFECTIVES DRUGS','Meglumine antimonate','Injection','300mg (isethionate)/vial','Amp','0','2020-04-15 17:00:46','2020-04-15 17:00:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('200','ANTI INFECTIVES DRUGS','Melarsoprol','Injection','3.6% solution in propylene glycol','Vial','0','2020-04-15 17:02:02','2020-04-15 17:02:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('201','ANTI INFECTIVES DRUGS','Pentamidine','Injection, powder','10% of total antimony','Vial','0','2020-04-15 17:02:56','2020-04-15 17:02:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('202','ANTI INFECTIVES DRUGS','Sodium Stibogluconate','Injection','1gm/vial','Amp','0','2020-04-15 17:03:38','2020-04-15 17:03:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('203','ANTI INFECTIVES DRUGS','Amoxyllin','Capsule','250mg','Caps','10.00','2020-04-16 14:44:25','2020-04-16 14:44:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('204','ANTI INFECTIVES DRUGS','Amoxyllin','Capsule','500mg','Caps','15.00','2020-04-16 14:45:11','2020-04-16 14:45:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('205','ANTI INFECTIVES DRUGS','Amoxyllin','powder for oral suspension','125mg/5ml','100ml','200.00','2020-04-16 14:46:25','2020-04-16 14:46:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('206','ANTI INFECTIVES DRUGS','Amoxyllin','Injection','500mg/vial','Vial','150.00','2020-04-16 14:47:12','2020-04-16 14:47:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('207','ANTI INFECTIVES DRUGS','Amoxyllin plus Clavulanic Acid (Co-amoxiclav)','Tablet, Capsule','250mg amoxyllin (Trihydrate)+125mg clavulanic Acid (potassium salt)','Tab','60.00','2020-04-16 14:50:23','2020-04-16 14:53:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('208','ANTI INFECTIVES DRUGS','Amoxyllin plus Clavulanic Acid (Co-amoxiclav)','Tablet, Capsule','500mg amoxyllin (Trihydrate)+125mg clavulanic Acid (potassium salt)','Tab','100.00','2020-04-16 14:51:33','2020-04-16 14:54:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('209','ANTI INFECTIVES DRUGS','Amoxyllin plus Clavulanic Acid (Co-amoxiclav)','powder for oral suspension','200mg amoxyllin (Trihydrate)+125mg clavulanic Acid (potassium salt)/5ML','100ml','1150.00','2020-04-16 15:01:59','2020-04-16 15:01:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('210','ANTI INFECTIVES DRUGS','Amoxyllin plus Clavulanic Acid (Co-amoxiclav)','powder for oral suspension','400mg amoxyllin (Trihydrate)+125mg clavulanic Acid (potassium salt)/5ml','100ml','1500.00','2020-04-16 15:03:15','2020-04-16 15:03:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('211','ANTI INFECTIVES DRUGS','Amoxyllin plus Clavulanic Acid (Co-amoxiclav)','Injection','500mg amoxyllin (Trihydrate)+125mg clavulanic Acid (potassium salt) in vial','Vial','450.00','2020-04-16 15:09:28','2020-04-16 15:09:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('212','ANTI INFECTIVES DRUGS','Amoxyllin plus Clavulanic Acid (Co-amoxiclav)','Injection','1g Amoxyllin (sodium salt) + 200mg Clavulanic Acid (potassium salt) in vial','Vial','700.00','2020-04-16 15:12:21','2020-04-16 15:12:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('213','ANTI INFECTIVES DRUGS','Ampicillin + Cloxacillin','Capsule','250mg of each constituent','Caps','10.00','2020-04-16 15:13:26','2020-04-16 15:13:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('214','ANTI INFECTIVES DRUGS','Ampicillin + Cloxacillin','powder for oral suspension','125mg of each/5ml','100mls','200.00','2020-04-16 15:14:26','2020-04-16 15:14:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('215','ANTI INFECTIVES DRUGS','Ampicillin + Cloxacillin','Nonatal Drops','Ampicillin 60mg + Cloxacillin 30mg/0.6mls','8mls','200.00','2020-04-16 15:18:02','2020-04-16 15:18:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('216','ANTI INFECTIVES DRUGS','Ampicillin + Cloxacillin','neonatal injection','ampicillin 50mg + cloxacillin 25mg','Amp','150.00','2020-04-16 15:19:47','2020-04-16 15:19:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('217','ANTI INFECTIVES DRUGS','Ampicillin + Cloxacillin','Injection','Ampicillin 250mg + Cloxacillin 250mg/vial (sodium salt of each)','Amp','120.00','2020-04-16 15:22:02','2020-04-16 15:22:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('218','ANTI INFECTIVES DRUGS','Azithromycin','Capsule','250mg','Caps','150.00','2020-04-16 15:22:49','2020-04-16 15:22:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('219','ANTI INFECTIVES DRUGS','Azithromycin','Capsule','500mg','Caps','350.00','2020-04-16 15:23:45','2020-04-16 15:23:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('220','ANTI INFECTIVES DRUGS','Azithromycin','Suspension','200mg/5ml','30mls','1000.00','2020-04-16 15:25:14','2020-04-16 15:25:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('221','ANTI INFECTIVES DRUGS','Benzathine-Benzylepenicillin','Injection','2.4 M.U. of benzylpenicillin','Vial','400.00','2020-04-16 15:26:36','2020-04-16 15:26:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('222','ANTI INFECTIVES DRUGS','Benzylepenicillin','Injection, powder','1.0 MU vial','Vial','50.00','2020-04-16 15:28:05','2020-04-16 15:28:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('223','ANTI INFECTIVES DRUGS','Benzylepenicillin','Injection, powder','5 MU Vial','Vial','100.00','2020-04-16 15:28:54','2020-04-16 15:28:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('224','ANTI INFECTIVES DRUGS','Cefixime','Tablet','400mg','Tab','150.00','2020-04-16 15:29:44','2020-04-16 15:29:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('225','ANTI INFECTIVES DRUGS','Cefixime','Tablet','200mg','Tab','100.00','2020-04-16 15:30:19','2020-04-16 15:30:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('226','ANTI INFECTIVES DRUGS','Cefixime','Suspension','100mg/5ml','100ml','750.00','2020-04-16 15:31:00','2020-04-16 15:31:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('227','ANTI INFECTIVES DRUGS','Cefotaxime','Injection','500mg','Vial','300.00','2020-04-16 15:31:43','2020-04-16 15:31:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('228','ANTI INFECTIVES DRUGS','Cftazidime','Injection','1mg','Vial','800.00','2020-04-16 15:32:21','2020-04-16 15:32:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('229','ANTI INFECTIVES DRUGS','Ceftriaxone','Injection','250mg','Vial','500.00','2020-04-16 15:33:18','2020-04-16 15:33:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('230','ANTI INFECTIVES DRUGS','Ceftriaxone','Injection','250mg','Vial','500.00','2020-04-16 15:33:55','2020-04-16 15:33:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('231','ANTI INFECTIVES DRUGS','Ceftriaxone','Injection','1g IV','Vial','700.00','2020-04-16 15:34:56','2020-04-16 15:34:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('232','ANTI INFECTIVES DRUGS','Cefuroxime','Tablet (axetil)','250mg','Tab','100.00','2020-04-16 15:36:01','2020-04-16 15:36:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('233','ANTI INFECTIVES DRUGS','Cefuroxime','Tablet (axetil)','500mg','Tab','160.00','2020-04-16 15:36:43','2020-04-16 15:36:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('234','ANTI INFECTIVES DRUGS','Cefuroxime','Suspension (axetil)','125mg/5ml','100mls','1200.00','2020-04-16 15:42:34','2020-04-16 15:42:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('235','ANTI INFECTIVES DRUGS','Cefuroxime','Injection (sodim salt)','750mg','Vial','500.00','2020-04-16 15:43:40','2020-04-16 15:43:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('236','ANTI INFECTIVES DRUGS','Cefuroxime','Injection (sodim salt)','250mg','Vial','400.00','2020-04-16 15:45:28','2020-04-16 15:45:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('237','ANTI INFECTIVES DRUGS','Cephalexin','Tablet, Capsule','500mg','caps/Tab','35.00','2020-04-16 15:46:22','2020-04-16 15:46:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('238','ANTI INFECTIVES DRUGS','Cephalexin','Suspension','125mg/5ml','100ml','480.00','2020-04-16 15:56:49','2020-04-16 15:56:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('239','ANTI INFECTIVES DRUGS','Cephalexin','Suspension','250mg/5ml','100mls','650.00','2020-04-16 15:58:14','2020-04-16 15:58:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('240','ANTI INFECTIVES DRUGS','Chloramphenicol (restricted)','Capsule','250mg','Caps','5.00','2020-04-16 16:00:49','2020-04-16 16:00:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('241','ANTI INFECTIVES DRUGS','Chloramphenicol (restricted)','Suspension, Oral','125mg/5ml (palmitate)','100mls','200.00','2020-04-16 16:02:02','2020-04-16 16:02:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('242','ANTI INFECTIVES DRUGS','Chloramphenicol (restricted)','Injection','1g (sodium succinate) in vial','Vial','100.00','2020-04-16 16:03:32','2020-04-16 16:03:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('243','ANTI INFECTIVES DRUGS','Ciprofloxacin','Tablet','250mg (HC1)','Tab','40.00','2020-04-16 16:05:12','2020-04-16 16:05:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('244','ANTI INFECTIVES DRUGS','Ciprofloxacin','Tablet','500mg (Hcl)','Tab','40.00','2020-04-16 16:08:55','2020-04-16 16:08:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('245','ANTI INFECTIVES DRUGS','Ciprofloxacin','Injection','I.V. 2mg/ml (lactate) in 50 and 100ml vials','Vial','100.00','2020-04-16 16:11:02','2020-04-16 16:11:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('246','ANTI INFECTIVES DRUGS','Clarithromycin','Tablet','250mg','Tab','100.00','2020-04-16 16:12:40','2020-04-16 16:12:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('247','ANTI INFECTIVES DRUGS','Clarithromycin','Tablet','500mg','Tab','120.00','2020-04-16 16:14:08','2020-04-16 16:14:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('248','ANTI INFECTIVES DRUGS','Clarithromycin','Suspension','125mg','Tab','880.00','2020-04-16 16:16:30','2020-04-16 16:16:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('249','ANTI INFECTIVES DRUGS','Clindamycin','Capsule','HCL 150mg','Caps','120.00','2020-04-16 16:17:44','2020-04-16 16:17:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('250','ANTI INFECTIVES DRUGS','Clindamycin','Injection','phosphate 150mg/ml','Amp','180.00','2020-04-16 16:18:33','2020-04-16 16:18:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('251','ANTI INFECTIVES DRUGS','Cloxacillin','Injection, powder','250mg','Vial','50.00','2020-04-16 16:19:21','2020-04-16 16:19:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('252','ANTI INFECTIVES DRUGS','Cloxacillin','Injection, powder','500mg in vial','Vial','70.00','2020-04-16 16:20:01','2020-04-16 16:20:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('253','ANTI INFECTIVES DRUGS','Cloxacillin','Capsule','250mg','Caps','20.00','2020-04-16 16:20:38','2020-04-16 16:20:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('254','ANTI INFECTIVES DRUGS','Cloxacillin','Suspension, Oral','125mg/5ml','100mls','180.00','2020-04-16 16:22:28','2020-04-16 16:22:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('255','ANTI INFECTIVES DRUGS','Co-trimoxazole','Tablet','400mg Sulphamethoxazole + 80mg Trimethoprim','Tab','5.00','2020-04-16 16:24:11','2020-04-16 16:24:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('256','ANTI INFECTIVES DRUGS','Co-trimoxazole','Tablet','800mg sulphamethaxazole +160mg Trimethoprim','Tab. (DS)','10.00','2020-04-16 16:25:20','2020-04-16 16:25:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('257','ANTI INFECTIVES DRUGS','Co-trimoxazole','Suspension','Sul[hamethoxazole 200mg +40mg Trimethoprim/5ml','60mls','150.00','2020-04-16 16:37:36','2020-04-16 16:37:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('258','ANTI INFECTIVES DRUGS','Doxycycline','Capsule','100mg','Caps','10.00','2020-04-16 16:38:40','2020-04-16 16:38:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('259','ANTI INFECTIVES DRUGS','Erythromycin','Tablets, capsules, enteric, film coated','250mg stearate or ethylsuccinate)','Tab','15.00','2020-04-16 16:40:24','2020-04-16 16:40:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('260','ANTI INFECTIVES DRUGS','Erythromycin','Tablets, capsules, enteric, film coated','500mg (stearate or ethylsuccinate)','Tab','30.00','2020-04-16 16:42:10','2020-04-16 16:42:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('261','ANTI INFECTIVES DRUGS','Erythromycin','Suspension, Oral','125mg/5ml (stearate or ethylsuccinate)','60mls','400.00','2020-04-16 16:43:29','2020-04-16 16:43:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('262','ANTI INFECTIVES DRUGS','Gentamycin','Injection','80mg/mls, 40mg/2mls (sulphate)','Amp','20.00','2020-04-16 16:44:43','2020-04-16 16:44:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('263','ANTI INFECTIVES DRUGS','Gentamycin','Injection','20mg/2ml','Amp','20.00','2020-04-16 16:45:29','2020-04-16 16:45:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('264','ANTI INFECTIVES DRUGS','Levofloxacin','Tablet','250mg','Tab','60.00','2020-04-16 16:53:41','2020-04-16 16:53:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('265','ANTI INFECTIVES DRUGS','Levofloxacin','Tablet','500mg','Tab','80.00','2020-04-16 16:54:10','2020-04-16 16:54:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('266','ANTI INFECTIVES DRUGS','Levofloxacin','Injection','500mg/100mls infusion','100mls','500.00','2020-04-16 16:55:11','2020-04-16 16:55:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('267','ANTI INFECTIVES DRUGS','Lincomycin','Capsule','500mg','Caps','30.00','2020-04-16 16:55:43','2020-04-16 16:55:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('268','ANTI INFECTIVES DRUGS','Lincomycin','Suspension','250mg/5ml','100mls','1150.00','2020-04-16 16:56:21','2020-04-16 16:56:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('269','ANTI INFECTIVES DRUGS','Lincomycin','Injection (phosphate)','150mg/ml in 2ml','Amp','150.00','2020-04-16 16:57:39','2020-04-16 16:57:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('270','ANTI INFECTIVES DRUGS','Metronidazole','Tablet','200mg','Tab','5.00','2020-04-16 16:58:17','2020-04-16 16:58:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('271','ANTI INFECTIVES DRUGS','Metronidazole','Tablet','400mg','Tab','6.00','2020-04-18 13:30:10','2020-04-18 13:30:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('272','ANTI INFECTIVES DRUGS','Metronidazole','Suspension','200mg/5ml','60mls','100.00','2020-04-18 13:30:46','2020-04-18 13:30:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('273','ANTI INFECTIVES DRUGS','Metronidazole','Suspension','200mg/5ml','60mls','100.00','2020-04-18 13:30:46','2020-04-18 13:30:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('274','ANTI INFECTIVES DRUGS','Metronidazole','IV Injection','500mg in 100ml bottle','100mls','100.00','2020-04-18 13:31:39','2020-04-18 13:31:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('275','ANTI INFECTIVES DRUGS','Metronidazole','IV Injection','500mg in 100ml bottle','100mls','100.00','2020-04-18 13:31:39','2020-04-18 13:31:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('276','ANTI INFECTIVES DRUGS','Nitrofurantoin','Tablet','50mg','Tab','50mg','2020-04-18 13:32:57','2020-04-18 13:32:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('277','ANTI INFECTIVES DRUGS','Nitrofurantoin','Tablet','100mg','Tab','10.00','2020-04-18 13:33:57','2020-04-18 13:33:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('278','ANTI INFECTIVES DRUGS','Nitrofurantoin','Tablet','100mg','Tab','10.00','2020-04-18 13:33:57','2020-04-18 13:33:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('279','ANTI INFECTIVES DRUGS','Ofloxacin','Tablet','200mg','Tab','50.00','2020-04-18 13:37:07','2020-04-18 13:37:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('280','ANTI INFECTIVES DRUGS','Ofloxacin','Tablet','200mg','Tab','50.00','2020-04-18 13:37:07','2020-04-18 13:37:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('281','ANTI INFECTIVES DRUGS','Ofloxacin','Injection','200mg/100ml infusion','100mls','300.00','2020-04-18 13:38:02','2020-04-18 13:38:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('282','ANTI INFECTIVES DRUGS','Ofloxacin','Injection','200mg/100ml infusion','100mls','300.00','2020-04-18 13:38:02','2020-04-18 13:38:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('283','ANTI INFECTIVES DRUGS','Pefloxacin','Tablet','400mg','Tab','80.00','2020-04-18 13:38:44','2020-04-18 13:38:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('284','ANTI INFECTIVES DRUGS','Phenoxymethyl-Penicillin','Tablet','250mg','Tab','15.00','2020-04-18 13:39:34','2020-04-18 13:39:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('285','ANTI INFECTIVES DRUGS','Phenoxymethyl-Penicillin','Suspension','250mg/5ml','100mls','200.00','2020-04-18 13:41:04','2020-04-18 13:41:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('286','ANTI INFECTIVES DRUGS','Phenoxymethyl-Penicillin','Suspension','250mg/5ml','100mls','200.00','2020-04-18 13:41:04','2020-04-18 13:41:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('287','ANTI INFECTIVES DRUGS','Rifampicin','Capsule','150mg, 300mg','Caps','15.00','2020-04-18 13:42:04','2020-04-18 13:42:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('288','ANTI INFECTIVES DRUGS','Secnidazole','4 Tablets (single dose)','500mg','4 tabs','360.00','2020-04-18 13:45:17','2020-04-18 13:45:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('289','ANTI INFECTIVES DRUGS','Sparfloxacin','Tablet','200mg','Tab','70.00','2020-04-18 13:46:21','2020-04-18 13:46:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('290','ANTI INFECTIVES DRUGS','Sparfloxacin','Tablet','200mg','Tab','70.00','2020-04-18 13:46:21','2020-04-18 13:46:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('291','ANTI INFECTIVES DRUGS','Tetracycline','Capsule','250mg (Hydrochloride)','Caps','5.00','2020-04-18 13:47:22','2020-04-18 13:47:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('292','ANTI INFECTIVES DRUGS','Tetracycline','Capsule','250mg (Hydrochloride)','Caps','5.00','2020-04-18 13:47:22','2020-04-18 13:47:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('293','ANTI INFECTIVES DRUGS','Tinidazole','4 Tablets (single dose)','500mg','4 tabs','100.00','2020-04-18 13:48:13','2020-04-18 13:48:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('294','ANTI INFECTIVES DRUGS','Clofazimine','Capsule','50mg, 100mg','Caps','15.00','2020-04-18 13:50:06','2020-04-18 13:50:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('295','ANTI INFECTIVES DRUGS','Clofazimine','Capsule','50mg, 100mg','Caps','15.00','2020-04-18 13:50:06','2020-04-18 13:50:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('296','ANTI INFECTIVES DRUGS','Dapsone','Tablet','50mg or 100mg','Tab','5.00','2020-04-18 13:50:50','2020-04-18 13:50:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('297','ANTI INFECTIVES DRUGS','Dapsone','Tablet','50mg or 100mg','Tab','5.00','2020-04-18 13:50:50','2020-04-18 13:50:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('298','ANTI INFECTIVES DRUGS','Rifampicin','Capsule','300mg','Caps','15.00','2020-04-18 13:51:26','2020-04-18 13:51:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('299','ANTI INFECTIVES DRUGS','Rifampicin','Capsule','150mg','Caps','15.00','2020-04-18 13:52:36','2020-04-18 13:52:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('300','ANTI INFECTIVES DRUGS','Amphotericin B','Injection, powder','50mg/vial','Vial','3465.00','2020-04-18 13:54:44','2020-04-18 13:54:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('301','ANTI INFECTIVES DRUGS','Amphotericin B','Injection, powder','50mg/vial','Vial','3465.00','2020-04-18 13:54:44','2020-04-18 13:54:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('302','ANTI INFECTIVES DRUGS','Fluconazole','Capsule','150mg','Caps','450.00','2020-04-18 13:55:43','2020-04-18 13:55:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('303','ANTI INFECTIVES DRUGS','Fluconazole','Capsule','50mg','Caps','60.00','2020-04-18 13:56:19','2020-04-18 13:56:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('304','ANTI INFECTIVES DRUGS','Fluconazole','Suspension','50mg/5ml','35mls','900.00','2020-04-18 13:58:18','2020-04-18 13:58:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('305','ANTI INFECTIVES DRUGS','Fluconazole','Suspension','50mg/5ml','35mls','900.00','2020-04-18 13:58:19','2020-04-18 13:58:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('306','ANTI INFECTIVES DRUGS','Fluconazole','Injection','IV 2mg/ml in 0.9% sodium chloride','Vial','500.00','2020-04-18 13:59:20','2020-04-18 13:59:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('307','ANTI INFECTIVES DRUGS','Griseofulvin','Tablet','500mg','Tab','20.00','2020-04-18 14:00:36','2020-04-18 14:00:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('308','ANTI INFECTIVES DRUGS','Griseofulvin','Suspension','125mg/5ml','100mls','450.00','2020-04-18 14:01:12','2020-04-18 14:01:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('309','ANTI INFECTIVES DRUGS','Griseofulvin','Suspension','125mg/5ml','100mls','450.00','2020-04-18 14:01:12','2020-04-18 14:01:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('310','ANTI INFECTIVES DRUGS','Itraconazole','Capsule','100mg','Caps','150.00','2020-04-18 14:02:27','2020-04-18 14:02:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('311','ANTI INFECTIVES DRUGS','Itraconazole','Suspension','10mg/ml','suspension','340.00','2020-04-18 14:03:19','2020-04-18 14:03:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('312','ANTI INFECTIVES DRUGS','Ketoconazole','Tablet','200mg','Tab','30.00','2020-04-18 14:04:01','2020-04-18 14:04:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('313','ANTI INFECTIVES DRUGS','Ketoconazole','Tablet','200mg','Tab','30.00','2020-04-18 14:04:01','2020-04-18 14:04:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('314','ANTI INFECTIVES DRUGS','Miconazole','Tablet','250mg','Tab','500.00','2020-04-18 14:04:33','2020-04-18 14:04:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('315','ANTI INFECTIVES DRUGS','Nystatin','Tablet','500,000 units','Tab','40.00','2020-04-18 14:05:53','2020-04-18 14:05:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('316','ANTI INFECTIVES DRUGS','Nystatin','Tablet','500,000 units','Tab','40.00','2020-04-18 14:05:53','2020-04-18 14:05:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('317','ANTI INFECTIVES DRUGS','Nystatin','Suspension','100,000units/ml','30mls','500.00','2020-04-18 14:06:39','2020-04-18 14:06:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('318','ANTI INFECTIVES DRUGS','Nystatin','lozenges','100,000/ml','Tab','20.00','2020-04-18 14:07:12','2020-04-18 14:07:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('319','ANTI INFECTIVES DRUGS','Nystatin','pessary','100,000/ml','Tab','20.00','2020-04-18 14:07:47','2020-04-18 14:07:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('320','ANTI INFECTIVES DRUGS','Terbinafine','Tablet','250mg','Tab','150.00','2020-04-18 14:08:33','2020-04-18 14:08:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('321','ANTI INFECTIVES DRUGS','Aciclovir','Tablet','200mg','Tab','50.00','2020-04-18 14:09:19','2020-04-18 14:09:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('322','ANTI INFECTIVES DRUGS','Aciclovir','Tablet','400mg','Tab','75.00','2020-04-18 14:09:55','2020-04-18 14:09:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('323','ANTI INFECTIVES DRUGS','Aciclovir','Suspension','200mg/5ml','125mls','620.00','2020-04-18 14:10:26','2020-04-18 14:10:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('324','ANTI INFECTIVES DRUGS','Aciclovir','Cream','5%','Tube','600.00','2020-04-18 14:11:17','2020-04-18 14:11:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('325','ANTI INFECTIVES DRUGS','Aciclovir','Injection','IV sodium salt 250mg/ml','Vial','200.00','2020-04-18 14:12:24','2020-04-18 14:12:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('326','ANTI INFECTIVES DRUGS','Lamivudine','Tablet','150mg','Tab','50.00','2020-04-18 14:13:05','2020-04-18 14:13:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('327','ANTI INFECTIVES DRUGS','Lamivudine','solution','50mg/5ml','240mls','0','2020-04-18 14:14:29','2020-04-18 14:14:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('328','ANTI INFECTIVES DRUGS','Indinavir (IDV)','Capsule (Sulphate)','200mg, 333mg, 400mg','nil','0','2020-04-18 14:16:47','2020-04-18 14:16:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('329','ANTI INFECTIVES DRUGS','Nelfinavir (NFV)*','Tablet','250mg','nil','0','2020-04-18 14:17:44','2020-04-18 14:17:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('330','ANTI INFECTIVES DRUGS','Ritonavir (RTV)*','Oral liquid','400mg/5mls','bottle','0','2020-04-18 14:19:05','2020-04-18 14:19:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('331','ANTI INFECTIVES DRUGS','Saquinavir (SQV)*','Capsule','100mg','Caps','0','2020-04-18 14:19:50','2020-04-18 14:19:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('332','ANTI INFECTIVES DRUGS','Saquinavir (SQV)*','Capsule','200mg','Caps','0','2020-04-18 14:20:34','2020-04-18 14:20:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('333','ANTI INFECTIVES DRUGS','Lopinavir + ritonavir (LPV/r)*','Capsule','133.3mg+33.3mg','Caps','0','2020-04-18 14:21:52','2020-04-18 14:21:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('334','ANTI INFECTIVES DRUGS','Lopinavir + ritonavir (LPV/r)*','Tablet','100mg/25mg','Tab','0','2020-04-18 14:22:22','2020-04-18 14:22:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('335','ANTI INFECTIVES DRUGS','Lopinavir + ritonavir (LPV/r)*','Tablet','200mg/50mg','Tab','0','2020-04-18 14:23:07','2020-04-18 14:23:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('336','ANTI INFECTIVES DRUGS','Lopinavir + ritonavir (LPV/r)*','Oral liquid','400mg/100mg/5ml','bottle','0','2020-04-18 14:23:56','2020-04-18 14:23:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('337','ANTI INFECTIVES DRUGS','Lamivudine (3TC)*','Tablet','150mg','nil','0','2020-04-18 15:04:21','2020-04-18 15:04:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('338','ANTI INFECTIVES DRUGS','Lamivudine (3TC)*','solution','5mg/5ml','nil','0','2020-04-18 15:04:55','2020-04-18 15:04:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('339','ANTI INFECTIVES DRUGS','Zidovudine (ZDV)*','Capsule','100mg','nil','0','2020-04-18 15:05:34','2020-04-18 15:06:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('340','ANTI INFECTIVES DRUGS','Zidovudine (ZDV)*','Capsule','100mg','nil','0','2020-04-18 15:06:44','2020-04-18 15:06:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('341','ANTI INFECTIVES DRUGS','Zidovudine (ZDV)*','Capsule','250mg','nil','0','2020-04-18 15:07:16','2020-04-18 15:07:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('342','ANTI INFECTIVES DRUGS','Zidovudine (ZDV)*','Syrup','50mg/5ml','nil','0','2020-04-18 15:07:43','2020-04-18 15:07:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('343','ANTI INFECTIVES DRUGS','Abacavir (ABC)*','Tablet (sulfate)','300mg','nil','0','2020-04-18 15:08:38','2020-04-18 15:08:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('344','ANTI INFECTIVES DRUGS','Abacavir (ABC)*','Liquid (sulfate)','100mg/5ml','nil','0','2020-04-18 15:09:26','2020-04-18 15:09:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('345','ANTI INFECTIVES DRUGS','Stavudine (d4T)*','Tablet','40mg','Tab','0','2020-04-18 15:10:32','2020-04-18 15:10:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('346','ANTI INFECTIVES DRUGS','Zalcitabine (ddC)*','Tablet','750ug','Tab','0','2020-04-18 15:11:33','2020-04-18 15:11:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('347','ANTI INFECTIVES DRUGS','Zalcitabine (ddC)*','Tablet','750ug','Tab','0','2020-04-18 15:11:33','2020-04-18 15:11:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('348','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','Capsule','125mg','Caps','0','2020-04-18 15:12:29','2020-04-18 15:12:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('349','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','Capsule','200mg, 250mg','Caps','0','2020-04-18 15:13:08','2020-04-18 15:13:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('350','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','Capsule','400mg','Caps','0','2020-04-18 15:13:38','2020-04-18 15:13:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('351','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','Tablet','25mg, 50mg','Tab','0','2020-04-18 15:14:10','2020-04-18 15:14:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('352','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','Tablet','100mg, 150mg','Tab','0','2020-04-18 15:14:45','2020-04-18 15:14:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('353','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','Tablet','200mg','Tab','0','2020-04-18 15:15:06','2020-04-18 15:15:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('354','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','powder for oral dosage','100mg, 167mg','packets','0','2020-04-18 15:15:53','2020-04-18 15:15:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('355','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','powder for oral dosage','100mg, 167mg','packets','0','2020-04-18 15:15:53','2020-04-18 15:15:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('356','ANTI INFECTIVES DRUGS','Didanosine (ddl)*','powder for oral dosage','200mg','packets','0','2020-04-18 15:16:27','2020-04-18 15:16:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('357','ANTI INFECTIVES DRUGS','Nevirapine (NVP)*','Tablet','200mg','Tab','0','2020-04-20 16:25:33','2020-04-20 16:25:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('358','ANTI INFECTIVES DRUGS','Nevirapine (NVP)*','Syrup','50mg/5ml','nil','0','2020-04-20 16:26:21','2020-04-20 16:26:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('359','ANTI INFECTIVES DRUGS','Efavirenz (EFV or EFZ)*','Tablet','600mg','Tab','0','2020-04-20 16:30:47','2020-04-20 16:30:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('360','ANTI INFECTIVES DRUGS','Efavirenz (EFV or EFZ)*','Capsule','50mg','Caps','0','2020-04-20 16:31:14','2020-04-20 16:31:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('361','ANTI INFECTIVES DRUGS','Efavirenz (EFV or EFZ)*','Capsule','100mg, 200mg','Caps','0','2020-04-20 16:31:47','2020-04-20 16:31:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('362','ANTI INFECTIVES DRUGS','Efavirenz (EFV or EFZ)*','Oral liquid','150mg/5ml','bottle','0','2020-04-20 16:32:30','2020-04-20 16:32:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('363','ANTI INFECTIVES DRUGS','Lamivudine + nevirapine + stavudine','Tablet','150mg+200mg+30mg','Tab x60s','0','2020-04-20 16:34:08','2020-04-20 16:34:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('364','ANTI INFECTIVES DRUGS','Lamivudine + nevirapine + stavudine','Tablet','150mg+200mg+30mg','Tab x60s','0','2020-04-20 16:35:00','2020-04-20 16:35:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('365','ANTI INFECTIVES DRUGS','Lamivudine + nevirapine + stavudine','Tablet (Dispersible)','30mg+50mg+6mg','Tab x60s','0','2020-04-20 16:36:03','2020-04-20 16:36:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('366','ANTI INFECTIVES DRUGS','Lamivudine + nevirapine + stavudine','Tablet (Dispersible)','60mg+100mg+12mg','nil','0','2020-04-20 16:37:17','2020-04-20 16:37:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('367','ANTI INFECTIVES DRUGS','Lamivudine + nevirapine + zidovudine','Tablet','30mg+50mg+60mg','Tab x60s','0','2020-04-20 16:38:02','2020-04-20 16:40:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('368','ANTI INFECTIVES DRUGS','Lamivudine + nevirapine + zidovudine','Tablet','150mg+200mg+300mg','nil','0','2020-04-20 16:39:21','2020-04-20 16:39:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('369','ANTI INFECTIVES DRUGS','Lamivudine + zidovudine','Tablet','30mg+60mg','Tab x60s','0','2020-04-20 16:41:19','2020-04-20 16:41:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('370','ANTI INFECTIVES DRUGS','Lamivudine + zidovudine','Tablet','150mg+300mg','nil','0','2020-04-20 16:41:46','2020-04-20 16:41:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('371','ANTI MIGRANE DRUGS','Ergotamine','Tablet','Tartrate, 2g','Tab','50.00','2020-04-20 16:51:01','2020-04-20 16:51:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('372','ANTI MIGRANE DRUGS','Ergotamine Tartrate + Caffeine','Tablet','1mg/100mg','Tab','60.00','2020-04-20 16:53:17','2020-04-20 16:53:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('373','ANTI MIGRANE DRUGS','Pizotifen','Tablet','0.5mg, 1m5mg','Tab','35.00','2020-04-20 16:54:10','2020-04-20 16:54:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('374','ANTI MIGRANE DRUGS','Pizotifen','Elixir','0.25mg/ml','100mls','2000.00','2020-04-20 16:55:40','2020-04-20 16:55:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('375','ANTI MIGRANE DRUGS','Propranolol','Tablet','40mg','Tab','9.00','2020-04-20 16:57:04','2020-04-20 16:57:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('376','IMMUNO SUPPRESIVE DRUG','Azathioprine (restricted)','Tablet','50mg','Tab','0','2020-04-20 16:58:19','2020-04-20 16:58:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('377','IMMUNO SUPPRESIVE DRUG','Azathioprine (restricted)','Injection, powder','50mg/vial','Vial','0','2020-04-20 16:59:10','2020-04-20 16:59:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('378','IMMUNO SUPPRESIVE DRUG','Dexamethasone','Tablet','0.5mg, 4mg','Tab','10.00','2020-04-20 17:00:07','2020-04-20 17:00:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('379','IMMUNO SUPPRESIVE DRUG','Dexamethasone','Injection','sodium PO4, 4mg/ml','Amp','20.00','2020-04-20 17:01:02','2020-04-20 17:01:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('380','IMMUNO SUPPRESIVE DRUG','Methotrexate (restricted)','Tablet','2.5mg','Tab','40.00','2020-04-20 17:02:10','2020-04-20 17:02:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('381','IMMUNO SUPPRESIVE DRUG','Methotrexate (restricted)','Injection','50mg/vial sodium salt','Vial','500.00','2020-04-20 17:03:13','2020-04-20 17:03:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('382','IMMUNO SUPPRESIVE DRUG','Prednisolone','Tablet','5mg','Tab','5.00','2020-04-20 17:04:03','2020-04-20 17:04:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('383','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Benzhexol','Tablet','2mg','Tab','5.00','2020-04-20 17:05:46','2020-04-20 17:05:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('384','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Benzhexol','Tablet','5mg (as HCl)','Tab','5.00','2020-04-20 17:06:50','2020-04-20 17:06:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('385','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Biperiden','Injection','5mg/ml (as lactate) in 1ml ampoule','Amp','40.00','2020-04-21 15:16:35','2020-04-21 15:16:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('386','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Levodopa + Carbidopa','Tablet','Levodopa 250mg + Carbidopa 25mg','Tab','80.00','2020-04-21 15:17:43','2020-04-21 15:17:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('387','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Levodopa + Carbidopa','Tablet','Levodopa 100mg + Carbidopa 10mg','Tab','70.00','2020-04-21 15:20:36','2020-04-21 15:20:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('389','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Amino caporic acid (AA) plus lipid thromboplastin (LT)','Injection','100mg AA + 2mg/ml LT in 5ml','nil','0','2020-04-21 15:26:46','2020-04-21 15:26:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('390','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Neostigmine','Injection','(Bromide) 15mg/ml','Amp','250.00','2020-04-21 15:28:26','2020-04-21 15:28:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('391','PARKINONSIM AND OTHER NEUROLOGICAL DISORDER DRUG','Pyridostigmine','Tablet','60mg (Bromide)','Tab','70.00','2020-04-21 15:29:14','2020-04-21 15:29:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('392','ANTISEPTICS AND DISINFECTANTS','Chlorhexidine','solution','5% (Gluconate) for dilution','500mls','500.00','2020-04-21 15:30:46','2020-04-21 15:30:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('393','ANTISEPTICS AND DISINFECTANTS','Chlorhexidine + Centrmide','solution','Cetrimide 15% + 1.5% chlorhexidine gluconate for dilution','500mls','400.00','2020-04-21 15:33:04','2020-04-21 15:33:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('394','ANTISEPTICS AND DISINFECTANTS','Chloroxylenol','solution','5% for dilution','250mls','400.00','2020-04-21 15:42:08','2020-04-21 15:42:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('395','ANTISEPTICS AND DISINFECTANTS','Chloroxylenol','solution','5% for dilution','125mls','400.00','2020-04-21 15:44:59','2020-04-21 15:44:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('396','ANTISEPTICS AND DISINFECTANTS','Coal tar','solution','5%','solution','200.00','2020-04-21 15:46:04','2020-04-21 15:46:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('397','ANTISEPTICS AND DISINFECTANTS','Compund Tincture of Benzoin (TBC)','liquid','2%','100mls','200.00','2020-04-21 15:47:12','2020-04-21 15:47:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('398','ANTISEPTICS AND DISINFECTANTS','Dichloroxylenol + Chlorophenol','Soap liquid','nil','125mls','200.00','2020-04-21 15:57:11','2020-04-21 15:57:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('399','ANTISEPTICS AND DISINFECTANTS','Iodine','solution','Different Preparations 1%','30mls','100mls','2020-04-21 15:58:23','2020-04-21 15:58:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('400','ANTISEPTICS AND DISINFECTANTS','Methylated Spirit','solution','Alcohol vol/vol','200mls','100.00','2020-04-21 15:59:20','2020-04-21 15:59:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('401','ANTISEPTICS AND DISINFECTANTS','Potassium Permanganate','solution','0.10%','15mls','100.00','2020-04-21 16:00:29','2020-04-21 16:00:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('402','ANTISEPTICS AND DISINFECTANTS','Povidone-iodine','solution','10%','solution','200.00','2020-04-21 16:04:04','2020-04-21 16:04:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('403','ANTISEPTICS AND DISINFECTANTS','Sodium hypochloride','solution','1-10% (chloride in different preparations)','500mls','150mls','2020-04-21 16:05:17','2020-04-21 16:05:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('404','ANTISEPTICS AND DISINFECTANTS','Trichlorophenol','Cream, Liquid, Oitment','Mixture of halogenated phenols and Salicylic acid','nil','570.00','2020-04-21 16:07:41','2020-04-21 16:07:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('405','DRUG AFFECTING THE BLOOD','Cyanocobalamin/Hydroxocobalamin','Tablet',').05mg','Tab','5.00','2020-04-21 16:09:04','2020-04-21 16:09:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('406','DRUG AFFECTING THE BLOOD','Cyanocobalamin/Hydroxocobalamin','Injection','0.25 and 1mg/ml (injection, Hydroxocobalamin preferred)','Amp','100.00','2020-04-21 16:10:20','2020-04-21 16:10:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('407','DRUG AFFECTING THE BLOOD','Ferric Ammonium Citrate','Mixture','400mg/5ml of Ferric ammonium citrate','200mls','250.00','2020-04-21 16:25:05','2020-04-21 16:25:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('408','DRUG AFFECTING THE BLOOD','Ferrous Sulphate','Tablet, Capsule','200mg equivalent to 60mg of iron','Tab','3.00','2020-04-21 16:26:34','2020-04-21 16:27:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('409','DRUG AFFECTING THE BLOOD','Folic Acid','Tablet','5mg','Tab','3.00','2020-04-21 16:27:32','2020-04-21 16:27:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('410','DRUG AFFECTING THE BLOOD','Iron Dextran','Injection','equiv to 50mg/iron/ml in 2ml amp','Amp','200.00','2020-04-21 16:29:03','2020-04-21 16:29:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('411','DRUG AFFECTING THE BLOOD','erythropoeitin','Injection','4000 I.U (prefilled syringe)','nil','4000.00','2020-04-21 16:30:13','2020-04-21 16:30:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('412','DRUG AFFECTING THE BLOOD','Enoxaparin','Injection','100mg/ml in 0.4ml (40mg)','prefilled syringe','1200.00','2020-04-21 16:31:24','2020-04-21 16:31:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('413','DRUG AFFECTING THE BLOOD','Enoxaparin','Injection','100mg/ml in 0.2ml (20mg)','prefilled syringe','850.00','2020-04-21 16:32:16','2020-04-21 16:32:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('414','DRUG AFFECTING THE BLOOD','Heparin sodium','Injection','5000 units/ml in ampoule','Amp','620.00','2020-04-21 16:33:00','2020-04-21 16:36:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('415','DRUG AFFECTING THE BLOOD','Heparin sodium','Injection','25,000 units/ml in ampoule','Amp','1200.00','2020-04-21 16:34:15','2020-04-21 16:34:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('416','DRUG AFFECTING THE BLOOD','Warfarin sodium','Tablet (as sodium)','3mg','Tab','30.00','2020-04-21 16:35:26','2020-04-21 16:35:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('417','DRUG AFFECTING THE BLOOD','Warfarin sodium','Tablet (as sodium)','5mg','Tab','30.00','2020-04-21 16:36:18','2020-04-21 16:36:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('418','DRUG AFFECTING THE BLOOD','Acetylsalicyclic acid','Tablet','75mg','Tab','3.00','2020-04-21 16:37:59','2020-04-21 16:37:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('419','DRUG AFFECTING THE BLOOD','Clopidogrel','Tablet','75mg','Tab','60.00','2020-04-21 16:38:41','2020-04-21 16:38:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('420','DRUG AFFECTING THE BLOOD','Dipyridamole','Tablet','100mg','Tab','0','2020-04-21 16:41:28','2020-04-21 16:41:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('421','DRUG AFFECTING THE BLOOD','Aminocaproic acid','Tablet','500mg','Tab','0','2020-04-21 16:42:30','2020-04-21 16:42:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('422','DRUG AFFECTING THE BLOOD','Aminocaproic acid (with or without -lipid thromboplastin)','Injection','AA 100mg/ml + TPT 2mg/ml in 5ml, 10ml','Amp','0','2020-04-21 16:44:04','2020-04-21 16:44:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('423','DRUG AFFECTING THE BLOOD','Dextran 70','Injection I.V','6% in 5% glucose or normal saline solution (in bottle of 500ml)','500mls','1000.00','2020-04-21 16:45:50','2020-04-21 16:45:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('424','DRUG AFFECTING THE BLOOD','Human Albumin (Plasma Protein fraction)','Injection','20% in 100ml vials','Vial','9,765.00','2020-04-21 16:48:58','2020-04-21 16:48:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('425','DRUG AFFECTING THE BLOOD','Polygeline','Injection I.V','3.5% solution in 500mls','500mls','3500.00','2020-04-21 16:50:01','2020-04-21 16:50:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('426','CADIOVASCULAR DRUG','Atenolol','Tablet','25mg','Tab','8.00','2020-04-21 16:51:29','2020-04-21 16:51:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('427','CARDIOVASCULAR DRUG','Atenolol','Tablet','50mg','Tab','10.00','2020-04-21 16:52:46','2020-04-21 16:52:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('428','CARDIOVASCULAR DRUG','Atenolol','Tablet','100mg','Tab','12.00','2020-04-21 16:59:37','2020-04-21 16:59:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('429','CARDIOVASCULAR DRUG','Atenolol','Injection','0.5mg/ml','Amp','90.00','2020-04-21 17:00:15','2020-04-21 17:00:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('430','CARDIOVASCULAR DRUG','Glyceryl Trinitrate','Tablet','sublingual, 0.5mg','Tab','30.00','2020-04-21 17:01:34','2020-04-21 17:01:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('431','CARDIOVASCULAR DRUG','Isosorbide dinitrate','Tablet','oral sublingual 5mg','Tab','60.00','2020-04-21 17:03:03','2020-04-21 17:03:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('432','CARDIOVASCULAR DRUG','Isosorbide dinitrate','Tablet','10mg','Tab','70.00','2020-04-21 17:05:38','2020-04-21 17:05:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('433','CARDIOVASCULAR DRUG','Propranolol','Tablet','40mg','Tab','10.00','2020-04-21 17:06:15','2020-04-21 17:06:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('434','CARDIOVASCULAR DRUG','Propranolol','Injection','1mg/ml in ampoule','Amp','300.00','2020-04-21 18:57:43','2020-04-21 18:57:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('435','CARDIOVASCULAR DRUG','Amiodarone','Tablet','200mg','Tab','55.00','2020-04-21 18:59:10','2020-04-21 18:59:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('436','CARDIOVASCULAR DRUG','Amiodarone','Tablet','200mg','Tab','55.00','2020-04-21 18:59:10','2020-04-21 18:59:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('437','CARDIOVASCULAR DRUG','Lidocaine','Injection','20mg/ml (HCL) in 5ml ampoule','50ml vial','400.00','2020-04-21 19:00:10','2020-04-21 19:00:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('438','CARDIOVASCULAR DRUG','Lidocaine','Injection','20mg/ml (HCL) in 5ml ampoule','50ml vial','400.00','2020-04-21 19:00:10','2020-04-21 19:00:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('439','CARDIOVASCULAR DRUG','Procainamide','Tablet','250mg (HCL)','Tab','30.00','2020-04-21 19:01:36','2020-04-21 19:01:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('440','CARDIOVASCULAR DRUG','Disopyramide','Tablet','100mg, 150mg','Tab','150.00','2020-04-21 19:02:50','2020-04-21 19:02:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('441','CARDIOVASCULAR DRUG','Disopyramide','Tablet','100mg, 150mg','Tab','150.00','2020-04-21 19:02:50','2020-04-21 19:02:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('442','CARDIOVASCULAR DRUG','Procainamide','Injection','100mg in 10mls ampoule','Amp','150.00','2020-04-21 19:03:46','2020-04-21 19:03:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('443','CARDIOVASCULAR DRUG','Propranolol','Tablet','40mg (Hydrochloride)','Tab','10.00','2020-04-21 19:05:17','2020-04-21 19:05:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('444','CARDIOVASCULAR DRUG','Propranolol','Tablet','40mg (Hydrochloride)','Tab','10.00','2020-04-21 19:05:17','2020-04-21 19:05:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('445','CARDIOVASCULAR DRUG','Propranolol','Injection','1mg/ml in ampoule','Amp','300.00','2020-04-21 19:06:59','2020-04-21 19:06:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('446','CARDIOVASCULAR DRUG','Amiloride+Hydrochlorothiazide','Tablet','5mg+50mg','Tab','7.50','2020-04-21 19:08:18','2020-04-21 19:08:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('447','CARDIOVASCULAR DRUG','Bendrofluazide','Tablet','5mg','Tab','5.00','2020-04-21 19:09:23','2020-04-21 19:09:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('448','CARDIOVASCULAR DRUG','Bendrofluazide','Tablet','5mg','Tab','5.00','2020-04-21 19:09:23','2020-04-21 19:09:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('449','CARDIOVASCULAR DRUG','Furosemide','Tablet','40mg','Tab','5.00','2020-04-21 19:15:01','2020-04-21 19:15:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('451','CARDIOVASCULAR DRUG','Furosemide','Injection','10mg/ml in 2ml ampoule','Amp','140.00','2020-04-21 19:15:59','2020-04-21 19:15:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('453','CARDIOVASCULAR DRUG','Hydrochlorothiazide','Tablet','25mg','Tab','5.00','2020-04-21 19:16:49','2020-04-21 19:16:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('454','CARDIOVASCULAR DRUG','Hydrochlorothiazide','Tablet','50mg','Tab','8.00','2020-04-21 19:20:38','2020-04-21 19:20:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('455','CARDIOVASCULAR DRUG','Spironolactone','Tablet','25mg','Tab','15.00','2020-04-21 19:22:59','2020-04-21 19:22:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('456','CARDIOVASCULAR DRUG','Spironolactone','Tablet','50mg','Tab','20.00','2020-04-21 19:26:22','2020-04-21 19:26:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('457','CARDIOVASCULAR DRUG','Spironolactone','Tablet','100mg','Tab','30.00','2020-04-21 19:27:02','2020-04-21 19:27:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('458','CARDIOVASCULAR DRUG','Amiloride+Hydrochlorothiazide','Tablet','0.5mg/25mg','Tab','40.00','2020-04-21 19:27:56','2020-04-21 19:27:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('459','CARDIOVASCULAR DRUG','Amlodipine','Tablet (Besylate)','5mg','Tab','30.00','2020-04-21 19:28:48','2020-04-21 19:28:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('460','CARDIOVASCULAR DRUG','Amlodipine','Tablet (Besylate)','5mg','Tab','30.00','2020-04-21 19:28:48','2020-04-21 19:28:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('461','CARDIOVASCULAR DRUG','Amlodipine','Tablet (Besylate)','5mg','Tab','30.00','2020-04-21 19:28:48','2020-04-21 19:28:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('462','CARDIOVASCULAR DRUG','Amlodipine','Tablet (Besylate)','10mg','Tab','60.00','2020-04-21 19:29:27','2020-04-21 19:29:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('463','CARDIOVASCULAR DRUG','Amlodipine + Valsartan +Hydroclorothiazide','Tablet','5mg+160mg+12.5mg','Tab','260.00','2020-04-21 19:31:50','2020-04-21 19:31:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('464','CARDIOVASCULAR DRUG','Amlodipine + Valsartan','Tablet','5mg+160mg','Tab','250.00','2020-04-21 19:32:54','2020-04-21 19:32:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('465','CARDIOVASCULAR DRUG','Atenolol','Tablet','25mg','Tab','8.00','2020-04-21 19:33:34','2020-04-21 19:33:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('466','CARDIOVASCULAR DRUG','Atenolol','50mg','50mg','Tab','10.00','2020-04-21 19:36:58','2020-04-21 19:36:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('467','CARDIOVASCULAR DRUG','Atenolol','Tablet','100mg','Tab','12.00','2020-04-21 19:37:56','2020-04-21 19:37:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('468','CARDIOVASCULAR DRUG','Atenolol','Tablet','100mg','Tab','12.00','2020-04-21 19:37:56','2020-04-21 19:37:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('469','CARDIOVASCULAR DRUG','Candesartan cilexeti','Tablet','8mg','Tab','200.00','2020-04-21 19:39:07','2020-04-21 19:39:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('470','CARDIOVASCULAR DRUG','Candesartan cilexeti','Tablet','16mg','Tab','250.00','2020-04-21 19:39:41','2020-04-21 19:39:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('471','CARDIOVASCULAR DRUG','Candesartan cilexeti','Tablet','16mg','Tab','250.00','2020-04-21 19:39:41','2020-04-21 19:39:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('472','CARDIOVASCULAR DRUG','Candesartan cilexeti/Hydroclorothiazide','Tablet','16/12.5mg','Tab','260.00','2020-04-21 19:40:41','2020-04-21 19:40:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('473','CARDIOVASCULAR DRUG','Captopril','Tablet','12.5mg','Tab','15.00','2020-04-21 19:41:32','2020-04-21 19:41:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('474','CARDIOVASCULAR DRUG','Captopril','Tablet','12.5mg','Tab','15.00','2020-04-21 19:41:32','2020-04-21 19:41:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('475','CARDIOVASCULAR DRUG','Captopril','Tablet','25mg','Tab','15.00','2020-04-21 19:42:17','2020-04-21 19:42:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('476','CARDIOVASCULAR DRUG','Captopril','Tablet','50mg','Tab','25.00','2020-04-21 19:42:51','2020-04-21 19:42:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('477','CARDIOVASCULAR DRUG','Enalapril','Tablet','5mg','Tab','25.00','2020-04-21 19:43:35','2020-04-21 19:43:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('478','CARDIOVASCULAR DRUG','Enalapril','Tablet','5mg','Tab','25.00','2020-04-21 19:43:35','2020-04-21 19:43:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('479','CARDIOVASCULAR DRUG','Enalapril','Tablet','10mg','Tab','30.00','2020-04-21 19:44:09','2020-04-21 19:44:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('480','CARDIOVASCULAR DRUG','Enalapril','Tablet','10mg','Tab','30.00','2020-04-21 19:44:09','2020-04-21 19:44:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('481','CARDIOVASCULAR DRUG','Felodipine','Tablet','5mg','Tab','80.00','2020-04-21 22:10:42','2020-04-21 22:10:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('482','CARDIOVASCULAR DRUG','Felodipine','Tablet','10mg','Tab','100.00','2020-04-21 22:11:15','2020-04-21 22:11:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('483','CARDIOVASCULAR DRUG','Hydralazine','Tablet','25mg','Tab','20.00','2020-04-21 22:11:57','2020-04-21 22:11:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('484','CARDIOVASCULAR DRUG','Hydralazine','Tablet','50mg','Tab','30.00','2020-04-21 22:12:32','2020-04-21 22:12:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('485','CARDIOVASCULAR DRUG','Hydralazine','Tablet','50mg','Tab','30.00','2020-04-21 22:12:32','2020-04-21 22:12:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('486','CARDIOVASCULAR DRUG','Isradipine','Tablet','2.5mg','Tab','0','2020-04-21 22:13:35','2020-04-21 22:13:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('487','CARDIOVASCULAR DRUG','Hydralazine','injection, powder','20mg in 1ml ampoule','Amp','300.00','2020-04-21 22:14:46','2020-04-21 22:14:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('488','CARDIOVASCULAR DRUG','Isradipine','Tablet','5mg','Tab','0','2020-04-21 22:15:14','2020-04-21 22:15:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('489','CARDIOVASCULAR DRUG','Labetalol','Tablet(HCL)','100mg, 200mg','Tab','30.00','2020-04-21 22:16:12','2020-04-21 22:16:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('490','CARDIOVASCULAR DRUG','Labetalol','injection powder tablet (hcl)','5mg/ml in 20ml ampoule','Amp','1400.00','2020-04-21 22:17:32','2020-04-21 22:17:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('491','CARDIOVASCULAR DRUG','Lacidipine','Tablet','2mg','Tab','0','2020-04-21 22:18:17','2020-04-21 22:18:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('492','CARDIOVASCULAR DRUG','Lacidipine','Tablet','2mg','Tab','0','2020-04-21 22:18:17','2020-04-21 22:18:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('493','CARDIOVASCULAR DRUG','Lisinopril','Tablet','2.5mg','Tab','70.00','2020-04-21 22:19:01','2020-04-21 22:19:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('494','CARDIOVASCULAR DRUG','Lisinopril','Tablet','5mg','Tab','20.00','2020-04-21 22:19:43','2020-04-21 22:19:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('495','CARDIOVASCULAR DRUG','Lisinopril','Tablet','10mg','Tab','25.00','2020-04-21 22:20:21','2020-04-21 22:20:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('496','CARDIOVASCULAR DRUG','Lisinopril + hydrochlorothiazide','Tablet','20mg/12.5mg','Tab','150.00','2020-04-21 22:22:08','2020-04-21 22:22:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('497','CARDIOVASCULAR DRUG','Lisinopril + hydrochlorothiazide','Tablet','20mg/12.5mg','Tab','150.00','2020-04-21 22:22:08','2020-04-21 22:22:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('498','CARDIOVASCULAR DRUG','Methyldopa','Tablet','250mg','Tab','15.00','2020-04-21 22:22:45','2020-04-21 22:22:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('499','CARDIOVASCULAR DRUG','Methyldopa','Tablet','500mg','Tab','20.00','2020-04-21 22:23:28','2020-04-21 22:23:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('500','CARDIOVASCULAR DRUG','Methyldopa','Tablet','500mg','Tab','20.00','2020-04-21 22:23:28','2020-04-21 22:23:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('501','CARDIOVASCULAR DRUG','Nifedipine','Tablet','20mg','Tab','15.00','2020-04-21 22:24:07','2020-04-21 22:24:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('502','CARDIOVASCULAR DRUG','Nifedipine','slow release','30mg','Tab','35.00','2020-04-21 22:25:00','2020-04-21 22:25:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('503','CARDIOVASCULAR DRUG','Prazosin','Tablet','1mg','Tab','20.00','2020-04-21 22:30:23','2020-04-21 22:30:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('504','CARDIOVASCULAR DRUG','Prazosin','Tablet','1mg','Tab','20.00','2020-04-21 22:30:23','2020-04-21 22:30:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('505','CARDIOVASCULAR DRUG','Prazosin','Tablet','2mg','Tab','25.00','2020-04-21 22:30:55','2020-04-21 22:30:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('506','CARDIOVASCULAR DRUG','Prazosin + Polythiazide','Tablet','0.5mg + 0.25mg (respectively)','Tab','40.00','2020-04-21 22:32:03','2020-04-21 22:32:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('507','CARDIOVASCULAR DRUG','Propranolol (Hydrochloride)','Tablet','40mg','Tab','10.00','2020-04-21 22:33:48','2020-04-21 22:33:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('508','CARDIOVASCULAR DRUG','Propranolol (Hydrochloride)','Tablet','40mg','Tab','10.00','2020-04-21 22:33:48','2020-04-21 22:33:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('509','CARDIOVASCULAR DRUG','Resperpine + Dihydroergocristine + Clopamide','Tablet','Reserpine 0.1mg +Dihydroergocristine 0.5mg + Clopamide 5mg','Tab','40.00','2020-04-21 22:36:18','2020-04-21 22:36:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('510','CARDIOVASCULAR DRUG','Resperpine + Dihydroergocristine + Hydrochlorothiazide','Tablet','resperpine 0.1mg + dihydroergocristine 0.6mg','Tab','40.00','2020-04-21 22:38:14','2020-04-21 22:38:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('511','CARDIOVASCULAR DRUG','Resperpine + Dihydroergocristine + Hydrochlorothiazide','Tablet','resperpine 0.1mg + dihydroergocristine 0.6mg','Tab','40.00','2020-04-21 22:38:14','2020-04-21 22:38:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('512','CARDIOVASCULAR DRUG','Resperpine + Dihydroergocristine + Hydrochlorothiazide','Tablet','hydrochlorothiazide 10mg','Tab','40.00','2020-04-21 22:39:34','2020-04-21 22:39:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('513','CARDIOVASCULAR DRUG','Telmisartan','Tablet','Telmisartan 40mg','Tab','130.00','2020-04-21 22:40:18','2020-04-21 22:40:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('514','CARDIOVASCULAR DRUG','Telmisartan','Tablet','Telmisartan 80mg','Tab','135.00','2020-04-21 22:41:36','2020-04-21 22:41:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('515','CARDIOVASCULAR DRUG','Telmisartan + Hydrochlorothiazide','Tablet','Telmisartan 40mg/HCTZ 12.5mg','Tab','130.00','2020-04-21 22:43:01','2020-04-21 22:43:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('516','CARDIOVASCULAR DRUG','Telmisartan + Hydrochlorothiazide','Tablet','Telmisartan 80mg/HCTZ 12.5mg','Tab','135.00','2020-04-21 22:43:45','2020-04-21 22:43:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('517','CARDIOVASCULAR DRUG','Valsatan','Tablet','80mg','Tab','170.00','2020-04-21 22:44:31','2020-04-21 22:44:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('518','CARDIOVASCULAR DRUG','Valsatan','Tablet','160mg','Tab','190.00','2020-04-21 22:45:25','2020-04-21 22:45:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('519','CARDIOVASCULAR DRUG','Valsatan/Hydrochlothiazide','Tablet','80/12.5mg','Tab','170.00','2020-04-21 22:46:57','2020-04-21 22:46:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('520','CARDIOVASCULAR DRUG','Valsatan/Hydrochlothiazide','Tablet','160/12.5mg','Tab','200.00','2020-04-21 22:47:46','2020-04-21 22:47:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('521','CARDIOVASCULAR DRUG','Valsatan/Hydrochlothiazide','Tablet','160/25mg','Tab','235.00','2020-04-21 22:48:40','2020-04-21 22:48:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('522','CARDIOVASCULAR DRUG','Captopril','Tablet','12.5mg, 25mg','Tab','15.00','2020-04-21 22:49:19','2020-04-21 22:49:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('523','CARDIOVASCULAR DRUG','Captopril','Tablet','12.5mg, 25mg','Tab','15.00','2020-04-21 22:49:19','2020-04-21 22:49:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('524','CARDIOVASCULAR DRUG','Digoxin','Tablet','0.0625mg, 0.125mg, 0.25mg','Tab','6.00','2020-04-21 22:50:29','2020-04-21 22:53:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('525','CARDIOVASCULAR DRUG','Digoxin','Injection','0.25mg/ml in 2ml ampoule, and 0.1mg/ml in 1ml ampoule','Amp','150.00','2020-04-21 22:51:51','2020-04-21 22:51:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('526','CARDIOVASCULAR DRUG','Digoxin','Syrup','50mg/ml','100mls','280.00','2020-04-21 22:52:36','2020-04-21 22:52:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('527','CARDIOVASCULAR DRUG','Dopamine','Injection','40mg/ml in 5mls','Vial','400.00','2020-04-21 22:53:29','2020-04-21 22:53:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('528','CARDIOVASCULAR DRUG','Dopamine','Injection','40mg/ml in 5mls','Vial','400.00','2020-04-21 22:53:29','2020-04-21 22:53:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('529','CARDIOVASCULAR DRUG','Artovastatin','Tablet, Capsule','10mg','Tab/Cap','50.00','2020-04-21 22:54:47','2020-04-21 22:54:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('530','CARDIOVASCULAR DRUG','Artovastatin','Tablet, Capsule','10mg','Tab/Cap','50.00','2020-04-21 22:54:47','2020-04-21 22:54:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('531','CARDIOVASCULAR DRUG','Artovastatin','Tablet, Capsule','20mg','Tab/Cap','200.00','2020-04-21 22:55:30','2020-04-21 22:55:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('532','CARDIOVASCULAR DRUG','Clofibrate','Tablet, Capsule','20mg','Tab/Cap','30.00','2020-04-21 22:56:09','2020-04-21 22:56:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('533','CARDIOVASCULAR DRUG','Fluvastatin','Tablet, Capsule','40mg','Tab/Cap','50.00','2020-04-21 22:56:52','2020-04-21 22:56:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('534','CARDIOVASCULAR DRUG','Fluvastatin','Tablet, Capsule','20mg','Tab/Cap','190.00','2020-04-21 22:57:28','2020-04-21 22:57:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('535','CARDIOVASCULAR DRUG','Fluvastatin','Tablet, Capsule','20mg','Tab/Cap','190.00','2020-04-21 22:57:28','2020-04-21 22:57:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('536','CARDIOVASCULAR DRUG','Rosuvastatin','Tablet, Capsule','5mg','Tab/Cap','250.00','2020-04-21 22:58:16','2020-04-21 22:58:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('537','CARDIOVASCULAR DRUG','Rosuvastatin','Tablet, Capsule','5mg','Tab/Cap','190.00','2020-04-21 22:58:51','2020-04-21 23:00:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('538','CARDIOVASCULAR DRUG','Rosuvastatin','Tablet, Capsule','10mg','Tab/Cap','200.00','2020-04-21 22:58:51','2020-04-21 23:00:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('539','CARDIOVASCULAR DRUG','Rosuvastatin','Tablet, Capsule','20mg','Tab/Cap','160.00','2020-04-21 22:59:39','2020-04-21 22:59:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('540','CARDIOVASCULAR DRUG','Simvastatin','Tablet, Capsule','40mg','Tab/Cap','250.00','2020-04-21 23:05:20','2020-04-21 23:05:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('541','CARDIOVASCULAR DRUG','Simvastatin','Tablet, Capsule','40mg','Tab/Cap','250.00','2020-04-21 23:05:20','2020-04-21 23:05:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('542','CARDIOVASCULAR DRUG','Simvastatin','Tablet, Capsule','500mg','Tab/Cap','550.00','2020-04-21 23:06:04','2020-04-21 23:06:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('543','DENTAL DRUG','Benzocaine','lozenges','10mg','Tab','40.00','2020-04-21 23:06:59','2020-04-21 23:06:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('544','DENTAL DRUG','Lidocaine','Injection','2%,+epinephrine 1 in 80,000 in dental catridge','catridge','400.00','2020-04-21 23:08:40','2020-04-21 23:08:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('545','DENTAL DRUG','Lidocaine','Injection','2%,+epinephrine 1 in 80,000 in dental catridge','catridge','400.00','2020-04-21 23:08:40','2020-04-21 23:08:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('546','DENTAL DRUG','Lidocaine','spray','nil','tin','2000.00','2020-04-21 23:09:32','2020-04-21 23:09:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('547','DENTAL DRUG','Lidocaine','spray','nil','tin','2000.00','2020-04-21 23:09:32','2020-04-21 23:09:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('548','DENTAL DRUG','Prilocaine','Injection','3% with felypressin 0.03units/ml','Amp','300.00','2020-04-21 23:10:23','2020-04-21 23:10:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('549','DENTAL DRUG','Prilocaine','Injection','3% with felypressin 0.03units/ml','Amp','300.00','2020-04-21 23:10:23','2020-04-21 23:10:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('550','DENTAL DRUG','Chorhexetidine','solution','0.10%','100mls','500.00','2020-04-21 23:11:25','2020-04-21 23:11:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('551','DENTAL DRUG','Chorhexetidine','solution','0.10%','100mls','500.00','2020-04-21 23:11:25','2020-04-21 23:11:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('552','DENTAL DRUG','Glycerin thymol','solution','nil','200mls','360.00','2020-04-21 23:12:14','2020-04-21 23:12:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('553','DENTAL DRUG','Glycerin thymol','solution','nil','200mls','360.00','2020-04-21 23:12:14','2020-04-21 23:12:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('554','DENTAL DRUG','Hexetidine','solution','0.10%','100mls','500.00','2020-04-21 23:13:04','2020-04-21 23:13:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('555','DENTAL DRUG','Nystatin','solution','100,000unit/ml','30mls','500.00','2020-04-21 23:14:00','2020-04-21 23:14:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('556','DENTAL DRUG','Zinc Chloride plus Zinc Sulphate','solution','1% zinc + 2%Zinc sulphate','solution','240.00','2020-04-21 23:15:44','2020-04-21 23:15:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('557','DENTAL DRUG','Zinc Chloride plus Zinc Sulphate','solution','1% zinc + 2%Zinc sulphate','solution','240.00','2020-04-21 23:15:44','2020-04-21 23:15:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('558','DENTAL DRUG','Triamcinolone','paste (accetonide)','0.1%','Tube','700.00','2020-04-21 23:16:57','2020-04-21 23:16:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('559','DENTAL DRUG','Triamcinolone','paste (accetonide)','0.1%','Tube','700.00','2020-04-21 23:16:57','2020-04-21 23:16:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('560','DERMATOLOGICAL DRUG','Aciclovir','Cream','5%','Tube','450.00','2020-04-21 23:17:54','2020-04-21 23:17:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('561','DERMATOLOGICAL DRUG','Framycetin','gauze dressing','1%','gauze','200.00','2020-04-21 23:18:45','2020-04-21 23:18:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('562','DERMATOLOGICAL DRUG','Framycetin','gauze dressing','1%','gauze','200.00','2020-04-21 23:18:45','2020-04-21 23:18:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('563','DERMATOLOGICAL DRUG','Gentamycin','Oitment','0.30%','Tube','150.00','2020-04-22 15:53:46','2020-04-22 15:53:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('564','DERMATOLOGICAL DRUG','Gentian violet','Aqueous Solution','0.50%','60mls','80.00','2020-04-22 15:54:58','2020-04-22 15:54:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('565','DERMATOLOGICAL DRUG','Gentian violet','Tincture','nil','60mls','80.00','2020-04-22 15:56:04','2020-04-22 15:56:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('566','DERMATOLOGICAL DRUG','Mupiricon','Oitment','2% w/w','Tube','1000.00','2020-04-22 15:57:30','2020-04-22 15:57:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('567','DERMATOLOGICAL DRUG','Neomycin-Bacitracin','Oitment and cream','Neomycin so4 5mg plus Bacitracin zinc 500unit/g in 5g & 30g tube','Tube','150.00','2020-04-22 16:00:08','2020-04-22 16:00:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('568','DERMATOLOGICAL DRUG','Neomycin-Bacitracin','powder','Neomycin so4 5mg plus Bacitracin zinc 250units/g','Tin','200.00','2020-04-22 16:01:30','2020-04-22 16:01:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('569','DERMATOLOGICAL DRUG','Neomycin-Bacitracin','spray','Bacitracin, 12,500 units & Neomycin SO4, 165,000units','bottle','850.00','2020-04-22 16:04:13','2020-04-22 16:04:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('570','DERMATOLOGICAL DRUG','Silver Sulphadiazine','Cream','1%','Tube','400.00','2020-04-22 16:06:19','2020-04-22 16:06:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('571','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Betamethasone','Cream','0.1% (valerate)','Tube','250.00','2020-04-22 16:08:04','2020-04-22 16:08:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('572','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Betamethasone + Clioquinol','Cream','0.1% + 0.3%','Tube','300.00','2020-04-22 16:09:32','2020-04-22 16:09:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('573','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Betamethasone + Neomycin','Cream','0.1% + 0.5%','Tube','300.00','2020-04-22 16:11:47','2020-04-22 16:11:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('574','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Calamine Lotion','Lotion','nil','120mls','200.00','2020-04-22 16:12:37','2020-04-22 16:12:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('575','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clobetasol propionate','Cream','0.05%','Tube','850.00','2020-04-22 16:14:00','2020-04-22 16:14:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('576','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clobetasone','Cream','0.05%','Tube','500.00','2020-04-22 16:15:07','2020-04-22 16:15:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('577','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Fluocinolone','Cream','0.03%','Tube','900.00','2020-04-22 16:16:26','2020-04-22 16:16:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('578','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Fluocinolone','Cream','0.025%+3% clioquinol','Tube','900.00','2020-04-22 16:17:23','2020-04-22 16:17:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('579','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Hydrocortisone','Cream','1%','Tube','300.00','2020-04-22 16:18:14','2020-04-22 16:18:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('580','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Hydrocortisone (Plus0 Neomycin','Cream','0.5-1% hydrocortisone + 0.25-0.5% Neomycin','Tube','300.00','2020-04-22 16:20:03','2020-04-22 16:20:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('581','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Methyl Salicylate','Oitment','4-20% methy salicylate','Tube','250.00','2020-04-22 16:21:23','2020-04-22 16:21:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('582','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Aluminium diacetate','solution','13% dilution','nil','0','2020-04-22 16:22:16','2020-04-22 16:22:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('583','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Calamine + Zinc Oxide','Lotion, plaster','nil','nil','200.00','2020-04-22 16:23:18','2020-04-22 16:23:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('584','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Benzoyl Peroxide','Cream','10%, 55, 2.5%','Tube','900.00','2020-04-22 16:25:53','2020-04-22 16:25:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('585','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Benzoyl Peroxide','Gel','10%, 5%, 2.5%','Tube','900.00','2020-04-22 16:26:55','2020-04-22 16:26:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('586','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Benzyl Benzoate','emulsion and lotion','25%','100mls','220.00','2020-04-22 16:27:59','2020-04-22 16:27:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('587','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Crotamiton','Cream','10%','Tube','660.00','2020-04-22 16:28:47','2020-04-22 16:28:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('588','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Crotamiton','Lotion','10%','50mls','550.00','2020-04-22 16:31:08','2020-04-22 16:31:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('589','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Monosulfiram','soap','5%','soap','150.00','2020-04-22 16:32:12','2020-04-22 16:32:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('590','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Permethrine','cream, lotion','5%, 1% respectively','lotion','100.00','2020-04-22 16:33:34','2020-04-22 16:33:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('591','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clotrimazole','Cream','1%','Tube','200.00','2020-04-22 16:35:14','2020-04-22 16:35:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('592','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clotrimazole','aerosol, spray','1%','Tin','250.00','2020-04-22 16:35:58','2020-04-22 16:35:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('593','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clotrimazole','Dusting powder','1%','Tin','200.00','2020-04-22 16:36:47','2020-04-22 16:36:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('594','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clotrimazole','pessary','nil','6's','350.00','2020-04-22 16:37:35','2020-04-22 16:37:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('595','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Clotrimazole','vaginal cream','nil','Tube','500.00','2020-04-22 16:38:17','2020-04-22 16:38:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('596','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Ketoconazole','Cream','2%','Tube','550.00','2020-04-22 16:39:08','2020-04-22 16:39:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('597','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Miconazole','Oral gel','2-2.5%','Tube','1000.00','2020-04-22 16:39:59','2020-04-22 16:39:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('598','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Miconazole','Cream','2%','Tube','400.00','2020-04-22 16:41:25','2020-04-22 16:41:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('599','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Miconazole','lotion','2%','Tin','500.00','2020-04-22 16:42:06','2020-04-22 16:42:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('600','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Miconazole','ovule','nil','ovules','700.00','2020-04-22 16:42:42','2020-04-22 16:42:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('601','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Miconazole','pessary','nil','pessaries','500.00','2020-04-22 16:43:40','2020-04-22 16:43:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('602','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Miconazole + Hydrocortisone','Cream','2% +1%','Tube','1200.00','2020-04-22 16:45:00','2020-04-22 16:45:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('603','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Nystatin','Cream, Oitment','100,000units','Tube','500.00','2020-04-22 16:45:44','2020-04-22 16:45:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('604','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Sulphur + Mesulphen','Oitment','sulphur 10-20% + Mesulphen 64%','Tube','250.00','2020-04-22 16:48:13','2020-04-22 16:48:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('605','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Tioconazole','Cream','1%','Tube','400.00','2020-04-22 16:49:05','2020-04-22 16:49:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('606','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Tioconazole','ovule','3s','Tube','600.00','2020-04-22 16:49:45','2020-04-22 16:49:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('607','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Benzoic-acid +salicylic acid','cream oitment','6%, 3%','Tube','200.00','2020-04-22 16:50:47','2020-04-22 16:50:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('608','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Coal tar','solution/cream','1-10%','nil','1000.00','2020-04-22 16:51:34','2020-04-22 16:51:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('609','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Diathranol','Oitment','0.1-2%','Tube','1000.00','2020-04-22 16:52:40','2020-04-22 16:52:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('610','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Podophyllum resin','topical solution','10-25%','nil','1500.00','2020-04-22 16:53:29','2020-04-22 16:53:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('611','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Salicylic acid','topical solution','12% in flexible collodion','Tube','150.00','2020-04-22 16:54:38','2020-04-22 16:54:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('612','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Salicylic acid','Oitment','2.5%','nil','180.00','2020-04-22 16:55:50','2020-04-22 16:55:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('613','ANTI-INFLAMATORY & ANTI-PRURITIC DRUGS','Urea','Cream, Oitment','10%','Tube','0','2020-04-22 16:59:56','2020-04-22 16:59:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('614','EAR,NOSE & THROAT DRUG','Chloramphenicol','Ear drop','5%','10mls','150.00','2020-04-22 17:01:18','2020-04-22 17:01:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('615','EAR,NOSE & THROAT DRUG','Gentamycin','Eye/Ear drops','03% (sulphate)','10,ls','150.00','2020-04-22 17:02:11','2020-04-22 17:02:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('616','EAR,NOSE & THROAT DRUG','Betamethasone','nil','nil','nil','250.00','2020-04-22 17:02:51','2020-04-22 17:02:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('617','EAR,NOSE & THROAT DRUG','Hydrocortisone + Neomycin','Ear drops','Hydrocortisone 1.5% + Neomycin 0.5% (Sulphate)','5mls','360.00','2020-04-22 20:55:20','2020-04-22 20:55:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('618','EAR,NOSE & THROAT DRUG','Hydrocortisone + Neomycin','Ear drops','Hydrocortisone 1.5% + Neomycin 0.5% (Sulphate)','5mls','360.00','2020-04-22 20:55:20','2020-04-22 20:55:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('619','EAR,NOSE & THROAT DRUG','Bethamethasone + Neomycin','Ear drops','0.1% + 0.5%','10mls','250.00','2020-04-22 20:56:44','2020-04-22 20:56:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('620','EAR,NOSE & THROAT DRUG','Bethamethasone + Neomycin','Ear drops','0.1% + 0.5%','10mls','250.00','2020-04-22 20:56:44','2020-04-22 20:56:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('621','EAR,NOSE & THROAT DRUG','Dexamethasone + Neomycin','Ear drops','0.1% +32000unit/ml','10mls','350.00','2020-04-22 20:58:25','2020-04-22 20:58:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('622','EAR,NOSE & THROAT DRUG','Dexamethasone + Neomycin','Ear drops','0.1% +32000unit/ml','10mls','350.00','2020-04-22 20:58:25','2020-04-22 20:58:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('623','EAR,NOSE & THROAT DRUG','Flumethasone plus clioquinol','Ear drops','0.025 +1% clioquinol','7.5%','700.00','2020-04-22 21:00:17','2020-04-22 21:00:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('624','EAR,NOSE & THROAT DRUG','Hydrocortisone + Neomycin + Polymyxin B','Ear drops','Hydrocortisone 1.0%(acetate) + Neomycin 3400units (sulphate) + polymyxin B 10,000units/10mls','10mls','500.00','2020-04-22 21:03:12','2020-04-22 21:03:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('625','EAR,NOSE & THROAT DRUG','Glycerol plus sodium bicarbonate','Ear drops','nil','10mls','650.00','2020-04-22 21:04:32','2020-04-22 21:04:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('626','EAR,NOSE & THROAT DRUG','Glycerol plus sodium bicarbonate','Ear drops','nil','10mls','650.00','2020-04-22 21:04:32','2020-04-22 21:04:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('627','EAR,NOSE & THROAT DRUG','Chlorbutanol + Paradichlorobenzine + arachis oil + turpentine oil','Ear drops','nil','nil','800.00','2020-04-22 21:07:21','2020-04-22 21:07:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('628','EAR,NOSE & THROAT DRUG','Chlorbutanol + Paradichlorobenzine + arachis oil + turpentine oil','Ear drops','nil','nil','800.00','2020-04-22 21:07:21','2020-04-22 21:07:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('629','EAR,NOSE & THROAT DRUG','Antazoline + Nephazoline','Nasal drops','0.5%=0.025%','10mls','0','2020-04-22 21:08:41','2020-04-22 21:08:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('630','EAR,NOSE & THROAT DRUG','Beclomethasone Dipropionate','Nasal Spray','(aerosol) 0.05mg/metered spray','spray','1500.00','2020-04-22 21:10:19','2020-04-22 21:10:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('631','EAR,NOSE & THROAT DRUG','Ephedrine','Nasal drops (Hcl)','0.5%','nil','400.00','2020-04-22 21:11:19','2020-04-22 21:11:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('632','EAR,NOSE & THROAT DRUG','Pseudoephedrine (HCL)','Tablet','60mg','Tab','5.00','2020-04-22 21:12:10','2020-04-22 21:12:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('633','EAR,NOSE & THROAT DRUG','Pseudoephedrine (HCl)','Syrup','30mg/5ml','60mls','300.00','2020-04-22 21:13:09','2020-04-22 21:13:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('634','EAR,NOSE & THROAT DRUG','Pseudoephedrine (HCl)','Syrup','30mg/5ml','60mls','300.00','2020-04-22 21:13:09','2020-04-22 21:13:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('635','EAR,NOSE & THROAT DRUG','tripolidine (HCL)+ Pseudoephedrine (HCL)','Tablet','60mg = 2.5mg','Tab','50.00','2020-04-22 21:15:55','2020-04-22 21:15:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('636','EAR,NOSE & THROAT DRUG','Tripolidine (HCL) +Pseudoephedrine','Syrup','30mg +1.2mg','60mls','350.00','2020-04-22 21:17:24','2020-04-22 21:17:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('637','EAR,NOSE & THROAT DRUG','Xylomethazoline','Nasal drops','0.25%','10mls','750.00','2020-04-22 21:18:26','2020-04-22 21:18:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('638','EAR,NOSE & THROAT DRUG','Xylomethazoline','Nasal drops','0.50%','10mls','750.00','2020-04-22 21:19:13','2020-04-22 21:19:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('639','EAR,NOSE & THROAT DRUG','Xylomethazoline + Antazoline','Nasal drops','0.25%+0.5% (paed)','10mls','300.00','2020-04-22 21:20:30','2020-04-22 21:20:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('640','EAR,NOSE & THROAT DRUG','Xylomethazoline + Antazoline','Nasal drops','0.25%+0.5% (paed)','10mls','300.00','2020-04-22 21:20:30','2020-04-22 21:20:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('641','EAR,NOSE & THROAT DRUG','Xylomethazoline + Antazoline','Nasal drops','adult','10mls','400.00','2020-04-22 21:22:29','2020-04-22 21:22:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('642','EAR,NOSE & THROAT DRUG','Xylomethazoline + Antazoline','Nasal drops','adult','10mls','400.00','2020-04-22 21:22:29','2020-04-22 21:22:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('643','EAR,NOSE & THROAT DRUG','Silver nitrate','stick, crystal, solution','0.50%','stick','660.00','2020-04-22 21:24:10','2020-04-22 21:24:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('644','EAR,NOSE & THROAT DRUG','Silver nitrate','stick, crystal, solution','0.50%','stick','660.00','2020-04-22 21:24:10','2020-04-22 21:24:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('645','EAR,NOSE & THROAT DRUG','Dequalinium','lozenges','250mg','lozenges','10.00','2020-04-22 21:25:19','2020-04-22 21:25:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('646','EAR,NOSE & THROAT DRUG','Dequalinium','lozenges','250mg','lozenges','10.00','2020-04-22 21:25:20','2020-04-22 21:25:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('647','EAR,NOSE & THROAT DRUG','Dequalinium','lozenges','250mg','lozenges','10.00','2020-04-22 21:25:20','2020-04-22 21:25:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('648','EAR,NOSE & THROAT DRUG','Dequalinium','paint','250mg(HCL)','10mls','450.00','2020-04-22 21:26:07','2020-04-22 21:26:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('649','EAR,NOSE & THROAT DRUG','Dochlorobenzyl alcohol + Amylmetacresol','lozenges','nil','lozenges','40.00','2020-04-22 21:27:29','2020-04-22 21:27:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('650','EAR,NOSE & THROAT DRUG','Dochlorobenzyl alcohol + Amylmetacresol','lozenges','nil','lozenges','40.00','2020-04-22 21:27:29','2020-04-22 21:27:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('651','EAR,NOSE & THROAT DRUG','Aluminium hydroxide','Suspension','320mg/5ml','200mls','200.00','2020-04-22 21:28:18','2020-04-22 21:28:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('653','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide','Suspension','320mg/5ml','200mls','200.00','2020-04-22 21:29:58','2020-04-22 21:29:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('654','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide','Suspension','320mg/5ml','200mls','200.00','2020-04-22 21:29:58','2020-04-22 21:29:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('655','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide','Tablet','500mg','Tab','5.00','2020-04-22 21:43:03','2020-04-22 21:43:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('656','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide +Magnesium hydroxide +Simethicone','Tablet','200mg+200mg+30mg','Tab','5.00','2020-04-22 21:45:21','2020-04-22 21:45:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('657','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide +Magnesium hydroxide +Simethicone','Mixture (with or without diglycirrhizinnated liquarice)','6mg+80mg++100mg+/-400mg','200mls','400.00','2020-04-22 21:47:18','2020-04-22 21:47:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('658','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide +Magnesium trisilicate','Tablet','120mg +250mg','Tab','5.00','2020-04-22 21:48:25','2020-04-22 21:48:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('659','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide +Magnesium trisilicate','Tablet','120mg +250mg','Tab','5.00','2020-04-22 21:48:25','2020-04-22 21:48:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('660','GASTRO-INTESTINAL DRUGS','Aluminium hydroxide +Magnesium trisilicate','Mixture','BP','200mls','300.00','2020-04-22 21:49:20','2020-04-22 21:49:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('661','GASTRO-INTESTINAL DRUGS','Magnesium trisilicate','Tablet','500mg','Tab','5.00','2020-04-22 21:50:09','2020-04-22 21:50:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('662','GASTRO-INTESTINAL DRUGS','Magnesium trisilicate','Mixture','250mg/ml','200mls','300.00','2020-04-22 21:50:48','2020-04-22 21:50:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('663','GASTRO-INTESTINAL DRUGS','Metoclopramide','Tablet','10mg (HCL)','Tab','7.00','2020-04-22 22:00:32','2020-04-22 22:00:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('664','GASTRO-INTESTINAL DRUGS','Metoclopramide','Syrup','5mg/5ml (HCL)','100mls','200.00','2020-04-22 22:01:26','2020-04-22 22:01:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('665','GASTRO-INTESTINAL DRUGS','Metoclopramide','Syrup','5mg/5ml (HCL)','100mls','200.00','2020-04-22 22:01:26','2020-04-22 22:01:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('666','GASTRO-INTESTINAL DRUGS','Metoclopramide','Injection','5mg/ml (HCL)','Amp','30.00','2020-04-22 22:02:31','2020-04-22 22:02:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('667','GASTRO-INTESTINAL DRUGS','Prochlorperazine','Tablet (maleate)','5mg','Tab','5.00','2020-04-22 22:03:40','2020-04-22 22:05:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('668','GASTRO-INTESTINAL DRUGS','Prochlorperazine','Tablet (maleate)','25mg','Tab','10.00','2020-04-22 22:05:02','2020-04-22 22:05:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('669','GASTRO-INTESTINAL DRUGS','Prochlorperazine','Syrup (mesilate)','5mg/5ml','100mls','350.00','2020-04-22 22:06:40','2020-04-22 22:06:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('670','GASTRO-INTESTINAL DRUGS','Prochlorperazine','Injection (mesilate)','12.5mg/ml in 1ml & 2ml Ampoules','Amp','70.00','2020-04-22 22:07:58','2020-04-22 22:07:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('671','GASTRO-INTESTINAL DRUGS','Prochlorperazine','Injection (mesilate)','12.5mg/ml in 1ml & 2ml Ampoules','Amp','70.00','2020-04-22 22:07:58','2020-04-22 22:07:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('672','GASTRO-INTESTINAL DRUGS','Prochlorperazine','Injection (mesilate)','12.5mg/ml in 1ml & 2ml Ampoules','Amp','70.00','2020-04-22 22:07:58','2020-04-22 22:07:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('673','GASTRO-INTESTINAL DRUGS','Promethazine','Tablet','10 and 25mg (HCL)','Tab','5.00','2020-04-22 22:08:49','2020-04-22 22:08:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('674','GASTRO-INTESTINAL DRUGS','Promethazine','Syrup','5mg/5ml (HCL)','60mls','120.00','2020-04-22 22:09:40','2020-04-22 22:09:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('675','GASTRO-INTESTINAL DRUGS','Promethazine','Injection','25mg/ml (HCL) in 2ml ampoules','Amp','20.00','2020-04-22 22:10:40','2020-04-22 22:10:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('676','GASTRO-INTESTINAL DRUGS','Promethazine theoclate','Tablet','nil','Tab','15.00','2020-04-22 22:11:15','2020-04-22 22:11:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('677','GASTRO-INTESTINAL DRUGS','Promethazine theoclate','Tablet','nil','Tab','15.00','2020-04-22 22:11:15','2020-04-22 22:11:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('678','GASTRO-INTESTINAL DRUGS','Homatropine methyl bromide','Drop','2mg/ml','15ml','460.00','2020-04-22 22:12:06','2020-04-22 22:12:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('679','GASTRO-INTESTINAL DRUGS','Hysocine N-butylbro-Mide','Tablet','10mg','Tab','10.00','2020-04-22 22:13:11','2020-04-22 22:13:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('680','GASTRO-INTESTINAL DRUGS','Hysocine N-butylbro-Mide','Syrup','1mg/ml','100mls','400.00','2020-04-22 22:13:50','2020-04-22 22:13:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('681','GASTRO-INTESTINAL DRUGS','Hysocine N-butylbro-Mide','Injection','20mg/ml in 1ml ampoule','Amp','50.00','2020-04-22 22:14:36','2020-04-22 22:14:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('682','GASTRO-INTESTINAL DRUGS','Bisacodyl','Tablet','5mg','Tab','5.00','2020-04-22 22:15:35','2020-04-22 22:15:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('683','GASTRO-INTESTINAL DRUGS','Bisacodyl','Suppository','5,10mg','Supp','130.00','2020-04-22 22:16:14','2020-04-22 22:16:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('684','GASTRO-INTESTINAL DRUGS','Liquid Paraffin','emulsion, oral','5mg/10ml of emulsion','100mls','220.00','2020-04-22 22:17:40','2020-04-22 22:17:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('685','GASTRO-INTESTINAL DRUGS','Senna','Tablet & granule','nil','Tab','30.00','2020-04-22 22:18:30','2020-04-22 22:18:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('686','GASTRO-INTESTINAL DRUGS','Diphenoxylate hydrochloride + Atropine sulphate','Tablet','2.5mg + 0.025mg','Tab','10.00','2020-04-22 22:20:40','2020-04-22 22:20:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('687','GASTRO-INTESTINAL DRUGS','Loperamide','Tablet','2mg','Tab','16.50','2020-04-22 22:21:19','2020-04-22 22:21:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('688','GASTRO-INTESTINAL DRUGS','Oral rehydration Salt','Salts','Glucose 13.5g, Potassium Cl 1.5g, sodium bicarbonate 2.5%, sodium chloride 2.6g','sachet','50.00','2020-04-23 15:16:11','2020-04-23 15:16:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('689','GASTRO-INTESTINAL DRUGS','Aluminium Actate + Hydrocortisone + Lidocaine + zinc oxide','Suppository','50mg+5mg+60mg','supp','110.00','2020-04-23 15:19:31','2020-04-23 15:19:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('690','GASTRO-INTESTINAL DRUGS','Benzyl benzoate+bismuth oxide+bismuth subgallate+hydrocortisone','supp','33mg+24mg+59mg','supp','110.00','2020-04-23 15:20:56','2020-04-23 15:20:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('691','GASTRO-INTESTINAL DRUGS','Benzyl benzoate+bismuth oxide+bismuth subgallate+hydrocortisone+Peru balsam','Suppository','33mg+24mg+59mg','supp','110.00','2020-04-23 15:22:38','2020-04-23 15:22:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('692','GASTRO-INTESTINAL DRUGS','Cinchocaine hydrochloride+prednisolone','Suppository','1mg+1.3mg','supp','110.00','2020-04-23 15:23:46','2020-04-23 15:23:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('693','GASTRO-INTESTINAL DRUGS','Cimetidine','Tablet','200mg','tab','10.00','2020-04-23 15:24:28','2020-04-23 15:24:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('694','GASTRO-INTESTINAL DRUGS','Cimetidine','Tablet','400mg','Tab','15.00','2020-04-23 15:25:02','2020-04-23 15:25:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('695','GASTRO-INTESTINAL DRUGS','Cimetidine','Injection','100mg/ml in 2ml ampoules','Amp','100.00','2020-04-23 15:25:42','2020-04-23 15:25:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('696','GASTRO-INTESTINAL DRUGS','Esomeprazole','Tablet','20mg','Tab','35.00','2020-04-23 15:29:56','2020-04-23 15:29:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('697','GASTRO-INTESTINAL DRUGS','Lansoprazole','Capsule','30mg','Caps','40.00','2020-04-23 15:30:44','2020-04-23 15:30:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('698','GASTRO-INTESTINAL DRUGS','Omeprazole','Tablet','10mg, 20mg','20mg tab','33.00','2020-04-23 15:31:36','2020-04-23 15:31:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('699','GASTRO-INTESTINAL DRUGS','Rabeprazole','Tablet','20mg','Tab','70.00','2020-04-23 15:32:19','2020-04-23 15:32:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('700','GASTRO-INTESTINAL DRUGS','Ranitidine','Tablet','150mg','Tab','16.50','2020-04-23 15:33:48','2020-04-23 15:33:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('701','GASTRO-INTESTINAL DRUGS','Ranitidine','Tablet','300mg (HCL)','Tab','30.00','2020-04-23 15:34:24','2020-04-23 15:34:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('702','GASTRO-INTESTINAL DRUGS','Ranitidine','Injection','25mg/ml in 2ml ampoules','Amp','220.00','2020-04-23 15:35:03','2020-04-23 15:35:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('703','HORMONES & SYNTHETIC SUBSTITUTES','Dexamethasone','Tablet','0.5mg and 4mg','Tab','5.00','2020-04-23 15:37:17','2020-04-23 15:37:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('704','HORMONES & SYNTHETIC SUBSTITUTES','Dexamethasone','Injection','2mg/ml, 4mg/ml in 2ml ampoule','Amp','20.00','2020-04-23 15:38:01','2020-04-23 15:38:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('705','HORMONES & SYNTHETIC SUBSTITUTES','Fludrocortisone','Tablet','0.1mg','Tab','5.00','2020-04-23 15:39:20','2020-04-23 15:39:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('706','HORMONES & SYNTHETIC SUBSTITUTES','Hydrocortisone','Injection, powder','100mg/vial','vial','150.00','2020-04-23 15:40:15','2020-04-23 15:40:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('707','HORMONES & SYNTHETIC SUBSTITUTES','Methyl prednisolone','Injection','40mg/ml in 2ml ampoule','Amp','1200.00','2020-04-23 15:45:49','2020-04-23 15:45:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('708','HORMONES & SYNTHETIC SUBSTITUTES','Prednisolone','Tablet','1mg, 5mg tab','Tab','5.00','2020-04-23 15:47:45','2020-04-23 15:47:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('709','HORMONES & SYNTHETIC SUBSTITUTES','Triamcinolone','Injection','10mg/40mg/ml','Amp','1000.00','2020-04-23 15:48:46','2020-04-23 15:48:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('710','HORMONES & SYNTHETIC SUBSTITUTES','Ethinyloestradiol','Tablet','0.02mg, 0.05mg','Tab','50.00','2020-04-23 15:52:10','2020-04-23 15:52:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('711','HORMONES & SYNTHETIC SUBSTITUTES','Hydroxyprogesterone','Injection','Hexanoate 250mg/ml in 1ml, 2ml ampoules','Amp','250.00','2020-04-23 15:54:33','2020-04-23 15:54:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('712','HORMONES & SYNTHETIC SUBSTITUTES','Norethisterone','Injection','200mg/ml','Amp','200.00','2020-04-23 15:55:20','2020-04-23 15:55:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('713','HORMONES & SYNTHETIC SUBSTITUTES','Bromocriptine','Tablet','1mg, 2.5mg (Mesylate)','Tab','100.00','2020-04-23 15:56:22','2020-04-23 15:56:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('714','HORMONES & SYNTHETIC SUBSTITUTES','Clomiphene','Tablet','50mg (citrate)','10s','500.00','2020-04-23 15:57:11','2020-04-23 15:57:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('715','HORMONES & SYNTHETIC SUBSTITUTES','Chorionic gonadotropin','Injection, powder','500units in ampoule','Amp','4000.00','2020-04-23 15:58:34','2020-04-23 15:58:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('716','HORMONES & SYNTHETIC SUBSTITUTES','Chorionic gonadotropin','Injection, powder','1000units in ampoule','Amp','4000.00','2020-04-23 15:59:18','2020-04-23 15:59:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('717','HORMONES & SYNTHETIC SUBSTITUTES','Danazol','Capsule','100mg/200mg','Caps','300.00','2020-04-23 16:00:10','2020-04-23 16:00:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('718','HORMONES & SYNTHETIC SUBSTITUTES','Epimestrol','Tablet','5mg','Tab','0','2020-04-23 16:00:39','2020-04-23 16:00:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('719','HORMONES & SYNTHETIC SUBSTITUTES','Follicle-stimulating hormone','Injection, powder','75units + 75units','Amp','0','2020-04-23 16:01:39','2020-04-23 16:01:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('720','HORMONES & SYNTHETIC SUBSTITUTES','Desmopressin','Injection','4mcg/ml','Amp','0','2020-04-23 16:03:15','2020-04-23 16:03:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('721','HORMONES & SYNTHETIC SUBSTITUTES','Desmopressin','inhalation','10mcg metered spray','spray','0','2020-04-23 16:04:02','2020-04-23 16:04:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('722','HORMONES & SYNTHETIC SUBSTITUTES','Vasopressin','Injection','20units/ml in 1ml ampoule','Amp','0','2020-04-23 16:04:43','2020-04-23 16:04:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('723','HORMONES & SYNTHETIC SUBSTITUTES','Biphasic Isophane insulin','Injection','Human soluble insulin 305+isophane insulin 70%','Vial','1800.00','2020-04-23 16:06:08','2020-04-23 16:06:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('724','HORMONES & SYNTHETIC SUBSTITUTES','Insulin Soluble','Injection','40units/ml','Vial','1800.00','2020-04-23 16:06:53','2020-04-23 16:06:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('725','HORMONES & SYNTHETIC SUBSTITUTES','Insulin Soluble','Injection','100units/ml','Vial','3700.00','2020-04-23 16:07:53','2020-04-23 16:07:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('726','HORMONES & SYNTHETIC SUBSTITUTES','Insulin Zinc Suspension (I.Z.S)','Injection','40units/ml','vial','1800.00','2020-04-23 16:09:14','2020-04-23 16:09:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('727','HORMONES & SYNTHETIC SUBSTITUTES','Insulin Zinc Suspension (I.Z.S)','Injection','100units/ml','Vial','3700.00','2020-04-23 16:09:52','2020-04-23 16:09:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('728','HORMONES & SYNTHETIC SUBSTITUTES','Isophane Insulin','Injection','100units/ml','Vial','3700.00','2020-04-23 16:10:33','2020-04-23 16:10:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('729','HORMONES & SYNTHETIC SUBSTITUTES','Protamine Zinc Insulin','Injection','100units/ml','Vial','3700.00','2020-04-23 16:11:12','2020-04-23 16:11:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('730','HORMONES & SYNTHETIC SUBSTITUTES','Chlorpropamide','Tablet','250mg','Tab','25.00','2020-04-23 16:39:50','2020-04-23 16:39:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('731','HORMONES & SYNTHETIC SUBSTITUTES','Metformin','Tablet','500mg (Hcl)','Tab','15.00','2020-04-23 16:40:43','2020-04-23 16:40:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('732','HORMONES & SYNTHETIC SUBSTITUTES','Glibenclamide','Tablet','5mg','Tab','15.00','2020-04-23 16:41:30','2020-04-23 16:41:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('733','HORMONES & SYNTHETIC SUBSTITUTES','Gliclazide','Tablet','80mg','Tab','30.00','2020-04-23 16:42:54','2020-04-23 16:42:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('734','HORMONES & SYNTHETIC SUBSTITUTES','Gliclazide','Tablet','30mg','tab','25.00','2020-04-23 16:44:32','2020-04-23 16:44:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('735','HORMONES & SYNTHETIC SUBSTITUTES','Glimepiride','Tablet','1mg','Tab','45.00','2020-04-23 16:45:41','2020-04-23 16:45:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('736','HORMONES & SYNTHETIC SUBSTITUTES','Glimepiride','Tablet','2mg','Tab','20.00','2020-04-23 16:47:02','2020-04-23 16:47:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('737','HORMONES & SYNTHETIC SUBSTITUTES','Glimepiride','Tablet','4mg','Tab','140.00','2020-04-23 16:50:40','2020-04-23 16:50:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('738','HORMONES & SYNTHETIC SUBSTITUTES','Glucagon','Injection','1mg/ml','Amp','0','2020-04-23 16:51:38','2020-04-23 16:51:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('739','HORMONES & SYNTHETIC SUBSTITUTES','Metformin','Tablet','1000mg','Tab','20.00','2020-04-23 16:55:31','2020-04-23 16:55:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('740','HORMONES & SYNTHETIC SUBSTITUTES','Metformin','Tablet','850mg','Tab','16.00','2020-04-23 16:56:02','2020-04-23 16:56:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('741','HORMONES & SYNTHETIC SUBSTITUTES','Metformin + Glabenclamide','Tablet','500mg (HCL) + 2.5mg','Tab','20.00','2020-04-23 16:57:01','2020-04-23 16:57:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('742','HORMONES & SYNTHETIC SUBSTITUTES','Pioglitazone Hydrocloride','Tablet','15mg','nil','70.00','2020-04-23 16:58:15','2020-04-23 16:58:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('743','HORMONES & SYNTHETIC SUBSTITUTES','Pioglitazone Hydrocloride','Tablet','30mg','nil','80.00','2020-04-23 16:58:51','2020-04-23 16:58:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('744','HORMONES & SYNTHETIC SUBSTITUTES','Rosiglitazone','Tablet','4mg','tab','210.00','2020-04-23 17:00:28','2020-04-23 17:00:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('745','HORMONES & SYNTHETIC SUBSTITUTES','Vildagliptin','Tablet','50mg','Tab','220.00','2020-04-23 17:01:04','2020-04-23 17:01:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('746','HORMONES & SYNTHETIC SUBSTITUTES','Vidagliptin + Metformin','Tablet','50mg/500mg','Tab','220.00','2020-04-23 17:02:21','2020-04-23 17:02:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('747','HORMONES & SYNTHETIC SUBSTITUTES','Vidagliptin + Metformin','Tablet','50mg/1000mg','Tab','220.00','2020-04-23 17:03:02','2020-04-23 17:03:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('748','HORMONES & SYNTHETIC SUBSTITUTES','Carbimazole','Tablet','5mg','Tab','10.00','2020-04-23 17:06:30','2020-04-23 17:06:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('749','HORMONES & SYNTHETIC SUBSTITUTES','Levothyroxine','Tablet','0.05mg (sodium salt)','Tab','30.00','2020-04-23 17:07:27','2020-04-23 17:07:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('750','HORMONES & SYNTHETIC SUBSTITUTES','Levothyroxine','Tablet','0.1mg (sodium salt)','Tab','30.00','2020-04-23 17:08:06','2020-04-23 17:08:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('751','HORMONES & SYNTHETIC SUBSTITUTES','Lugol's solution','solution, oral','iodine 5%, potassium iodide 10% in purified water','solution','100.00','2020-04-23 17:09:16','2020-04-23 17:09:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('752','HORMONES & SYNTHETIC SUBSTITUTES','Propylthiouracil','Tablet','50mg','Tab','300.00','2020-04-23 17:10:04','2020-04-23 17:10:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('753','HORMONES & SYNTHETIC SUBSTITUTES','Dutasteride','Tablet','nil','Tab','200.00','2020-04-23 17:10:38','2020-04-23 17:10:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('754','HORMONES & SYNTHETIC SUBSTITUTES','Finasteride','Tablet','5mg','Tab','100.00','2020-04-23 17:11:24','2020-04-23 17:11:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('755','HORMONES & SYNTHETIC SUBSTITUTES','Tamsulosin','Tablet','400mcg','Tab','100.00','2020-04-23 17:11:57','2020-04-23 17:11:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('756','IMMUNOLOGICAL DRUG','Alpha interferon','Injection','4.5mu','Vial','6000.00','2020-04-23 17:13:47','2020-04-23 17:13:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('757','IMMUNOLOGICAL DRUG','Anti Gas-gangrene','Injection','10,000, 30,000units in vial','Vial','0','2020-04-23 17:15:01','2020-04-23 17:15:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('758','IMMUNOLOGICAL DRUG','Anti Scorpion serum','Injection','1ml in ampoule','Amp','0','2020-04-23 17:15:37','2020-04-23 17:15:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('760','IMMUNOLOGICAL DRUG','Anti Tetanus immunoglobin (human)','Injection','1500units/amp','Amp','150.00','2020-04-23 17:18:19','2020-04-23 17:18:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('761','IMMUNOLOGICAL DRUG','Anti Tetanus immunoglobin (human)','Injection','10000units/ampoule','Amp','1200.00','2020-04-23 17:18:58','2020-04-23 17:18:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('762','IMMUNOLOGICAL DRUG','Anti-D (Rhesus) immunoglobullin (Humans)','Injection','300microgram (1500 I.U)/ml','prefilled syringe','13,000.00','2020-04-23 17:20:59','2020-04-23 17:20:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('763','IMMUNOLOGICAL DRUG','Anti Snake bite serum','Injection','polyvalent, 10ml, 20ml in ampoule','Amp','5000.00','2020-04-23 17:22:43','2020-04-23 17:22:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('764','IMMUNOLOGICAL DRUG','Gas gangrene anti-toxin','Injection','4000units in vial, 10000units in vial','Vial','0','2020-04-23 17:23:56','2020-04-23 17:23:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('765','IMMUNOLOGICAL DRUG','Hepatitis B Anti-serum','Injection','200iu','Amp','78750.00','2020-04-23 17:25:09','2020-04-23 17:25:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('766','IMMUNOLOGICAL DRUG','Hepatitis B Anti-serum','Injection','400iu','Amp','94500.00','2020-04-23 17:25:45','2020-04-23 17:25:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('767','IMMUNOLOGICAL DRUG','Normal Immunoglobullin','IV Injection','30mg/ml, 165mg/ml','Vial','0','2020-04-23 17:26:44','2020-04-23 17:26:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('768','IMMUNOLOGICAL DRUG','Rabies immunoglobin','Injection','150 unit in ml vial','Vial','2,500.00','2020-04-23 17:27:56','2020-04-23 17:27:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('769','IMMUNOLOGICAL DRUG','BCG Vaccine dried**','Injection','powder for reconstitution in multidose amp 1ml, 5ml','nil','0','2020-04-24 12:17:18','2020-04-24 12:17:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('770','IMMUNOLOGICAL DRUG','Diphtera, tetanus and Pertussis Vaccine**','Injection','0.5ml, 5ml','nil','0','2020-04-24 12:18:46','2020-04-24 12:18:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('771','IMMUNOLOGICAL DRUG','Hepatitis B Vaccines','Liquid for injection','10doses/vial','vial','3000.00','2020-04-24 12:20:44','2020-04-24 12:20:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('772','IMMUNOLOGICAL DRUG','Measles, Mumps, & Rubella vaccine**','Injection','0.5ml','nil','0','2020-04-24 12:21:57','2020-04-24 12:21:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('773','IMMUNOLOGICAL DRUG','Measles vaccine**','Injection','0.5ml','nil','0','2020-04-24 12:22:39','2020-04-24 12:22:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('774','IMMUNOLOGICAL DRUG','Pentavelent vaccine**','Injection','nil','nil','0','2020-04-24 12:23:20','2020-04-24 12:23:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('775','IMMUNOLOGICAL DRUG','Poliomyelitis vaccine**','oral suspension','nil','nil','0','2020-04-24 12:24:44','2020-04-24 12:24:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('776','IMMUNOLOGICAL DRUG','Tetanus vaccine','Injection','Formoltoxoid, 0.5ml, 5ml vial','0.5ml, amp','200.00','2020-04-24 12:25:48','2020-04-24 12:25:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('777','IMMUNOLOGICAL DRUG','Cholera vaccine','Injection','1.5ml-50ml in ampoule or vial','nil','0','2020-04-24 12:26:56','2020-04-24 12:26:56');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('778','IMMUNOLOGICAL DRUG','Hepatitis B Vaccines','Injection','0.02mlmg/ml in 0.5ml, 1ml vial','nil','3000.00','2020-04-24 12:29:53','2020-04-24 12:29:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('779','IMMUNOLOGICAL DRUG','HPV Vaccine (Quadrvalent)','Injection','0.5mls single dose vial or prefilled inj','nil','12000.00','2020-04-24 12:31:12','2020-04-24 12:31:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('780','IMMUNOLOGICAL DRUG','Meningococcal vaccine','Injection','powder for reconstitution in multidose vial of 0.5mg, 2.5mg','nil','6450.00','2020-04-24 13:00:17','2020-04-24 13:00:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('781','IMMUNOLOGICAL DRUG','Pneumococcal vaccine','Injection','55mcg/0.5ml','nil','15,450.00','2020-04-24 13:02:06','2020-04-24 13:02:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('782','IMMUNOLOGICAL DRUG','Rabies vaccine','Injection','1ml','nil','3050.00','2020-04-24 13:02:54','2020-04-24 13:02:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('783','IMMUNOLOGICAL DRUG','Typhoid vaccine (TAB)','Injection','1.5ml/vial','Vial','450.00','2020-04-24 13:06:09','2020-04-24 13:06:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('784','IMMUNOLOGICAL DRUG','Typhoid vaccine (Vi antigen)','Injection','10ml vial (20 doses), 25ml/vial(50doses), 0.5ml/syringe','nil','400.00','2020-04-24 13:08:53','2020-04-24 13:08:53');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('785','IMMUNOLOGICAL DRUG','Yellow fever vaccine**','Injection','powder for reconstitution 1.5 and 10mdose vial','nil','0','2020-04-24 13:10:10','2020-04-24 13:10:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('786','OPHTHAMOLOGICAL DRUGS','Acyclovir','Eye oitment','3.0%','5gms','500.00','2020-04-24 14:17:52','2020-04-24 14:17:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('787','OPHTHAMOLOGICAL DRUGS','Chloramphenicol','Eye oitment','1%','5gms','150.00','2020-04-24 14:33:11','2020-04-24 14:33:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('788','OPHTHAMOLOGICAL DRUGS','Chloramphenicol','Eye drops','0.50%','10mls','150.00','2020-04-24 14:34:13','2020-04-24 14:34:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('789','OPHTHAMOLOGICAL DRUGS','Ciprofloxacin','drops','0.30%','10mls','200.00','2020-04-24 14:36:20','2020-04-24 14:36:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('790','OPHTHAMOLOGICAL DRUGS','Fluconsazole','Eye drops','0.30%','nil','500.00','2020-04-24 14:37:48','2020-04-24 14:37:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('791','OPHTHAMOLOGICAL DRUGS','Gentamycin','Eye drops','0.3% (sulphate)','10mls','150.00','2020-04-24 14:38:46','2020-04-24 14:38:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('792','OPHTHAMOLOGICAL DRUGS','Idoxuridine','Eye oitment','0.10%','10mls','0','2020-04-24 14:39:42','2020-04-24 14:39:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('793','OPHTHAMOLOGICAL DRUGS','Miconazole','Eye drops','nil','nil','500.00','2020-04-24 14:40:57','2020-04-24 14:40:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('794','OPHTHAMOLOGICAL DRUGS','Natamycin','Eye drops','50mg/ml','5mls','0','2020-04-24 14:42:43','2020-04-24 14:42:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('795','OPHTHAMOLOGICAL DRUGS','Ofloxacin','drops','0.30%','10mls','300.00','2020-04-24 14:44:02','2020-04-24 14:44:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('796','OPHTHAMOLOGICAL DRUGS','Oxytetracycline plus Polymyxin B','Eye oitment','5mg + 10000units','5gms','300.00','2020-04-24 14:49:55','2020-04-24 14:49:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('797','OPHTHAMOLOGICAL DRUGS','Neomycin sulfate+Polymyxin B +Dexamethasone','Eye drops','3500IU/6000iu/0.1%','5mls','700.00','2020-04-24 14:51:34','2020-04-24 14:51:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('798','OPHTHAMOLOGICAL DRUGS','Antazoline HCL, Tetrazoline HCL, Methyhydroxy Propyl cellulose','Eye drops','nil','5mls','600.00','2020-04-24 14:53:36','2020-04-24 15:02:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('799','OPHTHAMOLOGICAL DRUGS','Tetrahydrozoline (HCL)','Eye drops','0.05%','10mls','600.00','2020-04-24 15:01:58','2020-04-24 15:01:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('800','OPHTHAMOLOGICAL DRUG','Amethocaine','Eye drops','0.5%, 1%','nil','500.00','2020-04-24 15:04:42','2020-04-24 15:04:42');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('801','OPHTHAMOLOGICAL DRUG','Betamethasone','Eye drops','0,10%','10mls','300.00','2020-04-24 15:05:27','2020-04-24 15:05:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('802','OPHTHAMOLOGICAL DRUG','Betamethasone + Neomycin','Eye drops','0,10%+0.5%','10mls','300.00','2020-04-24 15:06:21','2020-04-24 15:06:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('803','OPHTHAMOLOGICAL DRUG','Dexamethasone','Eye drops','0.10%','10mls','500.00','2020-04-24 15:07:34','2020-04-24 15:07:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('804','OPHTHAMOLOGICAL DRUG','Dexamethasone + Chloramphenicol + Tetrahydrozolina','Eye drops','nil','10mls','650.00','2020-04-24 15:08:51','2020-04-24 15:08:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('805','OPHTHAMOLOGICAL DRUG','Hydrocortisone + Neomycin','Eye drops','1.5%+0.5%','10mls','300.00','2020-04-24 15:09:38','2020-04-24 15:09:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('806','OPHTHAMOLOGICAL DRUG','Ketotifen','Eye drops','250mcg/ml','5mls','1600.00','2020-04-24 15:11:16','2020-04-24 15:11:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('807','OPHTHAMOLOGICAL DRUG','Lodoxamide','Eye drops','0.10%','10mls','0','2020-04-24 15:15:00','2020-04-24 15:15:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('808','OPHTHAMOLOGICAL DRUG','Prednisolone','Eye drops','1% (Acetate) 5% (sodium phosphate)','5mls','500.00','2020-04-24 15:16:30','2020-04-24 15:16:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('809','OPHTHAMOLOGICAL DRUG','Ringer's Lactate','Eye drops','nil','nil','150.00','2020-04-24 15:17:14','2020-04-24 15:17:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('810','OPHTHAMOLOGICAL DRUG','Acetazolamide','Tablet','250mg','Tab','10.00','2020-04-24 15:17:57','2020-04-24 15:17:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('811','OPHTHAMOLOGICAL DRUG','Acetazolamide','Injection','500mg/vial','Vial','0','2020-04-24 15:18:36','2020-04-24 15:18:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('812','OPHTHAMOLOGICAL DRUG','Betaxolol Hydrochloride','Eye drops','0.50%','5mls','900.00','2020-04-24 15:20:32','2020-04-24 15:20:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('813','OPHTHAMOLOGICAL DRUG','Betaxolol Hydrochloride + Neomycin','Eye drops','nil','5mls','900.00','2020-04-24 15:22:25','2020-04-24 15:22:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('814','OPHTHAMOLOGICAL DRUG','Brinzolamide','Eye drops','10mg/ml','5mls','4000.00','2020-04-24 15:23:22','2020-04-24 15:23:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('815','OPHTHAMOLOGICAL DRUG','Dorzolamide','Eye drops','2%','5mls','4000.00','2020-04-24 15:24:12','2020-04-24 15:24:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('816','OPHTHAMOLOGICAL DRUG','Dorzolamide HCl + Timodol','Eye drops','2%+0.5%','5mls','6000.00','2020-04-24 15:25:13','2020-04-24 15:25:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('817','OPHTHAMOLOGICAL DRUG','Latanoprost','Eye drops','500mcg','5mls','5200.00','2020-04-24 15:26:17','2020-04-24 15:26:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('818','OPHTHAMOLOGICAL DRUG','Pilocarpine','Eye drops','2% & 4% (HCL)','5mls','550.00','2020-04-24 15:27:27','2020-04-24 15:27:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('819','OPHTHAMOLOGICAL DRUG','Tomolol','Eye drops','0.25%, ).5% (Maleate)','!0mls','600.00','2020-04-24 15:28:37','2020-04-24 15:28:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('820','OPHTHAMOLOGICAL DRUG','Travoprost','Eye drops','40mcg/ml','2.5mls','9000.00','2020-04-24 15:30:18','2020-04-24 15:30:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('821','OPHTHAMOLOGICAL DRUG','Atropine','Eye drops','0.5%, 1% (sulphate)','5mls','550.00','2020-04-24 15:31:34','2020-04-24 15:31:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('822','OPHTHAMOLOGICAL DRUG','Homatropine','Eye drops','2%, 1%(Hydrobromide)','5mls','300.00','2020-04-24 15:32:46','2020-04-24 15:32:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('823','OPHTHAMOLOGICAL DRUG','Phenylephrine','Eye drops','2.5%, 10%(HCL)','10mls','500.00','2020-04-24 15:34:06','2020-04-24 15:34:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('824','OPHTHAMOLOGICAL DRUG','Tropicamide','Eye drops','0.5%, 1%','10mls','650.00','2020-04-24 15:35:01','2020-04-24 15:35:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('825','OPHTHAMOLOGICAL DRUG','Cyclopentolate','Eye drops','0.5%, 0.1% (HCL)','10mls','750.00','2020-04-24 15:40:37','2020-04-24 15:40:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('826','OPHTHAMOLOGICAL DRUG','Flourescein sodium','Eye drops','1%, 2%','nil','0','2020-04-24 15:41:34','2020-04-24 15:41:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('827','OPHTHAMOLOGICAL DRUG','Methylcellulose','Eye drops','1%, 2%','nil','850.00','2020-04-24 15:42:29','2020-04-24 15:42:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('828','OXYTOCICS AND TOCOLYTICS','Ergometrine','Tablet','0.5mg (Maleate)','Tab','10.00','2020-04-24 15:43:52','2020-04-24 15:43:52');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('829','OXYTOCICS AND TOCOLYTICS','Ergometrine','Injection','0.5mg/ml (Maleate)','Amp','50.00','2020-04-24 15:45:35','2020-04-24 15:45:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('830','OXYTOCICS AND TOCOLYTICS','Oxytocin','injection','10units/ml, 5units/ml in ampoule','Amp','50.00','2020-04-24 15:46:35','2020-04-24 15:46:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('831','OXYTOCICS AND TOCOLYTICS','Misoprostol','pessary','3mg','pessary','90.00','2020-04-24 15:47:24','2020-04-24 15:47:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('832','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Oral rehydration Salt','powder','nil','sachet','50.00','2020-04-24 15:50:28','2020-04-24 15:50:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('833','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Potassium Chloride (slow release)','Tablet','600mg','Tab','10.00','2020-04-24 15:51:24','2020-04-24 15:51:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('834','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Potassium Chloride (slow release)','oral solution','5%,10%,20%','solution','200.00','2020-04-24 15:52:07','2020-04-24 15:52:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('835','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Darrow's Solution','Injection, BP','half & full strength','500ml IVF','200.00','2020-04-24 15:53:19','2020-04-24 15:53:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('836','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Dextrose + Sodium Chloride','Infusion','5%+0.9%','500ml IVF','200.00','2020-04-24 15:54:24','2020-04-24 15:54:24');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('837','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Glucose (Dextrose)','Injection','5% & 10%','500ml IVF','200.00','2020-04-24 15:55:48','2020-04-24 15:55:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('838','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Glucose (Dextrose)','Injection','50% in water','500ml IVF','200.00','2020-04-24 15:56:26','2020-04-24 15:56:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('839','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Glucose + Sodium Chloride (Paediatric)','Injection','4,3%, 0.18%','500ml IVF','200.00','2020-04-24 15:58:11','2020-04-24 15:58:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('840','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Isoplasma','Infusion','nil','nil','1300.00','2020-04-24 15:58:48','2020-04-24 15:58:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('841','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Mannitol','Infusion','10%','nil','250.00','2020-04-24 15:59:26','2020-04-24 15:59:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('842','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Mannitol','Infusion','20%','nil','300.00','2020-04-24 16:00:06','2020-04-24 16:00:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('843','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Potassium Chloride','Injection strong','15% in 10ml ampoule','10mls','200.00','2020-04-24 16:01:07','2020-04-24 16:01:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('844','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Ringer's Lactate','solution','nil','100mls','150.00','2020-04-24 16:01:40','2020-04-24 16:01:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('845','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Sodium Lactate Compound Solution','Injection','Solution, BP','500ml IVF','200.00','2020-04-24 16:06:33','2020-04-24 16:06:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('846','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Sodium Bicarbonate','Injection','1.4% in 10ml (isotonic)','10mls','250.00','2020-04-24 16:07:49','2020-04-24 16:07:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('847','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Sodium chloride','Infusion','0.9%, 0.45%','nil','200.00','2020-04-24 16:09:45','2020-04-24 16:09:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('848','PREPARATION FOR CORRECTING WATER, ELECTROLYTE & ACID BASE DISTURBANCES','Water for Injection','Injection','10ml, per amp/vial','Vial','10.00','2020-04-24 16:11:12','2020-04-24 16:11:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('849','DIALYSIS SOLUTION','Intraperitoneal Dialysis fluid B.P.C','parenteral; solution','Cacl 0.22mg, dextrose 17g, Mgcl 0.152g, Na acetate 4.76g, Nacl 5.56g, Na metabisulphate 0.15g','nil','0','2020-04-24 16:14:32','2020-04-24 16:14:32');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('850','DIALYSIS SOLUTION','Haemodialysis fluid','nil','Haemodialysis fluid B.P.','nil','0','2020-04-24 16:15:20','2020-04-24 16:15:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('851','PSYCHOTHERAPEUTIC DRUG','Bromazepam','Tablet','1.5mg','Tab','20.00','2020-04-24 16:16:46','2020-04-24 16:16:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('852','PSYCHOTHERAPEUTIC DRUG','Bromazepam','Tablet','3mg','Tab','30.00','2020-04-24 16:17:17','2020-04-24 16:17:17');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('853','PSYCHOTHERAPEUTIC DRUG','Diazepam','Tablet','5mg, 2mg, 10mg','Tab','20.00','2020-04-24 16:18:02','2020-04-24 16:18:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('854','PSYCHOTHERAPEUTIC DRUG','Diazepam','Injection','5mg/ml in 2ml','Amp','150.00','2020-04-24 16:18:41','2020-04-24 16:18:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('855','PSYCHOTHERAPEUTIC DRUG','Flunitrazepam','Tablet','1mg','Tab','110.00','2020-04-24 16:19:35','2020-04-24 16:19:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('856','PSYCHOTHERAPEUTIC DRUG','Lorazepam','Tablet','1mg','Tab','10.00','2020-04-24 16:20:45','2020-04-24 16:20:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('857','PSYCHOTHERAPEUTIC DRUG','Lorazepam','Tablet','2mg','Tab','15.00','2020-04-24 16:21:19','2020-04-24 16:21:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('858','PSYCHOTHERAPEUTIC DRUG','Nitrazepam','Tablet','5mg','Tab','20.00','2020-04-24 16:22:13','2020-04-24 16:22:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('859','PSYCHOTHERAPEUTIC DRUG','Amitriptyline','Tablet','25mg (HCL)','Tab','10.00','2020-04-24 16:23:23','2020-04-24 16:23:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('860','PSYCHOTHERAPEUTIC DRUG','Amitriptyline','Tablet','50mg','Tab','15.00','2020-04-24 16:23:49','2020-04-24 16:23:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('861','PSYCHOTHERAPEUTIC DRUG','Clomipramine','Tablet','10mg','Tab','66.00','2020-04-24 16:24:23','2020-04-24 16:24:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('862','PSYCHOTHERAPEUTIC DRUG','Clomipramine','Tablet','25mg','Tab','66.00','2020-04-24 16:24:50','2020-04-24 16:24:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('863','PSYCHOTHERAPEUTIC DRUG','Citalopram','Tablet','20mg','Tab','50.00','2020-04-24 16:25:31','2020-04-24 16:25:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('864','PSYCHOTHERAPEUTIC DRUG','Gabapentin + Methylcobalamin','Tablet','300mg +50mg','Tab','50.00','2020-04-24 16:26:25','2020-04-24 16:26:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('865','PSYCHOTHERAPEUTIC DRUG','Imipramine','Tablet','10mg','Tab','5.00','2020-04-24 16:27:08','2020-04-24 16:27:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('866','PSYCHOTHERAPEUTIC DRUG','Imipramine','Tablet','25mg (HCL)','Tab','5.00','2020-04-24 16:27:36','2020-04-24 16:27:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('867','PSYCHOTHERAPEUTIC DRUG','Moclobemide','Tablet','150mg','Tab','0','2020-04-24 16:28:12','2020-04-24 16:28:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('868','PSYCHOTHERAPEUTIC DRUG','Olanzepine','Tablet','5mg','Tab','50.00','2020-04-24 16:28:44','2020-04-24 16:28:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('869','PSYCHOTHERAPEUTIC DRUG','Paroxetine','Tablet','20mg','Tab','100.00','2020-04-24 16:29:27','2020-04-24 16:29:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('870','PSYCHOTHERAPEUTIC DRUG','Paroxetine','Tablet','30mg','Tab','150.00','2020-04-24 16:30:04','2020-04-24 16:30:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('871','PSYCHOTHERAPEUTIC DRUG','Sertraline','Capsule','50mg','Caps','70.00','2020-04-24 16:30:33','2020-04-24 16:30:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('872','PSYCHOTHERAPEUTIC DRUG','Carbamazepine','Tablet (scored)','200mg','nil','10.00','2020-04-24 16:31:19','2020-04-24 16:31:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('873','PSYCHOTHERAPEUTIC DRUG','Carbamazepine','Tablet (scored)','400mg','nil','60.00','2020-04-24 16:32:04','2020-04-24 16:32:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('874','PSYCHOTHERAPEUTIC DRUG','Carbamazepine','Syrup','100mg/5ml','nil','1500.00','2020-04-24 16:32:39','2020-04-24 16:32:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('875','PSYCHOTHERAPEUTIC DRUG','Chlorpromazine','Tablet','25mg','Tab','5.00','2020-04-24 16:33:21','2020-04-24 16:33:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('876','PSYCHOTHERAPEUTIC DRUG','Chlorpromazine','Tablet','50mg','Tab','10.00','2020-04-24 16:34:05','2020-04-24 16:34:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('877','PSYCHOTHERAPEUTIC DRUG','Chlorpromazine','Tablet','100mg (HCL)','Tab','10.00','2020-04-24 16:35:04','2020-04-24 16:35:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('878','PSYCHOTHERAPEUTIC DRUG','Chlorpromazine','Syrup','25mg/5ml (HCL)','100mls','1000.00','2020-04-24 16:35:59','2020-04-24 16:35:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('879','PSYCHOTHERAPEUTIC DRUG','Chlorpromazine','Injection','25mg/ml (HCL) in 2ml ampoules','Amp','70.00','2020-04-24 16:36:47','2020-04-24 16:36:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('880','PSYCHOTHERAPEUTIC DRUG','Fluoxethine','Capsule','20mg','Caps','90.00','2020-04-24 16:38:23','2020-04-24 16:38:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('881','PSYCHOTHERAPEUTIC DRUG','Fluoxethine','Injection (oily)','25mg/ml in 1ml ampoule (decanoate or enanthate) in 1ml ampoule','Amp','350.00','2020-04-24 16:41:37','2020-04-24 16:41:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('882','PSYCHOTHERAPEUTIC DRUG','Flupenthixol','Injection (depot)','20mg (decanoate or enanthate) in 1ml ampoule','Amp','900.00','2020-04-24 16:44:08','2020-04-24 16:44:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('883','PSYCHOTHERAPEUTIC DRUG','Flupenthixol','Tablet','1.5mg, 3mg','Tab','10.00','2020-04-24 16:44:55','2020-04-24 16:44:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('884','PSYCHOTHERAPEUTIC DRUG','Flupenthixol','Injection','50mg/ml, 100mg/ml','Amp','150.00','2020-04-24 16:45:33','2020-04-24 16:45:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('885','PSYCHOTHERAPEUTIC DRUG','Fluphenazine','Injection','25mg','nil','150.00','2020-04-25 10:27:37','2020-04-25 10:27:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('886','PSYCHOTHERAPEUTIC DRUG','Haloperidol','Tablet','2mg,5mg,10mg','Tab','7.00','2020-04-25 10:28:27','2020-04-25 10:28:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('887','PSYCHOTHERAPEUTIC DRUG','Haloperidol','Injection','5mg/ml','Tab/Cap','630.00','2020-04-25 10:29:15','2020-04-25 10:29:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('888','PSYCHOTHERAPEUTIC DRUG','Lithium Carbonate','Tablet, Capsule','300mg','Tab','0','2020-04-25 10:30:03','2020-04-25 10:30:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('889','PSYCHOTHERAPEUTIC DRUG','Lithium Carbonate','Tablet, Capsule','300mg','Tab','0','2020-04-25 10:30:03','2020-04-25 10:30:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('890','PSYCHOTHERAPEUTIC DRUG','Pimozide','Tablet','4mg','Tab','0','2020-04-25 10:30:35','2020-04-25 10:30:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('891','PSYCHOTHERAPEUTIC DRUG','Pimozide','Tablet','10mg','Tab','0','2020-04-25 10:32:14','2020-04-25 10:32:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('892','PSYCHOTHERAPEUTIC DRUG','Thioridazine','Tablet','100mg','Tab','80.00','2020-04-25 10:33:07','2020-04-25 10:33:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('893','PSYCHOTHERAPEUTIC DRUG','Thioridazine','Tablet','50mg','Tab','70.00','2020-04-25 10:34:25','2020-04-25 10:34:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('894','PSYCHOTHERAPEUTIC DRUG','Thioridazine','Syrup','25mg/5ml','100mls','0','2020-04-25 10:35:25','2020-04-25 10:35:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('895','PSYCHOTHERAPEUTIC DRUG','Trifluoperazine','Tablet','1mg','Tab','5.00','2020-04-25 10:36:13','2020-04-25 10:36:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('896','PSYCHOTHERAPEUTIC DRUG','Trifluoperazine','Tablet','5mg','Tab','7.00','2020-04-25 10:37:02','2020-04-25 10:37:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('897','PSYCHOTHERAPEUTIC DRUG','Valproic acid (sodium vaproate)','Tablet (enteric-coated)','200mg','Tab','60.00','2020-04-25 10:38:30','2020-04-25 10:38:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('898','PSYCHOTHERAPEUTIC DRUG','Valproic acid (sodium vaproate)','tablet (enteric-coated)','500mg','Tab','140.00','2020-04-25 10:40:20','2020-04-25 10:40:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('899','PSYCHOTHERAPEUTIC DRUG','Benzhexol (triehexyiphenidyl)','Tablet','2mg, 5mg(HCL)','Tab','5.00','2020-04-25 10:41:38','2020-04-25 10:41:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('900','PSYCHOTHERAPEUTIC DRUG','Biperidem','Tablet (Hcl)','2mg, 5mg (HCl)','Tab','0','2020-04-25 10:42:59','2020-04-25 10:42:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('901','PSYCHOTHERAPEUTIC DRUG','Biperidem','Injection','5mg/ml','Amp','0','2020-04-25 10:43:29','2020-04-25 10:43:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('902','RESPIRATORY SYSTEM DRUG','Aminophylline','Injection','25mg/ml in 10ml Ampoule','Amp','220.00','2020-04-25 10:45:20','2020-04-25 10:45:20');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('903','RESPIRATORY SYSTEM DRUG','Beclomethasone','Aerosol inhalation','0.050mg/metered dose','spray','1500.00','2020-04-25 10:47:10','2020-04-25 10:47:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('904','RESPIRATORY SYSTEM DRUG','Ephedrine + Theophyline','Tablet','11mg+20mg','Tab','15.00','2020-04-25 10:47:59','2020-04-25 10:47:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('905','RESPIRATORY SYSTEM DRUG','Epinephrine (Adrenaline)','Injection','1mg/ml (1 in 1000) in 1ml Ampoule','Amp','30.00','2020-04-25 10:49:59','2020-04-25 10:49:59');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('906','RESPIRATORY SYSTEM DRUG','Hydrocortisone','Injection','100mg/vial','Vial','120.00','2020-04-25 10:50:38','2020-04-25 10:50:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('907','RESPIRATORY SYSTEM DRUG','Ipratropium bromide','Aerosol inhalation','20 micrograms per metered dose','spray','1000.00','2020-04-25 10:52:01','2020-04-25 10:52:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('908','RESPIRATORY SYSTEM DRUG','Ipratropium bromide','Aerosol inhalation','20 micrograms per metered dose','spray','1000.00','2020-04-25 10:52:01','2020-04-25 10:52:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('909','RESPIRATORY SYSTEM DRUG','Salbutamol','Tablet','2mg, 4mg (Sulphate)','Tab','10.00','2020-04-25 10:53:09','2020-04-25 10:53:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('910','RESPIRATORY SYSTEM DRUG','Salbutamol','Syrup','2mg, 5mg (Sulphate)','100mls','400.00','2020-04-25 10:54:01','2020-04-25 10:54:01');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('911','RESPIRATORY SYSTEM DRUG','Salbutamol','aerosol','0.1mg/metered dose','spray','700.00','2020-04-25 10:55:00','2020-04-25 10:55:00');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('912','RESPIRATORY SYSTEM DRUG','Salbutamol','Injection','500ug/ml','Amp','350.00','2020-04-25 10:56:49','2020-04-25 10:56:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('913','RESPIRATORY SYSTEM DRUG','Salmeterol','inhalation','100mcg/dose','spray','4200.00','2020-04-25 10:57:56','2020-04-25 10:58:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('914','RESPIRATORY SYSTEM DRUG','Salmeterol','inhalation','250mcg/dose','spray','4200.00','2020-04-25 10:59:33','2020-04-25 10:59:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('915','RESPIRATORY SYSTEM DRUG','Salmeterol + Fluticasone','inhalation','250mcg/100mcg','spray','4000.00','2020-04-25 11:00:51','2020-04-25 11:00:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('916','RESPIRATORY SYSTEM DRUG','Salmeterol + Fluticasone','inhalation','250mcg/100mcg','spray','4000.00','2020-04-25 11:00:51','2020-04-25 11:00:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('917','RESPIRATORY SYSTEM DRUG','Theophylline','Tablet','125mg','Tab','15.00','2020-04-25 11:01:43','2020-04-25 11:01:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('918','RESPIRATORY SYSTEM DRUG','Theophylline','Tablet','250mg (SR)','Tab','30.00','2020-04-25 11:02:49','2020-04-25 11:02:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('919','RESPIRATORY SYSTEM DRUG','Bromhexine','Tablet','8mg','Tab','20.00','2020-04-25 11:03:35','2020-04-25 11:03:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('920','RESPIRATORY SYSTEM DRUG','Bromhexine','Tablet','8mg','Tab','20.00','2020-04-25 11:03:35','2020-04-25 11:03:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('921','RESPIRATORY SYSTEM DRUG','Bromhexine','Elixir','4mg/5ml','100mls','230.00','2020-04-25 11:04:16','2020-04-25 11:04:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('922','RESPIRATORY SYSTEM DRUG','Cough mixture containing codeine','Syrup','nil','100mls','200.00','2020-04-25 11:05:02','2020-04-25 11:05:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('923','RESPIRATORY SYSTEM DRUG','Cough mixture containing codeine','Syrup','nil','10mls','200.00','2020-04-25 11:05:46','2020-04-25 11:05:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('924','RESPIRATORY SYSTEM DRUG','Dextromethorphan hydrobromide','Syrup','15mg/5ml','100mls','200.00','2020-04-25 11:07:28','2020-04-25 11:07:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('925','RESPIRATORY SYSTEM DRUG','Diphenyl hydramine Mixtures','Syrup','nil','nil','200.00','2020-04-25 11:08:29','2020-04-25 11:08:29');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('926','VITAMINS','Alpha tocopheryl acetate (Vitamin E)','Tablet, Capsule','100mg','caps/Tab','20.00','2020-04-25 11:10:47','2020-04-25 11:10:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('927','VITAMINS','Alpha tocopheryl acetate (Vitamin E)','Tablet, Capsule','1000 I.U','Caps/Tab','20.00','2020-04-25 11:24:35','2020-04-25 11:24:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('928','VITAMINS','Ascorbic acid','Tablet','100mg','Tab','2.00','2020-04-25 11:58:34','2020-04-25 11:58:34');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('929','VITAMINS','Ascorbic acid','Syrup','100mg/5ml, 200mg/5ml, 500mg/5ml','100mls','200.00','2020-04-25 11:59:31','2020-04-25 11:59:31');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('930','VITAMINS','Ascorbic Acid','Effervescent tablets','1g','Tab','750.00','2020-04-25 12:00:30','2020-04-25 12:00:30');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('931','VITAMINS','Cyanocobalamin (B12)','Injection','0.25mg in 1ml, 1mg/ml','Amp','100.00','2020-04-25 12:02:41','2020-04-25 12:02:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('932','VITAMINS','Cyanocobalamin (B12)','Tablet','0.05mg','Tab','5.00','2020-04-25 12:04:02','2020-04-25 12:04:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('933','VITAMINS','Ergocalciferol (Vit. D)','Tablet, Capsule','0.25mg, 1.25mg','Tab','10.00','2020-04-25 12:07:05','2020-04-25 12:07:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('934','VITAMINS','Folic Acid','Tablet','5mg','Tab','3.00','2020-04-25 12:07:43','2020-04-25 12:07:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('935','VITAMINS','Multivitamin','Syrup','nil','100mls','200.00','2020-04-25 12:19:18','2020-04-25 12:19:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('936','VITAMINS','Multivitamin','Tablet','nil','Caps','5.00','2020-04-25 12:19:54','2020-04-25 12:19:54');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('937','VITAMINS','Multivitamin','drops','nil','10mls','200.00','2020-04-25 12:20:37','2020-04-25 12:20:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('938','VITAMINS','Pyridoxine (Vitamin B6)','Tablet','10,20,50,mg(hcl)','Tab','5.00','2020-04-25 12:22:40','2020-04-25 12:22:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('939','VITAMINS','Retinol (Vitamin A)','Tablet, Capsule','1.5mg, 7.5mg, 15mg(5000,25000,50000units) respectively','Caps','20.00','2020-04-25 12:24:09','2020-04-25 12:24:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('940','VITAMINS','Retinol (Vitamin A)','Tablet, Capsule','1000ui(5.5mg)/5ml','Caps','20.00','2020-04-25 12:25:46','2020-04-25 12:25:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('941','VITAMINS','Retinol (Vitamin A)','Syrup/Emulsion','nil','60mls','300.00','2020-04-25 12:26:38','2020-04-25 12:26:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('942','VITAMINS','Retinol (Vitamin A)','Syrup/Emulsion','nil','200mls','310.00','2020-04-25 12:27:12','2020-04-25 12:27:12');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('943','VITAMINS','Riboflavine (Vitamin B2)','Tablet','5mg','Tab','5.00','2020-04-25 12:28:15','2020-04-25 12:28:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('944','VITAMINS','Riboflavine (Vitamin B2)','Tablet','5mg','Tab','5.00','2020-04-25 12:28:15','2020-04-25 12:28:15');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('945','VITAMINS','Thiamine (Vtamin B1)','Tablet','25mg, 50mg (hcl)','Tab','5.00','2020-04-25 12:29:09','2020-04-25 12:29:09');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('946','VITAMINS','Vitamin B Complex','Tablet, Capsule','nil','Tab','2.00','2020-04-25 12:29:46','2020-04-25 12:29:46');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('947','VITAMINS','Vitamin B Complex','Syrup','nil','100mls','150.00','2020-04-25 12:30:39','2020-04-25 12:30:39');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('948','VITAMINS','Vitamin B Complex','Injection','nil','Vial','80.00','2020-04-25 12:31:11','2020-04-25 12:31:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('949','VITAMINS','Vitamin B1+B6+B12','Tablet','100mg+200mg+200mcg','Tab','20.00','2020-04-25 12:32:25','2020-04-25 12:32:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('950','VITAMINS','Vitamin B1+B6+B12','Injection','100mg+100mg+1000mcg','Amp','200.00','2020-04-25 12:33:35','2020-04-25 12:33:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('951','VITAMINS','Yeast BPC','Tablet','300mg','Tab','2.00','2020-04-25 12:34:27','2020-04-25 12:34:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('953','MINERALS','Calcium Gluconate','Tablet','600mg','Tab','3.00','2020-04-25 12:36:03','2020-04-25 12:36:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('954','MINERALS','Calcium Lactate','Tablet','300mg','Tab','5.00','2020-04-25 12:37:37','2020-04-25 12:37:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('955','MINERALS','Sodium Fluoride','Tablet','2.2mg','Tab','0','2020-04-25 12:38:13','2020-04-25 12:38:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('956','MINERALS','Sodium Fluoride','Tablet','2.2mg','Tab','0','2020-04-25 12:38:13','2020-04-25 12:38:13');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('957','CYTOTOXICS','5 Fluorouracil (5FU)','Injection','500mg','nil','500.00','2020-04-25 12:43:27','2020-04-25 12:43:27');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('958','CYTOTOXICS','Doxorubicin','Injection','50mg','nil','4000.00','2020-04-25 12:44:16','2020-04-25 12:44:16');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('959','CYTOTOXICS','Bicalutamide','Tablet','50mg','5500/mth','5500.00','2020-04-25 12:45:33','2020-04-25 12:45:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('960','CYTOTOXICS','Cisplatinium','nil','50mg','nil','3000.00','2020-04-25 12:47:10','2020-04-25 12:47:10');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('961','CYTOTOXICS','Cyclophosphamides','Tablet/Injection','500mg','Vial','1000.00','2020-04-25 12:48:11','2020-04-25 12:48:11');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('963','CYTOTOXICS','Docetaxel','Injection','80mg','Vial','55,000.00','2020-04-25 12:50:07','2020-04-25 12:50:07');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('964','CYTOTOXICS','Epirubicin','Injection','50mg','Vial','8500.00','2020-04-25 12:50:44','2020-04-25 12:50:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('965','CYTOTOXICS','Gemcitabine','Injection','1mg','Vial','16000.00','2020-04-25 12:53:05','2020-04-25 12:53:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('966','CYTOTOXICS','Granisetron','Injection','3mg','Vial','3000.00','2020-04-25 12:54:04','2020-04-25 12:54:04');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('967','CYTOTOXICS','Granisetron','Tablet','2mg','Tab','0','2020-04-25 12:54:38','2020-04-25 12:54:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('968','CYTOTOXICS','Leucovorin','Injection','50mg','Vial','1500.00','2020-04-25 12:55:43','2020-04-25 12:55:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('969','CYTOTOXICS','Leucovorin','Tablet','5mg','Tab','0','2020-04-25 12:56:14','2020-04-25 12:56:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('970','CYTOTOXICS','Ondansetron','Injection','8mg','Vial','2000.00','2020-04-25 12:56:58','2020-04-25 12:56:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('971','CYTOTOXICS','Ondansetron','Injection','8mg','Vial','2000.00','2020-04-25 12:56:58','2020-04-25 12:56:58');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('972','CYTOTOXICS','Ondansetron','Tablet','4mg','Tab','0','2020-04-25 12:58:14','2020-04-25 12:58:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('973','CYTOTOXICS','Oxaliplatin','Injection','100mg','Vial','40000.00','2020-04-25 12:59:06','2020-04-25 12:59:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('974','CYTOTOXICS','Paclitaxel','Injection','100mg','Vial','20000.00','2020-04-25 12:59:45','2020-04-25 12:59:45');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('975','CYTOTOXICS','Tamoxifen','Tablet','20mg','Tab * 1000/mth','1000.00','2020-04-25 13:01:57','2020-04-25 13:01:57');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('976','CYTOTOXICS','Vincristine','Injection','2mg','Amp','4500.00','2020-04-25 13:02:40','2020-04-25 13:02:40');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('977','CYTOTOXICS','Xeloda','Tablet','1 pack','Tab','50000.00','2020-04-25 13:03:18','2020-04-25 13:03:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('978','CYTOTOXICS','Xeloda','Tablet','1 pack','Tab','50000.00','2020-04-25 13:03:19','2020-04-25 13:03:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('979','CYTOTOXICS','Zoladex Inj','Injection','3.6mg','prefilled syringe  *24000/mth','24000.00','2020-04-25 13:04:28','2020-04-25 13:04:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('980','CYTOTOXICS','Zoladex Inj','Injection','3.6mg','prefilled syringe  *24000/mth','24000.00','2020-04-25 13:04:28','2020-04-25 13:04:28');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('981','CYTOTOXICS','Zoledronic acid','solution','5mg/100ml','solution    * 20000/mth','20000.00','2020-04-25 13:05:43','2020-04-25 13:05:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('982','CYTOTOXICS','Zoledronic acid','solution','5mg/100ml','solution    * 20000/mth','20000.00','2020-04-25 13:05:43','2020-04-25 13:05:43');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('983','MISCELLANEOUS DRUG','Trypsin + Chymotrypsin','Tablet','Trypsin 50,000 Armour units+Chymotrypsin 50000 armour units','Tab','20.00','2020-04-25 13:07:44','2020-04-25 13:07:44');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('984','MISCELLANEOUS DRUG','Blood Giving Set','unit','unit','unit','100.00','2020-04-25 13:08:22','2020-04-25 13:08:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('985','MISCELLANEOUS DRUG','Blood Giving Set','unit','unit','unit','100.00','2020-04-25 13:08:22','2020-04-25 13:08:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('986','MISCELLANEOUS DRUG','Chromic catgut','size','all sizes','unit','250.00','2020-04-25 13:09:06','2020-04-25 13:09:06');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('987','MISCELLANEOUS DRUG','Cotton Wool','Roll','all sizes','unit','100.00','2020-04-25 13:09:41','2020-04-25 13:09:41');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('988','MISCELLANEOUS DRUG','Crepe bandage','Roll','all sizes','unit','150.00','2020-04-25 13:10:19','2020-04-25 13:10:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('989','MISCELLANEOUS DRUG','Folleys Catheter','size','all sizes','unit','150.00','2020-04-25 13:11:05','2020-04-25 13:11:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('990','MISCELLANEOUS DRUG','Infusion Set','unit','unit','unit','50.00','2020-04-25 13:11:37','2020-04-25 13:11:37');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('991','MISCELLANEOUS DRUG','IV Cnnula','size','14G, 16G, 18G, 20G,-32G, 25G','UNIT','100.00','2020-04-25 13:12:36','2020-04-25 13:12:36');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('992','MISCELLANEOUS DRUG','Mucus Extractor','size','all sizes','unit','130.00','2020-04-25 13:13:33','2020-04-25 13:13:33');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('993','MISCELLANEOUS DRUG','Needle','unit','unit','unit','10.00','2020-04-25 13:14:05','2020-04-25 13:14:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('994','MISCELLANEOUS DRUG','Needle','unit','unit','unit','10.00','2020-04-25 13:14:05','2020-04-25 13:14:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('995','MISCELLANEOUS DRUG','NG Tube','size','all sizes','unit','100.00','2020-04-25 13:15:03','2020-04-25 13:15:03');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('996','MISCELLANEOUS DRUG','Nylon','size','all sizes','unit','250.00','2020-04-25 13:16:48','2020-04-25 13:16:48');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('997','MISCELLANEOUS DRUG','Plaster','Roll','all sizes','unit','250.00','2020-04-25 13:17:21','2020-04-25 13:17:21');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('998','MISCELLANEOUS DRUG','Scalp vein needle','size','20G, 21G, 22G, 23G, 25G','unit','50.00','2020-04-25 13:18:18','2020-04-25 13:18:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('999','MISCELLANEOUS DRUG','Soluset','size','all sizes','unit','1400.00','2020-04-25 13:20:02','2020-04-25 13:20:02');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1000','MISCELLANEOUS DRUG','Surgical Gloves','size','all sizes','unit','70.00','2020-04-25 13:20:50','2020-04-25 13:20:50');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1001','MISCELLANEOUS DRUG','Surgical Blade','size','all sizes','unit','20.00','2020-04-25 13:21:22','2020-04-25 13:21:22');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1002','MISCELLANEOUS DRUG','Syringe/Needle','unit','2ml','unit','20.00','2020-04-25 13:22:05','2020-04-25 13:22:05');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1003','MISCELLANEOUS DRUG','Syringe/Needle','unit','5ml','unit','20.00','2020-04-25 13:22:38','2020-04-25 13:22:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1004','MISCELLANEOUS DRUG','Syringe/Needle','unit','10ml','unit','20.00','2020-04-25 13:23:18','2020-04-25 13:23:18');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1005','MISCELLANEOUS DRUG','Syringe/Needle','unit','20ml','unit','40.00','2020-04-25 13:23:51','2020-04-25 13:23:51');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1006','MISCELLANEOUS DRUG','Urine Bag','size','all sizes','unit','200.00','2020-04-25 13:24:38','2020-04-25 13:24:38');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1007','OPHTHAMOLOGICAL DRUG','Auto Refraction','nil','nil','nil','2500.00','2020-04-25 13:25:55','2020-04-25 13:25:55');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1008','OPHTHAMOLOGICAL DRUG','Manual Refraction','nil','nil','nil','1500.00','2020-04-25 13:26:26','2020-04-25 13:26:26');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1009','OPHTHAMOLOGICAL DRUG','Cycloplegic Refraction','nil','nil','nil','3000.00','2020-04-25 13:27:23','2020-04-25 13:27:23');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1010','OPHTHAMOLOGICAL DRUG','Tonmetry (Pulsur/Goldman Applanation)','nil','nil','nil','4000.00','2020-04-25 13:28:19','2020-04-25 13:28:19');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1011','OPHTHAMOLOGICAL DRUG','Pupillary Dilation (Unilateral)','nil','nil','nil','1500.00','2020-04-25 13:29:14','2020-04-25 13:29:14');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1012','OPHTHAMOLOGICAL DRUG','Pupillary Dilation (Bilateral)','nil','nil','nil','2500.00','2020-04-25 13:29:47','2020-04-25 13:29:47');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1013','OPHTHAMOLOGICAL DRUG','Indirect Ophthalmoscopy','nil','nil','nil','5000.00','2020-04-25 13:30:25','2020-04-25 13:30:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1014','OPHTHAMOLOGICAL DRUG','Direct Ophthalmoscopy','nil','nil','nil','2000.00','2020-04-25 13:31:25','2020-04-25 13:31:25');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1015','OPHTHAMOLOGICAL DRUG','Visual Field Assessment','nil','nil','nil','5000.00','2020-04-25 13:32:49','2020-04-25 13:32:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1016','OPHTHAMOLOGICAL DRUG','Visual Field Assessment','nil','nil','nil','5000.00','2020-04-25 13:32:49','2020-04-25 13:32:49');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1017','MISCELLANEOUS DRUG','Slit Lamp Examination','nil','nil','nil','3000.00','2020-04-25 13:34:35','2020-04-25 13:34:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1018','MISCELLANEOUS DRUG','Slit Lamp Examination','nil','nil','nil','3000.00','2020-04-25 13:34:35','2020-04-25 13:34:35');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1019','MISCELLANEOUS DRUG','Frame and Lens','nil','nil','nil','10000.00','2020-04-25 13:35:08','2020-04-25 13:35:08');

INSERT INTO drugs (id, category, name, dosage, strength, presentation, price, created_at, updated_at) VALUES ('1020','None','NO DRUG','nil','nil','nil','0','2020-04-25 14:45:25','2020-04-25 14:45:25');


CREATE TABLE `drugsolds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `i_c_d_s` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kin_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xray` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kin_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_acceptance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surgeon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discharged` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discharged_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO migrations (id, migration, batch) VALUES ('1','2014_10_12_000000_create_users_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('2','2014_10_12_100000_create_password_resets_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('3','2019_09_03_202907_create_patients_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('4','2019_09_06_003108_create_addcares_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('5','2019_09_07_130156_create_dailies_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('6','2019_09_07_143134_create_nurses_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('7','2019_09_07_150830_create_departments_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('8','2019_09_07_152406_create_add_depts_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('9','2019_09_07_155359_create_authorizations_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('10','2019_09_07_162531_create_vouchers_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('11','2019_09_30_073749_create_slot_users_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('12','2019_09_30_113720_create_doctors_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('13','2019_09_30_115951_create_refers_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('14','2019_10_16_201359_create_drug_prescribes_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('15','2019_10_17_205622_create_i_c_d_s_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('16','2019_10_18_021328_create_codes_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('17','2019_10_18_030522_create_operations_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('18','2019_10_24_210210_create_diagnoses_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('19','2019_10_24_211808_create_add_diagnoses_table','1');

INSERT INTO migrations (id, migration, batch) VALUES ('20','2019_09_25_213704_create_drug_categories_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('21','2019_09_26_094011_create_drugs_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('22','2019_09_26_211518_create_services_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('23','2019_09_28_101536_create_consultations_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('24','2019_09_28_110852_create_descriptions_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('25','2019_09_28_130509_create_drugsolds_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('26','2019_09_30_033800_create_service_charges_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('27','2019_09_30_062611_create_months_table','2');

INSERT INTO migrations (id, migration, batch) VALUES ('28','2020_03_02_013128_create_patients_table','3');

INSERT INTO migrations (id, migration, batch) VALUES ('30','2020_04_22_103911_create_user_logins_table','4');


CREATE TABLE `months` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_fee` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surgery` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `investigation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `nurses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temperature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pulse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `operations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surgeon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhis_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hmo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ministry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diagnosis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `refers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reffered` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `service_charges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NHIS_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('1','None','None','Investigation','0','2020-04-25 14:45:58','2020-04-25 14:45:58');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('2','NHIS-021-001','Antra Washout','surgery/Other procedure','2000000','2020-04-25 15:02:21','2020-04-25 15:02:21');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('3','NHIS-021-002','Aseptic Destruction of Labyrinth for Meniere's Disease','surgery/Other procedure','20000.00','2020-04-25 15:07:22','2020-04-25 15:07:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('4','NHIS-021-002','Aseptic Destruction of Labyrinth for Meniere's Disease','surgery/Other procedure','20000.00','2020-04-25 15:07:22','2020-04-25 15:07:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('5','NHIS-021-003','Audiometry','surgery/Other procedure','1000000','2020-04-25 15:08:38','2020-04-25 15:10:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('6','NHIS-021-004','Electrocautery of Nose','surgery/Other procedure','20000.00','2020-04-25 15:11:23','2020-04-25 15:11:23');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('7','NHIS-021-005','Foreign Body Removal from Ear','surgery/Other procedure','5000.00','2020-04-25 15:13:08','2020-04-25 15:13:08');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('8','NHIS-021-006','Foreign Body Removal from Nose','surgery/Other procedure','5000.00','2020-04-25 15:14:07','2020-04-25 15:14:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('9','NHIS-021-007','I & D of quinsy/retropharyngeal abscess/ludwig angina','surgery/Other procedure','15000.00','2020-04-25 15:15:36','2020-04-25 15:15:36');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('10','NHIS-021-008','Indirect Laryngoscopy','surgery/Other procedure','20000.00','2020-04-25 15:16:25','2020-04-25 15:16:25');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('11','NHIS-021-009','Myringoplasty','surgery/Other procedure','25000.00','2020-04-25 15:17:03','2020-04-25 15:17:03');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('12','NHIS-021-009','Myringoplasty','surgery/Other procedure','25000.00','2020-04-25 15:17:03','2020-04-25 15:17:03');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('13','NHIS-021-010','Myringostomy; bilat, unilat, with grommet','surgery/Other procedure','15000.00','2020-04-25 15:18:25','2020-04-25 15:18:25');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('14','NHIS-021-010','Myringostomy; bilat, unilat, with grommet','surgery/Other procedure','15000.00','2020-04-25 15:18:25','2020-04-25 15:18:25');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('15','NHIS-021-011','Preauricular Sinus','surgery/Other procedure','15000.00','2020-04-25 15:19:22','2020-04-25 15:19:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('16','NHIS-021-012','Release of Tongue tie','surgery/Other procedure','15000.00','2020-04-25 15:20:06','2020-04-25 15:20:06');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('17','NHIS-021-013','Sinus Antroscopy','surgery/Other procedure','15000.00','2020-04-25 15:20:51','2020-04-25 15:20:51');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('18','NHIS-021-014','Staples Mobilisation','surgery/Other procedure','15000.00','2020-04-25 15:21:24','2020-04-25 15:21:24');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('19','NHIS-021-015','Tympanometry','surgery/Other procedure','15000.00','2020-04-25 15:21:54','2020-04-25 15:21:54');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('20','NHIS-02-001','Adenoidectomy','surgery/Other procedure','25000.00','2020-04-25 15:22:55','2020-04-25 15:22:55');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('21','NHIS-02-002','Anstrostomy - Nasal Sinus Surgery (eg middle/inferior meatal/caldwee Luc','surgery/Other procedure','25000.00','2020-04-25 15:24:15','2020-04-25 15:24:15');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('22','NHIS-02-003','Aural Polypectomy','surgery/Other procedure','25000.00','2020-04-25 15:24:57','2020-04-25 15:24:57');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('23','NHIS-022-004','Cleft lip repairs','surgery/Other procedure','25000.00','2020-04-25 15:25:48','2020-04-25 15:25:48');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('24','NHIS-022-005','Cortical mastoidectomy','surgery/Other procedure','25000.00','2020-04-25 15:27:18','2020-04-25 15:27:18');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('25','NHIS-022-006','Cryosurgery','surgery/Other procedure','25000.00','2020-04-25 15:28:03','2020-04-25 15:28:03');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('26','NHIS-022-007','Direct Laryngoscopy (Under GA)','surgery/Other procedure','25000.00','2020-04-25 15:28:47','2020-04-25 15:28:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('27','NHIS-022-008','EUA Nasopharynx + biopsy','surgery/Other procedure','25000.00','2020-04-25 15:29:40','2020-04-25 15:29:40');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('28','NHIS-022-009','Excision of Nasomaxillary mass','surgery/Other procedure','25000.00','2020-04-25 15:31:17','2020-04-25 15:31:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('29','NHIS-022-010','Lateral rhinotomy','surgery/Other procedure','25000.00','2020-04-25 15:32:41','2020-04-25 15:32:41');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('30','NHIS-022-010','Lateral rhinotomy','surgery/Other procedure','25000.00','2020-04-25 15:32:41','2020-04-25 15:32:41');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('31','NHIS-022-011','Meatoplasty (for Traumatic Meatus Atresia)','surgery/Other procedure','25000.00','2020-04-25 15:33:41','2020-04-25 15:33:41');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('32','NHIS-022-012','Nasal Polypectomy','surgery/Other procedure','25000.00','2020-04-25 15:34:23','2020-04-25 15:34:23');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('33','NHIS-022-013','Oesophagoscopy','surgery/Other procedure','25000.00','2020-04-25 15:35:13','2020-04-25 15:35:13');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('34','NHIS-022-014','Partial Amputation of the pinna','surgery/Other procedure','25000.00','2020-04-25 15:36:02','2020-04-25 15:36:02');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('35','NHIS-021-015','Septoplasty','surgery/Other procedure','25000.00','2020-04-25 15:38:08','2020-04-25 15:38:08');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('36','NHIS-022-016','Submandibular gland excision','surgery/Other procedure','25000.00','2020-04-25 15:39:51','2020-04-25 15:39:51');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('37','NHIS-022-017','Superficial parotidectomy','surgery/Other procedure','25000.00','2020-04-25 15:40:38','2020-04-25 15:40:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('38','NHIS-022-018','Thyroglossal cyst/fistula excision','surgery/Other procedure','25000.00','2020-04-25 15:41:25','2020-04-25 15:41:25');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('39','NHIS-022-019','Tonsillectomy/Adenotonsilectomy','surgery/Other procedure','25000.00','2020-04-25 15:42:54','2020-04-25 15:42:54');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('40','NHIS-022-020','Tracheostomy','surgery/Other procedure','25000.00','2020-04-25 15:43:58','2020-04-25 15:43:58');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('41','NHIS-022-021','Turbinectomy','surgery/Other procedure','25000.00','2020-04-25 15:44:55','2020-04-25 15:44:55');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('42','NHIS-022-022','Young's operation','surgery/Other procedure','25000.00','2020-04-25 15:45:26','2020-04-25 15:45:26');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('43','NHIS-023-001','Ant Ethmoidal Artery Ligation','surgery/Other procedure','50000.00','2020-04-25 15:47:43','2020-04-25 15:47:43');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('44','NHIS-023-002','Anryteniodectomy','surgery/Other procedure','50000.00','2020-04-25 15:48:33','2020-04-25 15:48:33');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('45','NHIS-023-003','Autogenous Bone Graft to Mastoid Cavity','surgery/Other procedure','50000.00','2020-04-25 15:49:45','2020-04-25 15:49:45');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('46','NHIS-023-004','Cleft palate Repairs','surgery/Other procedure','50000.00','2020-04-25 15:52:19','2020-04-25 15:52:19');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('47','NHIS-023-005','Dacrocystorhinostomy (DCR)','surgery/Other procedure','50000.00','2020-04-25 15:53:16','2020-04-25 15:53:16');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('48','NHIS-023-005','Dacrocystorhinostomy (DCR)','surgery/Other procedure','50000.00','2020-04-25 15:53:16','2020-04-25 15:53:16');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('49','NHIS-023-006','Ethmoidectomy; Fronto, External','surgery/Other procedure','50000.00','2020-04-25 15:54:36','2020-04-25 15:54:36');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('50','NHIS-023-007','Fenestration','surgery/Other procedure','50000.00','2020-04-25 15:55:10','2020-04-25 15:55:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('51','NHIS-023-008','Fracture reduction of the Nose','surgery/Other procedure','50000.00','2020-04-25 15:56:04','2020-04-25 15:56:04');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('52','NHIS-023-009','Internal Auditory Meatus Surgery','surgery/Other procedure','50000.00','2020-04-25 15:56:50','2020-04-25 15:56:50');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('53','NHIS-023-010','Intranasal Ethmoidectomy','surgery/Other procedure','50000.00','2020-04-25 15:57:28','2020-04-25 15:57:28');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('54','NHIS-023-011','Labyrinthotomy','surgery/Other procedure','50000.00','2020-04-25 15:58:01','2020-04-25 15:58:01');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('55','NHIS-023-012','Lanryngeal stenosis, Laryngocele, Abductor Paralysis, Laryngo-Fissure','surgery/Other procedure','50000.00','2020-04-25 16:00:11','2020-04-25 16:00:11');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('56','NHIS-023-013','Laryngectomy (All types)','surgery/Other procedure','150000.00','2020-04-25 16:01:19','2020-04-25 16:02:30');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('57','NHIS-023-014','Laryngoplasty','surgery/Other procedure','50000.00','2020-04-25 16:02:04','2020-04-25 16:02:04');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('58','NHIS-023-015','Mastoid Surgery/Mastoidectomy','surgery/Other procedure','50000.00','2020-04-25 16:03:39','2020-04-25 16:03:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('59','NHIS-023-016','Maxilectomy','surgery/Other procedure','50000.00','2020-04-25 16:05:28','2020-04-25 16:05:28');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('60','NHIS-023-017','Muscle Grafting to Mastoid Cavity','surgery/Other procedure','50000.00','2020-04-25 16:07:10','2020-04-25 16:07:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('61','NHIS-023-018','Neck exploration for penetrating neck injury','surgery/Other procedure','200000.00','2020-04-25 16:08:26','2020-04-25 16:08:26');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('62','NHIS-023-019','Parapharyngeal Excission/I&D/Tumor Excision','surgery/Other procedure','50000.00','2020-04-25 16:09:20','2020-04-25 16:09:20');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('63','NHIS-023-020','Pharyngoplasty','surgery/Other procedure','50000.00','2020-04-25 16:10:02','2020-04-25 16:10:02');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('64','NHIS-023-021','Postrior canal Reconstruction After Radical Mastoidectomy','surgery/Other procedure','50000.00','2020-04-25 16:11:13','2020-04-25 16:11:13');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('65','NHIS-023-022','Reduction and Fixation of Jaw Fracture','surgery/Other procedure','50000.00','2020-04-25 16:12:10','2020-04-25 16:12:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('66','NHIS-023-023','Reduction and Fixation of Maxillary Fractures','surgery/Other procedure','50000.00','2020-04-25 16:12:59','2020-04-25 16:12:59');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('67','NHIS-023-024','Rhinoplasty','surgery/Other procedure','50000.00','2020-04-25 16:14:10','2020-04-25 16:14:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('68','NHIS-023-025','Sequestrectomy','surgery/Other procedure','50000.00','2020-04-25 16:14:48','2020-04-25 16:14:48');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('69','NHIS-023-026','Stapedial surgery for Otosclerosis/stapedectomy','surgery/Other procedure','50000.00','2020-04-25 16:15:54','2020-04-25 16:15:54');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('70','NHIS-023-027','Styloidectomy','surgery/Other procedure','50000.00','2020-04-25 16:16:21','2020-04-25 16:16:21');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('71','NHIS-023-028','Total parotidectomy','surgery/Other procedure','50000.00','2020-04-25 16:16:52','2020-04-25 16:16:52');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('72','NHIS-023-029','Tympanoplasty','surgery/Other procedure','50000.00','2020-04-25 16:17:39','2020-04-25 16:17:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('73','NHIS-023-030','Vidian Neurectomy','surgery/Other procedure','50000.00','2020-04-25 16:18:17','2020-04-25 16:18:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('74','NHIS-030-001','Antenatal Care','surgery/Other procedure','7500.00','2020-04-25 18:26:23','2020-04-25 18:26:23');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('75','NHIS-030-002','Normal Delivery','surgery/Other procedure','7000.00','2020-04-25 18:27:39','2020-04-25 18:27:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('76','NHIS-030-003','Delivery of Multiple Pregnancy','surgery/Other procedure','10000.00','2020-04-25 18:28:44','2020-04-25 18:28:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('77','NHIS-031-001','Cervical Polypectomy','surgery/Other procedure','20000.00','2020-04-25 18:29:36','2020-04-25 18:29:36');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('78','NHIS-031-002','Cervical Cone Biopsy','surgery/Other procedure','20000.00','2020-04-25 18:30:18','2020-04-25 18:30:18');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('79','NHIS-031-003','Colposcopy','surgery/Other procedure','20000.00','2020-04-25 18:30:57','2020-04-25 18:30:57');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('80','NHIS-031-004','D&C /Evacuation of Retained Products of Conception','surgery/Other procedure','20000.00','2020-04-25 18:32:13','2020-04-25 18:32:13');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('81','NHIS-031-005','Destructive Delivery (cranioembrayotomy)','surgery/Other procedure','20000.00','2020-04-25 18:33:36','2020-04-25 18:33:36');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('82','NHIS-031-006','Excision/ Diathermy of warts','surgery/Other procedure','20000.00','2020-04-25 18:50:52','2020-04-25 18:50:52');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('83','NHIS-031-006','Excision/ Diathermy of warts','surgery/Other procedure','20000.00','2020-04-25 18:50:52','2020-04-25 18:50:52');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('84','NHIS-031-007','Excision Vaginal Septum','surgery/Other procedure','20000.00','2020-04-25 18:51:57','2020-04-25 18:51:57');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('85','NHIS-031-008','Hysteroscopy','surgery/Other procedure','20000.00','2020-04-25 18:52:32','2020-04-25 18:52:32');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('86','NHIS-031-009','Labial Cyst','surgery/Other procedure','20000.00','2020-04-25 18:53:42','2020-04-25 18:53:42');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('87','NHIS-031-010','Laparascopy + Dye Test','surgery/Other procedure','20000.00','2020-04-25 18:54:27','2020-04-25 18:54:27');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('88','NHIS-031-011','Marsupialisation (Bartholin's Cyst)','surgery/Other procedure','20000.00','2020-04-25 18:55:45','2020-04-25 18:55:45');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('89','NHIS-031-012','Pap Smear Procedure','surgery/Other procedure','20000.00','2020-04-25 18:56:55','2020-04-25 18:56:55');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('90','NHIS-031-013','Perineal Warts','surgery/Other procedure','20000.00','2020-04-25 18:57:35','2020-04-25 18:57:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('91','NHIS-031-014','Repair of Episiotomy','surgery/Other procedure','20000.00','2020-04-25 18:59:07','2020-04-25 18:59:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('92','NHIS-031-015','Uterine Evacuation','surgery/Other procedure','20000.00','2020-04-25 19:01:08','2020-04-25 19:01:08');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('93','NHIS-031-016','Vaginal Cyst Enucleation','surgery/Other procedure','20000.00','2020-04-25 19:02:20','2020-04-25 19:02:20');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('94','NHIS-032-001','Cervical Circlage/Shirodkar suture','surgery/Other procedure','30000.00','2020-04-25 19:03:39','2020-04-25 19:10:27');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('95','NHIS-032-002','Colporrhaphy - vaginal wall repair/ Colpoperineorraphy','surgery/Other procedure','30000.00','2020-04-25 19:06:21','2020-04-25 19:10:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('96','NHIS-032-003','Diagnostic Laparadscopy','surgery/Other procedure','30000.00','2020-04-25 19:07:41','2020-04-25 19:07:41');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('97','NHIS-032-004','Hydrotubation','surgery/Other procedure','30000.00','2020-04-25 19:08:37','2020-04-25 19:08:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('98','NHIS-032-005','Hymenectomy and repair of hymen','surgery/Other procedure','30000.00','2020-04-25 19:10:02','2020-04-25 19:10:02');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('99','NHIS-032-006','Instrumental Delivery (Forceps, Vacuum Extraction)','surgery/Other procedure','30000.00','2020-04-25 19:12:07','2020-04-25 19:12:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('100','NHIS-032-006','Instrumental Delivery (Forceps, Vacuum Extraction)','surgery/Other procedure','30000.00','2020-04-25 19:12:07','2020-04-25 19:12:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('101','NHIS-032-007','Mini Laparotomy','surgery/Other procedure','30000.00','2020-04-25 19:20:17','2020-04-25 19:20:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('102','NHIS-032-008','Repair of Third Degree Tear','surgery/Other procedure','30000.00','2020-04-25 19:21:06','2020-04-25 19:21:06');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('103','NHIS-033-001','Amputation of the Cervix','surgery/Other procedure','55000.00','2020-04-25 19:22:29','2020-04-25 19:22:29');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('104','NHIS-033-002','Bilateral Tubal Ligation','surgery/Other procedure','55,000.00','2020-04-25 19:23:17','2020-04-25 19:23:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('105','NHIS-033-003','Broad Ligament Haematoma','surgery/Other procedure','55,000.00','2020-04-25 19:24:23','2020-04-25 19:24:23');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('106','NHIS-033-004','Caesarian Section, Elective Emergency, Single live born, twin etc','surgery/Other procedure','55,000.00','2020-04-25 19:25:38','2020-04-25 19:25:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('107','NHIS-033-005','Cervical cautery','surgery/Other procedure','55,000.00','2020-04-25 19:26:11','2020-04-25 19:26:11');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('108','NHIS-033-006','Edge Resection of the Ovary','surgery/Other procedure','55,000.00','2020-04-25 19:50:49','2020-04-25 19:50:49');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('109','NHIS-033-007','Examination under Anaesthesia','surgery/Other procedure','55,000.00','2020-04-26 14:55:31','2020-04-26 14:55:31');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('110','NHIS-033-008','Hysterectomy And Bilateral Salpingo-Oophorectomy','surgery/Other procedure','55,000.00','2020-04-26 14:56:37','2020-04-26 14:56:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('111','NHIS-033-009','Hysterectomy/Manchester Repair (All Types)','surgery/Other procedure','55,000.00','2020-04-26 14:57:34','2020-04-26 14:57:34');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('112','NHIS-033-010','Laparotomy diagnostic / Theraupetic, Inter-Sex','surgery/Other procedure','55,000.00','2020-04-26 14:59:38','2020-04-26 14:59:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('113','NHIS-033-011','Myomectomy','surgery/Other procedure','55,000.00','2020-04-26 15:00:28','2020-04-26 15:00:28');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('114','NHIS-033-012','Ovarian Biopsy','surgery/Other procedure','55,000.00','2020-04-26 15:01:07','2020-04-26 15:01:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('115','NHIS-033-013','Ovarectomy/Oophrectomy','surgery/Other procedure','55,000.00','2020-04-26 15:02:38','2020-04-26 15:02:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('116','NHIS-033-014','Pelvic Haematocoele','surgery/Other procedure','55,000.00','2020-04-26 15:03:13','2020-04-26 15:03:13');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('117','NHIS-033-015','Pelvic Haematovoele','surgery/Other procedure','55,000.00','2020-04-26 15:04:04','2020-04-26 15:04:04');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('118','NHIS-033-016','PelvicAbdominal Abscess Drainage','surgery/Other procedure','55,000.00','2020-04-26 15:04:42','2020-04-26 15:04:42');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('119','NHIS-033-016','PelvicAbdominal Abscess Drainage','surgery/Other procedure','55,000.00','2020-04-26 15:04:42','2020-04-26 15:04:42');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('120','NHIS-033-017','Reconstruction of Vaginal (e.g Secondary to Vaginal Atresia)','surgery/Other procedure','55,000.00','2020-04-26 15:06:27','2020-04-26 15:06:27');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('121','NHIS-033-018','Reconstruction Surgery E.G Straussman Operation','surgery/Other procedure','55,000.00','2020-04-26 15:08:22','2020-04-26 15:08:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('122','NHIS-033-019','Rectovaginal Fistula Repair','surgery/Other procedure','55,000.00','2020-04-26 15:09:51','2020-04-26 15:10:14');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('123','NHIS-033-020','Removal of Ovaries','surgery/Other procedure','55,000.00','2020-04-26 15:11:37','2020-04-26 15:11:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('124','NHIS-033-021','Repair of Inverted Uterus','surgery/Other procedure','55,000.00','2020-04-26 15:12:20','2020-04-26 15:12:20');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('125','NHIS-033-022','Repair of Perforated Uterus','surgery/Other procedure','55,000.00','2020-04-26 15:14:04','2020-04-26 15:14:04');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('126','NHIS-033-023','Repair of Ruptured Uterus','surgery/Other procedure','55,000.00','2020-04-26 15:14:57','2020-04-26 15:14:57');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('127','NHIS-033-024','Salpingectomy (e.g for Ectopic Pregnancy)','surgery/Other procedure','55,000.00','2020-04-26 15:16:29','2020-04-26 15:16:29');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('128','NHIS-033-025','Salpingo-Oophoreictomy','surgery/Other procedure','55,000.00','2020-04-26 15:18:11','2020-04-26 15:18:11');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('129','NHIS-033-026','Tubal Reconstruction','surgery/Other procedure','55,000.00','2020-04-26 15:18:42','2020-04-26 15:18:42');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('130','NHIS-033-027','Ureterovaginal Fistula Repair','surgery/Other procedure','55,000.00','2020-04-26 15:19:48','2020-04-26 15:19:48');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('131','NHIS-033-028','Uterovesical Fistula Repair','surgery/Other procedure','55,000.00','2020-04-26 15:22:33','2020-04-26 15:22:33');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('132','NHIS-033-029','Vaginoclesis','surgery/Other procedure','55,000.00','2020-04-26 15:23:17','2020-04-26 15:23:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('133','NHIS-033-030','Ventrosuspension of the Bladder','surgery/Other procedure','55,000.00','2020-04-26 15:24:09','2020-04-26 15:24:09');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('134','NHIS-033-031','Ventrosuspension Procedures of Cprrection of Uterine Prolapse','surgery/Other procedure','55,000.00','2020-04-26 15:25:20','2020-04-26 15:25:20');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('135','NHIS-033-032','Vesicovaginal Fistula Repair','surgery/Other procedure','55,000.00','2020-04-26 15:26:00','2020-04-26 15:26:00');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('136','NHIS-033-033','Vulvectomy','surgery/Other procedure','55,000.00','2020-04-26 15:26:50','2020-04-26 15:26:50');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('137','NHIS-040-001','Aspiration/Paracentesis','surgery/Other procedure','2500.00','2020-04-26 15:28:21','2020-04-26 15:28:21');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('138','NHIS-040-002','Critical Care in ICU (per day)','surgery/Other procedure','6000.00','2020-04-26 15:29:14','2020-04-26 15:29:14');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('139','NHIS-040-003','Echocardiography','surgery/Other procedure','5000.00','2020-04-26 15:29:53','2020-04-26 15:29:53');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('140','NHIS-040-004','Echocardiography (ECG)','surgery/Other procedure','4000.00','2020-04-26 15:30:38','2020-04-26 15:30:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('141','NHIS-040-005','Electro-Encephalography (EEG)','surgery/Other procedure','15000.00','2020-04-26 15:31:31','2020-04-26 15:31:31');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('142','NHIS-040-006','Gastric Lavage','surgery/Other procedure','2500.00','2020-04-26 15:32:12','2020-04-26 15:32:12');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('143','NHIS-040-007','Lumbar Puncture','surgery/Other procedure','4000.00','2020-04-26 15:32:53','2020-04-26 15:32:53');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('144','NHIS-040-008','Lung Function Test','surgery/Other procedure','5000.00','2020-04-26 15:33:31','2020-04-26 15:33:31');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('145','NHIS-040-009','Nebulisation (per day)','surgery/Other procedure','2000.00','2020-04-26 15:34:17','2020-04-26 15:34:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('146','NHIS-040-009','Nebulisation (per day)','surgery/Other procedure','2000.00','2020-04-26 15:34:17','2020-04-26 15:34:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('147','NHIS-040-010','Oxygen Therapy (per day)','surgery/Other procedure','15000.00','2020-04-26 15:34:58','2020-04-26 15:34:58');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('148','NHIS-040-011','Tissue Biopsy (e.g Liver, Kidney etc)','surgery/Other procedure','15000.00','2020-04-26 15:35:54','2020-04-26 15:35:54');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('149','NHIS-050-001','Above Knee Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:48:48','2020-04-26 15:48:48');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('150','NHIS-050-002','Cylinder Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:49:22','2020-04-26 15:49:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('151','NHIS-050-002','Cylinder Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:49:22','2020-04-26 15:49:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('152','NHIS-050-002','Cylinder Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:49:22','2020-04-26 15:49:22');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('153','NHIS-050-003','Below Knee Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:50:04','2020-04-26 15:50:04');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('154','NHIS-050-004','Boot Pop cast','surgery/Other procedure','15000.00','2020-04-26 15:50:31','2020-04-26 15:50:31');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('155','NHIS-050-005','Above Knee Back Slab','surgery/Other procedure','15000.00','2020-04-26 15:51:14','2020-04-26 15:51:14');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('156','NHIS-050-006','Below Knee Back Slab','surgery/Other procedure','15000.00','2020-04-26 15:52:05','2020-04-26 15:52:05');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('157','NHIS-050-007','Above Elbow Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:53:03','2020-04-26 15:53:03');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('158','NHIS-050-008','Below Elbow Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:53:33','2020-04-26 15:53:33');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('159','NHIS-050-009','U-Shaped Pop Cast','surgery/Other procedure','15000.00','2020-04-26 15:57:35','2020-04-26 15:57:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('160','NHIS-050-010','U-Shaped Pop back Slap','surgery/Other procedure','15000.00','2020-04-26 16:01:28','2020-04-26 16:01:28');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('161','NHIS-050-011','Hanging Cast','surgery/Other procedure','15000.00','2020-04-26 16:01:50','2020-04-26 16:01:50');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('162','NHIS-050-012','Hip Spica Pop Cast','surgery/Other procedure','15000.00','2020-04-26 16:02:21','2020-04-26 16:02:21');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('163','NHIS-050-013','Mineaur Jacket Pop Cast','surgery/Other procedure','15000.00','2020-04-26 16:04:02','2020-04-26 16:04:02');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('164','NHIS-050-015','Lumber Pop Cast','surgery/Other procedure','15000.00','2020-04-26 16:05:00','2020-04-26 16:05:00');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('165','NHIS-050-014','Thoracolumbar Pop Cast','surgery/Other procedure','15000.00','2020-04-26 16:05:31','2020-04-26 16:05:31');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('166','NHIS-050-016','Full Arm Casts','surgery/Other procedure','15000.00','2020-04-26 16:05:56','2020-04-26 16:05:56');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('167','NHIS-050-017','Full Leg Casts','surgery/Other procedure','15000.00','2020-04-26 16:06:24','2020-04-26 16:06:24');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('168','NHIS-050-018','Scotch Cast','surgery/Other procedure','15000.00','2020-04-26 16:07:19','2020-04-26 16:07:19');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('169','NHIS-051-001','Amputation - Finger','surgery/Other procedure','15000.00','2020-04-26 16:08:10','2020-04-26 16:08:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('170','NHIS-051-002','Amputation-Toes','surgery/Other procedure','15000.00','2020-04-26 16:08:39','2020-04-26 16:08:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('171','NHIS-051-003','Chondromectomy','surgery/Other procedure','15000.00','2020-04-26 16:09:07','2020-04-26 16:09:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('172','NHIS-051-004','Excision Biopsy','surgery/Other procedure','15000.00','2020-04-26 16:09:39','2020-04-26 16:09:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('173','NHIS-051-005','Knee Effusion Tap','surgery/Other procedure','15000.00','2020-04-26 16:10:10','2020-04-26 16:10:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('174','NHIS-051-006','Pollicisation of the Index finger','surgery/Other procedure','15000.00','2020-04-26 16:10:47','2020-04-26 16:10:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('175','NHIS-051-007','Release of Chordae','surgery/Other procedure','15000.00','2020-04-26 16:11:18','2020-04-26 16:11:18');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('176','NHIS-051-008','Surgical Release in Stenosing Tenosynovitis','surgery/Other procedure','15000.00','2020-04-26 16:12:14','2020-04-26 16:12:14');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('177','NHIS-051-009','Synovectomy','surgery/Other procedure','15000.00','2020-04-26 16:12:44','2020-04-26 16:12:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('178','NHIS-052-001','Closed Reduction of Fracture','surgery/Other procedure','25000.00','2020-04-26 16:13:26','2020-04-26 16:13:26');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('179','NHIS-052-002','Drainage os septic Arthritis','surgery/Other procedure','25000.00','2020-04-26 16:13:57','2020-04-26 16:13:57');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('180','NHIS-052-003','Exostectomy','surgery/Other procedure','25000.00','2020-04-26 16:14:39','2020-04-26 16:14:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('181','NHIS-052-004','Saucerisation of Chronically Infected Bone','surgery/Other procedure','25000.00','2020-04-26 16:16:12','2020-04-26 16:16:12');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('182','NHIS-052-005','Sequestrectomy','Investigation','25000.00','2020-04-26 16:16:47','2020-04-26 16:16:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('183','NHIS-052-006','Simple Congenital Talipes Repair','surgery/Other procedure','25000.00','2020-04-26 16:22:30','2020-04-26 16:22:30');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('184','NHIS-052-007','Skin Traction','surgery/Other procedure','25000.00','2020-04-26 16:23:39','2020-04-26 16:23:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('185','NHIS-052-008','Subperiosteal Drainage of Acute Osteomyelitis','surgery/Other procedure','25000.00','2020-04-26 16:24:45','2020-04-26 16:24:45');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('186','NHIS-052-009','Surgical Correction of Dupuytren's Contracture','surgery/Other procedure','25000.00','2020-04-26 16:27:47','2020-04-26 16:27:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('187','NHIS-052-010','Syndactlysis','surgery/Other procedure','25000.00','2020-04-26 16:28:29','2020-04-26 16:28:29');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('188','NHIS-053-001','Amputation and Disarticulation of Joints','surgery/Other procedure','100000.00','2020-04-26 16:29:51','2020-04-26 16:29:51');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('189','NHIS-053-002','Amputation and Limb Substitution','surgery/Other procedure','100000.00','2020-04-26 16:30:35','2020-04-26 16:30:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('190','NHIS-053-003','Anterior and Posterior  Spine Fixation','surgery/Other procedure','100000.00','2020-04-26 16:31:41','2020-04-26 16:31:41');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('191','NHIS-053-003','Anterior and Posterior  Spine Fixation','surgery/Other procedure','100000.00','2020-04-26 16:31:41','2020-04-26 16:31:41');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('192','NHIS-053-004','Arthrodesis','surgery/Other procedure','100000.00','2020-04-26 16:32:10','2020-04-26 16:32:10');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('193','NHIS-053-005','Arthroplasty','surgery/Other procedure','100000.00','2020-04-26 16:32:45','2020-04-26 16:32:45');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('194','NHIS-053-006','Arthorotomy','surgery/Other procedure','100000.00','2020-04-26 16:34:14','2020-04-26 16:34:14');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('195','NHIS-053-007','Bone Grafting','surgery/Other procedure','100000.00','2020-04-26 16:35:14','2020-04-26 16:35:14');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('196','NHIS-053-008','Open Reduction & Internal Fixation of Foot Fracture','surgery/Other procedure','100000.00','2020-04-26 16:36:28','2020-04-26 16:36:28');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('197','NHIS-053-009','Open Reduction & Internal Fixation of Fore-Arm Fracture','surgery/Other procedure','100000.00','2020-04-26 16:37:34','2020-04-26 16:37:34');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('198','NHIS-053-010','Open Reduction & Internal Fixation of Hand Fracture','surgery/Other procedure','100000.00','2020-04-26 16:38:17','2020-04-26 16:38:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('199','NHIS-053-011','Open Reduction & Internal Fixation of Leg Fracture','surgery/Other procedure','100000.00','2020-04-26 16:38:51','2020-04-26 16:38:51');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('200','NHIS-053-012','Open Reduction & Internal Fixation of Pectoral Girdle Fracture','surgery/Other procedure','100000.00','2020-04-26 16:39:33','2020-04-26 16:39:33');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('201','NHIS-053-013','Open Reduction & Internal Fixation of Pelvic GirdleFracture','surgery/Other procedure','100000.00','2020-04-26 16:41:29','2020-04-26 16:41:29');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('202','NHIS-053-014','Open Reduction & Internal Fixation of RIBS Fracture','surgery/Other procedure','100000.00','2020-04-26 16:42:13','2020-04-26 16:42:13');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('203','NHIS-053-015','Open Reduction & Internal Fixation of THIGH Fracture','surgery/Other procedure','100000.00','2020-04-26 16:42:45','2020-04-26 16:42:45');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('204','NHIS-053-016','Open Reduction & Internal Fixation of UPPER ARM Fracture','surgery/Other procedure','100000.00','2020-04-26 16:43:19','2020-04-26 16:43:19');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('205','NHIS-053-017','Open Reduction & Internal Fixation of SPINAL COLUMN Fracture','surgery/Other procedure','100000.00','2020-04-26 16:44:17','2020-04-26 16:44:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('206','NHIS-053-018','Osteoclasis, Internal Fixation of Mal-union','Investigation','100000.00','2020-04-26 16:45:21','2020-04-26 16:45:21');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('207','NHIS-053-019','Reconstruction Surgeries: Acromium, Head of Femur etc','surgery/Other procedure','100000.00','2020-04-26 16:46:24','2020-04-26 16:46:24');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('208','NHIS-053-020','Surgical Repair of Congenital Talipes Equanovarus/Valgus','surgery/Other procedure','100000.00','2020-04-26 16:47:28','2020-04-26 16:47:28');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('209','NHIS-053-021','Tendon Grafting','surgery/Other procedure','100000.00','2020-04-26 16:48:03','2020-04-26 16:48:03');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('210','NHIS-053-022','Tension Transplant','surgery/Other procedure','100000.00','2020-04-26 16:48:59','2020-04-26 16:48:59');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('211','NHIS-053-023','Decompression of carpal tunnel syndrome','surgery/Other procedure','100000.00','2020-04-26 16:50:08','2020-04-26 16:50:08');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('212','NHIS-053-024','Tenoplasty','surgery/Other procedure','100000.00','2020-04-26 16:50:35','2020-04-26 16:50:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('213','NHIS-061-001','Adventious Burse-Excision','surgery/Other procedure','20000.00','2020-04-26 16:51:39','2020-04-26 16:51:39');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('214','NHIS-061-002','Bakers Cyst-Excision','surgery/Other procedure','20000.00','2020-04-26 16:52:16','2020-04-26 16:52:16');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('215','NHIS-061-003','Biopsy of Oesophageal Mass','surgery/Other procedure','20000.00','2020-04-26 16:53:00','2020-04-26 16:53:00');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('216','NHIS-061-004','Biopsy of Prostate','surgery/Other procedure','20000.00','2020-04-26 16:53:44','2020-04-26 16:53:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('217','NHIS-061-005','Biopsy of Tumour of Abdominal Wall','surgery/Other procedure','20000.00','2020-04-26 16:54:38','2020-04-26 16:54:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('218','NHIS-061-006','Bursa-Excision','surgery/Other procedure','20000.00','2020-04-26 16:55:09','2020-04-26 16:55:09');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('219','NHIS-061-007','Catherization of Urinary Bladder per session (up to three sessions annually)','surgery/Other procedure','20000.00','2020-04-26 16:56:21','2020-04-26 16:56:21');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('220','NHIS-061-008','Cervical Lymphnodes- Excision','surgery/Other procedure','20000.00','2020-04-26 16:57:17','2020-04-26 16:57:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('221','NHIS-061-009','Circumsion of the Grown Up','surgery/Other procedure','20000.00','2020-04-26 16:57:55','2020-04-26 16:57:55');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('222','NHIS-061-010','Debridement and Toilet of Wounds','surgery/Other procedure','20000.00','2020-04-26 16:58:44','2020-04-26 16:58:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('223','NHIS-061-011','Dermoid Cyst Excision','surgery/Other procedure','20000.00','2020-04-26 16:59:52','2020-04-26 16:59:52');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('224','NHIS-061-012','Dissection of Inguinal Nodes','surgery/Other procedure','20000.00','2020-04-26 17:00:44','2020-04-26 17:00:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('225','NHIS-061-013','Dorsal Slit and Reduction of Paraphimosis','surgery/Other procedure','20000.00','2020-04-26 17:01:36','2020-04-26 17:01:36');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('226','NHIS-061-014','Electrofulgaration of Condylomata Acuminata','surgery/Other procedure','20000.00','2020-04-26 17:06:49','2020-04-26 17:06:49');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('227','NHIS-061-015','Excision of Breast Lump','surgery/Other procedure','20000.00','2020-04-26 17:07:38','2020-04-26 17:07:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('228','NHIS-061-015','Excision of Breast Lump','surgery/Other procedure','20000.00','2020-04-26 17:07:38','2020-04-26 17:07:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('229','NHIS-061-015','Excision of Breast Lump','surgery/Other procedure','20000.00','2020-04-26 17:07:38','2020-04-26 17:07:38');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('230','NHIS-061-016','Excision of Intrascrostal Mass','surgery/Other procedure','20000.00','2020-04-26 17:08:43','2020-04-26 17:08:43');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('231','NHIS-061-017','Excision of Neurofibroma','surgery/Other procedure','20000.00','2020-04-26 17:10:08','2020-04-26 17:10:08');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('232','NHIS-061-018','Excision of Tophi','surgery/Other procedure','20000.00','2020-04-26 17:12:52','2020-04-26 17:12:52');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('233','NHIS-061-019','Fibrodenoma-Unilateral','surgery/Other procedure','20000.00','2020-04-26 17:13:48','2020-04-26 17:13:48');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('234','NHIS-061-020','Ganglion - Excision','surgery/Other procedure','20000.00','2020-04-26 17:14:42','2020-04-26 17:14:42');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('235','NHIS-061-021','Ganglion-small-Excision D','surgery/Other procedure','20000.00','2020-04-26 17:15:44','2020-04-26 17:15:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('236','NHIS-061-022','Ganglion (Dorsum of Both Wrist)-Excision','surgery/Other procedure','20000.00','2020-04-26 17:16:51','2020-04-26 17:16:51');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('237','NHIS-061-022','Ganglion (Dorsum of Both Wrist)-Excision','surgery/Other procedure','20000.00','2020-04-26 17:16:51','2020-04-26 17:16:51');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('238','NHIS-061-023','Ganglionectectomy','surgery/Other procedure','20000.00','2020-04-26 17:18:53','2020-04-26 17:18:53');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('239','NHIS-061-024','Gastroduodenoscopy/Endoscopies','surgery/Other procedure','20000.00','2020-04-26 17:19:54','2020-04-26 17:19:54');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('240','NHIS-061-025','Granuloma-Excision','surgery/Other procedure','20000.00','2020-04-26 17:20:56','2020-04-26 17:20:56');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('241','NHIS-061-026','Granuloma Excision','surgery/Other procedure','20000.00','2020-04-26 17:21:37','2020-04-26 17:21:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('242','NHIS-061-027','Herniotomy','surgery/Other procedure','20000.00','2020-04-26 17:22:16','2020-04-26 17:22:16');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('243','NHIS-061-028','Incision and Drainage of Abscess','surgery/Other procedure','20000.00','2020-04-26 17:24:07','2020-04-26 17:24:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('244','NHIS-061-028','Incision and Drainage of Abscess','surgery/Other procedure','20000.00','2020-04-26 17:24:07','2020-04-26 17:24:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('245','NHIS-061-029','Infected Bunion Foot-Excision','surgery/Other procedure','20000.00','2020-04-26 17:25:00','2020-04-26 17:25:00');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('246','NHIS-061-030','In-growing Toe Nail (Excision)','surgery/Other procedure','20000.00','2020-04-26 17:27:44','2020-04-26 17:27:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('247','NHIS-061-030','In-growing Toe Nail (Excision)','surgery/Other procedure','20000.00','2020-04-26 17:27:44','2020-04-26 17:27:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('248','NHIS-061-031','Intercostals Drainage Insertion','surgery/Other procedure','20000.00','2020-04-26 17:29:17','2020-04-26 17:29:17');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('249','NHIS-061-032','Lipectomy','surgery/Other procedure','20000.00','2020-04-26 17:29:54','2020-04-26 17:29:54');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('250','NHIS-061-033','Liver/Kidney/Bone Marrow Biopsy','surgery/Other procedure','20000.00','2020-04-26 17:30:42','2020-04-26 17:30:42');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('251','NHIS-061-034','Lords Procedure (haemorrhoids)','surgery/Other procedure','20000.00','2020-04-26 17:31:47','2020-04-26 17:31:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('252','NHIS-061-035','Lumpectomy-Excision','surgery/Other procedure','20000.00','2020-04-26 17:32:33','2020-04-26 17:32:33');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('253','NHIS-061-036','Oesophagoscopy for foreign body removal','surgery/Other procedure','20000.00','2020-04-26 17:33:40','2020-04-26 17:33:40');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('254','NHIS-061-037','Paracentesis (A/C Wash Out)','surgery/Other procedure','20000.00','2020-04-26 17:34:44','2020-04-26 17:34:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('255','NHIS-061-038','Pericardiocentesis','surgery/Other procedure','20000.00','2020-04-26 17:35:37','2020-04-26 17:35:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('256','NHIS-061-039','Pollicisation of index finger','surgery/Other procedure','20000.00','2020-04-26 17:36:19','2020-04-26 17:36:19');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('257','NHIS-061-040','Priapism , Shunt Procedure All types','surgery/Other procedure','20000.00','2020-04-26 17:37:20','2020-04-26 17:37:20');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('258','NHIS-061-041','Proctoscopy','surgery/Other procedure','20000.00','2020-04-26 17:38:49','2020-04-26 17:38:49');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('259','NHIS-061-042','Punch Biopsy','surgery/Other procedure','20000.00','2020-04-26 17:39:35','2020-04-26 17:39:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('260','NHIS-061-043','Rectal Dilation','surgery/Other procedure','20000.00','2020-04-26 17:40:01','2020-04-26 17:40:01');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('261','NHIS-061-044','Release of Chordae','surgery/Other procedure','20000.00','2020-04-26 17:40:29','2020-04-26 17:40:29');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('262','NHIS-061-045','Sebaceous Cyst-Excision','surgery/Other procedure','20000.00','2020-04-26 17:41:27','2020-04-26 17:41:27');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('263','NHIS-061-046','Sigmoidoscopy','surgery/Other procedure','20000.00','2020-04-26 17:42:47','2020-04-26 17:42:47');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('264','NHIS-061-047','Sinus-Excision','surgery/Other procedure','20000.00','2020-04-26 17:43:19','2020-04-26 17:43:44');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('265','NHIS-061-048','Surgical drainage in Haematoma of Rectus Abdominis','surgery/Other procedure','20000.00','2020-04-26 17:45:15','2020-04-26 17:45:15');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('266','NHIS-061-049','Surgical Drainage of anal Abscess','surgery/Other procedure','20000.00','2020-04-26 17:47:09','2020-04-26 17:47:09');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('267','NHIS-061-050','Surgical Drainage of Galactocoele','surgery/Other procedure','20000.00','2020-04-26 17:47:58','2020-04-26 17:47:58');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('268','NHIS-061-051','Surgical Release of Stenosing Tenosinovitis','surgery/Other procedure','20000.00','2020-04-26 17:48:53','2020-04-26 17:48:53');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('269','NHIS-061-052','Suture of Major Wounds','surgery/Other procedure','20000.00','2020-04-26 17:49:35','2020-04-26 17:49:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('270','NHIS-061-053','Syndactysis','surgery/Other procedure','20000.00','2020-04-26 17:50:35','2020-04-26 17:50:35');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('271','NHIS-061-054','Synovectomy','surgery/Other procedure','20000.00','2020-04-26 17:52:07','2020-04-26 17:52:07');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('272','NHIS-061-055','Testicular Biopsy','surgery/Other procedure','20000.00','2020-04-26 17:52:37','2020-04-26 17:52:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('273','NHIS-061-056','Varicocoelectomy','surgery/Other procedure','20000.00','2020-04-26 17:53:15','2020-04-26 17:53:15');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('274','NHIS-062-001','Adenoidectomy','surgery/Other procedure','35000.00','2020-04-26 17:54:01','2020-04-26 17:54:01');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('275','NHIS-062-002','Anal Fistulectomy Repair','surgery/Other procedure','35000.00','2020-04-26 17:54:52','2020-04-26 17:54:52');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('276','NHIS-062-003','Anal Sphincteroplasty','surgery/Other procedure','35000.00','2020-04-26 17:55:37','2020-04-26 17:55:37');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('277','NHIS-062-004','Anorectoplasty','surgery/Other procedure','35000.00','2020-04-26 17:56:27','2020-04-26 17:56:27');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('278','NHIS-062-005','Appendicetomy','surgery/Other procedure','35000.00','2020-04-26 17:57:11','2020-04-26 17:57:11');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('279','NHIS-062-006','Bilateral Cutaneous Ureterostormy','surgery/Other procedure','35000.00','2020-04-26 17:58:13','2020-04-26 17:58:13');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('280','NHIS-062-007','Bilateral Ureteroenterostormy','surgery/Other procedure','35000.00','2020-04-26 17:59:25','2020-04-26 17:59:25');

INSERT INTO services (id, NHIS_code, description, type, price, created_at, updated_at) VALUES ('281','NHIS-062-008','Branchial Fistula','surgery/Other procedure','35000.00','2020-04-26 18:00:08','2020-04-26 18:00:08');


CREATE TABLE `slot_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `user_logins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('1','1','ict Dept','2020-04-22 11:01:17','2020-04-22 11:11:58','2020-04-22 11:01:17','2020-04-22 11:11:58');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('2','1','ict Dept','2020-04-22 11:02:55','2020-04-22 11:11:58','2020-04-22 11:02:55','2020-04-22 11:11:58');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('3','1','ict Dept','2020-04-22 11:03:53','2020-04-22 11:11:58','2020-04-22 11:03:53','2020-04-22 11:11:58');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('4','1','ict Dept','2020-04-22 11:14:23','2020-04-22 11:15:32','2020-04-22 11:14:23','2020-04-22 11:15:32');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('5','1','ict Dept','2020-04-22 11:15:47','','2020-04-22 11:15:47','2020-04-22 11:15:47');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('6','1','ict Dept','2020-04-22 15:48:34','2020-04-22 17:04:40','2020-04-22 15:48:34','2020-04-22 17:04:40');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('7','1','ict Dept','2020-04-22 20:48:19','','2020-04-22 20:48:19','2020-04-22 20:48:19');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('8','1','ict Dept','2020-04-22 20:48:19','2020-04-22 22:22:13','2020-04-22 20:48:19','2020-04-22 22:22:13');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('9','1','ict Dept','2020-04-23 15:13:59','2020-04-23 17:29:20','2020-04-23 15:13:59','2020-04-23 17:29:20');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('10','1','ict Dept','2020-04-24 12:15:28','2020-04-24 16:48:40','2020-04-24 12:15:28','2020-04-24 16:48:40');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('11','1','ict Dept','2020-04-25 10:26:16','2020-04-25 19:50:56','2020-04-25 10:26:16','2020-04-25 19:50:56');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('12','1','ict Dept','2020-04-26 14:52:27','','2020-04-26 14:52:27','2020-04-26 14:52:27');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('13','1','ict Dept','2020-04-26 14:52:27','2020-04-26 19:11:40','2020-04-26 14:52:27','2020-04-26 19:11:40');

INSERT INTO user_logins (id, user_id, user_name, login_at, logout_at, created_at, updated_at) VALUES ('14','1','ict Dept','2020-04-27 09:36:30','','2020-04-27 09:36:30','2020-04-27 09:36:30');


CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO users (id, name, email, email_verified_at, password, type, remember_token, created_at, updated_at) VALUES ('1','ict Dept','ict@fmc.com','','$2y$10$gPZdMXxWxbJeKSGu8ImEcO7M/DHLKb/etOWRtB8VkiWMyfkGP2ofO','7','','2019-07-06 05:48:30','');


CREATE TABLE `vouchers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rec` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `today` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

