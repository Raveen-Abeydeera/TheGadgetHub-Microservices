-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2026 at 10:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgethub_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `distributor_inventory`
--

CREATE TABLE `distributor_inventory` (
  `id` int(11) NOT NULL,
  `distributor_name` varchar(50) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `eta_days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributor_inventory`
--

INSERT INTO `distributor_inventory` (`id`, `distributor_name`, `product_id`, `stock`, `price`, `eta_days`) VALUES
(1, 'TechWorld', 'p1', 989, 25000, 2),
(2, 'TechWorld', 'p2', 1000, 1500, 2),
(3, 'TechWorld', 'p3', 1000, 120000, 3),
(4, 'ElectroCom', 'p1', 1000, 26000, 1),
(5, 'ElectroCom', 'p5', 1000, 800, 4),
(6, 'ElectroCom', 'p6', 1000, 3500, 4),
(7, 'ElectroCom', 'p7', 1000, 1200, 4),
(8, 'GadgetCentral', 'p8', 1000, 2500, 5),
(9, 'GadgetCentral', 'p9', 1000, 1800, 5),
(10, 'GadgetCentral', 'p3', 891, 115000, 6),
(11, 'TechWorld', 'p10', 1000, 3500, 3),
(12, 'TechWorld', 'p13', 1000, 4500, 3),
(13, 'TechWorld', 'p16', 1000, 6800, 3),
(14, 'ElectroCom', 'p11', 1000, 1100, 2),
(15, 'ElectroCom', 'p12', 1000, 750, 2),
(16, 'ElectroCom', 'p17', 1000, 2100, 4),
(17, 'ElectroCom', 'p19', 1000, 8500, 5),
(18, 'GadgetCentral', 'p14', 1000, 450, 5),
(19, 'GadgetCentral', 'p15', 1000, 1500, 5),
(20, 'GadgetCentral', 'p18', 1000, 1800, 5),
(21, 'GadgetCentral', 'p16', 1000, 6400, 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `email`, `sent_at`, `status`) VALUES
(1, '7dc775ac-42b5-4d6c-b976-76b225233f27', 'sandinu15@gmail.com', '2026-02-06 06:34:40', 'Sent'),
(2, '2805d074-e855-48b5-9e3c-9c909952e462', 'sandinu15@gmail.com', '2026-02-06 06:48:33', 'Sent'),
(3, '43439c11-a629-49c8-b925-15f8a41992af', 'sandinu15@gmail.com', '2026-02-09 08:36:28', 'Sent'),
(4, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'sandinu15@gmail.com', '2026-02-09 12:55:19', 'Sent'),
(5, '179a0565-9eca-406d-8593-c76a64a75d44', 'sandinu15@gmail.com', '2026-02-09 12:57:51', 'Sent'),
(6, '85ae51a5-78a7-48be-b3c4-616263c7333f', 'raveenaberdeera@gmail.com', '2026-02-10 05:17:35', 'Sent'),
(7, '2ee8000b-07aa-44f4-9ce6-20d11f5f9217', 'test@gmail.com', '2026-02-10 06:20:32', 'Sent'),
(8, '3282fc5d-b251-46e8-9736-e4f2fcf69335', 'test@gmail.com', '2026-02-10 06:48:59', 'Sent'),
(9, '85e4113c-cf7f-4f32-ab21-de2f216063fc', 'test@gmail.com', '2026-02-10 06:49:10', 'Sent'),
(10, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'test@gmail.com', '2026-02-10 06:55:16', 'Sent'),
(11, '37878b59-de23-42e9-8656-4a734a4777c2', 'test@gmail.com', '2026-02-10 07:15:54', 'Sent'),
(12, '18564d63-1e69-45d6-b6b3-95b8270e3c95', 'test2@gmail.com', '2026-02-10 07:32:57', 'Sent'),
(13, 'a549462f-81c5-409a-8ba5-8e2a499fcc60', 'test@example.com', '2026-02-10 08:55:04', 'Sent'),
(14, '7f7f94bb-c355-4704-b29a-98099f3401d5', 'john@example.com', '2026-02-13 04:11:52', 'Sent'),
(15, '86627a71-cdb1-4d98-ad38-2e78f2e0ec22', 'john@example.com', '2026-02-13 05:30:15', 'Sent'),
(16, 'test-uuid-1234', 'test@example.com', '2026-02-13 07:06:05', 'Sent'),
(17, 'e8fbe57a-e86c-418e-ba0f-20b5e3ddc735', 'test@integration.com', '2026-02-16 03:57:38', 'Sent'),
(18, 'af3a36c7-8680-47d3-8055-e53cb25145c8', 'test@integration.com', '2026-02-16 04:21:01', 'Sent'),
(19, '7876cfb5-bbfb-41da-94f6-de0028f7051a', 'integrity@test.com', '2026-02-16 04:28:55', 'Sent'),
(20, '3eb84b54-50cd-44b7-9077-fca25ddf9814', 'test@integration.com', '2026-02-16 04:37:50', 'Sent'),
(21, 'f1829c1f-adee-46f6-aefb-da839b80f4f7', 'test@integration.com', '2026-02-16 04:49:43', 'Sent'),
(22, 'f9d0c152-0c02-4e87-91bc-5afe74a3fe48', 'integrity@test.com', '2026-02-16 04:49:43', 'Sent'),
(23, '6bc67f21-ba4b-43da-8b77-e96b881b0762', 'test@gmail.com', '2026-02-16 04:58:07', 'Sent'),
(24, '12f06ad4-4c70-4454-abef-d1421b724be7', 'load0@test.com', '2026-02-16 05:26:34', 'Sent'),
(25, 'ca61fe04-5151-483b-8a7e-05e26df41a75', 'load2@test.com', '2026-02-16 05:26:34', 'Sent'),
(26, 'd05cf552-1d89-4694-a21f-711a0ebca567', 'load1@test.com', '2026-02-16 05:26:34', 'Sent'),
(27, 'e90bb0c9-3ab2-4dbb-b549-b3d59356937b', 'load3@test.com', '2026-02-16 05:26:35', 'Sent'),
(28, '2df06ad2-81b1-478f-9366-84a20a2a979f', 'load5@test.com', '2026-02-16 05:26:35', 'Sent'),
(29, '46544f37-ad02-4c6c-b70c-058cff854449', 'load7@test.com', '2026-02-16 05:26:35', 'Sent'),
(30, '9d5a9f8e-b81e-4feb-ad19-0bc59a2b5b82', 'load4@test.com', '2026-02-16 05:26:35', 'Sent'),
(31, '47c2a7d7-c3c9-47dd-b65f-dc811346f9a5', 'load6@test.com', '2026-02-16 05:26:35', 'Sent'),
(32, '26e959e1-b370-4eee-8a1b-fb64c02b282e', 'load8@test.com', '2026-02-16 05:26:35', 'Sent'),
(33, '51f4f2f0-4d34-4565-912c-7771c45d1368', 'load9@test.com', '2026-02-16 05:26:35', 'Sent'),
(34, 'f052f964-1660-4903-a8f3-48a310324538', 'load11@test.com', '2026-02-16 05:26:35', 'Sent'),
(35, '053179b3-4482-4502-93cc-2e931b6d91a9', 'load13@test.com', '2026-02-16 05:26:35', 'Sent'),
(36, '800802f4-71dc-46f1-bc03-edc8f8e1e10b', 'load10@test.com', '2026-02-16 05:26:35', 'Sent'),
(37, '56e23e18-86a2-4819-a7a2-feb5fc4ba741', 'load16@test.com', '2026-02-16 05:26:35', 'Sent'),
(38, '2df43dd5-3992-49dc-b17d-091831fa5749', 'load12@test.com', '2026-02-16 05:26:35', 'Sent'),
(39, '843c9a14-1ce9-4486-ad9e-2223bf5f4724', 'load14@test.com', '2026-02-16 05:26:35', 'Sent'),
(40, '2ab6ffef-d311-474f-bd98-f2bac9d5c719', 'load18@test.com', '2026-02-16 05:26:35', 'Sent'),
(41, 'f925f35b-b3c9-4f2b-bcc9-a83d55745f25', 'load17@test.com', '2026-02-16 05:26:35', 'Sent'),
(42, 'c30d2af5-09ae-4fa1-bf20-359b183b1524', 'load15@test.com', '2026-02-16 05:26:35', 'Sent'),
(43, '3d99c2f7-53cc-44ea-86fa-78913523e5ce', 'load19@test.com', '2026-02-16 05:26:35', 'Sent'),
(44, 'cd5cacfc-2d13-4405-bf1b-484dbfae6528', 'debug@test.com', '2026-02-16 05:48:26', 'Sent'),
(45, 'fa85ca09-ddef-4916-bc3b-bbbeb9762f44', 'load0@test.com', '2026-02-16 05:54:28', 'Sent'),
(46, '4bcd3d91-621b-48e7-8383-ac51e2b82b73', 'load1@test.com', '2026-02-16 05:54:28', 'Sent'),
(47, 'd1b58468-0f59-4849-9e51-4796a9a4532f', 'load2@test.com', '2026-02-16 05:54:28', 'Sent'),
(48, 'c790fa15-1ddf-4d83-b7e2-9573caaf0ab8', 'load3@test.com', '2026-02-16 05:54:28', 'Sent'),
(49, '198c077f-faee-4f65-90ee-d6207e4b5eb4', 'load4@test.com', '2026-02-16 05:54:28', 'Sent'),
(50, 'ff6eabc9-734e-47c8-8274-056b7b6f78dd', 'load8@test.com', '2026-02-16 05:54:28', 'Sent'),
(51, 'b88eca44-971b-45a4-8158-ed33c4065edd', 'load5@test.com', '2026-02-16 05:54:28', 'Sent'),
(52, 'f5eb38bb-f19e-4e36-93e8-0cdbd8229939', 'load7@test.com', '2026-02-16 05:54:28', 'Sent'),
(53, '998b2639-8163-442a-95fb-6ab009dec70a', 'load6@test.com', '2026-02-16 05:54:28', 'Sent'),
(54, '6c162813-a69d-4f51-85cf-ec8f7cc9bb7f', 'load9@test.com', '2026-02-16 05:54:28', 'Sent'),
(55, '4f38e00a-3294-4a4f-b5a5-602153dff754', 'load10@test.com', '2026-02-16 05:54:28', 'Sent'),
(56, '8ae1a01a-738c-40d8-9ef6-a37f72c82a11', 'load11@test.com', '2026-02-16 05:54:28', 'Sent'),
(57, 'af0cf307-9069-430b-a37b-450dc910de2c', 'load14@test.com', '2026-02-16 05:54:28', 'Sent'),
(58, '648f31cb-c730-4d65-a74c-dbb7f2be997f', 'load12@test.com', '2026-02-16 05:54:28', 'Sent'),
(59, '77dc9f33-ab17-4342-abec-19588a671c26', 'load13@test.com', '2026-02-16 05:54:28', 'Sent'),
(60, 'b3f67e5a-b1df-4dda-b28e-c00e3c775630', 'load17@test.com', '2026-02-16 05:54:28', 'Sent'),
(61, '2a658cca-ab6f-4c75-b2a9-da315deb4716', 'load15@test.com', '2026-02-16 05:54:28', 'Sent'),
(62, '1265eecf-8e11-4bc7-9071-c2babec17730', 'load19@test.com', '2026-02-16 05:54:28', 'Sent'),
(63, '859e9264-485d-47ba-a793-f6a61d471841', 'load16@test.com', '2026-02-16 05:54:28', 'Sent'),
(64, '317c1329-23ca-4595-ba4a-29ba4f7fc8e9', 'load18@test.com', '2026-02-16 05:54:28', 'Sent'),
(65, 'eb71bd5f-6181-40bd-b6e2-f5fffe72e53e', 'load22@test.com', '2026-02-16 05:54:28', 'Sent'),
(66, '92722fee-e39b-416a-9bde-bf5cc80e93f0', 'load20@test.com', '2026-02-16 05:54:28', 'Sent'),
(67, '1aa47a9d-d0e1-407c-912b-051a751dacec', 'load21@test.com', '2026-02-16 05:54:28', 'Sent'),
(68, '8d9ec5e9-2215-4083-8ca5-ed0e8108cbc3', 'load24@test.com', '2026-02-16 05:54:28', 'Sent'),
(69, '2a523d90-1150-44da-bd54-347a57c449a2', 'load23@test.com', '2026-02-16 05:54:28', 'Sent'),
(70, '30112771-fa43-4a9f-bbbc-ea2ae049729f', 'load26@test.com', '2026-02-16 05:54:28', 'Sent'),
(71, '176c4a05-09b0-4ec8-b0ee-8970a5d03804', 'load25@test.com', '2026-02-16 05:54:28', 'Sent'),
(72, '493e9265-2019-4a9d-9ed5-4945f9ce41f3', 'load28@test.com', '2026-02-16 05:54:28', 'Sent'),
(73, '8446666b-addd-48c7-ba02-3480f002030d', 'load31@test.com', '2026-02-16 05:54:28', 'Sent'),
(74, 'ea8a288d-6876-485e-a597-a5d25658994e', 'load27@test.com', '2026-02-16 05:54:28', 'Sent'),
(75, 'a70c726f-d35d-4eb9-91c4-0417a4e506c8', 'load29@test.com', '2026-02-16 05:54:28', 'Sent'),
(76, '79c4cda0-67d1-4946-841c-cc1adc3c7f19', 'load32@test.com', '2026-02-16 05:54:28', 'Sent'),
(77, '85e9107d-4b38-47bd-9d07-3b88d34009d9', 'load30@test.com', '2026-02-16 05:54:28', 'Sent'),
(78, 'd8530b63-8765-4cb2-9619-8f68500d77ab', 'load34@test.com', '2026-02-16 05:54:28', 'Sent'),
(79, '97bf237c-021a-45a5-9da7-14abfc0cda00', 'load36@test.com', '2026-02-16 05:54:28', 'Sent'),
(80, 'c8b41e65-eca1-4ddb-9766-745ab481af1b', 'load33@test.com', '2026-02-16 05:54:28', 'Sent'),
(81, '5f76703e-d998-43c8-822e-3a4cc1bb1f97', 'load35@test.com', '2026-02-16 05:54:28', 'Sent'),
(82, 'dacbee62-7643-44a6-bf4f-88b41164229c', 'load39@test.com', '2026-02-16 05:54:28', 'Sent'),
(83, 'ca19fed7-4ee7-416b-b3b5-c67ee7e22525', 'load38@test.com', '2026-02-16 05:54:28', 'Sent'),
(84, '12d4296e-37e1-4687-8316-284e0b3be447', 'load37@test.com', '2026-02-16 05:54:28', 'Sent'),
(85, '4a3317e3-3c16-4f81-845a-8a9775d2b2de', 'load40@test.com', '2026-02-16 05:54:28', 'Sent'),
(86, '1c0e1fcd-2459-4b37-9301-29ec0b912bee', 'load41@test.com', '2026-02-16 05:54:28', 'Sent'),
(87, 'cadaa04e-30f0-4224-8c59-3ede15f99cba', 'load43@test.com', '2026-02-16 05:54:28', 'Sent'),
(88, '1fc833d2-2a69-4c14-87a9-d9c7fd0b11c0', 'load42@test.com', '2026-02-16 05:54:28', 'Sent'),
(89, 'cf94a2a7-48a6-4b49-9625-9115e49afa4a', 'load45@test.com', '2026-02-16 05:54:28', 'Sent'),
(90, '945ebc46-e0fb-4d57-b134-b20c76912422', 'load46@test.com', '2026-02-16 05:54:28', 'Sent'),
(91, 'fde963f7-2797-47a2-b77b-27c7fd0e5343', 'load44@test.com', '2026-02-16 05:54:28', 'Sent'),
(92, '06d33d89-6b82-48db-99fb-7122e312c96e', 'load47@test.com', '2026-02-16 05:54:28', 'Sent'),
(93, '44c70f66-406b-4e28-b97c-763a8a484280', 'load48@test.com', '2026-02-16 05:54:28', 'Sent'),
(94, '980ff31e-5539-4880-86ad-87cbea0508e6', 'load49@test.com', '2026-02-16 05:54:28', 'Sent'),
(95, 'eba15592-b2fd-4f19-9ff1-e3aea4f9cec3', 'load2@test.com', '2026-02-16 06:00:18', 'Sent'),
(96, 'd23f5506-5718-42d6-ad0d-ecd25573112a', 'load1@test.com', '2026-02-16 06:00:18', 'Sent'),
(97, '954f582c-e799-415a-b0a4-62c742af3ef2', 'load0@test.com', '2026-02-16 06:00:18', 'Sent'),
(98, 'f9b9fe20-09b1-44a4-89da-27c4ffddb410', 'load3@test.com', '2026-02-16 06:00:18', 'Sent'),
(99, '82f0826a-9728-4af6-9d55-5d2f51c4d983', 'load6@test.com', '2026-02-16 06:00:18', 'Sent'),
(100, '02c886aa-972f-4866-b1a9-69c7442dc2e1', 'load4@test.com', '2026-02-16 06:00:18', 'Sent'),
(101, '098e0f47-8ad9-4e25-b486-623d40f7d5a5', 'load5@test.com', '2026-02-16 06:00:18', 'Sent'),
(102, '424a1a1f-8f74-4bf1-bd4c-e92dc3c5df9a', 'load7@test.com', '2026-02-16 06:00:18', 'Sent'),
(103, 'ccc9aeb6-9283-479c-8346-81ef32b8a6ed', 'load8@test.com', '2026-02-16 06:00:18', 'Sent'),
(104, 'fdb5f477-a425-4dbe-9451-2df871c7d58c', 'load10@test.com', '2026-02-16 06:00:18', 'Sent'),
(105, '36975a5a-d13f-41c5-96e2-71e929d2ef54', 'load9@test.com', '2026-02-16 06:00:18', 'Sent'),
(106, '770d75d5-fcfd-44c7-818f-6787e5c9404c', 'load11@test.com', '2026-02-16 06:00:18', 'Sent'),
(107, 'ba2fe76e-ee95-4e8c-9ef9-ea875478e452', 'load13@test.com', '2026-02-16 06:00:18', 'Sent'),
(108, '44c74a18-b109-49dc-b059-a765b389f66d', 'load12@test.com', '2026-02-16 06:00:18', 'Sent'),
(109, 'f6d135cf-2932-4e7f-ba56-54a104e079d9', 'load16@test.com', '2026-02-16 06:00:18', 'Sent'),
(110, '8972fab2-9b3c-4cd0-8573-abe4d17bfbd0', 'load15@test.com', '2026-02-16 06:00:18', 'Sent'),
(111, '8829a31d-25e1-4301-90b5-0a0454d921a1', 'load14@test.com', '2026-02-16 06:00:18', 'Sent'),
(112, '83eb95b2-9449-4e3e-a2ce-6fa9affc8f75', 'load17@test.com', '2026-02-16 06:00:18', 'Sent'),
(113, '437f660f-3eee-4e3e-a4d6-b920d381d79e', 'load18@test.com', '2026-02-16 06:00:18', 'Sent'),
(114, '83a2d0a5-ecb3-462f-aa40-aad5f92709ff', 'load19@test.com', '2026-02-16 06:00:18', 'Sent'),
(115, 'fc5116b2-e5c8-48f2-9fb1-3f5c0df5162f', 'load21@test.com', '2026-02-16 06:00:18', 'Sent'),
(116, 'e0bd6f48-9dc1-40ee-ac4a-7736ef7f488c', 'load22@test.com', '2026-02-16 06:00:18', 'Sent'),
(117, '060d7dcc-cf98-43a9-8326-3bdf6716ee23', 'load23@test.com', '2026-02-16 06:00:18', 'Sent'),
(118, '93aeef34-c974-45b9-87f4-9dad642e03f9', 'load20@test.com', '2026-02-16 06:00:18', 'Sent'),
(119, '3b7c9798-0d61-4442-af97-78c3de03428d', 'load25@test.com', '2026-02-16 06:00:18', 'Sent'),
(120, 'a6d70fa7-065f-403b-999e-fec697993a14', 'load24@test.com', '2026-02-16 06:00:18', 'Sent'),
(121, '832ead3c-83bc-4370-89a7-ed4479780c4b', 'load26@test.com', '2026-02-16 06:00:18', 'Sent'),
(122, 'fa1af0b6-9b8f-4ba5-9414-e20228201b6b', 'load27@test.com', '2026-02-16 06:00:18', 'Sent'),
(123, '39dc2825-a529-4be6-a3e8-a1a820aeec94', 'load28@test.com', '2026-02-16 06:00:18', 'Sent'),
(124, '053cb61d-1a02-492d-a0a5-dc4cfeb4d359', 'load29@test.com', '2026-02-16 06:00:18', 'Sent'),
(125, '0654e701-bc2a-4d0b-8ce8-baee46ffd11f', 'load30@test.com', '2026-02-16 06:00:18', 'Sent'),
(126, '4abb3b7a-62ad-470a-ad14-72327a1232a4', 'load31@test.com', '2026-02-16 06:00:18', 'Sent'),
(127, '138bf18a-6b42-499b-a222-2948c4ca2d89', 'load34@test.com', '2026-02-16 06:00:18', 'Sent'),
(128, '3b4c957a-c6fe-48bd-a153-8b5fdcde15fa', 'load33@test.com', '2026-02-16 06:00:18', 'Sent'),
(129, '0852117b-46f8-4d48-a568-f9f348f9b1f4', 'load35@test.com', '2026-02-16 06:00:18', 'Sent'),
(130, 'b79b2e79-f475-4c5f-83dc-9c764a075ad7', 'load32@test.com', '2026-02-16 06:00:18', 'Sent'),
(131, '8f1dd8b2-604f-4cca-a626-4969c95e1020', 'load38@test.com', '2026-02-16 06:00:18', 'Sent'),
(132, 'ff06edc0-9ca8-4237-9421-4cc9c15928ed', 'load36@test.com', '2026-02-16 06:00:18', 'Sent'),
(133, '9bc465a5-c84a-44c3-999b-50087ebd6a37', 'load37@test.com', '2026-02-16 06:00:18', 'Sent'),
(134, 'e7ea65ce-5703-4972-bc94-741507200036', 'load40@test.com', '2026-02-16 06:00:18', 'Sent'),
(135, '427dd2ae-4cbb-439c-bb87-6b502ede8a6e', 'load39@test.com', '2026-02-16 06:00:18', 'Sent'),
(136, '05e4431c-66b3-481f-bb61-48863bea9500', 'load42@test.com', '2026-02-16 06:00:18', 'Sent'),
(137, 'b78c3841-2f67-4a33-81a0-7f33af3ccf7b', 'load41@test.com', '2026-02-16 06:00:18', 'Sent'),
(138, '7dfd5b06-3adb-4244-bb00-0ef149827164', 'load43@test.com', '2026-02-16 06:00:18', 'Sent'),
(139, '8ea9936f-c1da-48ec-946e-ba3679e5af9c', 'load44@test.com', '2026-02-16 06:00:18', 'Sent'),
(140, '0cda3885-f96d-4eb0-90f3-799751b4df28', 'load46@test.com', '2026-02-16 06:00:18', 'Sent'),
(141, '067e1bd7-a344-49fb-ab10-d2db5330fc28', 'load47@test.com', '2026-02-16 06:00:18', 'Sent'),
(142, '88371668-981b-44af-8cf4-fb5756077ab6', 'load45@test.com', '2026-02-16 06:00:18', 'Sent'),
(143, '6c3aa6df-27fd-4d8d-864a-badb33e66e6f', 'load48@test.com', '2026-02-16 06:00:19', 'Sent'),
(144, '3a1d08c8-c96e-4967-bd43-fefd0ac33fe7', 'load49@test.com', '2026-02-16 06:00:19', 'Sent'),
(145, 'd089403d-964a-4fa2-a830-f462c47ba0b4', 'hacker@evil.com', '2026-02-16 06:16:00', 'Sent'),
(146, '5c9d9c4b-76ed-44e9-8d97-a3eaf2b269fe', 'hacker@evil.com', '2026-02-16 06:19:11', 'Sent'),
(147, '1e575292-f0ac-4447-a329-f9ec253834e4', 'postman@test.com', '2026-02-16 07:39:17', 'Sent'),
(148, '0c6a6026-0af2-4e22-a740-46f107453e39', 'postman@test.com', '2026-02-16 07:42:39', 'Sent'),
(149, 'd2740cd2-3e89-4d35-98d4-592ccf9e58b7', 'postman@test.com', '2026-02-16 07:46:46', 'Sent'),
(150, '0aca38d7-8828-48f4-b52e-1405b7ec312b', 'postman@test.com', '2026-02-16 07:59:01', 'Sent'),
(151, 'e66a929e-7b79-4130-b3fa-47461152d2c7', 'postman@test.com', '2026-02-16 08:01:50', 'Sent'),
(152, '070f561c-af13-41a2-80d3-8daa5467c606', 'postman@test.com', '2026-02-16 08:01:59', 'Sent'),
(153, 'test-uuid-1234', 'test@example.com', '2026-02-16 08:35:39', 'Sent'),
(154, '188875a2-f56b-4e00-80fd-1892947b57f9', 'postman@test.com', '2026-02-16 08:43:05', 'Sent');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(50) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_email`, `status`, `total_amount`, `created_at`) VALUES
('02c886aa-972f-4866-b1a9-69c7442dc2e1', 'LoadUser_4', 'load4@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('053179b3-4482-4502-93cc-2e931b6d91a9', 'LoadUser_13', 'load13@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('053cb61d-1a02-492d-a0a5-dc4cfeb4d359', 'LoadUser_29', 'load29@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('05e4431c-66b3-481f-bb61-48863bea9500', 'LoadUser_42', 'load42@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('060d7dcc-cf98-43a9-8326-3bdf6716ee23', 'LoadUser_23', 'load23@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('0654e701-bc2a-4d0b-8ce8-baee46ffd11f', 'LoadUser_30', 'load30@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('067e1bd7-a344-49fb-ab10-d2db5330fc28', 'LoadUser_47', 'load47@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('06d33d89-6b82-48db-99fb-7122e312c96e', 'LoadUser_47', 'load47@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('070f561c-af13-41a2-80d3-8daa5467c606', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 08:01:57'),
('0852117b-46f8-4d48-a568-f9f348f9b1f4', 'LoadUser_35', 'load35@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('098e0f47-8ad9-4e25-b486-623d40f7d5a5', 'LoadUser_5', 'load5@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('0aca38d7-8828-48f4-b52e-1405b7ec312b', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 07:58:59'),
('0c6a6026-0af2-4e22-a740-46f107453e39', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 07:42:37'),
('0cda3885-f96d-4eb0-90f3-799751b4df28', 'LoadUser_46', 'load46@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('1265eecf-8e11-4bc7-9071-c2babec17730', 'LoadUser_19', 'load19@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('12d4296e-37e1-4687-8316-284e0b3be447', 'LoadUser_37', 'load37@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('12f06ad4-4c70-4454-abef-d1421b724be7', 'LoadUser_0', 'load0@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('138bf18a-6b42-499b-a222-2948c4ca2d89', 'LoadUser_34', 'load34@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('176c4a05-09b0-4ec8-b0ee-8970a5d03804', 'LoadUser_25', 'load25@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('179a0565-9eca-406d-8593-c76a64a75d44', 'Raveen', 'sandinu15@gmail.com', 'Confirmed', 35000, '2026-02-09 12:57:49'),
('18564d63-1e69-45d6-b6b3-95b8270e3c95', 'test2', 'test2@gmail.com', 'Confirmed', 271500, '2026-02-10 07:32:55'),
('188875a2-f56b-4e00-80fd-1892947b57f9', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 08:43:03'),
('198c077f-faee-4f65-90ee-d6207e4b5eb4', 'LoadUser_4', 'load4@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('1aa47a9d-d0e1-407c-912b-051a751dacec', 'LoadUser_21', 'load21@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('1c0e1fcd-2459-4b37-9301-29ec0b912bee', 'LoadUser_41', 'load41@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('1e575292-f0ac-4447-a329-f9ec253834e4', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 07:39:15'),
('1fc833d2-2a69-4c14-87a9-d9c7fd0b11c0', 'LoadUser_42', 'load42@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('26e959e1-b370-4eee-8a1b-fb64c02b282e', 'LoadUser_8', 'load8@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('2805d074-e855-48b5-9e3c-9c909952e462', 'Raveen', 'sandinu15@gmail.com', 'Confirmed', 575000, '2026-02-06 06:48:30'),
('2a523d90-1150-44da-bd54-347a57c449a2', 'LoadUser_23', 'load23@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('2a658cca-ab6f-4c75-b2a9-da315deb4716', 'LoadUser_15', 'load15@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('2ab6ffef-d311-474f-bd98-f2bac9d5c719', 'LoadUser_18', 'load18@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('2df06ad2-81b1-478f-9366-84a20a2a979f', 'LoadUser_5', 'load5@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('2df43dd5-3992-49dc-b17d-091831fa5749', 'LoadUser_12', 'load12@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('2ee8000b-07aa-44f4-9ce6-20d11f5f9217', 'sandinu', 'test@gmail.com', 'Confirmed', 345000, '2026-02-10 06:20:30'),
('30112771-fa43-4a9f-bbbc-ea2ae049729f', 'LoadUser_26', 'load26@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('317c1329-23ca-4595-ba4a-29ba4f7fc8e9', 'LoadUser_18', 'load18@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('3282fc5d-b251-46e8-9736-e4f2fcf69335', 'sandinu', 'test@gmail.com', 'Confirmed', 900, '2026-02-10 06:48:57'),
('36975a5a-d13f-41c5-96e2-71e929d2ef54', 'LoadUser_9', 'load9@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('37878b59-de23-42e9-8656-4a734a4777c2', 'test1', 'test@gmail.com', 'Confirmed', 387900, '2026-02-10 07:15:52'),
('39dc2825-a529-4be6-a3e8-a1a820aeec94', 'LoadUser_28', 'load28@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('3a1d08c8-c96e-4967-bd43-fefd0ac33fe7', 'LoadUser_49', 'load49@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('3b4c957a-c6fe-48bd-a153-8b5fdcde15fa', 'LoadUser_33', 'load33@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('3b7c9798-0d61-4442-af97-78c3de03428d', 'LoadUser_25', 'load25@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('3d99c2f7-53cc-44ea-86fa-78913523e5ce', 'LoadUser_19', 'load19@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('3eb84b54-50cd-44b7-9077-fca25ddf9814', 'Integration Tester 2de51c67', 'test@integration.com', 'Confirmed', 27500, '2026-02-16 04:37:48'),
('424a1a1f-8f74-4bf1-bd4c-e92dc3c5df9a', 'LoadUser_7', 'load7@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('427dd2ae-4cbb-439c-bb87-6b502ede8a6e', 'LoadUser_39', 'load39@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('43439c11-a629-49c8-b925-15f8a41992af', 'Raveen', 'sandinu15@gmail.com', 'Confirmed', 10500, '2026-02-09 08:36:26'),
('437f660f-3eee-4e3e-a4d6-b920d381d79e', 'LoadUser_18', 'load18@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('44c70f66-406b-4e28-b97c-763a8a484280', 'LoadUser_48', 'load48@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('44c74a18-b109-49dc-b059-a765b389f66d', 'LoadUser_12', 'load12@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('46544f37-ad02-4c6c-b70c-058cff854449', 'LoadUser_7', 'load7@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('47c2a7d7-c3c9-47dd-b65f-dc811346f9a5', 'LoadUser_6', 'load6@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('493e9265-2019-4a9d-9ed5-4945f9ce41f3', 'LoadUser_28', 'load28@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('4a3317e3-3c16-4f81-845a-8a9775d2b2de', 'LoadUser_40', 'load40@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('4abb3b7a-62ad-470a-ad14-72327a1232a4', 'LoadUser_31', 'load31@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('4bcd3d91-621b-48e7-8383-ac51e2b82b73', 'LoadUser_1', 'load1@test.com', 'Confirmed', 115000, '2026-02-16 05:54:25'),
('4f38e00a-3294-4a4f-b5a5-602153dff754', 'LoadUser_10', 'load10@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('51f4f2f0-4d34-4565-912c-7771c45d1368', 'LoadUser_9', 'load9@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('56e23e18-86a2-4819-a7a2-feb5fc4ba741', 'LoadUser_16', 'load16@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('5c9d9c4b-76ed-44e9-8d97-a3eaf2b269fe', 'Hacker\' OR \'1\'=\'1', 'hacker@evil.com', 'Confirmed', 25000, '2026-02-16 06:19:09'),
('5f76703e-d998-43c8-822e-3a4cc1bb1f97', 'LoadUser_35', 'load35@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('648f31cb-c730-4d65-a74c-dbb7f2be997f', 'LoadUser_12', 'load12@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('6bc67f21-ba4b-43da-8b77-e96b881b0762', 'Raveen', 'test@gmail.com', 'Confirmed', 26000, '2026-02-16 04:58:05'),
('6c162813-a69d-4f51-85cf-ec8f7cc9bb7f', 'LoadUser_9', 'load9@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('6c3aa6df-27fd-4d8d-864a-badb33e66e6f', 'LoadUser_48', 'load48@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('770d75d5-fcfd-44c7-818f-6787e5c9404c', 'LoadUser_11', 'load11@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('77dc9f33-ab17-4342-abec-19588a671c26', 'LoadUser_13', 'load13@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('7876cfb5-bbfb-41da-94f6-de0028f7051a', 'IntegrityTester_6fa021', 'integrity@test.com', 'Confirmed', 27500, '2026-02-16 04:28:53'),
('79c4cda0-67d1-4946-841c-cc1adc3c7f19', 'LoadUser_32', 'load32@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('7dc775ac-42b5-4d6c-b976-76b225233f27', 'Raveen', 'sandinu15@gmail.com', 'Confirmed', 460000, '2026-02-06 06:34:38'),
('7dfd5b06-3adb-4244-bb00-0ef149827164', 'LoadUser_43', 'load43@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('7f7f94bb-c355-4704-b29a-98099f3401d5', 'John Doe', 'john@example.com', 'Confirmed', 26500, '2026-02-13 04:11:50'),
('800802f4-71dc-46f1-bc03-edc8f8e1e10b', 'LoadUser_10', 'load10@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('82f0826a-9728-4af6-9d55-5d2f51c4d983', 'LoadUser_6', 'load6@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('832ead3c-83bc-4370-89a7-ed4479780c4b', 'LoadUser_26', 'load26@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('83a2d0a5-ecb3-462f-aa40-aad5f92709ff', 'LoadUser_19', 'load19@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('83eb95b2-9449-4e3e-a2ce-6fa9affc8f75', 'LoadUser_17', 'load17@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('843c9a14-1ce9-4486-ad9e-2223bf5f4724', 'LoadUser_14', 'load14@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('8446666b-addd-48c7-ba02-3480f002030d', 'LoadUser_31', 'load31@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('859e9264-485d-47ba-a793-f6a61d471841', 'LoadUser_16', 'load16@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('85ae51a5-78a7-48be-b3c4-616263c7333f', 'Sandinu ', 'raveenaberdeera@gmail.com', 'Confirmed', 230000, '2026-02-10 05:17:33'),
('85e4113c-cf7f-4f32-ab21-de2f216063fc', 'sandinu', 'test@gmail.com', 'Confirmed', 2400, '2026-02-10 06:49:08'),
('85e9107d-4b38-47bd-9d07-3b88d34009d9', 'LoadUser_30', 'load30@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('86627a71-cdb1-4d98-ad38-2e78f2e0ec22', 'John Doe', 'john@example.com', 'Confirmed', 26500, '2026-02-13 05:30:13'),
('8829a31d-25e1-4301-90b5-0a0454d921a1', 'LoadUser_14', 'load14@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('88371668-981b-44af-8cf4-fb5756077ab6', 'LoadUser_45', 'load45@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('8972fab2-9b3c-4cd0-8573-abe4d17bfbd0', 'LoadUser_15', 'load15@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('8ae1a01a-738c-40d8-9ef6-a37f72c82a11', 'LoadUser_11', 'load11@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('8d9ec5e9-2215-4083-8ca5-ed0e8108cbc3', 'LoadUser_24', 'load24@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('8ea9936f-c1da-48ec-946e-ba3679e5af9c', 'LoadUser_44', 'load44@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('8f1dd8b2-604f-4cca-a626-4969c95e1020', 'LoadUser_38', 'load38@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('92722fee-e39b-416a-9bde-bf5cc80e93f0', 'LoadUser_20', 'load20@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('93aeef34-c974-45b9-87f4-9dad642e03f9', 'LoadUser_20', 'load20@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('945ebc46-e0fb-4d57-b134-b20c76912422', 'LoadUser_46', 'load46@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('954f582c-e799-415a-b0a4-62c742af3ef2', 'LoadUser_0', 'load0@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('97bf237c-021a-45a5-9da7-14abfc0cda00', 'LoadUser_36', 'load36@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('980ff31e-5539-4880-86ad-87cbea0508e6', 'LoadUser_49', 'load49@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('998b2639-8163-442a-95fb-6ab009dec70a', 'LoadUser_6', 'load6@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('9bc465a5-c84a-44c3-999b-50087ebd6a37', 'LoadUser_37', 'load37@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('9d5a9f8e-b81e-4feb-ad19-0bc59a2b5b82', 'LoadUser_4', 'load4@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('a549462f-81c5-409a-8ba5-8e2a499fcc60', 'Postman Tester', 'test@example.com', 'Confirmed', 26500, '2026-02-10 08:55:02'),
('a6d70fa7-065f-403b-999e-fec697993a14', 'LoadUser_24', 'load24@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('a70c726f-d35d-4eb9-91c4-0417a4e506c8', 'LoadUser_29', 'load29@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('af0cf307-9069-430b-a37b-450dc910de2c', 'LoadUser_14', 'load14@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('af3a36c7-8680-47d3-8055-e53cb25145c8', 'Integration Tester ca53b706', 'test@integration.com', 'Confirmed', 26500, '2026-02-16 04:20:59'),
('b3f67e5a-b1df-4dda-b28e-c00e3c775630', 'LoadUser_17', 'load17@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('b78c3841-2f67-4a33-81a0-7f33af3ccf7b', 'LoadUser_41', 'load41@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('b79b2e79-f475-4c5f-83dc-9c764a075ad7', 'LoadUser_32', 'load32@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('b88eca44-971b-45a4-8158-ed33c4065edd', 'LoadUser_5', 'load5@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('ba2fe76e-ee95-4e8c-9ef9-ea875478e452', 'LoadUser_13', 'load13@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('c30d2af5-09ae-4fa1-bf20-359b183b1524', 'LoadUser_15', 'load15@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('c790fa15-1ddf-4d83-b7e2-9573caaf0ab8', 'LoadUser_3', 'load3@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('c8b41e65-eca1-4ddb-9766-745ab481af1b', 'LoadUser_33', 'load33@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('ca19fed7-4ee7-416b-b3b5-c67ee7e22525', 'LoadUser_38', 'load38@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('ca61fe04-5151-483b-8a7e-05e26df41a75', 'LoadUser_2', 'load2@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('cadaa04e-30f0-4224-8c59-3ede15f99cba', 'LoadUser_43', 'load43@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('ccc9aeb6-9283-479c-8346-81ef32b8a6ed', 'LoadUser_8', 'load8@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('cd5cacfc-2d13-4405-bf1b-484dbfae6528', 'Debug', 'debug@test.com', 'Confirmed', 26000, '2026-02-16 05:48:24'),
('cf94a2a7-48a6-4b49-9625-9115e49afa4a', 'LoadUser_45', 'load45@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('d05cf552-1d89-4694-a21f-711a0ebca567', 'LoadUser_1', 'load1@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('d089403d-964a-4fa2-a830-f462c47ba0b4', 'Hacker\' OR \'1\'=\'1', 'hacker@evil.com', 'Confirmed', 25000, '2026-02-16 06:15:58'),
('d1b58468-0f59-4849-9e51-4796a9a4532f', 'LoadUser_2', 'load2@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('d23f5506-5718-42d6-ad0d-ecd25573112a', 'LoadUser_1', 'load1@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('d2740cd2-3e89-4d35-98d4-592ccf9e58b7', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 07:46:44'),
('d8530b63-8765-4cb2-9619-8f68500d77ab', 'LoadUser_34', 'load34@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('dacbee62-7643-44a6-bf4f-88b41164229c', 'LoadUser_39', 'load39@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('e0bd6f48-9dc1-40ee-ac4a-7736ef7f488c', 'LoadUser_22', 'load22@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('e4d71b6f-9402-451f-930b-d32becc5c63d', 'Raveen', 'sandinu15@gmail.com', 'Confirmed', 350000, '2026-02-09 12:55:17'),
('e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'test1', 'test@gmail.com', 'Confirmed', 370900, '2026-02-10 06:55:14'),
('e66a929e-7b79-4130-b3fa-47461152d2c7', 'Postman Tester', 'postman@test.com', 'Confirmed', 140000, '2026-02-16 08:01:48'),
('e7ea65ce-5703-4972-bc94-741507200036', 'LoadUser_40', 'load40@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('e8fbe57a-e86c-418e-ba0f-20b5e3ddc735', 'Integration Tester 92f46744', 'test@integration.com', 'Confirmed', 26500, '2026-02-16 03:57:36'),
('e90bb0c9-3ab2-4dbb-b549-b3d59356937b', 'LoadUser_3', 'load3@test.com', 'Confirmed', 120000, '2026-02-16 05:26:32'),
('ea8a288d-6876-485e-a597-a5d25658994e', 'LoadUser_27', 'load27@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('eb71bd5f-6181-40bd-b6e2-f5fffe72e53e', 'LoadUser_22', 'load22@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('eba15592-b2fd-4f19-9ff1-e3aea4f9cec3', 'LoadUser_2', 'load2@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('f052f964-1660-4903-a8f3-48a310324538', 'LoadUser_11', 'load11@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('f1829c1f-adee-46f6-aefb-da839b80f4f7', 'Integration Tester 993ea0ee', 'test@integration.com', 'Confirmed', 27500, '2026-02-16 04:49:41'),
('f5eb38bb-f19e-4e36-93e8-0cdbd8229939', 'LoadUser_7', 'load7@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('f6d135cf-2932-4e7f-ba56-54a104e079d9', 'LoadUser_16', 'load16@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('f925f35b-b3c9-4f2b-bcc9-a83d55745f25', 'LoadUser_17', 'load17@test.com', 'Confirmed', 120000, '2026-02-16 05:26:33'),
('f9b9fe20-09b1-44a4-89da-27c4ffddb410', 'LoadUser_3', 'load3@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('f9d0c152-0c02-4e87-91bc-5afe74a3fe48', 'IntegrityTester_523d2a', 'integrity@test.com', 'Confirmed', 27500, '2026-02-16 04:49:41'),
('fa1af0b6-9b8f-4ba5-9414-e20228201b6b', 'LoadUser_27', 'load27@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('fa85ca09-ddef-4916-bc3b-bbbeb9762f44', 'LoadUser_0', 'load0@test.com', 'Confirmed', 115000, '2026-02-16 05:54:25'),
('fc5116b2-e5c8-48f2-9fb1-3f5c0df5162f', 'LoadUser_21', 'load21@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('fdb5f477-a425-4dbe-9451-2df871c7d58c', 'LoadUser_10', 'load10@test.com', 'Confirmed', 115000, '2026-02-16 06:00:15'),
('fde963f7-2797-47a2-b77b-27c7fd0e5343', 'LoadUser_44', 'load44@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26'),
('ff06edc0-9ca8-4237-9421-4cc9c15928ed', 'LoadUser_36', 'load36@test.com', 'Confirmed', 115000, '2026-02-16 06:00:16'),
('ff6eabc9-734e-47c8-8274-056b7b6f78dd', 'LoadUser_8', 'load8@test.com', 'Confirmed', 115000, '2026-02-16 05:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `distributor_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `distributor_name`) VALUES
(1, '7dc775ac-42b5-4d6c-b976-76b225233f27', 'p3', 1, 115000, 'GadgetCentral'),
(2, '7dc775ac-42b5-4d6c-b976-76b225233f27', 'p3', 1, 115000, 'GadgetCentral'),
(3, '7dc775ac-42b5-4d6c-b976-76b225233f27', 'p3', 1, 115000, 'GadgetCentral'),
(4, '7dc775ac-42b5-4d6c-b976-76b225233f27', 'p3', 1, 115000, 'GadgetCentral'),
(5, '2805d074-e855-48b5-9e3c-9c909952e462', 'p3', 1, 115000, 'GadgetCentral'),
(6, '2805d074-e855-48b5-9e3c-9c909952e462', 'p3', 1, 115000, 'GadgetCentral'),
(7, '2805d074-e855-48b5-9e3c-9c909952e462', 'p3', 1, 115000, 'GadgetCentral'),
(8, '2805d074-e855-48b5-9e3c-9c909952e462', 'p3', 1, 115000, 'GadgetCentral'),
(9, '2805d074-e855-48b5-9e3c-9c909952e462', 'p3', 1, 115000, 'GadgetCentral'),
(10, '43439c11-a629-49c8-b925-15f8a41992af', 'p6', 1, 3500, 'ElectroCom'),
(11, '43439c11-a629-49c8-b925-15f8a41992af', 'p6', 1, 3500, 'ElectroCom'),
(12, '43439c11-a629-49c8-b925-15f8a41992af', 'p6', 1, 3500, 'ElectroCom'),
(13, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(14, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(15, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(16, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(17, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(18, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(19, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(20, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(21, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(22, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(23, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(24, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(25, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(26, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(27, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(28, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(29, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(30, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(31, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(32, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(33, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(34, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(35, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(36, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(37, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(38, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(39, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(40, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(41, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(42, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(43, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(44, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(45, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(46, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(47, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(48, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(49, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(50, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(51, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(52, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(53, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(54, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(55, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(56, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(57, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(58, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(59, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(60, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(61, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(62, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(63, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(64, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(65, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(66, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(67, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(68, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(69, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(70, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(71, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(72, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(73, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(74, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(75, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(76, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(77, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(78, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(79, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(80, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(81, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(82, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(83, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(84, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(85, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(86, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(87, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(88, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(89, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(90, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(91, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(92, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(93, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(94, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(95, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(96, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(97, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(98, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(99, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(100, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(101, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(102, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(103, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(104, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(105, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(106, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(107, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(108, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(109, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(110, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(111, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(112, 'e4d71b6f-9402-451f-930b-d32becc5c63d', 'p6', 1, 3500, 'ElectroCom'),
(113, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(114, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(115, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(116, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(117, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(118, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(119, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(120, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(121, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(122, '179a0565-9eca-406d-8593-c76a64a75d44', 'p6', 1, 3500, 'ElectroCom'),
(123, '85ae51a5-78a7-48be-b3c4-616263c7333f', 'p3', 1, 115000, 'GadgetCentral'),
(124, '85ae51a5-78a7-48be-b3c4-616263c7333f', 'p3', 1, 115000, 'GadgetCentral'),
(125, '2ee8000b-07aa-44f4-9ce6-20d11f5f9217', 'p3', 1, 115000, 'GadgetCentral'),
(126, '2ee8000b-07aa-44f4-9ce6-20d11f5f9217', 'p3', 1, 115000, 'GadgetCentral'),
(127, '2ee8000b-07aa-44f4-9ce6-20d11f5f9217', 'p3', 1, 115000, 'GadgetCentral'),
(128, '3282fc5d-b251-46e8-9736-e4f2fcf69335', 'p14', 1, 450, 'GadgetCentral'),
(129, '3282fc5d-b251-46e8-9736-e4f2fcf69335', 'p14', 1, 450, 'GadgetCentral'),
(130, '85e4113c-cf7f-4f32-ab21-de2f216063fc', 'p7', 1, 1200, 'ElectroCom'),
(131, '85e4113c-cf7f-4f32-ab21-de2f216063fc', 'p7', 1, 1200, 'ElectroCom'),
(132, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'p1', 1, 25000, 'TechWorld'),
(133, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'p3', 1, 115000, 'GadgetCentral'),
(134, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'p3', 1, 115000, 'GadgetCentral'),
(135, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'p3', 1, 115000, 'GadgetCentral'),
(136, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'p14', 1, 450, 'GadgetCentral'),
(137, 'e61e9f0e-f337-4e62-830c-fafbeb4218c9', 'p14', 1, 450, 'GadgetCentral'),
(138, '37878b59-de23-42e9-8656-4a734a4777c2', 'p1', 1, 25000, 'TechWorld'),
(139, '37878b59-de23-42e9-8656-4a734a4777c2', 'p3', 3, 115000, 'GadgetCentral'),
(140, '37878b59-de23-42e9-8656-4a734a4777c2', 'p14', 2, 450, 'GadgetCentral'),
(141, '37878b59-de23-42e9-8656-4a734a4777c2', 'p19', 2, 8500, 'ElectroCom'),
(144, '18564d63-1e69-45d6-b6b3-95b8270e3c95', 'p1', 1, 25000, 'TechWorld'),
(145, '18564d63-1e69-45d6-b6b3-95b8270e3c95', 'p3', 2, 115000, 'GadgetCentral'),
(146, '18564d63-1e69-45d6-b6b3-95b8270e3c95', 'p8', 3, 2500, 'GadgetCentral'),
(147, '18564d63-1e69-45d6-b6b3-95b8270e3c95', 'p13', 2, 4500, 'TechWorld'),
(148, 'a549462f-81c5-409a-8ba5-8e2a499fcc60', 'p1', 1, 25000, 'TechWorld'),
(149, 'a549462f-81c5-409a-8ba5-8e2a499fcc60', 'p2', 1, 1500, 'TechWorld'),
(150, '7f7f94bb-c355-4704-b29a-98099f3401d5', 'p1', 1, 25000, 'TechWorld'),
(151, '7f7f94bb-c355-4704-b29a-98099f3401d5', 'p2', 1, 1500, 'TechWorld'),
(152, '86627a71-cdb1-4d98-ad38-2e78f2e0ec22', 'p1', 1, 25000, 'TechWorld'),
(153, '86627a71-cdb1-4d98-ad38-2e78f2e0ec22', 'p2', 1, 1500, 'TechWorld'),
(154, 'e8fbe57a-e86c-418e-ba0f-20b5e3ddc735', 'p1', 1, 25000, 'TechWorld'),
(155, 'e8fbe57a-e86c-418e-ba0f-20b5e3ddc735', 'p2', 1, 1500, 'TechWorld'),
(156, 'af3a36c7-8680-47d3-8055-e53cb25145c8', 'p1', 1, 25000, 'TechWorld'),
(157, 'af3a36c7-8680-47d3-8055-e53cb25145c8', 'p2', 1, 1500, 'TechWorld'),
(158, '7876cfb5-bbfb-41da-94f6-de0028f7051a', 'p1', 1, 26000, 'ElectroCom'),
(159, '7876cfb5-bbfb-41da-94f6-de0028f7051a', 'p2', 1, 1500, 'TechWorld'),
(160, '3eb84b54-50cd-44b7-9077-fca25ddf9814', 'p1', 1, 26000, 'ElectroCom'),
(161, '3eb84b54-50cd-44b7-9077-fca25ddf9814', 'p2', 1, 1500, 'TechWorld'),
(162, 'f1829c1f-adee-46f6-aefb-da839b80f4f7', 'p1', 1, 26000, 'ElectroCom'),
(163, 'f1829c1f-adee-46f6-aefb-da839b80f4f7', 'p2', 1, 1500, 'TechWorld'),
(164, 'f9d0c152-0c02-4e87-91bc-5afe74a3fe48', 'p1', 1, 26000, 'ElectroCom'),
(165, 'f9d0c152-0c02-4e87-91bc-5afe74a3fe48', 'p2', 1, 1500, 'TechWorld'),
(166, '6bc67f21-ba4b-43da-8b77-e96b881b0762', 'p1', 1, 26000, 'ElectroCom'),
(167, '12f06ad4-4c70-4454-abef-d1421b724be7', 'p3', 1, 120000, 'TechWorld'),
(168, 'ca61fe04-5151-483b-8a7e-05e26df41a75', 'p3', 1, 120000, 'TechWorld'),
(169, 'd05cf552-1d89-4694-a21f-711a0ebca567', 'p3', 1, 120000, 'TechWorld'),
(170, 'e90bb0c9-3ab2-4dbb-b549-b3d59356937b', 'p3', 1, 120000, 'TechWorld'),
(171, '2df06ad2-81b1-478f-9366-84a20a2a979f', 'p3', 1, 120000, 'TechWorld'),
(172, '46544f37-ad02-4c6c-b70c-058cff854449', 'p3', 1, 120000, 'TechWorld'),
(173, '9d5a9f8e-b81e-4feb-ad19-0bc59a2b5b82', 'p3', 1, 120000, 'TechWorld'),
(174, '47c2a7d7-c3c9-47dd-b65f-dc811346f9a5', 'p3', 1, 120000, 'TechWorld'),
(175, '26e959e1-b370-4eee-8a1b-fb64c02b282e', 'p3', 1, 120000, 'TechWorld'),
(176, '51f4f2f0-4d34-4565-912c-7771c45d1368', 'p3', 1, 120000, 'TechWorld'),
(177, '053179b3-4482-4502-93cc-2e931b6d91a9', 'p3', 1, 120000, 'TechWorld'),
(178, 'f052f964-1660-4903-a8f3-48a310324538', 'p3', 1, 120000, 'TechWorld'),
(179, '800802f4-71dc-46f1-bc03-edc8f8e1e10b', 'p3', 1, 120000, 'TechWorld'),
(180, '2df43dd5-3992-49dc-b17d-091831fa5749', 'p3', 1, 120000, 'TechWorld'),
(181, '843c9a14-1ce9-4486-ad9e-2223bf5f4724', 'p3', 1, 120000, 'TechWorld'),
(182, '56e23e18-86a2-4819-a7a2-feb5fc4ba741', 'p3', 1, 120000, 'TechWorld'),
(183, 'c30d2af5-09ae-4fa1-bf20-359b183b1524', 'p3', 1, 120000, 'TechWorld'),
(184, 'f925f35b-b3c9-4f2b-bcc9-a83d55745f25', 'p3', 1, 120000, 'TechWorld'),
(185, '2ab6ffef-d311-474f-bd98-f2bac9d5c719', 'p3', 1, 120000, 'TechWorld'),
(186, '3d99c2f7-53cc-44ea-86fa-78913523e5ce', 'p3', 1, 120000, 'TechWorld'),
(187, 'cd5cacfc-2d13-4405-bf1b-484dbfae6528', 'p1', 1, 26000, 'ElectroCom'),
(188, 'fa85ca09-ddef-4916-bc3b-bbbeb9762f44', 'p3', 1, 115000, 'GadgetCentral'),
(189, '4bcd3d91-621b-48e7-8383-ac51e2b82b73', 'p3', 1, 115000, 'GadgetCentral'),
(190, 'd1b58468-0f59-4849-9e51-4796a9a4532f', 'p3', 1, 115000, 'GadgetCentral'),
(191, 'c790fa15-1ddf-4d83-b7e2-9573caaf0ab8', 'p3', 1, 115000, 'GadgetCentral'),
(192, '198c077f-faee-4f65-90ee-d6207e4b5eb4', 'p3', 1, 115000, 'GadgetCentral'),
(193, 'b88eca44-971b-45a4-8158-ed33c4065edd', 'p3', 1, 115000, 'GadgetCentral'),
(194, 'ff6eabc9-734e-47c8-8274-056b7b6f78dd', 'p3', 1, 115000, 'GadgetCentral'),
(195, 'f5eb38bb-f19e-4e36-93e8-0cdbd8229939', 'p3', 1, 115000, 'GadgetCentral'),
(196, '998b2639-8163-442a-95fb-6ab009dec70a', 'p3', 1, 115000, 'GadgetCentral'),
(197, '6c162813-a69d-4f51-85cf-ec8f7cc9bb7f', 'p3', 1, 115000, 'GadgetCentral'),
(198, '4f38e00a-3294-4a4f-b5a5-602153dff754', 'p3', 1, 115000, 'GadgetCentral'),
(199, '8ae1a01a-738c-40d8-9ef6-a37f72c82a11', 'p3', 1, 115000, 'GadgetCentral'),
(200, '648f31cb-c730-4d65-a74c-dbb7f2be997f', 'p3', 1, 115000, 'GadgetCentral'),
(201, '77dc9f33-ab17-4342-abec-19588a671c26', 'p3', 1, 115000, 'GadgetCentral'),
(202, 'af0cf307-9069-430b-a37b-450dc910de2c', 'p3', 1, 115000, 'GadgetCentral'),
(203, '2a658cca-ab6f-4c75-b2a9-da315deb4716', 'p3', 1, 115000, 'GadgetCentral'),
(204, 'b3f67e5a-b1df-4dda-b28e-c00e3c775630', 'p3', 1, 115000, 'GadgetCentral'),
(205, '859e9264-485d-47ba-a793-f6a61d471841', 'p3', 1, 115000, 'GadgetCentral'),
(206, '1265eecf-8e11-4bc7-9071-c2babec17730', 'p3', 1, 115000, 'GadgetCentral'),
(207, '317c1329-23ca-4595-ba4a-29ba4f7fc8e9', 'p3', 1, 115000, 'GadgetCentral'),
(208, '1aa47a9d-d0e1-407c-912b-051a751dacec', 'p3', 1, 115000, 'GadgetCentral'),
(209, '92722fee-e39b-416a-9bde-bf5cc80e93f0', 'p3', 1, 115000, 'GadgetCentral'),
(210, 'eb71bd5f-6181-40bd-b6e2-f5fffe72e53e', 'p3', 1, 115000, 'GadgetCentral'),
(211, '2a523d90-1150-44da-bd54-347a57c449a2', 'p3', 1, 115000, 'GadgetCentral'),
(212, '8d9ec5e9-2215-4083-8ca5-ed0e8108cbc3', 'p3', 1, 115000, 'GadgetCentral'),
(213, '176c4a05-09b0-4ec8-b0ee-8970a5d03804', 'p3', 1, 115000, 'GadgetCentral'),
(214, '30112771-fa43-4a9f-bbbc-ea2ae049729f', 'p3', 1, 115000, 'GadgetCentral'),
(215, '493e9265-2019-4a9d-9ed5-4945f9ce41f3', 'p3', 1, 115000, 'GadgetCentral'),
(216, 'ea8a288d-6876-485e-a597-a5d25658994e', 'p3', 1, 115000, 'GadgetCentral'),
(217, 'a70c726f-d35d-4eb9-91c4-0417a4e506c8', 'p3', 1, 115000, 'GadgetCentral'),
(218, '85e9107d-4b38-47bd-9d07-3b88d34009d9', 'p3', 1, 115000, 'GadgetCentral'),
(219, '8446666b-addd-48c7-ba02-3480f002030d', 'p3', 1, 115000, 'GadgetCentral'),
(220, '79c4cda0-67d1-4946-841c-cc1adc3c7f19', 'p3', 1, 115000, 'GadgetCentral'),
(221, 'c8b41e65-eca1-4ddb-9766-745ab481af1b', 'p3', 1, 115000, 'GadgetCentral'),
(222, 'd8530b63-8765-4cb2-9619-8f68500d77ab', 'p3', 1, 115000, 'GadgetCentral'),
(223, '5f76703e-d998-43c8-822e-3a4cc1bb1f97', 'p3', 1, 115000, 'GadgetCentral'),
(224, '97bf237c-021a-45a5-9da7-14abfc0cda00', 'p3', 1, 115000, 'GadgetCentral'),
(225, '12d4296e-37e1-4687-8316-284e0b3be447', 'p3', 1, 115000, 'GadgetCentral'),
(226, 'ca19fed7-4ee7-416b-b3b5-c67ee7e22525', 'p3', 1, 115000, 'GadgetCentral'),
(227, 'dacbee62-7643-44a6-bf4f-88b41164229c', 'p3', 1, 115000, 'GadgetCentral'),
(228, '1c0e1fcd-2459-4b37-9301-29ec0b912bee', 'p3', 1, 115000, 'GadgetCentral'),
(229, '4a3317e3-3c16-4f81-845a-8a9775d2b2de', 'p3', 1, 115000, 'GadgetCentral'),
(230, 'cadaa04e-30f0-4224-8c59-3ede15f99cba', 'p3', 1, 115000, 'GadgetCentral'),
(231, 'cf94a2a7-48a6-4b49-9625-9115e49afa4a', 'p3', 1, 115000, 'GadgetCentral'),
(232, '1fc833d2-2a69-4c14-87a9-d9c7fd0b11c0', 'p3', 1, 115000, 'GadgetCentral'),
(233, 'fde963f7-2797-47a2-b77b-27c7fd0e5343', 'p3', 1, 115000, 'GadgetCentral'),
(234, '945ebc46-e0fb-4d57-b134-b20c76912422', 'p3', 1, 115000, 'GadgetCentral'),
(235, '06d33d89-6b82-48db-99fb-7122e312c96e', 'p3', 1, 115000, 'GadgetCentral'),
(236, '44c70f66-406b-4e28-b97c-763a8a484280', 'p3', 1, 115000, 'GadgetCentral'),
(237, '980ff31e-5539-4880-86ad-87cbea0508e6', 'p3', 1, 115000, 'GadgetCentral'),
(238, 'eba15592-b2fd-4f19-9ff1-e3aea4f9cec3', 'p3', 1, 115000, 'GadgetCentral'),
(239, 'd23f5506-5718-42d6-ad0d-ecd25573112a', 'p3', 1, 115000, 'GadgetCentral'),
(240, '954f582c-e799-415a-b0a4-62c742af3ef2', 'p3', 1, 115000, 'GadgetCentral'),
(241, 'f9b9fe20-09b1-44a4-89da-27c4ffddb410', 'p3', 1, 115000, 'GadgetCentral'),
(242, '82f0826a-9728-4af6-9d55-5d2f51c4d983', 'p3', 1, 115000, 'GadgetCentral'),
(243, '02c886aa-972f-4866-b1a9-69c7442dc2e1', 'p3', 1, 115000, 'GadgetCentral'),
(244, '098e0f47-8ad9-4e25-b486-623d40f7d5a5', 'p3', 1, 115000, 'GadgetCentral'),
(245, '424a1a1f-8f74-4bf1-bd4c-e92dc3c5df9a', 'p3', 1, 115000, 'GadgetCentral'),
(246, 'ccc9aeb6-9283-479c-8346-81ef32b8a6ed', 'p3', 1, 115000, 'GadgetCentral'),
(247, 'fdb5f477-a425-4dbe-9451-2df871c7d58c', 'p3', 1, 115000, 'GadgetCentral'),
(248, '36975a5a-d13f-41c5-96e2-71e929d2ef54', 'p3', 1, 115000, 'GadgetCentral'),
(249, '770d75d5-fcfd-44c7-818f-6787e5c9404c', 'p3', 1, 115000, 'GadgetCentral'),
(250, '44c74a18-b109-49dc-b059-a765b389f66d', 'p3', 1, 115000, 'GadgetCentral'),
(251, 'ba2fe76e-ee95-4e8c-9ef9-ea875478e452', 'p3', 1, 115000, 'GadgetCentral'),
(252, 'f6d135cf-2932-4e7f-ba56-54a104e079d9', 'p3', 1, 115000, 'GadgetCentral'),
(253, '8972fab2-9b3c-4cd0-8573-abe4d17bfbd0', 'p3', 1, 115000, 'GadgetCentral'),
(254, '83eb95b2-9449-4e3e-a2ce-6fa9affc8f75', 'p3', 1, 115000, 'GadgetCentral'),
(255, '8829a31d-25e1-4301-90b5-0a0454d921a1', 'p3', 1, 115000, 'GadgetCentral'),
(256, '83a2d0a5-ecb3-462f-aa40-aad5f92709ff', 'p3', 1, 115000, 'GadgetCentral'),
(257, '437f660f-3eee-4e3e-a4d6-b920d381d79e', 'p3', 1, 115000, 'GadgetCentral'),
(258, 'fc5116b2-e5c8-48f2-9fb1-3f5c0df5162f', 'p3', 1, 115000, 'GadgetCentral'),
(259, 'e0bd6f48-9dc1-40ee-ac4a-7736ef7f488c', 'p3', 1, 115000, 'GadgetCentral'),
(260, '060d7dcc-cf98-43a9-8326-3bdf6716ee23', 'p3', 1, 115000, 'GadgetCentral'),
(261, '93aeef34-c974-45b9-87f4-9dad642e03f9', 'p3', 1, 115000, 'GadgetCentral'),
(262, 'a6d70fa7-065f-403b-999e-fec697993a14', 'p3', 1, 115000, 'GadgetCentral'),
(263, '832ead3c-83bc-4370-89a7-ed4479780c4b', 'p3', 1, 115000, 'GadgetCentral'),
(264, '3b7c9798-0d61-4442-af97-78c3de03428d', 'p3', 1, 115000, 'GadgetCentral'),
(265, '39dc2825-a529-4be6-a3e8-a1a820aeec94', 'p3', 1, 115000, 'GadgetCentral'),
(266, 'fa1af0b6-9b8f-4ba5-9414-e20228201b6b', 'p3', 1, 115000, 'GadgetCentral'),
(267, '053cb61d-1a02-492d-a0a5-dc4cfeb4d359', 'p3', 1, 115000, 'GadgetCentral'),
(268, '0654e701-bc2a-4d0b-8ce8-baee46ffd11f', 'p3', 1, 115000, 'GadgetCentral'),
(269, '4abb3b7a-62ad-470a-ad14-72327a1232a4', 'p3', 1, 115000, 'GadgetCentral'),
(270, '138bf18a-6b42-499b-a222-2948c4ca2d89', 'p3', 1, 115000, 'GadgetCentral'),
(271, '3b4c957a-c6fe-48bd-a153-8b5fdcde15fa', 'p3', 1, 115000, 'GadgetCentral'),
(272, 'b79b2e79-f475-4c5f-83dc-9c764a075ad7', 'p3', 1, 115000, 'GadgetCentral'),
(273, '0852117b-46f8-4d48-a568-f9f348f9b1f4', 'p3', 1, 115000, 'GadgetCentral'),
(274, 'ff06edc0-9ca8-4237-9421-4cc9c15928ed', 'p3', 1, 115000, 'GadgetCentral'),
(275, '8f1dd8b2-604f-4cca-a626-4969c95e1020', 'p3', 1, 115000, 'GadgetCentral'),
(276, '9bc465a5-c84a-44c3-999b-50087ebd6a37', 'p3', 1, 115000, 'GadgetCentral'),
(277, 'e7ea65ce-5703-4972-bc94-741507200036', 'p3', 1, 115000, 'GadgetCentral'),
(278, '427dd2ae-4cbb-439c-bb87-6b502ede8a6e', 'p3', 1, 115000, 'GadgetCentral'),
(279, 'b78c3841-2f67-4a33-81a0-7f33af3ccf7b', 'p3', 1, 115000, 'GadgetCentral'),
(280, '8ea9936f-c1da-48ec-946e-ba3679e5af9c', 'p3', 1, 115000, 'GadgetCentral'),
(281, '7dfd5b06-3adb-4244-bb00-0ef149827164', 'p3', 1, 115000, 'GadgetCentral'),
(282, '05e4431c-66b3-481f-bb61-48863bea9500', 'p3', 1, 115000, 'GadgetCentral'),
(283, '88371668-981b-44af-8cf4-fb5756077ab6', 'p3', 1, 115000, 'GadgetCentral'),
(284, '0cda3885-f96d-4eb0-90f3-799751b4df28', 'p3', 1, 115000, 'GadgetCentral'),
(285, '067e1bd7-a344-49fb-ab10-d2db5330fc28', 'p3', 1, 115000, 'GadgetCentral'),
(286, '3a1d08c8-c96e-4967-bd43-fefd0ac33fe7', 'p3', 1, 115000, 'GadgetCentral'),
(287, '6c3aa6df-27fd-4d8d-864a-badb33e66e6f', 'p3', 1, 115000, 'GadgetCentral'),
(288, 'd089403d-964a-4fa2-a830-f462c47ba0b4', 'p1', 1, 25000, 'TechWorld'),
(289, '5c9d9c4b-76ed-44e9-8d97-a3eaf2b269fe', 'p1', 1, 25000, 'TechWorld'),
(290, '1e575292-f0ac-4447-a329-f9ec253834e4', 'p1', 1, 25000, 'TechWorld'),
(291, '1e575292-f0ac-4447-a329-f9ec253834e4', 'p3', 1, 115000, 'GadgetCentral'),
(292, '0c6a6026-0af2-4e22-a740-46f107453e39', 'p1', 1, 25000, 'TechWorld'),
(293, '0c6a6026-0af2-4e22-a740-46f107453e39', 'p3', 1, 115000, 'GadgetCentral'),
(294, 'd2740cd2-3e89-4d35-98d4-592ccf9e58b7', 'p1', 1, 25000, 'TechWorld'),
(295, 'd2740cd2-3e89-4d35-98d4-592ccf9e58b7', 'p3', 1, 115000, 'GadgetCentral'),
(296, '0aca38d7-8828-48f4-b52e-1405b7ec312b', 'p1', 1, 25000, 'TechWorld'),
(297, '0aca38d7-8828-48f4-b52e-1405b7ec312b', 'p3', 1, 115000, 'GadgetCentral'),
(298, 'e66a929e-7b79-4130-b3fa-47461152d2c7', 'p1', 1, 25000, 'TechWorld'),
(299, 'e66a929e-7b79-4130-b3fa-47461152d2c7', 'p3', 1, 115000, 'GadgetCentral'),
(300, '070f561c-af13-41a2-80d3-8daa5467c606', 'p1', 1, 25000, 'TechWorld'),
(301, '070f561c-af13-41a2-80d3-8daa5467c606', 'p3', 1, 115000, 'GadgetCentral'),
(302, '188875a2-f56b-4e00-80fd-1892947b57f9', 'p1', 1, 25000, 'TechWorld'),
(303, '188875a2-f56b-4e00-80fd-1892947b57f9', 'p3', 1, 115000, 'GadgetCentral');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `base_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `base_price`) VALUES
('p1', 'Airpods', 'Wireless earphones', 15000),
('p10', 'Microphone', 'Vlogging Mic', 3500),
('p11', 'USB Flash Drive', '32GB USB 3.0', 1200),
('p12', 'Handsfree Earphones', 'Wired Bass', 800),
('p13', 'LED Ring Light', '10 inch with Stand', 4500),
('p14', 'Phone Cover', 'Silicone Case', 500),
('p15', 'Selfie Stick', 'Bluetooth Remote', 1500),
('p16', 'Wireless Keyboard', 'Mechanical RGB', 6500),
('p17', 'Mini Speaker', 'Portable Bluetooth', 2200),
('p18', 'Bike Phone Holder', 'Waterproof Mount', 1800),
('p19', 'Laptop Battery', 'Universal Replacement', 8500),
('p2', 'Charging Cable', 'USB-C fast charge', 1000),
('p3', 'Mobile Phone', 'Smartphone 128GB', 120000),
('p4', 'SD Card', '64GB MicroSD', 2000),
('p5', 'Cleaning Foam', 'Screen cleaner', 800),
('p6', 'WIFI Adapter', 'USB Wifi Dongle', 3500),
('p7', 'HDMI Cable', '4K Support', 1500),
('p8', 'Car Holder', 'Magnetic mount', 2500),
('p9', 'Car Charger', 'Dual USB', 1800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `distributor_inventory`
--
ALTER TABLE `distributor_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `distributor_inventory`
--
ALTER TABLE `distributor_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `distributor_inventory`
--
ALTER TABLE `distributor_inventory`
  ADD CONSTRAINT `distributor_inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
