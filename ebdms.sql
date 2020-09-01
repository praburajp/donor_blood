-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2020 at 10:38 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`, `Image`) VALUES
(1, 'siva', '9382828811', 'siva@gmail.com', 'Male', 27, 'O+', ' hyderabad', ' hi', '2017-06-30 20:14:16', 1, 0x89504e470d0a1a0a0000000d49484452000000c8000000c80806000000ad58ae9e00000bf549444154785eed9dcb72e3480c04e5ffff686f4cec75cd9c501a8b269573c5141e0554a329daf2d7f7f7f7f7ab7f311003ffc9c05702693262e067061248d31103170c2490c623061248331003ef31d006798fb7501fc24002f9904657e67b0c2490f7780bf5210c24900f697465bec74002798fb7501fc24002f9904657e67b0c2490f7780bf5210c24900f697465bec74002798fb7501fc24002f9904657e67b0c2490f7780bf5210c68817c7d7d3d9a2afbeb32c4cfb67fcaefeecdd5fcdadf0789e0eb11227e7403e18022ff945f02210681a1084e20278b488ef7ab2b167457132c4f781a3e3aa0287fc253fcd3ed543fe59f401208cdc8aded0964b87d9ae036c87087aeddebfef5903e4c70024920ab0c0c07d727500219eed0f00137bd41ec804db34b0fa994bfc5537d77f74ff559fb383f09e4fa45670239fb7b0513883d62e47b9c0492401403d30a1ed6c7cbe66ff154dfddfd537dd63ece4f57acae5857434a1bd40eb8c52710cb6057ac4b06a6076cb87dfa0640f98dbf497ffa09343d6077f74f0368ede3fc74c5ea8ad515eb6706d637089d00f684a10d46f1094ff94dfba7f864b7f9119ee2939df8a7f884a7f809e4f037ddd4406bb70346789b1f0d38c5273ce5974012c8e58cd080d180d20092ddc6273cc54f200924815c3090401248024920179f52249004924012c84f0cd03304dde1094f777cb2dbf884a7f85db1da206d9036c8dc06a113549f60870b98eaa7139aecc41fc5273cc56f83c8011c6f90cc0f0740faa7fa293ed969c0293ee1297e02191e10dd20991f0e80f44f034af1c94efc517cc253fc04323c20ba41323f1c00e99f0694e2939df8a3f884a7f8096478407483647e3800d23f0d28c5273bf147f1094ff113c8f080e806c9fc7000a47f1a508a4f76e28fe2139ee22790e101d10d92f9e10048ff34a0149fecc41fc5273cc54f20c303a21b24f3c30190fe6940293ed9893f8a4f788a9f40e48010c164b70d3e1d4ff5939d06dcd64ff1134802b99c113ba0348064b7f1094ff11348024920170c249004924012c8cf0c4cdf6171854b81dafca7f1543fd9e98a64f3a7f86d1039a04430d96d834fc753fd644f2030a04420d9b709a6fc4e1f70cb1fd54f761b9ff014bf0dd206e919e4e4671052f0b47dfa04b7f9d309389d3fc5b7f559bcad9fe2af6f104a70da6e0926bccd9f0694e24fe36d7d166feba7f809445eb1a841d400b24f0f38e54ff129ff69fb74fe092481a86790690190ff04420c49bb2598f032bd179de0147f1a6febb3785b3fc56f83b441da207d8af53303f604223c9d50649fde00943fc5a7fca7edd3f9b741da206d90cd0d327d824cfba713d49e60a7e3a7f99df64ffda3f8e31b841238dd4e049f3ee036ffd3fb43f951fd844f20c010119c4068c476edd43fca2e8124109a915bdb13c870fb88e036c87003a47bea1fb96f83b44168466e6d4f20c3ed2382db20c30d90eea97fe4be0dd206a119b9b57d5d20b766ef80e46903d914ed80d8f877c7eb0d727702b6f34f20db1db88e9f4096fb9340961b00e113c8727f12c8720312c8e10d58fe5697b3d9d9cfae0db2dc8336c87203da208737a00d727483da20cbed69832c37607a834c37d8d247ef01b6f3a7fca87e9b3fc527ffa7e3893fb2eb0d42045202d376dbc0edfc28bee5dff2733a9ef8237b02197e06a006d080113e817c1345ca9e4012c8e500910049e0db78a58ed7eb9540124802b960208124900492407e6680ae007645139eae2884b7f9537cf27f3a9ef8237b1ba40dd206397983d813884e00b2dbf884a7f8744213dec627ff64b7f9937faa8fe2139ee2af6f102a8008a002c96ee3139ee2dbfa6c7cca8fec367ff24ff5517cc253fc04f27dfd39fa7803e415cf0e000d08d9891fc2939deaa3f884a7f8092481d08ca86714e5fcf51afff30f945f024920342309c430442b8e7cd30ab4fea7e353fe14dfd667e3537e64b7f9937faa8fe2139ee2b741da2034236d10c31029987c93c2adffe9f8943fc5b7f5d9f8941fd96dfee49feaa3f884a7f87a835000b2538184273b1164e39feefff4fca87f64a7fa084ff60432fc31ebb6006980b6f3a301253bd54778b227900442337269a701b502a4e4283ee1c99e401208cd4802510c49f0f60963e3d309b6edfff4fce4f8e08b44ebbf0dd2065133342d404a8ee2139eec092481d08c74c5520c49b0bd8250783a616cfcd3fd9f9e1ff58fec541fe1c9ae37080dd87801b001ee1e9ff8a506dbfa293ef927fc74fee49fec098418023b0d000d108527ff849f8e4ffeb7f3277ec89e4088a104b2fa0c420294ed437802418aaeff039d90b6c1e49fd29f8e4ffeb7f3277ec89e4088a136481bc4cc089d1074c298d87fb04f8f4ff5117f967f8a4ffe093f9d3ff9277b1b84186a83b441cc8cd00941278c89dd0661f62cffb6bf84a70a6cfee49fec7a836000f99e8208b6044efbdfe687e24fdb6fdf9f6f5bc1f015647a80a7fdd300daf884a7f8d3763b5e549ff54ff5b741e4862382c96e0780f0147fda6e0798eab3fea9fe049240684694dd0e700239fc5b456c8369baec00109ee24fdb2d7f549ff54ff5b741da203423ca6e073881b44156df33a8e9ff0b7002e953acbf18939fff8b3d2109af92fb057002f90512efec627b40b707d0d64ff94ffba7d91b7f06a104ee6eb70db4f5d380917fca9ffc139ee26ffba7fc12083124af90d23dc269c0c8010d38f9273cc5dff64ff925106228815c329040e4003d1d6e07c4f2432730f9a7fcc93fe129feb67fcaaf0d420cb541da2072463e1a6e4f504b1e9dc0e49ff227ff84a7f8dbfe29bf360831d40669839819b1278889fd7f60a74f38aac1c6273cc5a7fe4efba7fc6c7cf2af37081148099c6ea7064cd76fe3139ef8a7faa6fd537e363ef94f20c010358006881a40761b9ff0149fea9bf64ff9d9f8e43f812410f58c6107940448036ce393ff04924012c80503092481249004428bf4673bad707b45a0cc6c7cc2537caa6fda3fe567e393ff36481ba40db2b941a6154e2700d9a74f488a6feddbf9dbf8db78e27f7c8324106a81b3db0173d1fd7723dbfc2d9eea4f20cb5fda400d22fbf4804cc7b7f95b3cd667bf59713a412ac0dacbdf3168f9dbc653f56d903608cdc8e8437c0281aff551ddf905b06dd02fa4a05c6ce76fe36fe389fc36481b8466a40d6218b2278089fd1bd8f2772c5afeb6f154fdfa062182a800b2d3c7cc14ff743cd54ff5119eecdbfcd8fc089f40e4158b06707a80b0c1501fe1c93e5d1ff16bf3237c024920342397f60402f491c22d81aa7bafd7cbc63f1d4ffc507f084ff66d7e6c7e846f83b4416846da2086213aa1ec096372fb83b5f14fc7133fd41fc2937d9b1f9b1fe1db206d109a91368861884e287bc298dcda20fcd3b677e797f2a7f9237c1b6479836083647ee4dfdaed0169e34fe313881cc0e90199f66f07ecf4fc747ddb3fee4e04db0269c552fc693cd567f323ffd67e7a7ebabe04f2b5fa104a0d3c7d004fcf8ff8257b57acae58342397f60402f4598208afba7783f720541ff1435740f26feda7e7a7ebeb8ad515cb0c51026983ac5e314e1fc0d3f333e2ff83ed1964f819c43688ae507640094ff9537e843fdd9e4012889ad104d2154b5db1d4f41df02103e59f40124802b960208124900492406891fe6ca7873c3a6108ff7e66ff226d7c8b7f7afec48fad7f1bdf437a0fe96a06134857acae585db1de3f44e88a74fa0963f3273c316bf9a1f8d63fe56feda7e7bf7ec5b2045bbc6d10e1293f3bc014dffaa7fcadfdf4fc13c8f233881de0d3078c04747afe092481d00c8fda13c8c3fffc013598a6ab0de27e9a9af8b5f636481bc4ce90c2d301630f1095dc093fcd6b0bb078db20c2537e760028bef54ff95bfbe9f9b741da2076c615fee305a2d83b004c27b06db0c51345e49ff0d3f6697e6dfee31bc426b88d9f6e200d30c5277ec83fe1a7ed541fe54f789b7f020106a901b681164f0340fe093f6d9fe6d7e69f4012889d21854f208abe7df07403e984a7f8c410f927fcb49deaa3fc096ff36f83b441ec0c293c0d780251f4ce83a71b383d00e47f9ec1eb08d3fcdafada206d103b430aff7881287602c7c0e10ce80d72787da517038a8104a2e80bfc740612c8d33b5c7d8a8104a2e80bfc740612c8d33b5c7d8a8104a2e80bfc740612c8d33b5c7d8a8104a2e80bfc740612c8d33b5c7d8a8104a2e80bfc740612c8d33b5c7d8a8104a2e80bfc740612c8d33b5c7d8a8104a2e80bfc740612c8d33b5c7d8a817f00c0df5e7b9c10f3ae0000000049454e44ae426082),
(2, 'ahshi', '41241241241', 'ahshi@gmail.com', 'Male', 34, 'AB-', ' tamilnadu', ' fsdf', '2017-06-30 20:48:11', 1, 0x89504e470d0a1a0a0000000d49484452000000c8000000c80806000000ad58ae9e00000c1e49444154785eedddd172dc560c0350fbff3fda9dbc373a99c5c057da455f599020488852eca6df3f3f3f3f5ffb670a4c81ff55e07b06d9664c81bf2b30836c3ba6c0850233c8d6630acc20db8129f09a02bb20afe936d4872830837cc8a0d7e66b0acc20afe936d4872830837cc8a0d7e66b0acc20afe936d4872830837cc8a0d7e66b0acc20afe936d4872830837cc8a0d7e66b0acc20afe936d4872830837cc8a0d7e66b0acc20afe936d48728101be4fbfbfbada5d27f2ea3fe9f8e7ffa70a5bffa9b41a090049e41b46267e39a9fd8cd20338876e4d1f119a43c3e09bc0b521e40985ef353fa5d905d10edc8a3e33348797c127817a43c8030bde6a7f4bb20bb20da9147c76790f2f824f02e487900617acd4fe9eb172425a806d278bae0edfaca9fea7bba7ff5a7789bff0c821f74a60b980e58f8945f7bc1c43f8db7f9cf2033c8e58ea6064c0d20fc0c2285c2785b60d1537de1d30556fd34bff8a7f136ff5d905d905d900b0566901964069941feae40fb44eb1542f5854f5f81543fcd2ffe69bccd7f1764176417e4ce17444f80f409a327a0eaa778f14ff30baffaa7fb173ff597f257fde317440daa01c5db02a7fcdbfca48ff8a7fc545ff1b4bef0aa3f8384af585a300d4003547ee1553fcd2fbcea2baefe545f78d59f416690e81b440baa05545c0baefac2abfe0c3283cc20fb48effd31af9e607a42e909a7fcc2ab7e9a5f78d5575cfda9bef0aabf0bb20bb20bb20bb20bf23705d227b0f07a422bae0ba0fac2abfe2ec8cd2f080758e6af05d3828abfe2697de1557f06292f9806100fb0cc5ffc66104c5802bdbbc0ea7f069102d7f1747f8417bb5d90f2135803880758e62f7ee90322d547f5c55ff56790f2826900f100cbfcc54f0baafe154feb0baffa334879c13480788065fee23783ec1be452817441b4803298ea2b7f1b2ffe8ab7f9abfe2e48f909ac016801846f2fb8f8a9bef82b9ed6175ef56790b241d201718087f9cf207bc58a5eb16610597c7fcc1b2d5826efd79716544fc0363eedef347fd54ffb3badff5eb10ebfa2a40ba4056d2f98eaa7fdb5f98bdf0c32835cee48baa05a40c5d3fac2abfe0c3283cc20170acc2033c80c3283fc5d01bd43eb44a7789d78c5d3fa6dbcf82b7e5affe3174402b5e3e982889ff20baf05115e71f16bd7173fc5dbfc6790f0152b1da0f0ed056d2f98fa4be36dfe33c80c127d83a40b9ee267905441e0eb02c3806a6f17e45aa1fafc7ec209b4096a81d2789bbff28b7f381ea5ff12bf767d123cfd809b41beabaf185a402d487b41c5af5d5ffd2bdee6bf6f907d83541f105af0343e83a40a9e3ed1fb06a94ef0f106a9aaf30bc9f58a910ee8eef85f90b85a42f353f1fa2b9608dc3d2e81efbee029ffbbcf47fcd4bff033081492c0338856ec6c5cf313bb196406d18e3c3a3e8394c727817741ca0308d36b7e4abf0bb20ba21d79747c06298f4f02ef82940710a6d7fc947e176417443bf2e8f871833c5abd07904f2fd4035abc35c5f882dcbabb372037839c1de20c72567f569f412851f55f9841aaf2e6c967905cc324c30c92a8f70bd819e41744be2831839cd59fd567104a54fd176690aabc79f21924d730c9308324eafd027606f905919baf581a60bbbdf80741e17f5178f7fec5afad5f3a7ff1abf7d7fe6fd25381849780c2a7020baffa695cfd8b9ff0e2a7fcc22b2e7eaa2fbceac7af58222802693c166017241a417bfe9aafea0bafe6679019443b7219d78246c9bffaff0324f19b416610edc80c9228d47e82885b7c426710493c83240acd20d77ff15ca2edbf60f580d07c841707e5175e71f1537de1557faf58bb20da915d9048a1109c3e018417bdf409a3fce2a7faa7f1697fc22bded647f5e30ba2028ab71740f53500e1156ff727fe69fdb43fe1153fde5ffa834235a8783a40e1555f03105e71f153fdd3f8b43fe1156feba3fabb203f3fd2288a9f5ef0b4be9a577ee1159f410e7f246b001aa0e25a20d53f8d4ffb135ef1b63eaabf0bb20ba21db98ccbc051f277f8497a2a80044e9f20e2a7fcc22bdeee4ffcd3fa697fc22b7ebcbf7da4ef1b444b7a15970193dc7fb06f6f1009980a900e40f836bf34bff0ea2f9d8ff2a771f153fe589ff60551836a40780994c6dbfcd2fcc2ab7fe99be6577dc5c54ff8947ffd235d0daa01e125501a6ff34bf30baffea56f9a5ff515173fe153fe33081496c0ed012abff86981daf9555f71f1133ed667af58d7124be0f600955ffcb440edfcaaafb8f8091feb3383cc20570aa40ba605567c06c10fea52813400c5b52029bf34bff0ea4ffcd3fcaaafb8f8099ff2df37c8be412e1548174c0bacf8db1ba42d80f2a703d680945ff8947f3bbff8292e7ea97ec28b9fe2f50b4202f86545e1154f056c0f38e52f7e697ee115173fcd27c58b9fe23308144a0724bc06942e509a5f78c5d57fda9ff0e2a7f80c32836847a2f80c12c9f7f52501c3f4fc6537e5173f3dc18457fdd3f9c54f71f59ff627bcf829be0bb20ba21d89e2334824df2e88e4d313520b98e6175e71f14bfb135efc14df05d905d18e44f119a4bc60d174bef20b953ea1b420ea4ff5d3fcaaafb8f809afb8faabd7bffbef624940c525b0f0e900daf5d3fcea5ff1541fe5577ff5fa33c8f588d20168c05a10d54ff3abbee2e227bce2eaaf5e7f069941b4a457f1fa82867f2d54d2db1f6cfd23fdf81320fc55967401d4bf06a8fa697ed5575cfc84575cfdd5ebef82ec82684977411285803dfe04d805294ed77f2d4f5afcf8feec82ec82244b5c7fc579f76f9044fc27608f3fe1c20512ff740632505a5ff953fef58ff494e0ddf11a707d8033487545669050de19247b45957e1a4ffd01d4fe0651834f8f6bc0f501ee825457681724947706d9050957e8bde133c80cf2de1b1e763783cc20e10abd377c0699412e15d0823cdd1eed8feca7eba3f93f5dbff8235d023d7d019e3ee0b6fe9affd3f59b41b0414f1ff00c92293083cc20d106ed82403e0914a97f03f02ec8f51034ffa7ebb70bb20b123d8666905d906881de1d3c83cc20efbee3517f33486890bbbf83b607acfcd176fe03f8e9faff438b97ff4ada7ffd1b2425980a24bc1638e5affce297c653fe697de1dbfaa4fdcf20e1af8b9f5e00d54f1744f9d3f80c82ff49672a708ad780d20553fe94bff0297fe54fe36d7dd2fe77417641d21d8ff033c82e48b44029387d82a6f5859f416610ed48353e83fc44faee156baf58d102a5e05d105c90d302a97efb09acfa5a40f1537ee1553f8d8b9ff2b7f91fbf20a940a980aa5f1f40f9af463ddd9fe6237ec2d7e793feb53f6a500d082f81144feb0baffa8aa7fd8b9ff20b2ffe695cfc94bfcd7f17a4fc0da201b71744f9db0b76ba7fd5577c069941b423d5b80cace26d83cf20338876b01a9f41f6a758970bd65e10e56f3f81e52ef113becd7f176417443b588dcf206f7e4134603de184af6ee797ff0f51e2a7fec45ff9854feb2bff2e48784134600d50780d308da7fc8417bfb4ffb43ef9ede720df971a69001a708ad700d378ca4f78f1937ec2a7f5957f17641724fa4384744167907d83440ba8275c1ad7826b8185173fe5173eadaffcbb20bb209181d3059d417641a205d4132e8d6bc1b5c0c28b9ff20b9fd657fe5d905d90c8c0e982ce201f7e41f484525c0ba8054bf1293fe1ef1edf05295f907401d2054ff1e2affcc2df3d3e83cc20d18ece2090eff489d77435c0f1bffe4169aaaff0778fef82ec82443baa075094fc06e019640689d67006d92b56f4c7a0d1f6fdc26fdbea1553fc6790196406b9506006291b444fa8765c4f502d408a577fcb7fad505d9fd3bfeeae0569c7538153bcfa5bfe19443b528da70b98e2d5dcf2cf20da916a3c5dc014afe6967f06d18e54e3e902a67835b7fc338876a41a4f1730c5abb9e59f41b423d578ba80295ecd2dff0ca21da9c6d3054cf16a6ef9dfdc205a80bbc7db3f079101a48ff8099fd657fe349ef697d6afff2e564af0345e03d282a578f5affcc28bbff0ed78da5fca6f0681821a90162cc56bc0ca2fbcf80bdf8ea7fda5fc66901924dda12a7e06a9ca9b27d780f4044ef1ea40f985177fe1dbf1b4bf94df2ec82e48ba4355fc0c5295374fae01e9099ce2d581f20b2ffec2b7e3697f29bf5d905d907487aaf8c71ba4aace924f81c30ac417e430ff959f0255056690aabc4bfe74056690a74f70fcab0acc20557997fce90acc204f9fe0f857159841aaf22ef9d31598419e3ec1f1af2a308354e55df2a72b30833c7d82e35f556006a9cabbe44f57600679fa04c7bfaac00c529577c99faec00cf2f4098e7f558119a42aef923f5d8119e4e9131cffaa02ff01865fe66c740f91810000000049454e44ae426082),
(4, 'fdsfsgg', '35345435345', '', 'Female', 26, 'AB-', NULL, ' jvkfjvjf', '2017-07-01 07:21:42', 1, 0x89504e470d0a1a0a0000000d49484452000000c8000000c80806000000ad58ae9e00000bdc49444154785eed9dcb52e54a1204e1ff3f9ab13bb3984db71c935bdc12c87b9be42b22a352a573683ebfbebebe3efa170221f047043e13489311027f472081341d2170814002693c422081340321700f8136c83ddcf27a090209e42544d7e63d0412c83ddcf27a090209e42544d7e63d0412c83ddcf27a090209e42544d7e63d0412c83ddcf27a090209e42544d7e63d0412c83ddcf27a090209e42544d7e63d0412c83ddcf27a09025a209f9f9fbf1a2afbeb3284cfe9f854df4f2757e36b7f1f2480af4788f0d104c20145f1a9be0442080242019c409e2c2239de1f3d6201bb1a6079c2d3f0d10145f5933fe57fba9dfaa7fa134802a119f9d1f60432a64f03dc061933741d5ef3d7257d0c7002492047111827d72750021933343ee0d61bc40ed81a5dbaa4dafa29beed6f5d9f8d6ffb237fc2d7d63fbfa4db0209206b9f033cfe20d5e2bbeedff243feebfa13c8e147201a00b22790eb6f72687c7ac41a03dc06218d2b7b1b44c1c7ce7380130893207e62ce5f1ba40d72359ff61145ccfeb75c13c8b760baff437380db20f7c9f986e79cbf36481ba40df277048ebfc5a213e01b87c8e58fd02302e5b7fe54ffd3e3afeb5be343f553fe04225ff392c0880022f074fc757d6b7ca87eca9f4012c87403d300929d069c0e10f2a7fc09248124900b04124802492009e4e22d45024920092481fc0d01fb0c4ffef48c4f76ba43507ef2a7fc3d62b541da206d90dd06c113480a90e25bbb3d81c9dfd6471b80f2933fd5d706190ff09a402298ecb63ef2a7fc64a701a7fce44ff9134802e911ab47ac1eb1baa4d3aef8b3bd0dd2066983b441da206d9036c81f11a04bdafc9237de50f768ffbf97ed9ffc6d7dc7f93bfdfb20bf1ee004a23492400effc61d09940852ec7f7c7c507e8a6feba3fc149ffca97eb2dbfce44ff9bba41f3ee1ed80e90190fddbfa6940a93fca4ffe943f81c8012180c94e0493bf1e00d9bfaddff647f9353edd41b6bf934e03400493bf1e80047209711b440e080d30d913c835427400107ee48ffcb441da205743420346034a0348769b9ffc297f1ba40dd227e97d927eee93743ca1e46b6e7d42ca03a20d020c134096401a306b7f7afdebfad6f12d3fe4bfaefff8231601b0b6af01b6f5afeb5bc7b7fd93ffbafe04221f3188406b9f0fc0c3fb27fce6f89c7e8b4500aced6b806dfdebfad6f16dffe4bfaebf0df2f013743e000fef3f81100263fb7a006df9ebfad6f16dffe4bfaebf0df2f013743e000fef3f81100263fb7a006df9ebfad6f16dffe4bfae7fbe41a8c1a7dbe9731c4bd0d3fd9fce0fd547fc917f02018408e0a70fb8ad9f06e8e976ea9fea4f20098466e447db13c8983e02b80d3226408627fe287c1ba40d4233f2a3ed09644c1f01dc06191320c3137f14be0dd206a119f9d1f60432a68f006e838c0990e1893f0aaf370825f8ed761208f54f04527cf2a7fcd9af11482072426880293c0d38c5277fca9f3d814c6780069892d380537cf2a7fcd913c87406688029390d38c5277fca9f3d814c6780069892d380537cf2a7fcd913c87406688029390d38c5277fca9f3d814c6780069892d380537cf2a7fcd913c87406688029390d38c5277fca9f7d2c1022d0124003b0ce6febffe9fe84bfed8ff85be7a7faf5e720d42015407602689d9feafbed76c2dff64ffcadf353fd0984107ab97d3da009440e18114400cbf4af7727fc2d40c4df3a3fd5df0621845e6e5f0f68029103460411c032fdebdd097f0b10f1b7ce4ff5b74108a197dbd7039a40e480114104b04cff7a77c2df0244fcadf353fdf30d420d1240d400c5277fb2537debfc4faf6f8d0fc5277c2c3f09041026822c014430d94fd7b7ce4ff1091fcb4f024920346397761a603da0a7ff44dde9bf0f4200137b96008a4ff5adf33fbdbe353e149ff0b1fcb441da2034636d108310299c144cfe541bc5277fb2537debfc4faf6f8d0fc5277c2c3f6d903608cd581bc420440a2705933fd546f1c99fec54df3affd3eb5be343f1091fcb8fde2054e0ba411b9fea27bb2640fe8527ea9fea5bfb137e6b3bf54ff913082104764d4002910c5cbb6b7eec6b5eea8e4e28f2a7066d7cca4f76aa8ffca97e8aff747fea7f6d27fc287f1b84106a83a84bba8457bb2710f949ab654013d02396a5e0d25ff3d32396e3471390401c01eb0d9f401c3f09e4d30138f6d6fc2410c79026a00de20878fa06a1b728b6fb9f3e80d43fe147fd933fe5a7f8e44ff99f1e1ffbb31b8400a202c87e1a60eaefe9f53d1d5faa6f8d3fe64f205fea356602b9be839cc687044076fd3908299c0a20fb6980a9bfa7d7f7747ca9be35fe98bf0dd206a121b9b2af07781d9f7a6f837c25101a9204221022858bd0ff757dfa23ccd3eb23fc4fd74ff5d17cd9fa317f8f586d101a92368840c82a9cfc4569dfda4036fffa04a3fe4fd74ff92d3e149ff0d1f9d71b840ab40058806c7eea8feab3f6d3f5537e8b0fc527fc74fe04e2be4b64092082c97e7c80e457651edf5f02492034a44fbe8350edf6009bbfe6a502ed096801b2f9a93faacfda4fd74ff92d3e149ff0d3f9db206d101ab236884088144e0a267f515a6fb1be011ef1432188bf757caa4fe76f83b44168c8da2006a197fbda13f4b4bfa5ef74fd363ff5af2fe994e0b7db2d41a7fd2d3fa7ebb7f9a9ff04420881dd1274da5fb6ff71ba7e9b9ffa4f20845002b944c00ee8697fa23f811042092481c81979b5fbe913d0e6b7e4d9fca7fda9ff360821d4066983c81979b5fbe913d0e6b7e4d9fca7fda97fbd41a8412ae0e976fa2476ddff4fcffff4fa69fe120820f474829f2ed0a7e397400881047289801d70eb2fe9f3ffa7c1fabb58b6c1d3fe4f27b80d723d21c41fcd578f586d9036c80502092481249004428bf4ef765ad14f7fc4b9dff9ff3c6dffd67f5d3fc56f83b441da202737089d20a4e0b59d3600d57fda9ff0b1f5517cb2aff3cfe3afdf62d18011c06bbb05f8b43fe163eba3f8645fe79fc74f20eeef5b5882acffe9013d9d7f8e5f02492034e4c63e1fe0f57f5c974012881100f92690b18289006bb7049ef6a7fe6d7d149fecebfcf3f86d9036080db9b1cf07787c40cf3f07e92dd6cffefb23461cfff82610a96002d0124402a5fca7fd6dffe46ffba3f864b7f9c99ff293fdf806a101a506c84e0052fed3fed49fb5dbfe4ee7a7fa6d7d0964bc01894012a82598fc4fd767f3933ff54ff60492402e67642d601a70ca4ffe2400b227900492402e1048200924812490bf236057f8da9f1e01ac9d1e51a8bfd3f9a97e5b5f1ba40dd2066983ec36883ea10e0b745dbf8d4ffe6d104208ec04203d4290bf2c4f7fd2fcf4fa2d3ee43fe7e7f477b188600288ec0420e5277fca4f769bdffa537d64a7fce46fed737e1288fbb2a22598068c06c0faafebb7f1c99ff0217fb277499777000298ec76c0ad3fd54776ca4ffed69e4024820420114cfeb2bcee2012c0393f3d62f5886566940e1813fb3bbe09e43b285dfc0c01480493bf2caf0d22019cf3d306711bc40aecedfe521ffa80a1fc5dd2e525fded036efba70125fb3a7f0249209733488f30eb014d2030a00410d9d704db0179bb3ff147768b1fc6ef0ed21de46a48d6070c0d28d913082104f635c196a0b7fb4b7abba45b0013c8f6bf1db202b7fcaef37749ef92de25fd0281e302b12788f5b72710f9537db4e1c8ffb7e7a7fe2c7e88efe94b3a15b8b65b02c89feab704fff6fcd49fc58ff869838c1fb188004b300dd04fcf4ffd59fc089f04924068462eed34c0149c069ce2933fe5277b024920342309c420745ae1a6f67f7c6dfde44ff5d913f0b7e7a7fe2c7ec44f1ba40d4233d20631089d56b8a9bd0df2f1614f60e29ff8a1fc149ffc293fd9e71b840a78ba9d0820026d7febfc149feab7fd53fe757cec6ffd390815f074fb9a40ea7f9d9fe2537deb015ec7c7fe12c835443440964022689d9fe2537db67fcabf8e8ffd259004424372655f0ff03a3ef5de1d04105a9f7044d03a3fc5a7fad603bc8e8ffdb541da2034246d10819055b848fdafb8d209bbee7f9d9fe213c8b67fcabf8e8ffdb541da2034246d108350be21f08b11d097f45f8c4dad85c04702690842e0028104d278844002690642e01e026d907bb8e5f5120412c84b88aecd7b0824907bb8e5f5120412c84b88aecd7b0824907bb8e5f5120412c84b88aecd7b0824907bb8e5f5120412c84b88aecd7b0824907bb8e5f5120412c84b88aecd7b0824907bb8e5f51204fe039fae8e7b417706110000000049454e44ae426082),
(5, 'Nitesh Kumart', '8569855244', 'niiii@test.com', 'Male', 32, 'A-', 'Test Demo', 'Test demo Test demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demoTest demo', '2017-07-01 09:00:18', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2017-06-30 20:33:50'),
(2, 'AB-', '2017-06-30 20:34:00'),
(3, 'O-', '2017-06-30 20:34:05'),
(4, 'A-', '2017-06-30 20:34:10'),
(5, 'A+', '2017-06-30 20:34:13'),
(6, 'AB+', '2017-06-30 20:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:17:09', NULL),
(3, 'caasda', 'webhostingamigo@gmail.com', '42342342', 'drftghjk', '2017-06-30 21:21:30', NULL),
(4, 'te', 'sdfsdf@gmail.com', '75787875545', 'sfsdf sdg hs h sh', '2017-07-01 07:19:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Blood is the most precious gift that anyone can give to another person — the gift of life. A decision to donate your blood can save a life, or even several if your blood is separated into its components — red cells, platelets and plasma — which can be used individually for patients with specific conditions.It is also needed for regular transfusions for people with conditions such as thalassaemia and sickle cell disease and is used to make products such as clotting factors for people with haemophilia.There is a constant need for regular blood supply because blood can be stored for only a limited time before use. Regular blood donations by a sufficient number of healthy people are needed to ensure that safe blood will be available whenever and wherever it is needed.</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\r\nWe deem worthy of them, and they are accusing those who hate the righteous, But, in truth, and the blandishments of these presents,\r\nwelcome the troubles of pleasure they are and which of these pains, deleniti blinded by desire, and do not act corruptly by provident, who exercise an office deserted the general\'s want of spirit, and in the same chapter be at fault, that is, of his labor and painful. But this requires a simple and easy distinction. For your free time, and they are independent to us the most important is that which is well pleasing in his option of choosing when they are enabled to do nothing to stop it were not so, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and the needs of its duties, will frequently occur that pleasures have to be repudiated, or avoids pleasure and annoyance to some of things have not been accepted. </span>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
