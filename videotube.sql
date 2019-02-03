-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2019 at 10:46 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videotube`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Autos & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoId` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoId`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'kujtim', 6, 0, 'Hi Everyone', '2019-01-10 20:38:09'),
(2, 'kujtim', 6, 0, 'Nice video', '2019-01-10 21:11:38'),
(29, 'kujtim', 7, 0, 'Great video fitim :)', '2019-01-28 10:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentId`, `videoId`) VALUES
(2, 'kujtim', 0, 6),
(3, 'kujtim', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(6, 'fitim', 'kujtim'),
(7, 'kujtim', 'fitim');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoId`, `filePath`, `selected`) VALUES
(16, 6, 'uploads/videos/thumbnails/6-5c180866c1c6e.jpg', 1),
(17, 6, 'uploads/videos/thumbnails/6-5c180866c1c6e.jpg', 0),
(18, 6, 'uploads/videos/thumbnails/6-5c180866c1c6e.jpg', 0),
(22, 8, 'uploads/videos/thumbnails/8-5c5030a00c358.jpg', 1),
(23, 8, 'uploads/videos/thumbnails/8-5c5030a0740f2.jpg', 0),
(24, 8, 'uploads/videos/thumbnails/8-5c5030a0daf6d.jpg', 0),
(25, 9, 'uploads/videos/thumbnails/9-5c575c3d8280a.jpg', 1),
(26, 9, 'uploads/videos/thumbnails/9-5c575c3ec6e22.jpg', 0),
(27, 9, 'uploads/videos/thumbnails/9-5c575c404f20b.jpg', 0),
(28, 10, 'uploads/videos/thumbnails/10-5c575cf1dfe98.jpg', 1),
(29, 10, 'uploads/videos/thumbnails/10-5c575cf2bd411.jpg', 0),
(30, 10, 'uploads/videos/thumbnails/10-5c575cf441068.jpg', 0),
(31, 11, 'uploads/videos/thumbnails/11-5c575eb1dbbdc.jpg', 1),
(32, 11, 'uploads/videos/thumbnails/11-5c575eb2e8eed.jpg', 0),
(33, 11, 'uploads/videos/thumbnails/11-5c575eb4d304c.jpg', 0),
(34, 12, 'uploads/videos/thumbnails/12-5c575f1fdffb0.jpg', 1),
(35, 12, 'uploads/videos/thumbnails/12-5c575f209d6c8.jpg', 0),
(36, 12, 'uploads/videos/thumbnails/12-5c575f220ccba.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profilePic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Kujtim', 'Prenku', 'kujtim', 'Kujtim@prenku.com', '$2y$12$ouVEWUCWT1Xu/3uYJCl69.a.6Mih2BVCj5yXC6gTcBn/ifvlP.5XO', '2018-12-18 21:56:53', 'assets/images/profilePictures/default-male.png'),
(2, 'Fitim', 'Prenku', 'fitim', 'fitim@fitim.com', '$2y$12$oFxzy8T1XHmeynANV8au8usFvGDSCa5M4yJaGW8bJJCZwfdBmjjji', '2018-12-29 12:27:35', 'assets/images/profilePictures/default-male.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(6, 'kujtim', 'Bars and Tone', 'Bars and Tone Description \r\n                     \r\n                     \r\n                     \r\n                     \r\n                    ', 0, 'uploads/videos/5c18086321adc.mp4', 11, '2018-12-17 21:34:43', 245, '00:06'),
(8, 'kujtim', 'This video should be trending.', 'This is the description of a trending video. \r\n                    ', 0, 'uploads/videos/5c50309993979.mp4', 1, '2019-01-29 11:53:13', 9, '00:06'),
(9, 'kujtim', 'Robin Sharma and Desmond Tutu meeting', ' This is the description of Robin Sharma and Desmond Tutu meeting\r\n                    ', 0, 'uploads/videos/5c575c32314ad.mp4', 13, '2019-02-03 22:25:06', 2, '00:16'),
(10, 'kujtim', 'Lead where youâ€™re planted. ', ' This is the description of Lead where youâ€™re planted video. \r\n                    ', 1, 'uploads/videos/5c575cd344093.mp4', 13, '2019-02-03 22:27:47', 1, '00:50'),
(11, 'fitim', 'Grow intimacy with your natural magic and youâ€™ll produce magic in yo', ' Description of Grow intimacy with your natural magic and youâ€™ll produce magic in your domain.\r\n                    ', 1, 'uploads/videos/5c575e8e78030.mp4', 13, '2019-02-03 22:35:10', 4, '00:59'),
(12, 'fitim', 'An interesting insight on the blessings you posses.', 'Description of An interesting insight on the blessings you posses.', 1, 'uploads/videos/5c575f02e60bf.mp4', 6, '2019-02-03 22:37:06', 1, '00:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
