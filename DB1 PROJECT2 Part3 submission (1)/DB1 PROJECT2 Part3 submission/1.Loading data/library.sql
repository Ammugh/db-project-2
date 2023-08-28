-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 05:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- DATABASE: `Library`--------------------------------------------------------------------------------------------------
--

-- -----------------------------------------------------------------------------------------------------------------------

--
-- THE TABLE STRUCTURE FOR THE `books` TABLE IS AS FOLLOWS---
--   ----------

CREATE TABLE `BOOKS` (
  `ISBN` INT(11) NOT NULL PRIMARY KEY,
  `AUTHOR` VARCHAR(32) NOT NULL,
  `BOOK_TITLE` VARCHAR(32) NOT NULL,
  `SUB_AREA` VARCHAR(32) NOT NULL,
  `NUM_OF_COPIES` INT(11) NOT NULL,
  `BOOK_DESC` TEXT NOT NULL,
  `STAFF_IDNO` INT(11) NOT NULL,
  `PUBLISHER_ID` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- INSERTING DATA FOR THE TABLE `BOOKS` IS SHOWN HERE:
--

INSERT INTO `BOOKS` (`ISBN`, `AUTHOR`,`BOOK_TITLE`,`SUB_AREA`, `NUM_OF_COPIES`,`BOOK_DESC`,`STAFF_IDNO`,`PUBLISHER_ID`) VALUES
(97801, 'Paulo Coehlo', 'The Alchemist', 'Drama', 10, 'The Alchemist is a motivational narrative of self-discovery about an Andalusian shepherd lad who seeks out worldly goods. His passion brings him riches he could never have dreamed of. The Alchemist is a charming book full of knowledge that serves as a motivational example of how pursuing ones aspirations can result in the discovery of amazing miracles.', 200, 0),
(97802, 'Linda Sue Park', 'A Long Walk to Water', 'Fiction', 5, 'The opening of "A Long Walk to Water," a New York Times best-seller, features two alternating sections of stories from two 11-year-old Sudanese children. The boys story is told in 1985, whereas the girls is set in 2008. \r\n\r\n The stories surprise readers with how they relate to one another.', 100, 0),
(97803, 'Chetan Bhagat', '5 Point Someone', 'Fiction', 1, 'Indian author Chetan Bhagat published his novel What Not to Do at IIT in 2004. More than a million copies of the book were sold globally. On this novel, the well-known Hindi film 3 Idiots is based.', 100, 0),
(97804, 'J. K. Rowling', 'Harry Potter and Deathly Hallows', 'Fantasy', 100, 'The seventh and final book in the Harry Potter series, "Harry Potter and the Deathly Hallows," was written by British author J. K. Rowling. On July 21, 2007, the book was released, bringing an end to the series that had been started in 1997 with the release of Harry Potter and the Philosophers Stone.', 100, 0),
(97805, 'F. Scott Fitzgerald', 'The Great Gatsby', 'Fiction', 50, 'The third book by F. Scott Fitzgerald is a classic work of fiction that immerses readers in the glamor, glamour, and sinister side of the Jazz Age. Readers are given a peek inside a string of opulent Long Island parties as the very wealthy Jay Gatsby pursues his lifelong love, Daisy Buchanan.', 400, 0),
(97806, 'Harper Lee', 'To Kill a Mockingbird', 'Fiction', 60, 'Twenty years after the publication of her Pulitzer Prize–winning book "To Kill a Mockingbird," Harper Lee publishes a new work. The story of a 26-year-old woman returning home from New York City to see her ailing father is told in this book against the backdrop of the civil rights tensions in the South. However, when she arrives, she discovers unexpected realities about her family and her hometown.', 500, 0),
(97807, 'George R. R. Martin', 'A Song of Ice and Fire', 'Fantasy', 150, '"A Game of Thrones," "A Clash of Kings," "A Storm of Swords," "A Feast for Crows," and "A Dance with Dragons" are all included in this box set by George R.R. Martin. The books that served as the basis for the well-liked HBO series immerse you in a world full of rulers, battles, mythology, and action.', 400, 0),
(97808, 'Andy Weir', 'The Martian', 'Fiction', 30, 'This New York Times bestseller is a science-fiction novel about fictional astronaut Maut Watney, who becomes one of the first to walk on Mars.\r\n\r\nNow in another planet, the character is thrown into dangerous circumstances he must face on his own. You\'ll find yourself flipping the pages as you wonder what Watney\'s fate will be.', 300, 0),
(97809, 'Markus Zusak', 'The Book Thief', 'Drama', 20, 'The Book Thief is a major film picture adaptation of a New York Times bestseller that takes place in Nazi Germany in 1939. Foster girl Liesel Meminger steals books in order to survive, but in the midst of the chaos, she learns to read and shares them with her neighbors. It is an outstanding account of how books nourish the soul and is a must-read for book lovers.', 500, 0),
(97810, 'Paula Hawkins', 'The Girl on the Train', 'Fiction', 40, '\"The Girl on the Train\" is a gripping thriller about a girl who takes the same train and encounters the same couple every day. One day, she comes across a shocking sight that changes her experience with them forever.\r\n\r\nFor those who liked Gillian Flynn\'s \"Gone Girl,\" this eerie tale is right up your alley.\r\n\r\nClick here to buy »', 200, 0),
(97811, 'Harper Lee', 'Go Set a Watchman', 'Fiction', 70, 'Harper Lee introduces a new novel two decades after her Pulitzer Prize-winning book \"To Kill a Mockingbird.\"\r\n\r\nSet against the backdrop of the civil rights tensions in the South, the novel tells the tale of a 26-year-old girl who returns home from New York City to visit her aging father, only to learn surprising truths about her family and her town.', 100, 0),
(97812, 'Jane Austen', 'Pride and Prejudice', 'Romance', 2, 'The main character Elizabeth Bennet is followed as she confronts with issues of upbringing, marriage, morality, and education in her aristocratic society in the free indirect speech narration of the book.', 300, 0),
(97813, 'Ray Bradbury', 'Fahrenheit 451', 'Fantasy', 25, 'A frighteningly prophetic novel, \"Fahrenheit 451\" is set in a dystopian future where there are no books.\r\n\r\nFor the protagonist, Montag, it all seems normal — until the day he gets a glimpse of the past. With a riveting plot and solid characters, the book draws readers into its imagined world.', 500, 0),
(97814, 'Lewis Carroll', 'Alice\'s Adventures in Wonderland', 'Fantasy', 100, 'In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole.', 200, 0),
(97815, 'John Green', 'Paper Towns', 'Fiction', 10, 'This novel about Quentin Jacobsen, who has been in love with the daring Margo Roth for his whole life, is written by the author of "The Fault in Our Stars." \r\n\r\n Quentin, who has always admired her from a distance, now has the chance to come close to her as she prepares for a campaign of retaliation. Soon Quentin learns Margo is more than meets the eye.', 400, 0),
(97816, 'Leo Tolstoy', 'Anna Karenina', 'Romance', 30, 'Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky.', 400, 0),
(97817, 'Ralph Ellison', 'Invisible Man', 'History', 10, 'Black nationalism, the connection between black identity and Marxism, and other social and intellectual difficulties that African Americans faced in the early 20th century are all addressed in the book.', 100, 0),
(97818, 'Charles Dickens', 'David Copperfield', 'Drama', 5, 'The story of the abandoned waif who learns to survive through challenging encounters with distress and misfortune.', 100, 0),
(97819, 'Harper Lee', 'To Kill a Mockingbird', 'Drama', 2, 'As a Southern Gothic novel and a Bildungsroman, the primary themes of To Kill a Mockingbird involve racial injustice and the destruction of innocence.', 300, 0),
(97820, 'Homer', 'The Odyssey', 'Epic', 5, 'The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer. ', 300, 0),
(97821, 'Jonathan Swift', 'Gulliver\'s Travels', 'Fantasy', 5, 'A brilliant classic that chronicles ships surgeon Lemuel Gullivers four amazing adventures comes from the best prose satirist in English literature. It continues to be a charming illusion for kids.', 300, 0),
(97822, 'Victor Hugo', 'Les Miserables', 'Musical', 10, 'French novelist Victor Hugo wrote the book Les Misérables, which is regarded as one of the best books of the 19th century. Numerous French characters are followed throughout their lives and encounters.', 300, 0),
(97823, 'William Faulkner', 'As I Lay Dying', 'Drama', 3, 'In 59 chapters, the novel is told in a stream-of-consciousness format by 15 different narrators. It tells the tale of Addie Bundrens passing and the search for answers for her family.', 200, 0),
(97824, 'Geoffrey Chaucer', 'The Canterbury Tales', 'History', 5, 'With their astonishing diversity of tone and subject matter, The Canterbury Tales have become one of the touchstones of medieval literature.', 400, 0),
(97825, 'EM Forster', 'A Passage to India', 'History', 10, 'The 1920s Indian independence struggle and the British Raj serve as the setting for A Passage to India.', 300, 0),
(97826, 'Sophocles', 'Oedipus The King', 'Tragedy', 5, 'The first performance of Sophocles Attic tragedy, "Oedipus the King," took place about 429 BC. It was the second of the three Theban plays by Sophocles to be performed.', 300, 0),
(97827, 'George Orwell', 'Animal Farm', 'Dystopian', 5, 'George Orwell wrote the dystopian tale Animal Farm. The book, which was released in England on August 17, 1945, details events that occurred before and during the Stalin era before World War II.', 200, 0),
(97828, 'JRR Tolkien', 'The Lord of The Rings', 'Fantasy', 100, 'The epic high fantasy book The Lord of the Rings is well known. The major antagonist of the story, the Dark Lord Sauron, who developed the One Ring to control the other Rings of Power as his ultimate weapon in his effort to conquer and rule all of Middle-earth, is referenced in the title of the book.', 200, 0),
(97829, 'Voltaire', 'Candide', 'Satire', 10, '"Christmas, or l" A French satirist of the Age of Enlightenment named Voltaire wrote Optimisme in 1759. The sardonic and chaotic, surreal tones of Candide are its distinguishing features.', 200, 0),
(97830, 'Salman Rushdie', 'Midnight\'s Children', 'Drama', 5, 'A vague allegory for what happened in India before and largely after its independence and partition, which occurred at midnight on August 15, 1947, is called Midnights Children.', 300, 0);

-- --------------------------------------------------------

--
-- THE TABLE STRUCTURE FOR THE TABLE `BORROWS` IS AS FOLLOWS :
--

CREATE TABLE `BORROWS` (
  `MEM_SSN` INT(11) NOT NULL,
  `B_ISBN` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- THE TABLE STRUCTURE FOR THE `LEND_STATUS` TABLE IS SHOWN HERE IN THE CREATE TABLE STATEMENT
--

CREATE TABLE `LEND_STATUS` (
  `TITLE` VARCHAR(32) NOT NULL,
  `MEM_SSN` INT(11) NOT NULL,
  `LEND_DATE` DATE NOT NULL,
  `CHECKOUT_DATE` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- INSERTING THE DATA FOR `LEND_STATUS` TABLE IS AS FOLLOWS:
--

INSERT INTO `LEND_STATUS` (`TITLE`,`MEM_SSN`, `LEND_DATE`, `CHECKOUT_DATE`) VALUES
('3 mistakes of my life', 50003, '2017-04-20', '2017-05-10'),
('5 Point Someone', 50003, '2017-04-20', '2017-05-10'),
('A Long Walk to Water', 50003, '2017-04-25', '2017-05-17'),
('A Long Walk to Water', 50003, '2017-04-30', '2017-05-10'),
('5 Point Someone',50003, '2017-04-10', '2017-05-01'),
('A Long Walk to Water',50003, '2017-02-15', '2017-02-27'),
('A Long Walk to Water',50003, '2017-04-29', '2017-05-09');

--
-- TRIGGERS FOR THE `LEND_STATUS` TABLE IS IMPLEMENTED HERE:---------------------------->>>>>>>>>>>>>>>>>>>
--
DELIMITER $$
CREATE TRIGGER `OUTSTANDINGBOOK_OVERDUE` BEFORE INSERT ON `LEND_STATUS` FOR EACH ROW BEGIN
IF ((SELECT CHECKOUT_DATE FROM RETURN_STATUS WHERE MEM_SSN = NEW.MEM_SSN AND CHECKOUT_DATE < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE LEND_STATUS SET MEM_SSN = 0000 WHERE MEM_SSN = NEW.MEM_SSN;

END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `RENEWAL_MEMBER1` AFTER INSERT ON `LEND_STATUS` FOR EACH ROW BEGIN
IF ((SELECT EXPIRE_DATE FROM MEMBERSHIP WHERE MEM_SSN = NEW.MEM_SSN and EXPIRE_DATE < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE LEND_STATUS SET MEM_SSN = 0000 WHERE MEM_SSN = NEW.MEM_SSN;

END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- THE STRUCTURE FOR THE TABLE `MEMBER` IS SHOWN HERE----------->>>>>>>>>>>>>>>>>
-- CREATE TABLE STATEMENTS ARE IMPLEMENTED HERE---------->>>>>>>>>>>>>>

CREATE TABLE `MEMBER` (
  `SSN` INT(11) NOT NULL PRIMARY KEY,
  `MEMBER_TYPE` VARCHAR(32) NOT NULL,
  `MEMBER_NAME` VARCHAR(32) NOT NULL,
  `PHONE_NO` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- INSERTING THE DATA FOR `MEMBER` TABLE HERE 
--

INSERT INTO `MEMBER` (`SSN`, `MEMBER_TYPE`, `MEMBER_NAME`, `PHONE_NO`) VALUES
(10000, 'Student', 'Rohit', 4692124459),
(50001, 'Faculty', 'Megha', 6823051234),
(50002, 'Student', 'Anu', 6822556622),
(50003, 'Staff', 'Abhi', 5517656783),
(50004, 'Student', 'Ram', 3256789123),
(50005, 'Student', 'Shri', 4697232222),
(50006, 'Staff', 'Vanshika', 5121437899),
(50007, 'Faculty', 'Vicky', 6823865123),
(50008, 'Student', 'Rocky', 3333336712),
(50009, 'Student', 'Kavya', 4123678833),
(50010, 'Student', 'Ravi', 6543219122);

-- --------------------------------------------------------

--
-- TABLE STRUCTURE FOR THE TABLE `MEMBERSHIP` IS AS FOLLOWS:
--

CREATE TABLE `MEMBERSHIP` (
  `ID` INT(11) NOT NULL,
  `MEM_SSN` INT(11) NOT NULL,
  `LEND_DATE` DATE NOT NULL,
  `EXPIRE_DATE` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- INSERTING DATA FOR THE TABLE `MEMBERSHIP` IS AS FOLLOWS:
--

INSERT INTO `MEMBERSHIP` (`ID`, `MEM_SSN`, `LEND_DATE`, `EXPIRE_DATE`) VALUES
(1, 50001, '2017-04-01', '2021-04-01'),
(2, 50002, '2017-04-21', '2021-04-21'),
(3, 50003, '2014-04-01', '2018-04-01');

-- --------------------------------------------------------

--
-- TABLE STRUCTURE FOR THE `MEM_LOCATION` TABLE IS AS FOLLOWS:
--

CREATE TABLE `MEM_LOCATION` (
  `M_LOCATION` VARCHAR(32) NOT NULL,
  `MEM_SSN` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- TABLE STRUCTURE FOR THE `PUBLISHER` TABLE IS AS SHOWN BELOW:
--

CREATE TABLE `PUBLISHER` (
  `PUBLISHER_ID` INT(11) NOT NULL PRIMARY KEY,
  `P_NAME` VARCHAR(32) NOT NULL,
  `PUBLISHER_ADDR` VARCHAR(32) NOT NULL,
  `PHONE_NO` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- STRUCTURE OF TABLE `RETURN_STATUS` IS AS FOLLOWS :
--

CREATE TABLE `RETURN_STATUS` (
  `TITLE` VARCHAR(32) NOT NULL,
  `MEM_SSN` INT(11) NOT NULL,
  `STAFF_IDNO` INT(11) NOT NULL,
  `LEND_DATE` DATE NOT NULL,
  `CHECKOUT_DATE` DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- INSERTING FOR `RETURN_STATUS` TABLE
--

INSERT INTO `RETURN_STATUS` (`TITLE`, `MEM_SSN`, `STAFF_IDNO`, `LEND_DATE`, `CHECKOUT_DATE`) VALUES
('A Song of Ice and Fire', 50002,100, '2017-04-01', '2017-04-27'),
('5 Point Someone', 50002, 0, '2017-04-20', '2017-05-10'),
('The Martian', 50002, 200, '2017-03-01', '2017-03-26'),
('A Long Walk to Water', 50002, 20, '2017-02-15', '2017-02-27');

--
-- TRIGGERS FOR `RETURN_STATUS` TABLE
--
DELIMITER $$
CREATE TRIGGER `OUTSTANDINGBOOK_OVERDUE1` BEFORE INSERT ON `RETURN_STATUS` FOR EACH ROW BEGIN
IF ((SELECT CHECKOUT_DATE from RETURN_STATUS where MEM_SSN = NEW.MEM_SSN and CHECKOUT_DATE < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE RETURN_STATUS SET MEM_SSN = 0000 WHERE MEM_SSN = NEW.MEM_SSN;

END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `RENEWAL_MEMBERSHIP` AFTER INSERT ON `RETURN_STATUS` FOR EACH ROW BEGIN
IF ((SELECT EXPIRE_DATE FROM MEMBERSHIP WHERE MEM_SSN = NEW.MEM_SSN AND EXPIRE_DATE < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE RETUURN_STATUS SET MEM_SSN = 0000 WHERE MEM_SSN = NEW.MEM_SSN;

END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- STRUCTURE FOR THE `LIBR_STAFF` TABLE
--

CREATE TABLE `LIBR_STAFF` (
  `STAFF_NAME` VARCHAR(32) NOT NULL,
  `STAFF_IDNO` INT(11) NOT NULL PRIMARY KEY,
  `STAFF_ADDR` VARCHAR(32) NOT NULL,
  `PHONE_NO` INT(11) NOT NULL,
  `ROLE` VARCHAR(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- INSERTING DATA FOR `LIBR_STAFF` TABLE
--

INSERT INTO `LIBR_STAFF` (`STAFF_NAME`, `STAFF_IDNO`, `STAFF_ADDR`, `PHONE_NO`, `ROLE`) VALUES
('Abhi', 200, 'Midtown apartments', 5517656783, 'Librarian'),
('Vanshika', 300, 'Campus-edge', 5121437899, 'Associate chief librarian'),
('Cynthia', 800, '848 Mitchell', 4567812322, 'Dept central librarian'),
('Mike', 600, 'Pinewoods', 9876210000, 'Checking UC main staff '),
('Raj', 700, 'Timberbrook', 5566778899, 'Dept-assistant');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
