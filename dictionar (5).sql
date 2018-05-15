-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2018 at 12:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dictionar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `e-mail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `e-mail`) VALUES
(1, 'daniel', 'daniel1234', ''),
(2, 'raul', 'raul1234', ''),
(5, 'crisan', 'daniel', 'daniel.proba@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `capitol`
--

CREATE TABLE `capitol` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capitol`
--

INSERT INTO `capitol` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'Automatizari');

-- --------------------------------------------------------

--
-- Table structure for table `capitol_words`
--

CREATE TABLE `capitol_words` (
  `id` int(11) NOT NULL,
  `capitol_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `capitol_words`
--

INSERT INTO `capitol_words` (`id`, `capitol_id`, `word_id`) VALUES
(4, 1, 2),
(5, 1, 3),
(6, 1, 4),
(7, 1, 5),
(9, 2, 5),
(14, 2, 7),
(15, 1, 6),
(16, 1, 1),
(17, 1, 7),
(18, 2, 1),
(19, 1, 9),
(20, 2, 8),
(21, 2, 10),
(22, 1, 11),
(23, 2, 11),
(24, 1, 12),
(25, 1, 14),
(26, 2, 13),
(27, 2, 15),
(28, 1, 15),
(29, 2, 16),
(30, 1, 16),
(31, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE `other` (
  `id_word` int(11) NOT NULL,
  `link_text` text NOT NULL,
  `link_img` text NOT NULL,
  `my_binary` binary(50) NOT NULL,
  `my_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `e_mail`, `password`, `birthday`) VALUES
