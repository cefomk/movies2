-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: bsd:3306
-- Generation Time: Mar 09, 2023 at 03:59 PM
-- Server version: 10.11.2-MariaDB-1:10.11.2+maria~ubu2204
-- PHP Version: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netflix`
--
CREATE DATABASE IF NOT EXISTS `netflix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `netflix`;

-- --------------------------------------------------------

--
-- Table structure for table `movies_full`
--

CREATE TABLE `movies_full` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` text NOT NULL,
  `year` int(11) NOT NULL,
  `genres` varchar(255) DEFAULT NULL,
  `plot` text DEFAULT NULL,
  `directors` varchar(255) DEFAULT NULL,
  `cast` varchar(255) DEFAULT NULL,
  `writers` varchar(255) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `mpaa` varchar(25) DEFAULT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `modified` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `poster_flag` tinyint(1) NOT NULL DEFAULT 0,
  `image` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `movies_full`
--

INSERT INTO `movies_full` (`id`, `slug`, `title`, `year`, `genres`, `plot`, `directors`, `cast`, `writers`, `runtime`, `mpaa`, `rating`, `popularity`, `modified`, `created`, `poster_flag`, `image`) VALUES
(4241, 'into-the-night-1985', 'Into the Night', 1985, 'Action, Drama, Comedy, Thriller', 'Ed Okin\'s life is somewhat out of control. He can\'t sleep, his wife betrays him and his job is dull...', 'John Landis', 'Jeff Goldblum, Michelle Pfeiffer, Carmen Argenziano, Andrew Marton', 'Ron Koslow', 115, 'R', 64, 0, '2012-05-24 22:01:44', '2012-05-24 22:01:44', 0, NULL),
(4242, 'the-class-2008', 'The Class', 2008, 'Drama', 'Teacher and novelist François Bégaudeau plays a version of himself as he negotiates a year with his racially mixed students from a tough Parisian neighborhood.', 'Laurent Cantet', 'François Bégaudeau, Agame Malembo-Emene, Angélica Sancio, Arthur Fogel', 'Laurent Cantet, Robin Campillo', 128, 'PG-13', 81, 5, '2012-05-24 22:01:46', '2012-05-24 22:01:46', 0, NULL),
(4243, 'troy-2004', 'Troy', 2004, 'Action, Adventure, Drama', 'An adaptation of Homer\'s great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.', 'Wolfgang Petersen', 'Brad Pitt, Eric Bana, Orlando Bloom, Julian Glover', 'Homer, David Benioff', 165, 'R', 69, 32, '2012-05-24 22:01:47', '2012-05-24 22:01:47', 0, NULL),
(4244, 'tmnt-2007', 'TMNT', 2007, 'Animation, Action, Adventure, Comedy, Family, Sci-Fi', 'The continued adventures of the four adolescent mutated turtles gifted in the art of the ninja, as they attempt to stop a mysterious evil that threatens to end the world.', 'Kevin Munroe', 'Patrick Stewart, Mako, Chris Evans, Nolan North', 'Kevin Munroe, Peter Laird', 86, 'PG', 64, 9, '2012-05-24 22:01:49', '2012-05-24 22:01:49', 0, NULL),
(4245, 'black-swan-2010', 'Black Swan', 2010, 'Drama, Mystery, Thriller', 'A ballet dancer wins the lead in \'Swan Lake\' and is perfect for the role of the delicate White Swan - Princess Odette - but slowly loses her mind as she becomes more and more like Odile, the Black Swan.', 'Darren Aronofsky', 'Natalie Portman, Mila Kunis, Vincent Cassel, Winona Ryder', 'Mark Heyman, Andres Heinz', 108, 'R', 83, 100, '2012-05-24 22:01:50', '2012-05-24 22:01:50', 0, NULL),
(4246, 'the-young-and-the-damned-1950', 'The Young and the Damned', 1950, 'Crime, Drama', 'A group of juvenile delinquents live a violent and crime-filled life in the festering slums of Mexico City...', 'Luis Buñuel', 'Alfonso Mejía, Roberto Cobo, Estela Inda, Miguel Inclán', 'Luis Buñuel, Luis Alcoriza', 88, '16', 86, 1, '2012-05-24 22:01:52', '2012-05-24 22:01:52', 0, NULL),
(4247, 'spies-like-us-1985', 'Spies Like Us', 1985, 'Comedy', 'Two bumbling government employees think they are U.S. spies, only to discover that they are actually decoys for Nuclear War.', 'John Landis', 'Chevy Chase, Dan Aykroyd, Steve Forrest, Donna Dixon', 'Dan Aykroyd, Dave Thomas', 103, 'PG', 59, 2, '2012-05-24 22:01:54', '2012-05-24 22:01:54', 0, NULL),
(4248, 'letters-to-juliet-2010', 'Letters to Juliet', 2010, 'Comedy, Drama, Romance', 'Sophie dreams of becoming a writer and travels to Verona, Italy where she meets the \'Secretaries of Juliet\'.', 'Gary Winick', 'Amanda Seyfried, Gael García Bernal, Vanessa Redgrave, Marcia DeBonis', 'Jose Rivera, Tim Sullivan', 105, 'PG', 63, 16, '2012-05-24 22:01:55', '2012-05-24 22:01:55', 0, NULL),
(4249, 'antichrist-2009', 'Antichrist', 2009, 'Drama, Horror', 'A grieving couple retreat to their cabin in the woods, hoping to repair their broken hearts and troubled marriage. But nature takes its course and things go from bad to worse.', 'Lars von Trier', 'Willem Dafoe, Charlotte Gainsbourg, Storm Acheche Sahlstrøm', 'Lars von Trier', 104, 'Not Rated', 65, 21, '2012-05-24 22:01:57', '2012-05-24 22:01:57', 0, NULL),
(4250, 'biloxi-blues-1988', 'Biloxi Blues', 1988, 'Comedy, Drama', 'A group of young recruits go through boot camp during the Second World War in Biloxi Mississippi. From the play by Neil Simon.', 'Mike Nichols', 'Matthew Broderick, Christopher Walken, Matt Mulhern, Corey Parker', 'Neil Simon, Neil Simon', 107, 'PG-13', 66, 1, '2012-05-24 22:01:58', '2012-05-24 22:01:58', 0, NULL),
(4251, 'minority-report-2002', 'Minority Report', 2002, 'Action, Mystery, Sci-Fi, Thriller', 'In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 'Steven Spielberg', 'Tom Cruise, Colin Farrell, Samantha Morton, Max von Sydow', 'Philip K. Dick, Scott Frank', 144, 'PG-13', 78, 28, '2012-05-24 22:02:00', '2012-05-24 22:02:00', 0, NULL),
(4252, 'needful-things-1993', 'Needful Things', 1993, 'Crime, Drama, Horror, Thriller', 'A mysterious new shop opens in a small town which always seems to stock the deepest desires of each shopper, with a price far heavier than expected.', 'Fraser Clarke Heston', 'Max von Sydow, Ed Harris, Bonnie Bedelia, Amanda Plummer', 'Stephen King, W.D. Richter', 120, 'R', 60, 1, '2012-05-24 22:02:01', '2012-05-24 22:02:01', 0, NULL),
(4253, 'margin-call-2011', 'Margin Call', 2011, 'Drama, Thriller', 'Follows the key people at an investment bank, over a 24-hour period, during the early stages of the financial crisis.', 'J.C. Chandor', 'Zachary Quinto, Stanley Tucci, Kevin Spacey, Paul Bettany', 'J.C. Chandor', 109, 'R', 75, 63, '2012-05-24 22:02:03', '2012-05-24 22:02:03', 0, NULL),
(4254, 'my-neighbor-totoro-1988', 'My Neighbor Totoro', 1988, 'Animation, Adventure, Family, Fantasy', 'When two girls move to the country to be near their ailing mother, they have adventures with the wonderous forest spirits who live nearby.', 'Hayao Miyazaki', 'Hitoshi Takagi, Noriko Hidaka, Toshiyuki Amagasa, Paul Butcher', 'Hayao Miyazaki', 87, 'G', 84, 5, '2012-05-24 22:02:05', '2012-05-24 22:02:05', 0, NULL),
(4255, 'hot-tub-time-machine-2010', 'Hot Tub Time Machine', 2010, 'Adventure, Comedy, Sci-Fi', 'A malfunctioning time machine at a ski resort takes a man back to 1986 with his two friends and nephew, where they must relive a fateful night and not change anything to make sure the nephew is born.', 'Steve Pink', 'John Cusack, Rob Corddry, Craig Robinson, Clark Duke', 'Josh Heald, Sean Anders', 100, 'R', 64, 43, '2012-05-24 22:02:06', '2012-05-24 22:02:06', 0, NULL),
(4256, 'bad-boys-ii-2003', 'Bad Boys II', 2003, 'Action, Comedy, Crime, Thriller', 'Two loose-cannon narcotics cops investigate the flow of Ecstacy into Florida.', 'Michael Bay', 'Will Smith, Martin Lawrence, Gabrielle Union, Jordi Mollà', 'George Gallo, Marianne Wibberley', 147, 'R', 65, 14, '2012-05-24 22:02:08', '2012-05-24 22:02:08', 0, NULL),
(4257, 'farewell-my-concubine-1993', 'Farewell My Concubine', 1993, 'Drama, Music, Romance, War', 'The story of two men, who met as apprentices in the Peking Opera, and stayed friends for over 50 years.', 'Kaige Chen', 'Leslie Cheung, Fengyi Zhang, Li Gong, Qi Lü', 'Pik Wah Li, Pik Wah Li', 154, 'R', 82, 1, '2012-05-24 22:02:09', '2012-05-24 22:02:09', 0, NULL),
(4258, 'prizzis-honor-1985', 'Prizzi\'s Honor', 1985, 'Comedy, Crime, Drama, Romance', 'A professional hit man and hit woman fall in love, only to discover that they have each been hired to kill the other.', 'John Huston', 'Jack Nicholson, Kathleen Turner, Robert Loggia, John Randolph', 'Richard Condon, Richard Condon', 130, 'R', 71, 1, '2012-05-24 22:02:11', '2012-05-24 22:02:11', 0, NULL),
(4259, 'feast-2005', 'Feast', 2005, 'Action, Comedy, Horror, Thriller', 'Patrons locked inside of a bar are forced to fight monsters.', 'John Gulager', 'Navi Rawat, Krista Allen, Balthazar Getty, Judah Friedlander', 'Marcus Dunstan, Patrick Melton', 85, 'R', 62, 3, '2012-05-24 22:02:12', '2012-05-24 22:02:12', 0, NULL),
(4260, 'into-the-wild-2007', 'Into the Wild', 2007, 'Adventure, Biography, Drama', 'After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.', 'Sean Penn', 'Emile Hirsch, Vince Vaughn, Catherine Keener, Marcia Gay Harden', 'Sean Penn, Jon Krakauer', 147, 'R', 82, 52, '2012-05-24 22:02:14', '2012-05-24 22:02:14', 0, NULL),
(4261, 'one-missed-call-2003', 'One Missed Call', 2003, 'Horror, Mystery, Thriller', 'People mysteriously start receiving voicemail messages from their future selves, in the form of the sound of them reacting to their own violent deaths.', 'Takashi Miike', 'Kou Shibasaki, Shin\'ichi Tsutsumi, Kazue Fukiishi, Anna Nagata', 'Yasushi Akimoto, Minako Daira', 111, 'R', 62, 1, '2012-05-24 22:02:16', '2012-05-24 22:02:16', 0, NULL),
(4262, 'phenomena-1985', 'Phenomena', 1985, 'Fantasy, Horror', 'A young girl, with an amazing ability to communicate with insects, is transferred to an exclusive Swiss boarding school, where her unusual capability might help solve a string of murders.', 'Dario Argento', 'Jennifer Connelly, Donald Pleasence, Daria Nicolodi, Dalila Di Lazzaro', 'Dario Argento, Dario Argento', 110, 'X', 69, 1, '2012-05-24 22:02:17', '2012-05-24 22:02:17', 0, NULL),
(4263, 'hannibal-2001', 'Hannibal', 2001, 'Crime, Drama, Thriller', 'Hannibal returns to America and attempts to make contact with disgraced Agent Starling and survive a vengeful victim\'s plan.', 'Ridley Scott', 'Anthony Hopkins, Julianne Moore, Gary Oldman, Ray Liotta', 'Thomas Harris, David Mamet', 131, 'R', 65, 13, '2012-05-24 22:02:19', '2012-05-24 22:02:19', 0, NULL),
(4264, 'used-cars-1980', 'Used Cars', 1980, 'Comedy', 'When the owner of a struggling used car lot is killed, it\'s up to the lot\'s hot-shot salesman to save the property from falling into the hands of the owner\'s ruthless brother and used-car rival.', 'Robert Zemeckis', 'Kurt Russell, Jack Warden, Gerrit Graham, Frank McRae', 'Robert Zemeckis, Bob Gale', 113, 'R', 68, 1, '2012-05-24 22:02:20', '2012-05-24 22:02:20', 0, NULL),
(4265, 'no-strings-attached-2011', 'No Strings Attached', 2011, 'Comedy, Romance', 'A guy and girl try to keep their relationship strictly physical, but it\'s not long before they learn that they want something more.', 'Ivan Reitman', 'Natalie Portman, Ashton Kutcher, Kevin Kline, Cary Elwes', 'Elizabeth Meriwether, Michael Samonek', 108, 'R', 60, 64, '2012-05-24 22:02:22', '2012-05-24 22:02:22', 0, NULL),
(4266, 'you-dont-know-jack-2010', 'You Don\'t Know Jack', 2010, 'Biography, Drama', 'A look at the life and work of doctor-assisted suicide advocate Jack Kevorkian.', 'Barry Levinson', 'Al Pacino, Brenda Vaccaro, John Goodman, Deirdre O\'Connell', 'Adam Mazer', 134, '14A', 79, 1, '2012-05-24 22:02:23', '2012-05-24 22:02:23', 0, NULL),
(4267, 'black-beauty-1994', 'Black Beauty', 1994, 'Adventure, Drama, Family, Romance', 'The fates of horses, and the people who own and command them, are revealed as Black Beauty narrates the circle of his life.', 'Caroline Thompson', 'Sean Bean, David Thewlis, Docs Keepin Time, Alan Cumming', 'Anna Sewell, Caroline Thompson', 94, 'G', 63, 0, '2012-05-24 22:02:25', '2012-05-24 22:02:25', 0, NULL),
(4268, 'predator-1987', 'Predator', 1987, 'Action, Adventure, Sci-Fi, Thriller', 'A team of commandos, on a mission in a Central American jungle, find themselves hunted by an extra-terrestrial warrior.', 'John McTiernan', 'Arnold Schwarzenegger, Carl Weathers, Kevin Peter Hall, Elpidia Carrillo', 'Jim Thomas, John Thomas', 107, 'R', 78, 12, '2012-05-24 22:02:26', '2012-05-24 22:02:26', 0, NULL),
(4269, 'centurion-2010', 'Centurion', 2010, 'Action, Adventure, Drama, History, Thriller, War', 'A splinter group of Roman soldiers fight for their lives behind enemy lines after their legion is decimated in a devastating guerrilla attack.', 'Neil Marshall', 'Michael Fassbender, Dominic West, Olga Kurylenko, Andreas Wisniewski', 'Neil Marshall', 97, 'R', 63, 25, '2012-05-24 22:02:28', '2012-05-24 22:02:28', 0, NULL),
(4270, 'manon-of-the-spring-1986', 'Manon of the Spring', 1986, 'Drama', 'A beautiful but shy shepherdess plots vengeance on the men whose greedy conspiracy to acquire her her father\'s land caused his death years earlier.', 'Claude Berri', 'Yves Montand, Emmanuelle Béart, Daniel Auteuil, Hippolyte Girardot', 'Claude Berri, Gérard Brach', 113, 'PG', 85, 1, '2012-05-24 22:02:29', '2012-05-24 22:02:29', 0, NULL),
(4271, 'henry-portrait-of-a-serial-killer-1986', 'Henry: Portrait of a Serial Killer', 1986, 'Biography, Crime, Drama, Horror, Thriller', 'Based on the true life serial killer, Henry Lee Lucas.', 'John McNaughton', 'Michael Rooker, Tracy Arnold, Tom Towles, Mary Demas', 'Richard Fire, John McNaughton', 90, 'X', 74, 1, '2012-05-24 22:02:31', '2012-05-24 22:02:31', 0, NULL),
(4272, 'sherrybaby-2006', 'Sherrybaby', 2006, 'Drama', 'Sherry Swanson returns home to New Jersey after serving a three year prison sentence. Eager to reestablish a relationship with her young daughter...', 'Laurie Collyer', 'Maggie Gyllenhaal, Ryan Simpkins, Sam Bottoms, Michelle Hurst', 'Laurie Collyer', 0, 'Not Rated', 69, 2, '2012-05-24 22:02:33', '2012-05-24 22:02:33', 0, NULL),
(4273, 'scott-pilgrim-vs-the-world-2010', 'Scott Pilgrim vs. the World', 2010, 'Action, Comedy, Fantasy, Romance', 'Scott Pilgrim must defeat his new girlfriend\'s seven evil exes in order to win her heart.', 'Edgar Wright', 'Michael Cera, Mary Elizabeth Winstead, Kieran Culkin, Alison Pill', 'Michael Bacall, Edgar Wright', 113, 'PG-13', 77, 94, '2012-05-24 22:02:34', '2012-05-24 22:02:34', 0, NULL),
(4274, 'fitzcarraldo-1982', 'Fitzcarraldo', 1982, 'Adventure, Drama', 'The story of Brian Sweeney Fitzgerald, an extremely determined man who intends to build an opera house in the middle of a jungle.', 'Werner Herzog', 'Klaus Kinski, Claudia Cardinale, José Lewgoy, Miguel Ángel Fuentes', 'Werner Herzog', 157, 'PG', 82, 1, '2012-05-24 22:02:36', '2012-05-24 22:02:36', 0, NULL),
(4275, 'spider-man-2-2004', 'Spider-Man 2', 2004, 'Action, Fantasy', 'Peter Parker is beset with troubles in his failing personal life as he battles a brilliant scientist named Doctor Otto Octavius, who becomes Doctor Octopus (aka Doc Ock), after an accident causes him to bond psychically with mechanical tentacles that do his bidding.', 'Sam Raimi', 'Tobey Maguire, Kirsten Dunst, Alfred Molina, James Franco', 'Stan Lee, Steve Ditko', 127, 'PG-13', 77, 34, '2012-05-24 22:02:37', '2012-05-24 22:02:37', 0, NULL),
(4276, 'the-ides-of-march-2011', 'The Ides of March', 2011, 'Drama', 'An idealistic staffer for a new presidential candidate gets a crash course on dirty politics during his stint on the campaign trail.', 'George Clooney', 'Paul Giamatti, George Clooney, Philip Seymour Hoffman, Ryan Gosling', 'George Clooney, Grant Heslov', 102, 'R', 75, 100, '2012-05-24 22:02:40', '2012-05-24 22:02:40', 0, NULL),
(4277, 'electric-dreams-1984', 'Electric Dreams', 1984, 'Comedy, Drama, Music, Romance, Sci-Fi', 'An artificially intelligent PC and his human owner find themselves in a romantic rivalry over a woman.', 'Steve Barron', 'Lenny von Dohlen, Virginia Madsen, Maxwell Caulfield, Bud Cort', 'Rusty Lemorande', 95, 'PG', 61, 0, '2012-05-24 22:02:42', '2012-05-24 22:02:42', 0, NULL),
(4278, 'the-beast-of-war-1988', 'The Beast of War', 1988, 'Drama, History, War', 'During the war in Afghanistan a Soviet tank crew commanded by a tyrannical officer find themselves lost...', 'Kevin Reynolds', 'George Dzundza, Jason Patric, Steven Bauer, Stephen Baldwin', 'William Mastrosimone, William Mastrosimone', 109, 'R', 73, 0, '2012-05-24 22:02:43', '2012-05-24 22:02:43', 0, NULL),
(4279, 'below-2002', 'Below', 2002, 'Horror, Mystery, Thriller', 'Strange happenings occur on a WW II submarine.', 'David Twohy', 'Bruce Greenwood, David Crow, Matthew Davis, Holt McCallany', 'Lucas Sussman, Darren Aronofsky', 105, 'R', 62, 2, '2012-05-24 22:02:45', '2012-05-24 22:02:45', 0, NULL),
(4280, 'crazy-beautiful-2001', 'Crazy/Beautiful', 2001, 'Drama, Romance', 'At Pacific Palisades High, a poor Latino falls hard for a troubled girl from the affluent neighborhood.', 'John Stockwell', 'Kirsten Dunst, Jay Hernandez, Bruce Davison, Herman Osorio', 'Phil Hay, Matt Manfredi', 99, 'PG-13', 63, 2, '2012-05-24 22:02:47', '2012-05-24 22:02:47', 0, NULL),
(4281, 'fahrenheit-9-11-2004', 'Fahrenheit 9/11', 2004, 'Documentary, History, War', 'Michael Moore\'s view on what happened to the United States after September 11; and how the Bush Administration allegedly used the tragic event to push forward its agenda for unjust wars in Afghanistan and Iraq.', 'Michael Moore', 'Michael Moore, George W. Bush, Ben Affleck, Stevie Wonder', 'Michael Moore', 122, 'R', 77, 15, '2012-05-24 22:02:48', '2012-05-24 22:02:48', 0, NULL),
(4282, 'how-to-train-your-dragon-2010', 'How to Train Your Dragon', 2010, 'Animation, Adventure, Comedy, Drama, Family, Fantasy', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.', 'Dean DeBlois, Chris Sanders', 'Jay Baruchel, Gerard Butler, Christopher Mintz-Plasse, Craig Ferguson', 'William Davies, Dean DeBlois', 98, 'PG', 84, 89, '2012-05-24 22:02:50', '2012-05-24 22:02:50', 0, NULL),
(4283, 'harold-and-maude-1971', 'Harold and Maude', 1971, 'Comedy, Romance', 'Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.', 'Hal Ashby', 'Ruth Gordon, Bud Cort, Vivian Pickles, Cyril Cusack', 'Colin Higgins', 90, 'TV-14', 82, 3, '2012-05-24 22:02:52', '2012-05-24 22:02:52', 0, NULL),
(4284, 'malcolm-x-1992', 'Malcolm X', 1992, 'Biography, Drama, History', 'The biopic of the controversial and influential Black Nationalist leader.', 'Spike Lee', 'Denzel Washington, Angela Bassett, Delroy Lindo, Spike Lee', 'Alex Haley, Malcolm X', 201, 'PG-13', 81, 3, '2012-05-24 22:02:53', '2012-05-24 22:02:53', 0, NULL),
(4285, 'nightwatch-1994', 'Nightwatch', 1994, 'Horror, Mystery, Thriller', 'In order to finance his law studies, Martin starts as a night watchman in a mortuary. When the victims...', 'Ole Bornedal', 'Nikolaj Coster-Waldau, Sofie Gråbøl, Kim Bodnia, Lotte Andersen', 'Ole Bornedal', 104, 'R', 75, 1, '2012-05-24 22:02:55', '2012-05-24 22:02:55', 0, NULL),
(4286, 'bedtime-stories-2008', 'Bedtime Stories', 2008, 'Comedy, Family, Fantasy, Romance', 'A family comedy about a hotel handyman whose life changes when the lavish bedtime stories he tells his niece and nephew start to magically come true.', 'Adam Shankman', 'Adam Sandler, Keri Russell, Courteney Cox, Guy Pearce', 'Matt Lopez, Tim Herlihy', 95, 'PG', 61, 14, '2012-05-24 22:02:57', '2012-05-24 22:02:57', 0, NULL),
(4287, 'how-green-was-my-valley-1941', 'How Green Was My Valley', 1941, 'Drama, Family', 'Life is hard in a Welsh mining town and no less so for the Morgan family. Seen through the eyes of the family\'s youngest...', 'John Ford', 'Walter Pidgeon, Maureen O\'Hara, Anna Lee, Donald Crisp', 'Philip Dunne, Richard Llewellyn', 125, 'Approved', 81, 1, '2012-05-24 22:02:58', '2012-05-24 22:02:58', 0, NULL),
(4288, 'help-1965', 'Help!', 1965, 'Comedy, Musical', 'Ringo finds himself the human sacrifice target of a cult and the band must try to protect him from it.', 'Richard Lester', 'John Lennon, Paul McCartney, George Harrison, Ringo Starr', 'Marc Behm, Charles Wood', 90, 'Approved', 76, 1, '2012-05-24 22:03:00', '2012-05-24 22:03:00', 0, NULL),
(4289, 'funny-games-2007', 'Funny Games', 2007, 'Crime, Drama, Thriller', 'Two psychopathic young men take a family hostage in their cabin.', 'Michael Haneke', 'Naomi Watts, Tim Roth, Michael Pitt, Brady Corbet', 'Michael Haneke', 112, 'R', 60, 12, '2012-05-24 22:03:02', '2012-05-24 22:03:02', 0, NULL),
(4290, 'mystic-river-2003', 'Mystic River', 2003, 'Crime, Drama, Mystery, Thriller', 'With a childhood tragedy that overshadowed their lives, three men are reunited by circumstance when one loses a daughter.', 'Clint Eastwood', 'Sean Penn, Tim Robbins, Kevin Bacon, Emmy Rossum', 'Brian Helgeland, Dennis Lehane', 137, 'R', 81, 29, '2012-05-24 22:03:03', '2012-05-24 22:03:03', 0, NULL),
(4291, 'hysteria-2011', 'Hysteria', 2011, 'Comedy, Romance', 'The truth of how Mortimer Granville devised the invention of the first vibrator in the name of medical science.', 'Tanya Wexler', 'Maggie Gyllenhaal, Hugh Dancy, Jonathan Pryce, Felicity Jones', 'Stephen Dyer, Jonah Lisa Dyer', 95, 'R', 64, 100, '2012-05-24 22:03:05', '2012-05-24 22:03:05', 0, NULL),
(4292, 'home-alone-2-lost-in-new-york-1992', 'Home Alone 2: Lost in New York', 1992, 'Adventure, Comedy, Crime, Family', 'One year after Kevin was left home alone and had to defeat a pair of bumbling burglars, he accidentally finds himself in New York City, and the same criminals are not far behind.', 'Chris Columbus', 'Macaulay Culkin, Joe Pesci, Daniel Stern, Catherine O\'Hara', 'John Hughes, John Hughes', 120, 'PG', 61, 7, '2012-05-24 22:03:06', '2012-05-24 22:03:06', 0, NULL),
(4293, 'schindlers-list-1993', 'Schindler\'s List', 1993, 'Biography, Drama, History, War', 'In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'Steven Spielberg', 'Liam Neeson, Ralph Fiennes, Ben Kingsley, Caroline Goodall', 'Thomas Keneally, Steven Zaillian', 200, 'R', 90, 33, '2012-05-24 22:03:08', '2012-05-24 22:03:08', 0, NULL),
(4294, 'the-omen-1976', 'The Omen', 1976, 'Horror, Mystery', 'An American ambassador learns to his horror that his son is actually the literal Antichrist.', 'Richard Donner', 'Gregory Peck, Lee Remick, Harvey Stephens, David Warner', 'David Seltzer', 111, 'R', 77, 3, '2012-05-24 22:03:10', '2012-05-24 22:03:10', 0, NULL),
(4295, 'the-illusionist-2006', 'The Illusionist', 2006, 'Drama, Mystery, Romance, Thriller', 'In turn-of-the-century Vienna, a magician uses his abilities to secure the love of a woman far above his social standing.', 'Neil Burger', 'Edward Norton, Jessica Biel, Paul Giamatti, Rufus Sewell', 'Neil Burger, Steven Millhauser', 109, 'PG-13', 76, 35, '2012-05-24 22:03:11', '2012-05-24 22:03:11', 0, NULL),
(4296, 'the-innocents-1961', 'The Innocents', 1961, 'Drama, Horror, Thriller', 'A young governess for two children becomes convinced that the house and grounds are haunted.', 'Jack Clayton', 'Deborah Kerr, Peter Wyngarde, Megs Jenkins, Michael Redgrave', 'Henry James, John Mortimer', 100, 'Approved', 83, 1, '2012-05-24 22:03:13', '2012-05-24 22:03:13', 0, NULL),
(4297, 'the-big-easy-1986', 'The Big Easy', 1986, 'Action, Comedy, Crime, Mystery, Romance, Thriller', 'Set in New Orleans. Remy McSwain, lieutenant in Homicide finds that he has two problems, the first of a series of gang killings and Ann Osborne...', 'Jim McBride', 'Dennis Quaid, Ellen Barkin, Ned Beatty, John Goodman', 'Daniel Petrie Jr.', 101, 'R', 71, 1, '2012-05-24 22:03:14', '2012-05-24 22:03:14', 0, NULL),
(4298, 'captain-america-the-first-avenger-2011', 'Captain America: The First Avenger', 2011, 'Action, Adventure, Sci-Fi', 'After being deemed unfit for military service, Steve Rogers volunteers for a top secret research project that turns him into Captain America, a superhero dedicated to defending the USA\'s ideals.', 'Joe Johnston', 'Chris Evans, Hugo Weaving, Samuel L. Jackson, Hayley Atwell', 'Christopher Markus, Stephen McFeely', 121, 'PG-13', 69, 100, '2012-05-24 22:03:16', '2012-05-24 22:03:16', 0, NULL),
(4299, 'tootsie-1982', 'Tootsie', 1982, 'Comedy, Drama, Romance', 'An unemployed actor with a reputation for being difficult disguises himself as a woman to get a role in a soap opera.', 'Sydney Pollack', 'Dustin Hoffman, Jessica Lange, Teri Garr, Dabney Coleman', 'Don McGuire, Larry Gelbart', 119, 'PG', 77, 4, '2012-05-24 22:03:18', '2012-05-24 22:03:18', 0, NULL),
(4300, 'the-outlaw-josey-wales-1976', 'The Outlaw Josey Wales', 1976, 'Action, Adventure, Drama, Thriller, Western', 'A Missouri farmer joins a Confederate guerilla unit and winds up on the run from the Union soldiers who murdered his family.', 'Clint Eastwood', 'Clint Eastwood, Sondra Locke, Chief Dan George, Bill McKinney', 'Forrest Carter, Philip Kaufman', 118, 'PG', 82, 2, '2012-05-24 22:03:19', '2012-05-24 22:03:19', 0, NULL),
(4301, 'spaceballs-1987', 'Spaceballs', 1987, 'Adventure, Comedy, Sci-Fi', 'Planet Spaceball\'s President Skroob sends Lord Dark Helmet to steal Planet Druidia\'s abundant supply of air to replenish their own, and only Lone Starr can stop them.', 'Mel Brooks', 'Mel Brooks, John Candy, Rick Moranis, Bill Pullman', 'Mel Brooks, Thomas Meehan', 96, 'PG', 68, 6, '2012-05-24 22:03:21', '2012-05-24 22:03:21', 0, NULL),
(4302, 'alien3-1992', 'Alien³', 1992, 'Action, Sci-Fi, Thriller', 'Ripley continues to be stalked by a savage alien, after her escape pod crashes on a prison planet.', 'David Fincher', 'Sigourney Weaver, Charles S. Dutton, Charles Dance, Paul McGann', 'Dan O\'Bannon, Ronald Shusett', 114, 'R', 64, 9, '2012-05-24 22:03:23', '2012-05-24 22:03:23', 0, NULL),
(4303, 'the-fury-1978', 'The Fury', 1978, 'Drama, Horror, Sci-Fi, Thriller', 'A government agent is determined to come to his son\'s rescue, when a sinister official kidnaps him to harbor his extremely powerful psychic abilities.', 'Brian De Palma', 'Kirk Douglas, John Cassavetes, Carrie Snodgress, Charles Durning', 'John Farris, John Farris', 117, 'R', 66, 0, '2012-05-24 22:03:24', '2012-05-24 22:03:24', 0, NULL),
(4304, 'elite-squad-2007', 'Elite Squad', 2007, 'Crime, Drama, Thriller', '1997, Captain Nascimento has to find a substitute for his occupation while trying to take down drug dealers and criminals before the Pope comes to Rio de Janeiro, Brazil.', 'José Padilha', 'Wagner Moura, André Ramiro, Caio Junqueira, Milhem Cortaz', 'José Padilha, Bráulio Mantovani', 114, 'R', 75, 11, '2012-05-24 22:03:26', '2012-05-24 22:03:26', 0, NULL),
(4305, 'the-terminal-2004', 'The Terminal', 2004, 'Comedy, Drama, Romance', 'An eastern immigrant finds himself stranded in JFK airport, and must take up temporary residence there.', 'Steven Spielberg', 'Tom Hanks, Catherine Zeta-Jones, Chi McBride, Stanley Tucci', 'Andrew Niccol, Sacha Gervasi', 128, 'PG-13', 71, 23, '2012-05-30 19:16:01', '2012-05-24 22:03:27', 1, NULL),
(4306, 'deep-red-1975', 'Deep Red', 1975, 'Horror, Mystery, Thriller', 'A musician witnesses the murder of a famous psychic, and then teams up with a fiesty reporter to find the killer while evading attempts on their lives by the unseen killer bent on keeping a dark secret buried.', 'Dario Argento', 'David Hemmings, Daria Nicolodi, Gabriele Lavia, Macha Méril', 'Dario Argento, Bernardino Zapponi', 98, 'X', 82, 1, '2012-05-24 22:03:29', '2012-05-24 22:03:29', 0, NULL),
(4307, 'ben-hur-1959', 'Ben-Hur', 1959, 'Action, Adventure, Drama, History, Romance', 'When a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.', 'William Wyler', 'Charlton Heston, Jack Hawkins, Stephen Boyd, Haya Harareet', 'Lew Wallace, Karl Tunberg', 222, 'Approved', 83, 7, '2012-05-24 22:03:30', '2012-05-24 22:03:30', 0, NULL),
(4308, 'my-bodyguard-1980', 'My Bodyguard', 1980, 'Comedy, Drama, Family', 'When a boy comes to a new school and gets harassed by a bully, he acquires the services of the school\'s most feared kid as a bodyguard.', 'Tony Bill', 'Chris Makepeace, Adam Baldwin, Matt Dillon, Paul Quandt', 'Alan Ormsby', 96, 'PG', 71, 0, '2012-05-24 22:03:32', '2012-05-24 22:03:32', 0, NULL),
(4309, 'the-chronicles-of-narnia-prince-caspian-2008', 'The Chronicles of Narnia: Prince Caspian', 2008, 'Action, Adventure, Family, Fantasy', 'The Pevensie siblings return to Narnia, where they are enlisted to once again help ward off an evil king and restore the rightful heir to the land\'s throne, Prince Caspian.', 'Andrew Adamson', 'Ben Barnes, Skandar Keynes, Georgie Henley, William Moseley', 'Andrew Adamson, Christopher Markus', 144, 'PG', 68, 24, '2012-05-24 22:03:33', '2012-05-24 22:03:33', 0, NULL),
(4310, 'live-free-or-die-hard-2007', 'Live Free or Die Hard', 2007, 'Action, Crime, Thriller', 'John McClane takes on an Internet-based terrorist organization who is systematically shutting down the United States.', 'Len Wiseman', 'Bruce Willis, Justin Long, Timothy Olyphant, Maggie Q', 'Mark Bomback, Mark Bomback', 129, 'PG-13', 75, 51, '2012-05-24 22:03:35', '2012-05-24 22:03:35', 0, NULL),
(4311, 'ragtime-1981', 'Ragtime', 1981, 'Drama', 'A young black pianist becomes embroiled in the lives of an upper-class white family set among the racial tensions, infidelity, violence, and other nostalgic events in early 1900s New York City.', 'Milos Forman', 'James Cagney, Elizabeth McGovern, Howard E. Rollins Jr., Brad Dourif', 'E.L. Doctorow, Heinrich von Kleist', 155, 'PG', 76, 0, '2012-05-24 22:03:37', '2012-05-24 22:03:37', 0, NULL),
(4313, 'the-perfect-host-2010', 'The Perfect Host', 2010, 'Comedy, Crime, Thriller', 'A criminal on the run cons his way into the wrong dinner party where the host is anything but ordinary.', 'Nick Tomnay', 'David Hyde Pierce, Clayne Crawford, Nathaniel Parker, Tyrees Allen', 'Nick Tomnay, Krishna Jones', 94, 'R', 66, 12, '2012-05-24 22:03:40', '2012-05-24 22:03:40', 0, NULL),
(4314, 'the-chronicles-of-narnia-the-voyage-of-the-dawn-treader-2010', 'The Chronicles of Narnia: The Voyage of the Dawn Treader', 2010, 'Adventure, Family, Fantasy', 'Lucy and Edmund Pevensie return to Narnia with their cousin Eustace where they meet up with Prince Caspian for a trip across the sea aboard the royal ship The Dawn Treader. Along the way they encounter dragons, dwarves, merfolk, and a band of lost warriors before reaching the edge of the world.', 'Michael Apted', 'Ben Barnes, Skandar Keynes, Georgie Henley, Will Poulter', 'Christopher Markus, Stephen McFeely', 115, 'PG', 63, 37, '2012-05-24 22:03:42', '2012-05-24 22:03:42', 0, NULL),
(4315, 'dorian-gray-2009', 'Dorian Gray', 2009, 'Drama, Fantasy, Thriller', 'A corrupt young man somehow keeps his youthful beauty eternally, but a special painting gradually reveals his inner ugliness to all.', 'Oliver Parker', 'Ben Barnes, Colin Firth, Rebecca Hall, John Hollingworth', 'Oscar Wilde, Toby Finlay', 112, 'R', 62, 11, '2012-05-24 22:03:43', '2012-05-24 22:03:43', 0, NULL),
(13319, NULL, 'Mon crime', 2023, 'Comédie dramatique, Policier, Judiciaire', 'Comédie dramatique, Policier, Judiciaire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 17:28:22', '2023-03-08 17:28:22', 0, NULL),
(13320, NULL, 'Creed III', 2023, 'Drama,sport', 'Adonis has been thriving in both his career and family life, but when a childhood friend and former boxing prodigy resurfaces, the face-off is more than just a fight.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 21:34:47', '2023-03-08 18:06:17', 0, NULL),
(13321, NULL, 'The Menu', 2023, 'comedy,thriller,horror', 'A young couple travels to a remote island to eat at an exclusive restaurant where the chef has prepared a lavish menu, with some shocking surprises.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-08 21:36:08', '2023-03-08 21:35:57', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `login`, `email`, `pwd`, `created_at`, `role`) VALUES
(4, 'toto', 'toto@free.fr', '$2y$10$86ojvVVjcSzN2b8MguoSyO5WCq9dqHoYcGsurE3mGDI6ZcKv6CttG', '2023-03-07 17:13:51', 'user'),
(10, 'tata', 'tata@box.fr', '$2y$10$lNYLY3rY.kuBYuAs.56lz.RAtBIjY2UshI9ncNuo0vvEE0fERwM7i', '2023-03-07 18:58:06', 'user'),
(11, 'lee', 'leemajor@gmail.com', '$2y$10$PsSxnONzyC5PF6smFIhhgeuIsM00HPaxaZ52Bd6nD9D.7EBdd4AE2', '2023-03-08 09:38:12', 'admin'),
(12, 'sof', 'sof@yahoo.com', '$2y$10$qQUJsPFgItBnr5.oFTT8mOzEleapEcsgqLo6mUpwjmXCCNAzdIItq', '2023-03-08 09:39:40', 'user'),
(13, 'lkjlj', 'lljklkjljk@fr.fr', '$2y$10$FlGllpII7kg3.8k/kYNVe.hGY6fTiFeihrZc9vsAHSCn68oh1eteK', '2023-03-08 09:40:54', 'user'),
(14, 'mike', 'mike@free.fr', '$2y$10$i/hrK7k1XTF3j7O8Regmg.t7bFwp8NTrmVWIPkROadf5sJza3cGFO', '2023-03-08 11:38:29', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies_full`
--
ALTER TABLE `movies_full`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies_full`
--
ALTER TABLE `movies_full`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13322;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
