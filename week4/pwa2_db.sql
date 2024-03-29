-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2015 at 04:22 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pwa2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) unsigned NOT NULL,
  `clientName` char(128) DEFAULT NULL,
  `primaryContact` int(11) unsigned DEFAULT NULL,
  `phone` text,
  `address` char(128) DEFAULT NULL,
  `city` char(32) DEFAULT NULL,
  `state` char(32) DEFAULT NULL,
  `zipcode` mediumint(9) DEFAULT NULL,
  `website` text,
  `email` text
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `clientName`, `primaryContact`, `phone`, `address`, `city`, `state`, `zipcode`, `website`, `email`) VALUES
(1, 'Full Sail University', 5, '407-679-0100', '3300 University Blvd', 'Orlando', 'FL', 32828, 'www.fullsail.edu', NULL),
(2, 'FakeCo', 5, '555-555-5555', '1234 Nowhere Ave.', 'Busytown', 'NY', 13126, 'www.fakeco.com', NULL),
(3, 'CodeInfused', 5, '555-263-3387', NULL, NULL, NULL, 32792, 'www.codeinfused.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) unsigned NOT NULL,
  `clientID` int(11) unsigned DEFAULT NULL,
  `teamID` int(11) unsigned DEFAULT NULL,
  `projectName` text,
  `projectDescription` text,
  `updatedDate` char(32) DEFAULT NULL,
  `dueDate` char(32) DEFAULT NULL,
  `status` char(32) DEFAULT NULL,
  `startDate` char(32) DEFAULT NULL,
  `projectCreator` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `clientID`, `teamID`, `projectName`, `projectDescription`, `updatedDate`, `dueDate`, `status`, `startDate`, `projectCreator`) VALUES
(1, 1, NULL, 'Task Management App', 'Create a project manager as a rich web application, utilizing jQuery and server-side restful actions accessed via ajax.  Features incorporated should be UX-centric, following the functional specifications provided by the SFW2 contact.', NULL, NULL, 'active', NULL, 11),
(2, 1, NULL, 'WFP Final Project', 'A project concept to be defined and executed with flawless precision and professionalism by the student with the help of Full Sail University''s outstanding educational team.', NULL, NULL, 'active', NULL, 11),
(3, 3, NULL, 'Learning JavaScript', 'Become a ninja with JavaScript.', NULL, NULL, 'delayed', NULL, 5),
(4, 2, NULL, 'No Ones Project', 'This job is worked on by very scary testing ghosts who make sure that content is limited correctly.', NULL, NULL, 'delayed', NULL, 5),
(27, NULL, NULL, 'Student Test', 'This is an emergency test of the student project adding system for SFW2.', NULL, NULL, 'active', 'Wed, 27 Jul 2011 00:17:05 GMT', 11),
(68, NULL, NULL, 'THIS WAS A TOUGH ONE', 'but easy once i placed the right console.log', NULL, '45893598', 'urgent', NULL, 22),
(70, NULL, NULL, 'Project #1', 'A great project!', NULL, 'ASAP', 'urgent', NULL, 22),
(67, NULL, NULL, 'I DID IT', 'I can''t believe it.', NULL, '8902348394', 'urgent', NULL, 22),
(71, NULL, NULL, 'Project #2', 'IMPORTANT THINGS!!', NULL, '05/01/2015', 'urgent', NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) unsigned NOT NULL,
  `projectID` int(11) unsigned DEFAULT NULL,
  `taskeeID` int(11) unsigned DEFAULT NULL,
  `taskCreator` int(11) unsigned DEFAULT NULL,
  `taskName` text,
  `taskDescription` text,
  `specs` text,
  `status` char(32) DEFAULT 'active',
  `priority` int(32) unsigned DEFAULT NULL,
  `updatedDate` char(32) DEFAULT NULL,
  `dueDate` char(32) DEFAULT NULL,
  `startDate` char(32) DEFAULT NULL,
  `hourlyRate` char(8) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `projectID`, `taskeeID`, `taskCreator`, `taskName`, `taskDescription`, `specs`, `status`, `priority`, `updatedDate`, `dueDate`, `startDate`, `hourlyRate`) VALUES
