-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 09:37 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(9, 'lol', 'abdul_kuddus', 'abdul_kuddus', '2021-05-04 17:16:20', 'no', 71);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(15, 'ahsan_habib', 'asd_asd');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(26, 'abdul_kuddus', 72),
(27, 'abdul_kuddus', 70),
(28, 'abdur_rahim', 93),
(29, 'abdur_rahim', 92),
(30, 'abdul_kader', 92),
(31, 'abdul_kader', 93),
(32, 'abdul_kader', 91),
(33, 'abdul_kader', 90),
(34, 'abdul_jabbar', 93),
(35, 'abdul_jabbar', 92),
(36, 'abdul_jabbar', 91);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(50, 'abdur_rahim', 'ahsan_habib', 'hi rahim!!!', '2021-05-04 22:24:59', 'no', 'no', 'no'),
(51, 'abdur_rahim', 'ahsan_habib', 'hi rahim!!!', '2021-05-04 22:25:32', 'no', 'no', 'no'),
(52, 'ahsan_habib', 'abdul_kader', 'hello ahsaan!!!', '2021-05-04 22:29:16', 'yes', 'yes', 'no'),
(53, 'ahsan_habib', 'abdul_jabbar', 'hello ahsaan!!', '2021-05-04 22:32:20', 'yes', 'yes', 'no'),
(54, 'abdul_jabbar', 'ahsan_habib', 'hi jabbar!!', '2021-05-04 22:33:15', 'no', 'no', 'no'),
(55, 'abdul_kuddus', 'ahsan_habib', 'hello kuddus!', '2021-05-04 22:38:14', 'yes', 'yes', 'no'),
(56, 'abdul_kuddus', 'ahsan_habib', 'how are you?\r\n', '2021-05-04 22:38:21', 'yes', 'yes', 'no'),
(57, 'ahsan_habib', 'sinjan_sadat', 'goo khao', '2021-05-04 22:39:52', 'yes', 'yes', 'no'),
(58, 'sinjan_sadat', 'ahsan_habib', 'tumio\r\n', '2021-05-04 22:43:00', 'yes', 'yes', 'no'),
(59, 'asd_asd', 'asd_asd', 'hi random 1!!!', '2021-05-17 19:31:28', 'yes', 'yes', 'no'),
(60, 'asd_asd', 'asd_asd', 'hi!!!', '2021-05-17 19:32:30', 'yes', 'yes', 'no'),
(61, 'random_guy2', 'random_guy1', 'hello random guy 2!', '2021-05-18 01:03:09', 'yes', 'yes', 'no'),
(62, 'random_guy1', 'random_guy2', 'hello random guy1!', '2021-05-18 01:03:47', 'no', 'no', 'no'),
(63, 'random_guy1', 'random_guy2', 'how are you doing?', '2021-05-18 01:03:59', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(19, 'ahsan_habib', 'abdul_kuddus', 'Abdul Kuddus liked your post', 'post.php?id=70', '2021-05-04 19:07:59', 'yes', 'yes'),
(20, 'ahsan_habib', 'abdur_rahim', 'Abdur Rahim liked your post', 'post.php?id=93', '2021-05-04 22:24:02', 'no', 'yes'),
(21, 'ahsan_habib', 'abdur_rahim', 'Abdur Rahim liked your post', 'post.php?id=92', '2021-05-04 22:24:03', 'yes', 'yes'),
(22, 'ahsan_habib', 'abdul_kader', 'Abdul Kader liked your post', 'post.php?id=92', '2021-05-04 22:29:37', 'no', 'yes'),
(23, 'ahsan_habib', 'abdul_kader', 'Abdul Kader liked your post', 'post.php?id=93', '2021-05-04 22:29:39', 'no', 'yes'),
(24, 'ahsan_habib', 'abdul_kader', 'Abdul Kader liked your post', 'post.php?id=91', '2021-05-04 22:29:41', 'no', 'yes'),
(25, 'ahsan_habib', 'abdul_kader', 'Abdul Kader liked your post', 'post.php?id=90', '2021-05-04 22:29:42', 'no', 'yes'),
(26, 'ahsan_habib', 'abdul_jabbar', 'Abdul Jabbar liked your post', 'post.php?id=93', '2021-05-04 22:32:04', 'no', 'yes'),
(27, 'ahsan_habib', 'abdul_jabbar', 'Abdul Jabbar liked your post', 'post.php?id=92', '2021-05-04 22:32:06', 'no', 'yes'),
(28, 'ahsan_habib', 'abdul_jabbar', 'Abdul Jabbar liked your post', 'post.php?id=91', '2021-05-04 22:32:07', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(83, 'hello', 'ahsan_habib', 'none', '2021-05-04 20:20:52', 'no', 'no', 0, 'assets/images/posts/60919e94e4f38Annotation 2021-01-08 183705.png'),
(84, 'hello', 'ahsan_habib', 'none', '2021-05-04 20:21:17', 'no', 'no', 0, 'assets/images/posts/60919ead2115eAnnotation 2021-01-08 183705.png'),
(85, 'hello', 'ahsan_habib', 'none', '2021-05-04 20:21:20', 'no', 'yes', 0, 'assets/images/posts/60919eb0a011fAnnotation 2021-01-08 183705.png'),
(86, 'hello', 'ahsan_habib', 'none', '2021-05-04 20:21:25', 'no', 'yes', 0, 'assets/images/posts/60919eb5ad3dcAnnotation 2021-01-08 183705.png'),
(87, 'hello', 'ahsan_habib', 'none', '2021-05-04 20:21:30', 'no', 'yes', 0, 'assets/images/posts/60919eba5c300Annotation 2021-01-08 183705.png'),
(88, 'hello', 'ahsan_habib', 'none', '2021-05-04 20:21:32', 'no', 'yes', 0, 'assets/images/posts/60919ebce8c1aAnnotation 2021-01-08 183705.png'),
(89, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/9xDYF42l48A\'></iframe><br>', 'ahsan_habib', 'none', '2021-05-04 20:25:17', 'no', 'no', 0, ''),
(90, 'Hello guys how are you all?', 'ahsan_habib', 'none', '2021-05-04 20:37:51', 'no', 'no', 1, ''),
(91, 'kaytranada', 'ahsan_habib', 'none', '2021-05-04 20:38:37', 'no', 'no', 2, ''),
(92, 'kaytranada', 'ahsan_habib', 'none', '2021-05-04 20:38:55', 'no', 'no', 3, ''),
(93, 'kaytranada', 'ahsan_habib', 'none', '2021-05-04 20:39:07', 'no', 'no', 3, ''),
(94, 'lol', 'ahsan_habib', 'none', '2021-05-04 20:46:25', 'no', 'yes', 0, 'assets/images/posts/6091a491c0887courses spring 2021.PNG'),
(100, 'Hello there!!!', 'abdur_rahim', 'none', '2021-05-04 22:23:29', 'no', 'no', 0, ''),
(101, 'test test<br /> ', 'abdur_rahim', 'none', '2021-05-04 22:23:43', 'no', 'no', 0, 'assets/images/posts/6091bb5f73338Annotation 2021-01-08 183705.png'),
(102, 'hellooo!!!!!!!', 'abdul_kader', 'none', '2021-05-04 22:28:43', 'no', 'no', 0, ''),
(103, 'test test', 'abdul_kader', 'none', '2021-05-04 22:28:55', 'no', 'no', 0, 'assets/images/posts/6091bc9793e76Annotation 2021-01-08 183705.png'),
(104, 'hellooo!!!<br /> ', 'abdul_jabbar', 'none', '2021-05-04 22:31:51', 'no', 'no', 0, 'assets/images/posts/6091bd472aa62Annotation 2021-01-08 183705.png'),
(105, 'test', 'abdul_jabbar', 'none', '2021-05-04 22:31:54', 'no', 'no', 0, ''),
(106, 'asdasd', 'asd_asd', 'none', '2021-05-17 19:25:29', 'no', 'no', 0, ''),
(107, 'random', 'asd_asd', 'none', '2021-05-17 19:32:58', 'no', 'no', 0, ''),
(108, 'random', 'asd_asd', 'none', '2021-05-17 19:33:06', 'no', 'no', 0, ''),
(109, 'random', 'asd_asd', 'none', '2021-05-17 19:33:20', 'no', 'no', 0, ''),
(110, 'random', 'asd_asd', 'none', '2021-05-17 19:33:27', 'no', 'no', 0, ''),
(111, 'random', 'asd_asd', 'none', '2021-05-17 19:33:32', 'no', 'no', 0, ''),
(112, 'post1111', 'random_user1', 'none', '2021-05-18 08:23:02', 'no', 'yes', 0, ''),
(113, 'posttt', 'random_user1', 'none', '2021-05-18 08:23:11', 'no', 'yes', 0, ''),
(114, 'posttt', 'random_user1', 'none', '2021-05-18 08:27:54', 'no', 'yes', 0, ''),
(115, 'posttt', 'random_user1', 'none', '2021-05-18 08:27:58', 'no', 'yes', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Br', 1),
('Asdasdasdasdas', 1),
('Asdasdasdas', 1),
('Sdfffffffffffffffffffffffffffffffffffffffffffa', 2),
('Asdgf', 2),
('Asgf', 2),
('Adfgki', 2),
('Re', 2),
('Bhaibr', 2),
('Asdasdas', 1),
('Asdasd', 2),
('Sdfgsg', 5),
('Dfsdf', 1),
('Abdul', 1),
('Kuddus', 1),
('Hi', 1),
('Youuubr', 1),
('Hello', 8),
('Guys', 1),
('Kaytranada', 3),
('Test', 4),
('Testbr', 1),
('Hellooo', 1),
('Hellooobr', 1),
('Random', 5),
('Post1111', 1),
('Posttt', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(11, 'Ahsan', 'Habib', 'ahsan_habib', 'Theahsanhabib@gmail.com', '', '2021-05-04', 'assets/images/profile_pics/defaults/defaultdp.png', 38, 10, 'no', ',abdul_kuddus,abdur_rahim,abdul_kader,abdul_jabbar,sinjan_sadat,'),
(12, 'Abdul', 'Kuddus', 'abdul_kuddus', 'Dhet@gmail.com', '3573dd3c8f7fa2075538bb9c8a3a4d48', '2021-05-04', 'assets/images/profile_pics/defaults/defaultdp.png', 4, 1, 'no', ',ahsan_habib,'),
(13, 'Abdur', 'Rahim', 'abdur_rahim', 'Rahim@gmail.com', '3573dd3c8f7fa2075538bb9c8a3a4d48', '2021-05-04', 'assets/images/profile_pics/defaults/defaultdp.png', 2, 0, 'no', ',ahsan_habib,'),
(14, 'Abdul', 'Kader', 'abdul_kader', 'Kader@gmail.com', '3573dd3c8f7fa2075538bb9c8a3a4d48', '2021-05-04', 'assets/images/profile_pics/defaults/defaultdp.png', 2, 0, 'no', ',ahsan_habib,'),
(15, 'Abdul', 'Jabbar', 'abdul_jabbar', 'Abdul@gmail.com', '3573dd3c8f7fa2075538bb9c8a3a4d48', '2021-05-04', 'assets/images/profile_pics/defaults/defaultdp.png', 2, 0, 'no', ',ahsan_habib,'),
(16, 'Sinjan', 'Sadat', 'sinjan_sadat', 'Sinjan@gmail.com', '3573dd3c8f7fa2075538bb9c8a3a4d48', '2021-05-04', 'assets/images/profile_pics/defaults/defaultdp.png', 0, 0, 'no', ',ahsan_habib,'),
(17, 'Asd', 'Asd', 'asd_asd', 'Random@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2021-05-17', 'assets/images/profile_pics/defaults/defaultdp.png', 6, 0, 'no', ',random_r1,'),
(18, 'Random', 'R1', 'random_r1', 'Random1@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2021-05-17', 'assets/images/profile_pics/defaults/defaultdp.png', 0, 0, 'no', ',asd_asd,'),
(19, 'Random', 'Guy1', 'random_guy1', 'Randomguy1@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2021-05-18', 'assets/images/profile_pics/defaults/defaultdp.png', 0, 0, 'no', ',random_guy2,'),
(20, 'Random', 'Guy2', 'random_guy2', 'Randomguy2@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2021-05-18', 'assets/images/profile_pics/defaults/defaultdp.png', 0, 0, 'no', ',random_guy1,'),
(21, 'Random', 'User1', 'random_user1', 'Randomuser1@gmail.com', '1391921ec73a2f5dff54e075bbda7487', '2021-05-18', 'assets/images/profile_pics/defaults/defaultdp.png', 4, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