(1, 'crisan', 'daniel', 'daniel.proba@yahoo.com', 'daniel1234', '0000-00-00'),
(4, 'Admin', 'admin', 'admin@yahoo.com', 'admin1234', '2000-01-01'),
(16, 'raul', 'dobra', 'raul.dobra@yahoo.com', 'raul1234', '1996-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `short` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `files` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `name`, `short`, `description`, `files`) VALUES
(1, 'Cache', '', 'Pentru a mari eficienta legaturii la Internet, paginile web mai des vizitate sunt pastrate local pe calculatorul dvs., iar la o noua accesare a acestora, ele va vor fi servite direct de pe propriul calculator, accesul fiind aproape instantaneu. Toate aceste informatii stocate formeaza memoria cache a legaturii la Internet.', 0xffd8ffe000104a4649460001010000f000f00000ffe1008c4578696600004d4d002a000000080005011200030000000100010000011a0005000000010000004a011b0005000000010000005201280003000000010002000087690004000000010000005a00000000000000f000000001000000f0000000010003a00100030000000100010000a002000400000001000000d1a003000400000001000000b200000000ffed003850686f746f73686f7020332e30003842494d04040000000000003842494d0425000000000010d41d8cd98f00b204e9800998ecf8427effc000110800b200d103011100021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffdd0004001bffda000c03010002110311003f00f0abab592df696dad1bfdc910e51fe87fa75148f0a3514ee96eb75d57f5f715e9945cd23fe42110f50ff00fa03506388fe1bf97e68a4bf747d28367b922004316ce00cf1f5a04df60cc7e8ff00f7d0ff000a007068b0418d893d0ee1c7e940bdeee49711a260f94e83fdf07fa548a126f4bfe04122ed76033806a8a4ee840280b8bb6815c5d9405c36502b96a0b169606941002f5a57339565197295765334b89b681dc42a681dc0a91d411405c400b1014124f000ef40c0f0483c11d41a0007270393ed40122c121fe023fdee3f9d017449f6493b951f9ff850473a0fb249eabf91ff000a039d07d924f51f91ff000a039d0be4227fae900f61fe73fa503e66f641fe8ffdd3fe7f1a0569773fffd0f15865da18c254a3fdf8d8651fea3d7dc60ff3a93e76493f8b75b3eabfafb863da25c1ff00420c25ea6d9ce5bfe007f8c7b75faf5a06ab387f136efd3e7dbf2f429472490cab244c524439523a83546b28a92b4b666aeaf3594d18fb1c708769728b142632898fbadfde39f4cf7e79004a39f0d0ab07fbc6ed6d6eef77dd7656feba99a51e3f356456560a382307a8aa37e652b345a3a45d7f65adfe10c24e0286f9fae33b7d3dea6e65f5aa7edbd8f5fc3ef280073d2a8dae5dbd1941f5a48c296e69c1f2e99293d016348e59eb557c8cf775da460f231d283a12640b192700532dcac3c4273dbf31521ce893ca7c11b7f5a6473a2cdbb18e131957c1fbdb48e6919cd293b94fc87feed3b9af3a1a6161d40fcc5172b9d12411ed994b63bedc9e33da90a52bc7425b80de43f9b9ff0067775cfb7eb4110b732b1410b452074e1874e2acddda4accb06f5cc2cae8aee5b76f3c1fd29584a9a4ee9e8426ee4c70aa3f3ff1a65f2a23334a7f8c8fa71fca81d9119e7ad03133ed4007e54016e0b2b89e3f3123db0ffcf590844ffbe8f1f9522675631766f5edbb25fb0c7ff412b2ff00be9ffc280e67fc8fef47ffd1f03476439538feb41e1b57dcb692a4c36b8c37f5f63fe7f1a4438b8ea8b12b2cfc5eee66ed70a32e3fdf1fc63dfaff002a46514e1fc3fbba7cbb7e5f995648a5b2922981564ce63954e51b1eff00d0e0d06ca51aa9c7ef5d7faf3d827ba3772bb48d1a92a140ce070680852f66ac8d58fc4babae96ba70bf8fec6a82311e17ee8ed9c668b2389e5b8675bdbb87bd7bdf5dccad9bd99cc884e727e7145cebbdb4b1626c30dbb9339cfdf148ce29ad4bb1dcc2b6ae8641bb270077a473ca9c9cd3b15e295523941766de85467b723de835945b6b4d88d36e7920039140ddcb525b47065bed303ec70b856c93c6723dbde8338d473d395aba222623fc6df9d30f7bb09fbafefb7e740fdeec27eebfbedf9d03f7bb0fba844522877009404720f0471d290427ccae9112c46678e28419246380aa32493d80a0b4dad597e3b68ed1b0cb1dcde0e0a9f9a287fdefefb7b0e07bf4a2e3e6bfa0e2f3e3eed9ff00e0145fe1544e9e7f7b18cf3ff76cff00f00a2ff0a034f3fbd91b3cdfddb3ff00c028bfc2995a79fdec61927feed9ff00e0145fe140ecbcfef6279937f76cff00f00a3ff0a02d1f3fbd89e6cdfddb3ffc028ffc2815a3e7f7b0f3671cafd954f622ce3047e940f963e7f7b2bdc48ad2799752bcf28ef236e23f0ed4cb8a695a2ac88bed56ff00f3cdbf3a03d9cbb9ffd2f02a0f10280268ae0ae03723f51489942fa97209193735bce630ff00782e307ea0f19a46538a969357b138b8b8ff009fa3ff007ca7f8533174e1fcbf9ff9922cf71ff3f47fef94ff000a921d3a7fcbf9ff0098e134fdee4ffdf29fe140b921fcbf9920967ff9f83ff7caff0085225d387f2fe638493ffcfc1ffbe57fc2827921fcbf98f124ff00f3f07fef95ff000a05c90fe5fcc78967ff009f83ff007caff8530e5876fcc78967ff009f93ff007ca7f852172c7b7e6384d71ff3f27fef94ff000a61cb1edf98be7dc7fcfd1ffbe53fc280b47b7e62f9f73ff3f67fef94ff000a0768f6fcc3ed173daecffdf09fe141568f6fcc6bcf72eacad78fb586182ed5c8ee320669169c7b146695625d90a838f4e83fc7fcf5a0d132b5cdacb180f202c1c6eddd7f334042a296c47f6490c2b2aa8284e0723fcf634cb551737290fd964271b40fa914ee5f308d6817fd648abfe7df14ee529df618d15b8ff9687fcffc06995cd219b2dffbedfe7fe03405e5fd7fc389b2dffe7a1ff3ff0001a02f2febfe1c76f823fb89bcfa9ff3fd281da4f70fb549fecd02e447ffd3f0efecdbeff9f39ffef9341f3df59a5fcc83fb36fbfe7ce7ff00be4d01f59a5fcc8b33c17d35b410ff0067baf95fc410e4d49946ad18c9cb9f7f3225d32f4119b49bfef8a772de2697f32357ca97fe7c271ff6c8549c3cd1fe75f78e114c0f167383ff005cc52139c3f9d7de38c53b75b5b8fc63a62e782fb4bef229acee247056da50318e53148b8d6825ac908ba7dcff00cfbcbff7cd03788a7fcc8ba2da62a40d39b3b36e76f7f5e9ff00d7f7a0cbdac7f9c7b5acec24c69ccbb940185e9efd3fce3bd04a9c55bdf189a75d8523ecf3839cf09414eb43ba1dfd9b787fe585cffdf07fc6817b48f90bfd9979ff003c2e7fef83fe3407b48791656cee469b3406c6e1e5770cae63e838e3d6821eb554d3d1140e917fff003e73ff00df0699bfb45dc4fec8becf365718ef84a4573aee1362ce7962114d112006491467f23f5a0493924e431d6da3d8cae37119f97231f9532a3293bdd11b4b1630656c7fc0a82d5c85cc2e30653f9b0a0b4da2bbd903cc6f9fc8d3b96a7dcacf67203d57f5ff000a773455111359c9fecfebfe14ee5aa886fd95fd57f5ff000a039d0d7b7917f873f4e681a926454147ffd4f0ff00b343e83fefaa47cefb49082da1f45ffbea81fb490f5b587d07e7410eac89859c6a1494c03c824f5a5723dac9f5245b68bd07e7410ea48956da21d87e7488752448b6d1fa0fce821d49122dbc7e83f3a0975244ab6d1fa0fce827da3245b68fd07e7524fb463c5b45e83f3a05cec78b58bd07e745c5cec70b48bd07e74073b17ec917a0fce9073b0fb1c3e83fefaa63e7627d8e1f41ff007d503e6634d943fdd1ff007d50529b1ed811086e95a6b65fba47fac87fdd3dc7fb278fa75a0b52ea8aafa5cadcdbbc33447eeb891573f50c4107d8d32b9d2dc85b4abafee47ff7fa3ffe2a81aad1eff991369575fdc4ff00bfd1ff00f15416aac3bfe0c89b4abb0721231ff6de3ffe2a994ab43bfe0ffc869b0d400c023ff0223ffe2a98d55a7fd27fe444d63a87a8ff00bff1ff00f154ca5569ff0049ff00911358ea03baff00e0447ffc5505fb5a5fd27fe44530bbb4205cc6c01e9bc641fa1e87f0341a4542a7c2c6fdaffe99b7fdf54c9f66fb9fffd5f0b08b112eadf232e0301923fce0d49e0ddcb464ad2abd908016924f377e4af6db8c6734c9516a7cdb2b12416a8607321225fe103a7e3436673a8f995b62c48415412b655061571f4e4faf41fe350427bf2f51e8a48c8b74c76ce2999b7fde2cdb33c4fb96de3ce314194d292b390d58bfe990ff00bea8073f325584ff00cf2ffc7a821cfcc95613ff003cbff1ea921cbcc99621e532f91f39e8dbba5221c9def7223693963b7007d69dd16aa47a8a2cee3dbf3a2e83da4098daca7388c0ff00815174473a233637593c63f1a2e8af6900fb05d67a7eb45d15ed21d86c9637284ab9556f76145d0a3520f54096b2e7076124f1f30a1bec3725ba27f31a093cab8e71fc43b504c64a4ae86490dbb124f95f9d05294885a0b6f48bfefaff00ebd516a5222782dbfe997fdf5ffd7a0b52910b416dff004cbfefaffebd05a94889e0b7ff00a65ff7d7ff005e916a7320786dbfe997fdf5ff00d7aa2d4a642d05b7fd32ff00bebffaf4cb5299243e6db83f6599a346ea9f791beaa783fad206e33f8d5ff31774ff00f3eba6ff00e038a0768ff3bfbd7f91ffd6f0b88030286e9bbe948f01dd4b426814091780ac41ca8391d452226f42c00ec55531923249edd3fc691969bb278e38e11b9ce5bd4d064e4e5a22546964601131c640209247ae05225c6296ac9d639ffb87fef86ff0a0c9ca9f7fc512ac771fdcff00c71bfc2821ca1dff0022658ee3fe79ff00e38dfe148872877fc89962b9fee1ff00be1bfc2912dc7b92ac573fdc3ff7c37f8504be52458ae7fb87fefdb7f85227dd26856e91b2622dc74f2dbfc2822566ad71a2def01040938e7ee37f8503ba096d6ea572ec9264fa23ff0085011b45590cfb0dd0e892ff00df0ffe1415cc86c96372edb9d2427d4c6dfe140d34b4442da7cfff003c9ffefdb7f8505a92236d3ee3fe79bffdf0dfe14c6a688db4fb9deac1650a01057cb6c1fd299aaa91b5889b4fb8ff009e6fff007c37f850355177216d3ae3fe79bffdfb7ff0a668aa47b90bd85c7fcf27ff00bf6ffe1416aac7bfe4579aca641974619e06548cfb0c8a0d23522f61da35d5bd95ef9b776e278f691b4fad0462694eb53e5a72b328caa2eaf88842c4b2bfca18e1573ea6a91d516e9d3f7b5b22e43a0ea2c825b700a1ce181e0e0e3fa51739e78fa09f2cf72aed9ffe7b27e541d1ee9fffd7f098590c7b1f239ea291e0493bdd16ade2d9206560ca47047d69332a92bab16a01fbd4ff0074ff004a4633d9ff005dc0e44f291d4038f6e2902d91af7733c179716b6cc6082227fd570cf8eecd9c93f8e3da83929c54e11a93576fbecbd16c8856ea4ff9fbbbff00becfff0015403a51fe55f77fc0264b997b5d5dff00df67fc6912e9c7f957f5f2265b997fe7eaeffefb3fe348cdc17f2afebe4598aec851bae2f89f51291fd69194a0fa25f7127dae5ddf25d5e01ef21ff1a05cbdd21eb753ff00cfdddffdfc3fe34896bc9122dddc7fcfe5dffdfc3fe3413f24385e5cff00cfe5e7fdfc6ff1a057f243fed975daf6f7fefeb7f8d0177d9122dfb851beeb512ddc8b8207f3a0579df4b7dc34ea07fe7e753ffc0934c7fbcf2fb8a6f7f73938bebe03b7ef5bfc683557ea91135f5d7fcff5f7fdfd6ffe2a82d2f25fd7c889afee7fe7fafbfefeb7ff00154cb4bc97f5f2226bebaff9febfff00bfadff00c5532d457f2afebe442f7f73ff003fd7ff00f7f5bff8aa65a8afe55fd7c889af6e9836dbfbec852dccaddbfe05416a9c56f15f77fc011352bb8812f3bcf1b2e1d2e1cc8927fb2549fd4608c641a0d1d2849e8acfcb46bceffd21925943a90326981cca397b627748bee3fe7a2fb8f987707ad03555d1d2aeddfa7fc07f83e9d8821d235482e23956caef7236e188a553f98191f8532a58ba124e2e6b5f35fab3522bad72080451e9d36c19c6e82427924f5dbef4f438aa53c2549734aa2fbd7f9993fd9ba8ff00d03aebfefc49ff00c4d3b9ddf58a1fcebef5fe67ffd0f068d41db92727da83c26cd0b51fbb4ff3dcd41cd57765887fd62ffba7fa50652dbfaf306ff5b2fd1bf95208ec8d1d447fc4deff00fde7a67250fe0c3e441046649151464938c0a0d64ec7b0d8786bc3da16996e75ef28dcca32c65638cf7000f4a47cdd4c66271151fd5f65d8cff13af84868b3ff0066f91f6ce3cbf28b6739ef9ed8cd49ae19e37da2f6bf0fc8f3f5148f4db3a7f02e9516a9ad2c7729be0452eebeb8e83f3228471636b3a549b8ee278b34c8f4cd7278215db0f0c83d0119a4c586aaead2527b992ab48d1b367c35a49d5b538e02488c7ccec3b28a12b9857adeca0e47752d9785acdcc13adbac89c3076627f1aad0f3954c5cd732fd0e3fc629a4fdaa1fec7dbb767cfb33b739e3ad27e477e15d5e57ed4b9e09d1acb51b4d45ef22f319140439236e41e7ebc5344632bce938a83dce2a64c39148f4533afb2d12c65f015d5fbc39bb524ac993c60818aae8714b11358b8d34f439af0b5a4579e22b282e50490bc80329ee284776266e146528ee91e8f7fa7f83ac27305ec36b0ca002558be706a8f1a9d5c7558f341b6be45564f01e3e6fb0e3eaf41a279979fe07936a22dffb4ef058ee36d97f2b3d76f6fd283e8e0e5c91e7df4b992e3e6e78a67426452801be5341a4593a46a612db189dd8ead410e4d4ad7fc86f92a48cc47f36ff001a771f3beff917bec107f71bf335463eda47ffd1f12b2b19ae234923d9b47f79c03f7b1fd454b67ced4ab1836992db7faa43fe7ad06553765987ef8ff74ff4a9339ec211fbd9be8dfca805b234350ff90b5f7fbcf4ce4a1fc187c8e93e19e93fda5e2289e45cc36dfbe6f723a0fcf152726695fd8d076dde859f88faaff68788648a36cc36c3ca5c7723ef1fcff950679750f654137bbd4e5d291d6c9d2919b3d27e1942b6f61a85fca30aa02e7d80dc7fa508f1b329394a34d75ff8613e25db069acaed3a488509fa723f43448597cbdd941f438a415277367a1f83a04d2b41bad4e61f3303b7dc0e9f99a6b4573ccc53756a2a48e22ee479e792591896762c4fb9a93bd592b22b38a0a4cee7e1cffc786a7f41fc9aae270e3fe287f5d8f3db853e63707ad23d6477ba70c7c31bccff00b7ff00a10aae87993ff7e8ff005d0e3fc15ff23569ff00f5d4523d2c5ff027e85cf8a40ffc24ef8cff00aa4fe54c8cabfddd7ab388727de99ea21f633b5add79f18059158807a74a61569aa90e47d4a13b179198f5624fe741d30d15862b4617e703a7a77a656bd0432c61700e0edec0f5a4572b654695ff00e7a8fc8d59aa8aec33cd7ff9eabff7c7ff005a91a722fe99ffd2f0e4b51f66f3771cedddd38eb8c67d6a6e7cfb9fbdca59b6ff00569fe7bd0613dd9621ff0059ff00013fd2a4ce5f089ff2d65ff74ff2a016c8d2d43fe42d7dfef3d33928ff00061f23d1be0d329835544204e4215ffc7bfae291e3e777bc1bdb5fd0e02f9248ef6649c1122b10d9eb9cf3527ae9a6935b0c4a0cd9613922919b3d3e1ff8957c381da4b81ffa11ff00e2451d0f15fef71be9fa7fc11fad7fc4cfc076b71d5e10a4fe1f29fe943d854bf778a947bffc39c0c7d47d6a4ef67a26ab97f02da35bfdc554df8f4e47f3a6f63cca7a626499c133715077a444e69948eebe1a95fb26a05beee573f4c1ab89c3986f0b169b55f098277456f9ff00af73fe14682f638ceefef27d666b1b8f04dfc9a62aadb1520054da33b8678a64d18d48e2a2aaee79bf82bfe46ad3ff00eba8a47b38bfe04fd0f49d7f51f0ddb5fb47ac450b5ced049780b9c638e714cf1b0f4b17285e8bd3d4f1df124b6736b175269a9b2d59c98d718c0fa76aa3e9b0ca71a71551ebd4c95eaffee350744ba7a9564ef4cd225ffb258980037710723af71f866918fb5aaa5a45d8a7656d6d2eab0c134c0dbb7de7076e383de99d156ad48d1738af797ccd3d6f49d22db4c9e6b4b8df3a81b57cf0d9e476a699c984c5e26a5551a91b2f439cdf67fdd1f98a47a76a87ffd3f078017210138ea683c1969a9a4a76af03d80a9395ea3eddf74a707202f5f5e7ad48a6ac877fcb597fdd3fca992b6468ea3ff217bfff0079e83928ff00061f2377e1eeadfd95e22b7676c4331f2a4fa1eff81c1a0e7cc687b6a0d2dd6a8d8f89fa51b3d77ed51ae22ba1bf8e9b870dfd0fe35072e575fda51e57bc7fa471ea08ea283b9972c6269eea2890659d828fc6919cdd95d9ecfab6a3a568f05b5a6a2032841b14c7bc60719aa3e6a8d2ad5dcaa53fcc2d6ef4ed7349beb6d34009b082a13660907071f5148274ead0a919d43c99b2ae41e083507b6d1dff00812e92ff004abbd2e7391b495cff0074f07f238354bb1e66362e9ce3551c65fdbc96b792c122e1e362a6a6c77c6d24a4ba94dc91d682d23bbf87073a7ea7f41fc9aa91e7661f143faec79ddc1fde37d691eba477fa6ffc930bcff81ffe842aba1e654ff7e8ff005d0e3fc147fe2aad3ffebb0a11e9633f813f42e7c5304f89df03fe5927f2a64655feeebd59c4bab7a507a8862f593fdc6a65cba7a89653c50cec66b71700a950a4f73de81d484a71b4656235b650a4c8324f38cf02994e6fa113c56fe8bff7d7ff005e82d4a642d15b7a27fdf5ff00d7a668a5323f2adbfd9ffbebff00af4cae6a87ffd4f0ab33890fd3fa8a19e054d8b99c21ff0077fa1a831ea1647f787e94d91576263feb66ff0074ff002a9256c8d2d4bfe433a87fbd25339692fdcc3e456898ab823a8a0d1a3d6745f1fe9d269b143ad40ed3c4a14b08c386c77e7a1a47cf57caaa29b950764fe441e28f146817fa2cf6f65687ed0f8d8c6154da73d72290f0b82c453aaa53969ea71fe1fbd8ecb57b4bab842f145207651d481527a35e9b9d39463bb469f8c35b4d6f5733c21c40aa110375c0eff9934339b0b877429f2bdcb5e09d762d16fa46b90ed0489b5b67241ea0ff009f5a168678cc33af0b477464dfdc24f7b3cb12948ddcb2afa027a52368c5a8a4cb5a0eab2695a8c57318ddb7865fef03d450b433ad4555838b3bdff84c34298079a093791cee8958fe75573ccfa9575a27f8b392f18eab61a95d42fa743e5854c31d81771cfa0a9677e168d4a716aa3b92f843c436da3db5fc77292334aa366c03a80783f9d342c5616559c5c7a1c94cfb9c9f5a0ee48e9ed3c476b0782ee34a6490dcb93b48036e0907afe14ce5961252c4aad7d1181e1cbf8b4ed76d2eee3779514819b68c9c508ecaf49d4a52847768f4693c71e1b90ee96091dbd5add49fe75478d1cb314b48cbf1644de37f0b01cda311e9f654ff001a0b596e33f9bf16792ea53c371a95e4d6d17950397644fee83d0507d1d3838c23193bbd0a96801dec4739c53349bb684f3c8204460a1e6933e5a91955c1c163ea720e074e327b0a41187336b64b7ff2ff003fb914e4bab853837480fa6c5ff0a668a952fe5fcffcc81ef2e7fe7f53fef95ff0aa345469ff0027e647f6cb9ff9fe4ffbe57fc282bd8d3fe4fccfffd5f09b5ff587e9fd45078353e12d13f27fc07fc6918f516c8fef0fd29326a2d0b320292b1607638c645490b546b328bf90dcdbbc4b74f932c4ec155f3d590b103eaa791db23a073c57b28f24b65b3fd1dbf3ea0b6175ff003cecff00eff45ffc553337521ddfdcff00c89d34fbafee59ff00dff8bff8aa925ce3ddfe3fe44cba75dff72cff00effc5ffc55043947bbfc7fc89574fbbfee59ff00e0445ffc55225ca3ddfe248ba6ddff0076cfff000221ff00e2a912edddfe25a82c2e11486b7b090fa9ba8c63f27a0ce51bed268945a4dff3e9a7ff00e05c7ffc5d066e9bfe67fd7c86496172cd958ec907a0b988ff00ecd40d2b2d5b1bfd9f75fddb3ffbff0017ff0015458775e7f88d16176073f643ff006f117ff15407347cff00118da7dd7f76cbff000222ff00e2a81de3e7f891b69f73e967ff0081117ff15415cd1f3fc7fc889b4fbafeed9ffe0445ff00c553b14a71f3fb9ff911b69f75e965ff0081117ff154ca5561e7f73ff2216d3eebfbb65ff81117ff0015416aac3cfee7fe444d6175fddb2ffbff0017ff00154ca55e9f9fdcff00c824b58a2961b5b86db7372a30d0846440c70b9209ddd39c1e3dcd05fb49493a90f863def776dfd3cae675b02a2407a8623f2a0dea6b6636ecfcf65feec9ff00a1bd50e9ed3f97e48cd8e17b99dd5195400cccce70154752683aeea2aec491ec10ec0971363f8bcc11e7e8bb4e07e340d2acf5ba5f2bfe37437ccb1ff9f6b8ff00c081ff00c4550f96aff32fbbfe09ffd6f0e48d631d724f53fe7fcfae3a549e049dc5623cb6f618fe7fe34c95b8b101e597dd861d307a548a5bd8b96d701c6c971cf1ec68663285b544de43a9fdd37ca7b1a0cf99752648a7ff0063f21fe14896d122c53ffb1f90ff000a6436899229ff00d8fc87f85492ec4ab0cffec7e43fc283376255867ff63f21fe1489648229ff00d8fc87f852258e114ffec7e43fc2806877953ffb1f90ff000a08d04f2e6ff63f21fe14068218e7ff0063f21fe1406834c73ffb1f90ff000a0ad08cc73ffb1f90ff000a652688da29ff00d8fc87f853293891b4537fb1f90ff0a0a528913453ff00b1f90ff0a65294464c93c912c6db36a9c8edfe7ad0545c13ba1d6d35d41184f34045cedf9412b9ebb588cafe1404e34e6ef6d7fadd6cfe63001b1882b1c49c33b7dd5f6e3a9ff6473fce82efaf76fa7f5f9bff0080539e659658dd01582152a19bab649249c70393d074e9cd33a145c534f7653b46e6f0ff00d3bc9fd2a8ba8be1f545fb192d4594419a0116dfdf2b63713df8ea7db152cc2ac6a73bb5efd3fadbd4e7fe4ab3d03fffd7f0d670a324ff00f5fe9fe703dcd49e025cdfd7f5fe6c89184932091b626719f4aa29e8b4d592b0896460b233807821719a447bcd5da2ddac0d382d1c47cb5fbd23b8545fa9e9f875a9339cb9746f5fc4ba935ac785f3e4723bc71657f02cc0fe82918ca337adbf1ff244ab736bff003d6e7fefcaff00f174c8709765f7ff00c0265b9b5ff9eb73ff007e57ff008ba08709797f5f2255bab4ff009e973ff7e57ff8ba04e2ff00aff86255bab4ff009eb73ff7e57ff8ba44b8b255bab4ff009eb75ff7e17ff8ba44f2b1c2eed7fe7adcff00df95ff00e2e8138b1c2ead7fe7a5cffdf95ffe2e825c587daed7fe7adcff00df95ff00e2a90b9187daad7fe7a5cffdf95ffe2a817b3606eadbfe7a5cff00dfa5ff00e2a80e497f5ff0c30dd5b7f7ee7fefd2ff00f154c5c92f2febe430dcdb7f7ee7fefd2fff001540fd9cbcbeff00f8030dd5b7f7ee7fefd2ff00f15415c93f2fbffe01135d5b7f7ee7fefd2fff0015543f673f2fbdff00911b5cdb7f7ee7fefd2fff0015415ece7e5f7bff002226b9b6fefdcffdfa5ffe2a829539f65f7bff002236b9b6f5ba7ff6762ae7db3938fca91aaa553cbf17fa22adccc64daf738545e238506028f61fcfb9ee6837a692d21bf57fd7f5d8aa8935f4de5c61700163960aa8a3a924f007bd51afbb495dff00c1246b73636d2c93491117113470f94e1c3f232723a018c73ce7b5025355a4a314fdd7777d2de5f3fb8c9aa3a02803ffd0f0d9eda4da664659e21d648f90bf51d57f1148f0635229f2bd1f67fd6a36ded259d0c8a02c23acae76a0fc7bfd064d0394e31767bf6ea4f17d9e26db0c66ee5fef382b18ff0080f53f8e3e94886a72f89f2afc7eff00f2fbc9269da465377319197eec6bc2afb00381f8628252fe456248e59997312aa2761eb488715d45373709f7891f55a09e443d6f26feff00e82821c112adecd9fbff00a0a097044e6ea500e24ced383f28a445bc805f4dfdff00d053138a357488e5bd591e49ca46842fcaa0924f35272626a7b2692576c82fda7b3ba684ca1860306da0641e941a526aac39ac57fb6cdfdefe54ec5f2213ed936396c7e029872210de4bfdff00d0548722156ea7775456f998e070298dc1257639cddab10c40c7ae2992941aba18cd71ff003d17f2ff00eb505251ec44ef723a303f4c50528c081e6b91fdefc00348d142042d71704e3e6ffbe682d5380d325d1ef8fae2a87cb4c824864724bbae4d06aa696c87da136ef20917cd865431ba86da7190720e382080682a6f9d2b68d3ba197a7cc8a18ade268e08b711bdc3333363249e0760303d281d2f75b9cdddbf2d34298b7909fbb8f726a8d1cd0ffb29feff00e94ae47b4f23ffd1f0c89d4481e176b7987420e07e748f0249b5692ba1d3c85dc3ddccd338e0283c0f6f6fc28082515682b21a1a5946d8c08e3f6e07ff005e98ec96fb93430a4782df31f7ff000a4449b64e6e02b6d192de8a3269589e5258a747fbaca7dbbd221c5a24f2a27fe1c1f6e2816a34da9eb1be7ebfe34086c82603e70c40efd4504f2a181e81729a96d79f616cdadc821c0dead1ee19fa5239e741565fbc8ede633ed11cd7466bc95a42df7be4fcbb8a0af66e10e582b1196b6c9c3498a63b487c335b4722be59b1d8d029465256079ed8b13b1464e701690d424869bc8d3ee263f214c3d9b7b91bdf31248039ee4e6829524426ee4f55fca82bd9a10de3770a681fb2434de8eebf91a07ec8635e263a37e94ec52a4c81ef0ff0a8fc4d163454481eee43d0a8fa0a76345490cfb4c9dca9fc298fd9a17ed4ddd54d01ecd0e37448e1467eb9a41ecfcc679f2ff95a07c913ffd2f0b481a584c8232141c6579fd3f11f9d0782e6a2f96e3a28501c31dcc39c761fe7dff2a01c99333aa607258f0001927e8291095c7794edccec631fdc53973f53d07f9e282aeba0ef3d2d976a62253d97a9fa9ea7f9504f2f36af5245992e3ef88e6fa8f9bf31cd22796db684ab1a63f772c91ffb2ff3afff005bf5a41a8f02e179f2c4a3fbd09ddfa75a42b208ee918e030c8ec78229d897126137bffe3d419b88a26f7ffc7a827945137bff00e3d40b943cdf7ffc7a8172879befff008f502e510cbeff00f8f501ca34cbeffad01ca34ca3fc9a07ca34cbeffad03e523327bfeb4c7ca31a4ff39a07ca46d27f9cd05a891b49fe734ca5119bbfce681d8377f9cd0160ddfe72681d88dc3313e548c187542d41a2b2dd117fa47fd35fccd32ed13fffd3f098629658a42a71127ccd96c0faff003a0f0a528c5abeec7922345897ab91b8f4ff003fe7d6906fa962d1be4b82a407df96c70db79fd33d7f0cf148992d865c348a998f1803e623a8ff003f98f6a07148a04e4e4f5aa2c280278eea54fe2cff00bdcd0438a2dc57cbc6f52a7d579a5625c4b82e927003949bda4193f9f5fca910e3614243ff003eb1ff00e3ff00e3410efdc5db0ffcfac7f9bff8d493af717643ff003ec9ff008fff008d50b5ee1b21ff009f64ff00c7ff00c6a4577dff002136c5ff003ec9ff008fff008d0177dff20db17fcfba7fe3ff00e340b5eff90d2b17fcfb27e6ff00e34c7ef77fc86958bfe7dd3ff1ff00f1a617977fc842b17fcfba7e6ffe348abcbbfe5fe446562ff9f65fcdff00c6a82f2fe6fcbfc86158bfe7dd7f37ff001a0bbcbf9bf2ff00218522ff009f65fcdffc681de5fcdf97f909e5c3ff003ecbf9bff8d03e697f37e5fe427970ff00cfb2fe6ffe340734bf9bf2ff00217cb8bfe7dd7f36ff001a41cd2fe6fcbfc80431bfcab188dcfdd604f07f1340fda496addcaecde644afd1c0dc31f5e7fc7f3a0d568ec33ce97fbc69d83d9c4fffd4f07b605a78d07f130046783cf7a0f0e6d24db127468e67473960793eb4045a924d135a96965450fb261f724fa763fe7daa4536a29b6b42dab099d9536adc21c155fbaf8eebfe1dbb71c0097a2bf42a3983710f1ba1f6ff00f5d32b51bb2d8f49197ebffeaa61a923dbc1f670629834b9e54b01c7f9c7f854894a5cdaad0afe563ef4b18fa1cff2aa2c9a036caffbe691d71fc2b8e7f3a9226a76f74803550da14352b0ac383516158962ced32e1484ea0f7a04d74ee4c4125a3db182df3e73d2a48d3713764ab6c8f120da07a503b5b4bec2125577158c888e0fbd03b5fe654670589000c9e82acd12185a8048ddd7fc3d3691676d7124f1ca253b4aa82369c6783dc7bd4a7738f07984715525051b5bfe1be46689e1583ca36a8d26d23cd24eec920e7f0e9f8d0757249be6e6d3b10c91c68704b7e14c69c98988bfdba63f78926789e38f645b7cb014907058f2727de90a3cc9bbbdc8582ed52a08ce7a9a652bdec5eb2e90fd7fad239eaf52ac0547d9fcc384e431f6a0da57f7ac59f22cbfe7f1bfef9a08e7a9fca7ffd5f04a478776140aec31405d80243210707340eeeccd3d69540460a377ae39fe1ff134333a4d99941a5d82f28e4f60c47e6681b6ee893030fc0e1148fc8504b6c8ff00e59467b96e4faf3415777627f013df340aeee2d02bb04fbe83b1201f7e9487762c7c87cf387c0cf618a681b7a7a062815d8ec0f4ed40aec64800298e324e7df8a19516f51a7b7f9ee681dd8ea057638cf34caab34b248a9c20662428c8e9e941bd2a7052959226da09e83f2a0e2bb1f9a090a005700f500d304d905d28545da00fa5235a6ddcb7623fd4d332ac51c7ee62a46d77ccc6d055d9ffd9),
(2, 'Criptare', '', 'Procesul de codificare a informatiilor transmise pe Internet, pentru a asigura securitatea acestor informatii, precum si a preveni accesarea lor de catre utilizatori neautorizati.', 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(3, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(4, 'DTP', 'Desk Top Publishing', 'Categorie de software orientat pe tehnoredactarea computerizata a documentelor mai complexe, in special tehnoredactarea de reviste si publicatii.', 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(5, 'Fisier', '', 'Reprezinta o colectie de date stocate pe un suport magnetic extern (cum ar fi hard-diskuri, dischete sau benzi magnetice). Ele sunt identificate printr-un nume si printr-o extensie de nume optionala.', 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(6, 'Pixel', 'Un punct de pe monitor', 'Reprezinta cea mai mica unitate grafica utilizata in afisarea imaginilor pe monitorul calculatorului.', 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(7, 'Sata', 'Serial Advanced Technology Attachement', 'Este un standard de conexiune a hard disk-urilor sau DVD-urilor; succesorul conexiunii EIDE. Un canal SATA poate conecta un singur HDD sau DVD.', 0x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
(8, 'ALU', 'Arithmetic Logic Unit', 'Este unitatea logic-aritmetica, parte componenta a unui procesor (CPU), care executa operatii aritmetice si logice între operanzii unei instructiuni. Poate fi divizata în doua unitati: AU – Arithmetic Unit si LU – Logic Unit. Exists si AU pentru operatii în virgula fixa si virgula mobila, acesta din urma fiind numit coprocesor numeric. Se mai numeste si MCP (math co-processor) – coprocesor matematic.\r\n', ''),
(9, 'API', 'Application Programming Interface', 'Set de rutine care pot fi utilizate de catre o aplicatie pentru a cere sistemului de operare executia unor servicii de nivel inferior. Destinatia lor principala este dezvoltarea aplicatiilor complexe fara a avea cunostinte detaliate despre un anume dispozitiv sau program. OpenGL si DirectX sunt exemple de astfel de interfete cu ajutorul carora se pot scrie rapid aplicatii grafice fara a avea cunostinte amanuntite despre placa grafica.', ''),
(10, 'ATX', '', 'Standard pentru placa de baza a unui computer desktop. Acest standard se refera atât la aranjarea componentelor si conectorilor pe placa, cât si la dimensiunile placilor. Standardul ATX se mai refera si la sursa de alimentare ce trebuie ss îndeplineasca anumite conditii legate de dimensiuni si conectori.', ''),
(11, 'BIOS', 'Basic Input/Output System', 'Este un program, rezident într-un cip pe placa de baza, numit CMOS, care este rulat la pornirea sistemului si a carui principala functie este initializarea si testarea componentelor, precum si rularea boot-loader-ului sistemului de operare instalat pe HDD. Initializarea începe cu procesorul, apoi memoria si placa video, urmatoarele fiind controllerul de storage, porturile USB si perifericele.', ''),
(12, 'DRIVER', '', 'Software care permite si controleaza comunicarea între sistemul de operare si periferice. De regula, este pus la dispozitie de catre producatorul respectivului periferic. Calitatea sa este foarte importanta si influenteaza performanta si stabilitatea sistemului.', ''),
(13, 'PCIe', 'PCI EXPRESS', 'Este o interfata de comunicare de mare viteza, ce ofera o latime de banda mult mai mare decât AGP sau PCI. Prin combinarea mai multor canale (1, 2, 4, 8, 16) se obtin sloturi cu dimensiuni si destinatii diferite. Momentan se folosesc maxim 40 de canale pentru PCIe, din care 32 pentru placile video în configuratie x16 + x16 pe placile care suporta SLI sau CF.', ''),
(14, 'IP', 'Internet Protocol', 'Prin adresele IP se identifica un computer conectat la Internet.', ''),
(15, 'MODEM', '', 'Este dispozitivul care permite conectarea computerului, prin linia telefonica, la alte computere, si la reteaua Internet, pentru comunicare si transmisii de date. Exista modem-uri interne (care se monteaza in interiorul cutiei PC-ului) si modem-uri externe (care ramân în exterior, ca unitati independente conectate la PC).', ''),
(16, 'ROUTER', '', 'Un releu care conecteaza o retea locala (LAN) cu alte retele.', ''),
(17, 'TCP ', 'Transmission Control Protocol', 'Protocol de Control al Transmisiei (cunoscut si ca TCP/IP). Protocol care permite unui computer sa se asigure ca pachetele de date transmise de el în retea sunt receptionate la destinatie în ordinea lor corecta. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `words_add`
--

CREATE TABLE `words_add` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `short` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `capitol_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words_add`
--

INSERT INTO `words_add` (`id`, `name`, `short`, `description`, `capitol_id`) VALUES
(1, 'here...', 'here...', 'Here....', 0),
(2, 'here...', 'here...', 'Here....', 0),
(3, 'here...', 'here...', 'Here....', 0),
(4, 'here...', 'here...', 'Here....', 0),
(5, 'here...', 'here...', 'Here....aaa', 1),
(6, 'here...', 'here...', 'Here....', 1),
(7, 'here...', 'here...', 'Here....2', 2),
(8, 'here...', 'here...', 'Here...10', 10);

-- --------------------------------------------------------

--
-- Table structure for table `words_modify`
--

CREATE TABLE `words_modify` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `short` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `capitol_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words_modify`
--

INSERT INTO `words_modify` (`id`, `name`, `short`, `description`, `capitol_id`) VALUES
(1, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0),
(2, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0),
(3, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0),
(4, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0),
(5, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 2),
(6, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 2),
(7, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0),
(8, 'DNS', 'Domain Name Server', 'Adresele reale ale serverelor legate la Internet sunt formate din secvente de 4 numere din 3 cifre fiecare, separate de caracterul (punct). Deoarece este destul de dificila retinerea atator numere pentru fiecare adresa, exista posibilitatea ca utilizatorii sa introduca in locul adrsei numerice, o adresa literala, usor de retinut, de exemplu www.aol.ro. Serviciul DNS preia aceasta adresa literala si o transforma in adresa numerica, fara ca utilizatorul sa mai fie nevoit sa o cunoasca si pe aceasta din urma.', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capitol`
--
ALTER TABLE `capitol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `capitol_words`
--
ALTER TABLE `capitol_words`
  ADD PRIMARY KEY (`id`),
  ADD KEY `capitol_id` (`capitol_id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `other`
--
ALTER TABLE `other`
  ADD PRIMARY KEY (`id_word`),
  ADD KEY `my_binary` (`my_binary`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words_add`
--
ALTER TABLE `words_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words_modify`
--
ALTER TABLE `words_modify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `capitol`
--
ALTER TABLE `capitol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `capitol_words`
--
ALTER TABLE `capitol_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `words_add`
--
ALTER TABLE `words_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `words_modify`
--
ALTER TABLE `words_modify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `capitol_words`
--
ALTER TABLE `capitol_words`
  ADD CONSTRAINT `capitol_words_ibfk_1` FOREIGN KEY (`capitol_id`) REFERENCES `capitol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `capitol_words_ibfk_2` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `other`
--
ALTER TABLE `other`
  ADD CONSTRAINT `other_ibfk_1` FOREIGN KEY (`id_word`) REFERENCES `words` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