(1, 1, 11, 5, 'Creative Brief', 'Prepare creative pitch for the client.  Due date is the client meeting and project kickoff.  Creative document needs:  feature specifications, wireframes, design compositions, style guide, project planning chart.', NULL, 'active', 1, NULL, NULL, NULL, NULL),
(2, 1, 11, 5, 'Prototype', 'Develop the HTML and CSS prototype foundation of the project.  Goal is to ready all necessary HTML, CSS, and image elements before client side or server side development begins.', NULL, 'active', 2, NULL, NULL, NULL, NULL),
(3, 1, 11, 5, 'Development Milestone', 'First major project milestone, as agreed on with client.  Functionality to have done:  user signup, user login and logout, template loading for landing page and application, initial dashboard content for application.', NULL, 'active', 3, NULL, NULL, NULL, NULL),
(4, 1, 11, 5, 'Revisions', 'Revisit all functionality specifications originally planned, and determine current project status.  Schedule client meeting for any revision needs or scope changes before final product launch.', NULL, 'active', 4, NULL, NULL, NULL, NULL),
(5, 1, 11, 5, 'Launch', 'Deploy application and remove beta access from live tests.  Hand off all assets to client per contract needs and finalize work.', NULL, 'active', 5, NULL, NULL, NULL, NULL),
(6, 2, 11, 5, 'Brainstorm Final Project Concept', 'Before WFP begins, the student should come up with a few ideas for a final project that they would like to leave Full Sail with.  The final project is an opportunity to showcase design and development skills to the industry using whatever you are passionate about.  Get started early!', NULL, 'active', 1, NULL, NULL, NULL, NULL),
(7, 4, 11, 11, 'Blah', NULL, NULL, 'active', NULL, NULL, NULL, NULL, NULL),
(9, 1, 11, 11, 'Return Test', NULL, NULL, 'active', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) unsigned NOT NULL,
  `name` char(128) DEFAULT NULL,
  `description` text,
  `website` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `description`, `website`) VALUES
(1, 'Scripting For Web', 'This team out of the Full Sail University office in Orlando is focused on the development of projects for WDD instructors on the campus.  The team consists of 1 student.', 'http://www.fullsail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL,
  `teamID` int(11) unsigned DEFAULT NULL,
  `user_n` char(32) NOT NULL,
  `user_p` char(64) NOT NULL,
  `salt` char(8) NOT NULL,
  `first_name` char(32) NOT NULL,
  `last_name` char(32) NOT NULL,
  `email` text NOT NULL,
  `phone` char(32) DEFAULT NULL,
  `city` char(32) DEFAULT NULL,
  `state` char(32) DEFAULT NULL,
  `zipcode` mediumint(6) DEFAULT NULL,
  `avatar` text,
  `role` char(32) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `teamID`, `user_n`, `user_p`, `salt`, `first_name`, `last_name`, `email`, `phone`, `city`, `state`, `zipcode`, `avatar`, `role`) VALUES
(11, NULL, 'student', '1bb683a667421569331ec524f095bbc37e8351118b2ae7cb50d17aacf535f487', '264c8c38', 'Slicky', 'Coder', 'student@fullsail.edu', NULL, 'Orlando', 'FL', 32792, NULL, NULL),
(5, NULL, 'codeinfused', '01756509456b8ed2112b0c034c315b458d9fc4baae65c4e636eba1cb4a5f688b', '11054932', 'Michael', 'Smotherman', 'msmotherman@fullsail.com', '555-555-5555', NULL, NULL, NULL, NULL, NULL),
(22, NULL, 'andrewchosen', 'f268b6c2ae82c47b7c7e2ee277fb43c4f3bcb212f661876050c09015b5d477df', 'ac964cff', 'Andrew', 'Lancaster', 'andrew.chosen@gmail.com', '', '', '', 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userslink`
--

CREATE TABLE `userslink` (
  `userID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userslink`
--

INSERT INTO `userslink` (`userID`, `projectID`) VALUES
(11, 1),
(11, 2),
(5, 1),
(11, 3),
(11, 28),
(11, 29),
(11, 30),
(11, 31),
(11, 32),
(11, 33),
(11, 34),
(22, 35),
(22, 36),
(22, 37),
(22, 38),
(22, 39),
(22, 40),
(22, 41),
(22, 42),
(22, 43),
(22, 44),
(22, 45),
(22, 46),
(22, 47),
(22, 48),
(22, 49),
(22, 50),
(22, 51),
(22, 52),
(22, 53),
(22, 54),
(22, 55),
(22, 56),
(22, 57),
(22, 58),
(22, 59),
(22, 60),
(22, 61),
(22, 62),
(22, 63),
(22, 64),
(22, 65),
(22, 66),
(22, 67),
(22, 68),
(22, 69),
(22, 70),
(22, 71);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teamID` (`teamID`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`),
  ADD KEY `taskeeID` (`taskeeID`),
  ADD KEY `creator` (`taskCreator`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_n` (`user_n`),
  ADD KEY `teamID` (`teamID`);

--
-- Indexes for table `userslink`
--
ALTER TABLE `userslink`
  ADD KEY `userID` (`userID`),
  ADD KEY `projectID` (`projectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;