-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 08:44 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricshizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `banner_inner` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `uploaded_by` varchar(255) DEFAULT NULL,
  `banner_main` varchar(255) DEFAULT '',
  `longdescription` longtext DEFAULT NULL,
  `match_category` varchar(255) DEFAULT NULL,
  `team_a` varchar(255) DEFAULT NULL,
  `team_b` varchar(255) DEFAULT NULL,
  `gallery` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `banner_inner`, `description`, `created_at`, `uploaded_by`, `banner_main`, `longdescription`, `match_category`, `team_a`, `team_b`, `gallery`) VALUES
(1, 'Better Luck Next Time Stallions', 'b7645c5-7be-6cde-625-b21ee1050b4b1.jpg', 'Pitch was looking great for bowlers as the outfield was in favour of fielding side.', '2022-11-03 02:14:14', 'Danny', 'b63c86-ff2d-3a1-116-60d857750cablog1Pic.jpg', 'Trail Blazers opted to bat first. From the very start of innings, Garden Stallions bowlers dominated over Trail Blazers and held them tight. Only 2 of the Batsmen could move to the double figures. Trail Blazers failed to make any partnership and their batting order collapsed as they looked stunned against Garden Stallions pacers especially Ahsan Ali who completed his 4 with 2 dismissals at an average of 3.8 while skipper of Garden Stallions Danish Khanani leading from the front bowled 3 overs including a wicket maiden and was succeeded in sending 2 Trail Blazers Batsmen pavilion. Just then middle-order Batsman Amir took a brave stance and supported his team by adding very valuable 61 (of just 38) runs to the board. His innings included 5 massives and 3 fours. Trail Blazers completed their innings for 118 with 1 wicket in hand.\r\n\r\nIt was a cherry on the cake for Garden Stallions but 2nd innings turned out to be a nightmare. Their openers and middle order collapsed and they were left stunned by the right arm fast bowler Rehan who took a 5 wickets haul conceding just 18 runs and star of the match Amir with 4 overs 2 wickets costing 16 runs. Sinking boat of Garden Stallions was led a little bit by Middle-order batsman Fahad scoring 31 of 21. It was just not enough for them to cross the finishing line and Garden Stallions ended up shortened of 31 runs. Trail Blazers Rehan was awarded Man of the Match for his 5/18\r\n\r\nTrail Blazers won by 31 runs', '1', '1', '2', 1),
(2, 'Hail To The Champions', 'bcc1e46-1dd1-5c57-8be-c211687b1bMainPic.jpg', 'The much-anticipated match of the tournament was held last Saturday, when two of the best teams i.e AA Associate & AGG CC face off each other in the finals of Catchy Classic Season 2.', '2022-11-03 02:16:44', 'Danny', 'f4751fb-f053-c34-8a3c-d213cc831f40HeaderPic.jpg', 'AGG CC won the toss and they opted to field first. This decision seemed quite right when AA Associate batsmen looked stunned in front of AGG CC\'s bowling attack. AGG CC bowlers were successful in providing their team with early breakthroughs. Their star bowlers included pacer Sarfaraz who conceded 20 runs and got 2 wickets while all-rounder spinner Kamran Ibrahim sent 2 batsmen to the pavilion at the cost of just 18 runs at the completion of their 4 overs. Only middle-order batsman Danish Naveed were able to spent a little time at the crease and added 49 valuable runs to the board. AA Associate\'s managed to get a decent total of 132/8 at the scoreboard.\r\n\r\nAGG CC batsmen responsibly held their wickets in hand and made consecutive partnerships. Opener Kamran Ibrahim started off with 28 while middle-order batsmen Mobeen Polka, Haris Ali & Jahanzaib contributed 20+ scores each to the board. AA Associated bowlers look stunned and helpless as they failed to get early wickets. Only spinners were able to put some pressure on the opposing side. Ali Naveed conceded only 11 with 1 wicket while M.Hassan got 2 wickets at the cost of 31 runs, at the completion of their spells. AGG CC batsmen held their nerves & smoothly proceeded towards the target. AGG CC won the match and claimed the Catchy Classic Season 2 Title. Haris Ali of AGG CC was awarded Man of the Match.\r\n\r\nAAG CC won by 5 wickets', '2', '3', '4', 0),
(3, 'Blistering Bilals Innings', 'd42c4f-3d1-b240-034f-f7235aadddfMainPic.jpg', 'Garden Stallions Club batted first against United CV.', '2022-11-03 02:21:08', 'Danny', '03a4f-36-dc73-b2f7-25650e48e57dHeaderPic.jpg', 'Stallion\'s opening duo failed to add any contributions to the board and returned to the pavilion by the start of 4th over. Stallion\'s Middle-order played their part then. Shayan\'s 27, Anas\'s 20, and Bilal\'s blistering 67 of 47 with 9 fours and 2 massives done the job for Stallions as they posted 179 at the board of their 20. United CV bowlers looked stunned against Garden Stallion\'s middle-order except for Khalid who took 3 for 35.\r\n\r\nGarden Stallions Club was looking calm and confident as they had a pretty decent total on the board to defend. Stallion\'s Skipper Danish took this opportunity and struck 2 wickets in the very first over of innings. This created an immensely huge pressure on the batsmen and they were not able to make a comeback. Even middle-order batsmen Okasha\'s 37 and Faisal\'s 31 could not make a difference. Stallion\'s Fayyaz hunted 2 while Skipper Danish struck 3. Bilal was awarded Man of the Match for his exciting 67.\r\n\r\nGSC won the match easily by 34 runs', '3', '1', '5', 0),
(4, 'Easy Win For Cric IT', '3c8a05-a42-f8c8-7fc1-8730bc658c6fMainPic.jpg', 'Cric IT faced Ground Hocks at RLC UP this Saturday where Ground Hocks opted to bat first.', '2022-11-03 02:24:11', 'Danny', '07d5d-2627-fdef-8178-bd80416c8338HeaderPic.jpg', 'Their opener Kashan played tremendously with his 62 of 34 balls with 3 massives and 9 boundaries. Other than him, Zeeshan\'s 28 and Khalid\'s 30 helped Ground Hocks set a very suitable target of 161 at the scoreboard. Cric IT bowlers tried their level best to get early breakthroughs but they were outclassed by the pure class of Ground Hocks batsmen. Muneeb was able to get 2 wickets while Imran and Noman got 1 wicket each.\r\n\r\nCric IT batsmen stepped on to the pitch with a calm and confident mindset. Their opening duo Azam and Shahkar played brilliantly with the new ball and scored 20+ runs each. After them, middle-order batsmen Farrukh, Adeel, and Noman played very sensibly by contributing 25+ runs each to the board. Ground Hocks bowlers were stunned and looked helpless as they could not pressurize the opposing side. Only Moiz, Shayan, and Adnan were able to get wickets. Cric IT easily achieved their total with 7 balls remaining. Noman was awarded Man Of The Match for his 27 runs from 19 balls which includes 3 fours.\r\n\r\nCric IT won the match by 6 wickets', '3', '6', '7', 0),
(5, 'Nail-Biting Draw', '0c165b4-dce-da05-831-bd800a536d27MainPic.jpg', 'Gamers Inn faced Cric IT this Saturday where Gamers Inn batted first.', '2022-11-03 02:25:25', 'Danny', '54437d5-a618-6ccb-ce4a-c63a8a15545HeaderPic.jpg', 'Their openers played brilliantly as they provided their team with a very good start. Opener Ateeb scored 55 of 37 with 9 boundaries. Other batsmen also added valuable scores to the board. Cric IT bowlers bowled quite well as they were able to get early wickets throughout the innings. Star bowler Adeel took 4 wickets with a maiden at an average of 4.5. Azam got 2 while Imran, Asif, and Ali got 1 wicket each. Gamers Inn posted a total of 139 at the board.\r\n\r\nNow, it was the payback time for Cric IT batsmen. Their top order failed completely other than Shakar who scored 44 and Adeel who added 14 valuable runs to the board. It was a setback and a one-sided match by now. Just then Imran and Noman made it a thriller by their powerhouse hitting. On the last ball, Cric IT required 4 runs. Imran slapped the ball hard with a swing but it was a mishit and just stopped before the rope. Meanwhile, they were able to get 3 runs. Gamers Inn bowlers bowled comparatively well but unluckily they could not win it for them. Sid, Burhan and Ali got 2 while Bobby and Rameel got 1 wicket. This nail-biter ended up as a tie. Cric IT\'s Imran was awarded Man of the Match for his superb innings.\r\n\r\nMATCH DRAWN', '3', '8', '7', 0),
(6, 'Folio3 Sixers With A Six (6)', 'e3dfee-7c5d-41f6-8f7-72b240ed13ce4.jpg', 'Moin khan academy was full-on with lights this Friday when Folio3 Sixers faced Folio3 Strikers.', '2022-11-04 01:37:52', 'Danny', '5732b3-0b8-57ce-bee-74757f3663a2MainPic.jpg', 'Folio3 Strikers batted first. Strikers batsmen played quite well as they were able to establish partnerships one after another. Rafay\'s 39 along with Shahab\'s 29 and Hamza\'s 23 made Strikers set a very defendable score of 146 at the board. On the other hand, Sixer\'s Asad bowled superbly by taking 4 wickets.\r\n\r\nNow, it was showtime for Sixers. Sixer\'s Top-order was unbreakable. Asim\'s 51, Ahsan\'s 36, and Wasi\'s 20 turned out to be a match-winner for Sixers. Stricker\'s bowlers looked clueless as they were not able to get any significant breakthroughs. Only Aleem and Ahmed got a couple of wickets. Strikers were helpless and Sixer\'s easily managed to achieve the score with 4 balls remaining. Ahsan was awarded Man of the Match for his all-round performance.\r\n\r\nFolio3 Sixers won the match by 5 wickets', '3', '9', '10', 0),
(7, 'Lone-Wolf Bilal', '6d7fff-e31-0753-1aab-bfc2da3f858dHeaderPic.jpg', 'Catchy Classic Season 3 became so exciting when two of the best teams faced each other at Annu Bhai Cricket Stadium this Saturday. Noy XI opted to bat first.', '2022-11-04 01:45:14', 'Danny', 'a6c531a-04fa-ba4-dd7-e7b50db04b4.jpg', 'Batting first, Noy XI came up with a very aggressive strategy. Their strategy was torn apart by GSC bowlers. Their wickets started to fall from time to time. Fahad Patel\'s spell turned out to be a game-changer for Stallions. Fahad Mani\'s and Fayyaz\'s couple of wickets along with Bilal\'s 3 wickets put Noy XI under immense pressure. Just then middle-order batsmen Irfan\'s half-century along with A.Majid\'s 29 and Wasi\'s 18 helped Noy XI set a very decent score of 145 at the board.\r\n\r\nGSC\'s bowlers did their part and now it was time for Batsmen to play their part. But Unfortunately, Top order was just outclassed by pacer A.Majid\'s in-swingers. By the end of the powerplay, half of the batting line had returned to the dugout. It was seeming to be a quite one-sided match by now but just then Bilal held his nerves up and played masterclass innings. He proved himself a lone-wolf. He was assisted by Anas\'s 14 Mudassir\'s 16 and Aqib\'s 17. Noy XI\'s bowlers looked clueless against this comeback from GSC. Though, A.Majid got 3 wickets while Nadeem and Shakil got 1 wicket each. GSC crossed the finishing line well before 2 overs. Bilal was awarded Man of the Match for his all-round performance.\r\n\r\nGSC won the match by 3 wickets.', '4', '11', '1', 0),
(8, 'Real Estate In A Hurry', '24b4631-ecf-d3c-255-f7c48ca16cMainPic.jpg', 'Cric IT and Real State went on face to face at Ibn-e-Qasim Ground.', '2022-11-04 01:51:20', 'Danny', 'd42618f-7236-baca-c62-2c82367211HeaderPic.jpg', 'Batting first, Cric IT came up with a very solid aggressive approach. Cric IT batsmen were firing boundaries and massives. Farrukh\'s thrilling 66 off 33 while Adeel\'s 22 and Azam\'s 19 made them set a very defendable score of 172 at the board. The bowling side tried their level best but there was no stopping at all. Real State\'s Rashid was successful in getting 3 wickets while Haris got 2.\r\n\r\n2nd innings was short yet worth watching. Real State stepped on to the pitch with an aggressive mindset and started to hit every ball to the rope. Umair scored blistering 46 off 22 while Waqas\'s 40 off 19 made the bowling side\'s strategies tear apart. Cric IT\'s Farrukh got 2 scalps while Adeel and Muneeb were able to get 1 wicket each. Real State\'s power-hitting resulted in achieving the target in just 17 overs. Real State won the match easily by 3 wickets while Umair was awarded Man of the Match. ', '3', '7', '12', 0),
(9, 'The Indestructible Metro Safari', '5011013-6-3406-fd0c-8b7ded23bb2b2.jpg', 'Royal XI clashed with Metro Safari where Royal XI batted first.', '2022-11-04 01:58:19', 'Danny', '7361c37-de0-d6-ed8e-e2d85802ebHeaderPic.jpg', 'Batting first, it looked like their batsmen were in a hurry to be back at the dugout. From the very start, they were jittering a lot as half of their batsmen had returned to the pavilion by the initial half of the innings, courtesy Metro Safari\'s Rizwan who struck 3 wickets in an over. By now, Royal XI had no coming back, still, Nasir and Naveed pushed a little bit with their 20 and 15 runs respectively. Royal XI managed to get a total of 85 runs at the board, thanks to the extras that helped them achieve that. The bowling side showed some real thrilling performances especially by Rizwan who got 3 scalps while Taha, Moiz, and Ilyas got a couple of wickets each.\r\n\r\nMetro Safari players had no match today as their batsmen and bowlers both outclassed the opposing side. Their 2nd innings started with power-hitting from the opener Jalib who scored a half-century in just 25 balls with 4 boundaries and 5 massives while Ihtisham supported him well with his 15. Royal XI bowlers were helpless and clueless against this opening duo as they had no chance. However, Ajmal and Haris were successful in getting a wicket each. But it was too late by now, as Metro XI succeeded in getting the required target well ahead. Jalib was awarded Man of the match for his brilliant 50.\r\n\r\nMetro Safari won by 8 wickets and 12 overs.', '3', '13', '14', 0),
(10, 'From Tremondous Win To Terrific Loss', '88df8fa-4a4a-140c-7527-adb00bbba424.jpg', 'Garden Stallions Club and Shiner XI faced each other at RLCA UP cricket ground.', '2022-11-04 01:59:38', 'Danny', '82d2cc1-611-5b6f-bb64-78f44c7d3e5fMainPic.jpg', 'Batting first, GSC top order played well as they were able to hit boundaries and establish partnerships from time to time. Their running between the wicket was also good. Opener Aqib thrashed the bowling side by scoring 43 runs along with Anas\'s 34 and Bilal\'s 22. Shiner XI bowlers were outclassed by such a performance. Although, they made a good comeback at the end of the innings by stopping Stallions from achieving a very high total. Naveed, Talha and Minhaj\'s couple of wickets did it for Shiner XI. Garden Stallions were able to set a very decent total of 154 at the board.\r\n\r\n2nd innings was worth-watching as it comprised of some brilliant performances from both sides. Shiner XI batsmen were pressurized from the very start due to aggressive bowling strategy and tight fielding from the bowling side. However, Talha, Faizi and Danish managed to shudder the bowling side by scoring 24, 24, and 33 runs respectively. Stallions were very close to the victory courtesy M.Bilal, Fayyaz, and Bilal with a couple of wickets. It was all win for Stallions as they were just 4 balls away from being victorious and just then an overthrow turned this tremendous win into a terrific loss. Shiner\'s Danish was awarded Man of the Match for his brilliant knock.\r\n\r\nShiners XI won by 2 wickets.', '4', '1', '15', 0),
(11, 'Zain steals the show!', '82fdc5f-bec0-52ff-bd0a-d1da431076d1.jpg', 'Metro Safari took on Strikers XI this Saturday at Annu Bhai Cricket Ground.', '2022-11-04 02:08:26', 'Danny', '000ce1b-e4f-77a-7306-e4ddbf4a75HeaderPic.jpg', 'Batting first, Strikers XI dominated the opposing side from the very beginning. Taking quick singles and not giving any wickets easily pressurized the bowling side. Striker\'s top striker Atif hit blistering 64 of 37 assisted by Adeel\'s 28 and Haris\'s 19 helped them set a very decent total of 156 at the board. Metro Safari bowlers had no chance still Jalib managed to get 2 scalps while Zain and Moin got a wicket each.\r\n\r\nMetro Safari had an amazing time with the bat. Zain\'s terrific 65 of 41 followed by Amir\'s 26 and Farooq\'s 25 helped Metro Safari easily sail across the target well ahead of time. Strikers XI bowlers didn\'t show any meaningful performance. Yet, Adeel got 2 wickets while Haris and Afzal were able to get a wicket.\r\n\r\nZain was awarded Man of the Match for his all-round performance.\r\n\r\nMetro Safari won the match by 4 wickets.', '3', '16', '14', 0),
(12, 'Bad Day For Stallions', '3456dab-2dde-783-6c-03725d74a267HeaderPic.jpg', 'Garden Stallions faced Groove CC at RLCA UP in their group stages match this Saturday.', '2022-11-04 02:10:15', 'Danny', '8fec7fa-04d6-bd52-ff1a-807caad2efcMainPic.jpg', 'Batting first, Groove CC openers played brilliantly by dominating the opponents from very start. Danyal\'s 69 of 34 along with Shehzad\'s 34 made Groove\'s in a a way better position. Just then, Fahad Mani\'s terrific 4 of 30 followed by M.Bilal\'s 3 for 27 demolished Groove\'s batting line. Somehow, Groove CC was able to reach 136 by the end of 1st innings.\r\n\r\n1st innings was all in favour of Stallions but 2nd innings didn\'t suit them that much. One of their players got retired hurt while batsmen scored at a very slow pace excluding Bilal who scored 54 of just 34 balls. Groove CC bowlers held Stallions tight by not giving any boundaries or easy singles. In Addition to that, Noman, Danish, and Shumail couple of wickets also pressurized the chasing side a lot. In the end, Stallions fell 17 runs short.\r\n\r\nDanyal was awarded Man of the Match.\r\n\r\nGroove CC won by 17 runs.', '4', '17', '1', 0),
(13, 'Saqib With A Sixer', '3e3a553-c735-8c47-a4d4-bfca1e253fHeaderPic.jpg', 'Garden Stallions went on face to face with Cric IT at Sarfaraz Ahmed Cricket Academy this Saturday.', '2022-11-04 02:15:08', 'Danny', '2b217-cdf7-ac02-55d1-ccda5f2660ceMainPic.jpg', 'Batting first, Cric IT\'s top order Adeel and Skipper Azam showed great resistance against Stallions\' bowling attack after an early breakthrough. This duo played tremendously well and hit boundaries all over the ground. Azam\'s 58 and Adeel\'s 55 resulted in 110 by the end of 11 overs for Cric IT. They were planning to set a massive total for Stallions and just then Saqib ripped out the entire batting line of Cric IT all alone with his magical variations and marked career-best 6/20. There was no coming back for Cric IT and they managed to get only 160 runs at the board.\r\n\r\nSaqib\'s outstanding spell boosted the morale of Stallions and they started their 2nd innings with high aims. The opening duo provided a very good start and even after a breakthrough they were not ready to stop. Moin\'s great 68 along with Fahad Patel\'s 33 made Stallions reach very close to the target but courtesy of Adeel, Farrukh, and Hassan with their couple of wickets Stallions were not able to completely get hold of the match. Stallions started well but couldn\'t finish it well and got short of just a run.\r\n\r\nMatch Tied.', '3', '1', '7', 0),
(14, 'Zain\'s Zeal For Victory', '4a8f7df-1ff7-f566-2ca1-43463fb05ce4.jpg', 'Batting first, P.Khan CC lost their openers, however, middle-order responded well especially Umair with his 31 of 24.', '2022-11-04 02:26:16', 'Danny', '005c3d7-c2e-8e1b-5083-b50e85f14ba5MainPic.jpg', 'Wickets fell from time to time which stopped the quick flow of runs but just then lower middle-order batsmen Zeeshan and Zain played a tremendous knock under pressure and contributed valuable 34 and 38 runs respectively to the board. Bavanx CC bowlers started good but could not stop conceding runs. However, Ali managed to strike 3 wickets while Bilal got a couple of wickets. P.Khan CC managed to set a total of 165 at the board.\r\n\r\nBavanx CC batsmen never really started it well and just after an early breakthrough, the entire team got pressurized. The remaining batsmen could not stay long at the pitch and were dismissed within the singles figure. Only opener Mustufa showed some great resistance with his quick 58 followed by Tahir\'s 14 and Hamza\'s 12. Still, it was just not enough and the whole team got dismissed of 137 runs. P.Khan CC showed some great bowling performances, especially by Zain who uprooted 4 batsmen along with Nazar\'s 3 and Zubair\'s couple of wickets.\r\n\r\nZain was awarded Man of the Match for his All round show.\r\n\r\nP.Khan CC won by 28 runs.', '3', '18', '19', 0),
(15, 'Garden Stallions Club Emerge Victoriously', '8d0c7-f1ec-51f-ae8f-e3fb22fc27MainPic.jpg', 'United CC played against Garden Stallion Club at RLCA Gulberg.', '2022-11-04 02:34:58', 'Danny', '75ceab4-33a6-0213-a676-67d465a2143HeaderPic.jpg', ' Batting first, United CC openers went to the pavilion very early without bothering to provide a good start. Just then, middle-order duo Haseeb and Faisal stood all alone and established a strong partnership of 68 runs. Both batsmen contributed 46 and 34 runs at the board respectively. The lower middle-order also added some valuable runs. Stallions bowler bowled economically well. Danish and M.Bilal struck 2 wickets while Fahad Mani and Bilal managed to get a wicket only. United CC set a total of 159 runs at the board.\r\n\r\nGarden Stallions didn\'t start well as one of their openers was dismissed very early. Another opener Aqib batted well and added 35 valuable runs to the board. Middle-order further generated some runs to the board however Fahad Patel and Bilal anchored the innings swiftly and smoothly towards Stallions shore. Both played maverick and unbeatable innings of 43 and 27 runs respectively. United CC bowlers failed to restrict the chase down. Though Khalid, Muhammad and Abdul Basit bagged one wicket each.\r\n\r\nGarden Stallions Club won by 6 wickets.\r\n\r\nFahad Patel was honored with Man of the Match award.', '3', '20', '1', 0),
(16, 'Crescent Sports Stunned All', '56732bb-5180-0601-4845-b30f6214681HeaderPic.jpg', 'Crescent Sports went on face to face against Swingers CC in the league match of the 4th edition of Crescent Premier League.', '2022-11-04 02:36:42', 'Danny', '1a8bb5c-e345-f2d1-db3-41afd3d148cMainPic.jpg', 'Batting first, Crescent Sports opened their innings beautifully and they were off to a very good and aggressive start. Especially when middle-order batters Danish and Mahmood Ali came to bat. They blasted bowlers all over the ground. Danish\'s 67 of 38 and Mahmood\'s 61 of 31 followed by Akbar\'s 35 of 14 helped Crescent Sports set an abnormous score of 245 at the board. The bowling side was torn apart by this power show. Despite all their efforts only Raja, Mahmood Gohar, and Sadiq managed to get a wicket.\r\n\r\nIt was already a one-sided match by now. Still, Swingers CC gathered all the courage to chase this gigantic total down but their hopes were drowned when Mahmood, Adnan, and Kamran uprooted the stumps of Swingers CC. No one even managed to reach near double figures except M.Ahmer, M.Umer, and Sadiq. But this cameo was also dismissed instantly. The whole team returned to the dugout at a very low score of 74 runs courtesy Mahmood for his 4 for 7, Adnan for his 3 for 11, and Kamran for his 3 for 24.\r\n\r\nCrescent Sports won by 170 runs.\r\n\r\nMahmood Ali was awarded Man of the Match for his Thrilling 61 and 4 wickets.', '5', '21', '22', 0),
(17, 'Strikers With A Strike', '17f64a-2214-2bd6-c1df-e6522f2c7b2eHeaderPic.jpg', 'P.Khan CC played against Gulshan Strikers in the league match of 17th KMMA League at AFZA ground.', '2022-11-04 02:39:34', 'Danny', '4a5a56-ed1e-814d-b264-ea0c3ef0decMainPic.jpg', 'Batting first, Gulshan Strikers played tremendously well and outclassed bowling side. Rehman with his 58 of 36 started well for Strikers and then Samad\'s 18 and Rameez\'s 33 helped Strikers to set a good score at the board. P.Khan CC bowlers took wickets at crucial times or else target would be much higher. Courtesy to Zubair for his 2 wickets along with Omair\'s and Nazar\'s wicket each. Gulshan Strikers set a total of 164 at the board.\r\n\r\nP.Khan CC never started it well and got dismissed without showing any resistance. Although Arif tried to provide a good start with his 24. Middle-order Nazar and Omair struggled to grab the match back with their 21 and 20 runs respectively. Lower middle-order Adil also played a helping hand of 27 runs but it was not quite enough to get them over the line. Strikers struck wickets right at the time and not spared any single chance of getting away with it. Sameed got 3 scalps while Rameez got 2 wickets.\r\n\r\nGulshan Strikers won by 34 runs.\r\n\r\nRameez was awarded Man of the Match.', '6', '23', '18', 0),
(18, 'Cric IT Clinched A Close Win', 'c7afe7b-ead8-383a-0346-33cddbfaeb2dHeaderPic.jpg', 'Cric IT and TV one played against each other at Bin Qasim Cricket Stadium.', '2022-11-04 02:44:23', 'Danny', '6f3cf15-484-e6be-bfae-f7a8368d4750MainPic.jpg', 'Batting first, TV one lost their opener very early but the team stabilized themselves instantly, courtesy Ayaz who played a supporting inning of 38 runs alongside Bilal\'s smashing 62 runs knock. Zain and Shahnawaz also added some valuable runs to the board. Cric IT bowlers didn\'t show any fruitful performance. However, Arsalan, Noman and Azam got hold of a wicket. TV one managed to set a total of 164 runs at the board.\r\n\r\nCric IT started their innings very smoothly as both openers provided a very good start of 52 runs with Rohan smashing 34 runs including 3 massives and 3 fours. Middle-order didn\'t respond well to the situation and at one point it turned like a one-sided match. Just then, Arsalan and Noman played a responsible innings of 22 and 26 runs respectively which sailed them very close to the total. Finally, it was accomplished by Azam. TV one bowler tried their level best to get hold of the match but unluckily they didn\'t succeed in it. Though Imran got 3 wickets and Zain was able to get 2 wickets.\r\n\r\nCric IT won by 2 wickets.\r\n\r\nNoman was awarded Man of the Match.', '3', '24', '7', 0),
(19, 'Tigers With An Easy Win', 'd435cb-adcd-3708-02-60abab303cf5HeaderPic.jpg', 'Batting first, Stallions were up to a very good start as both the openers provided 61 runs stand.', '2022-11-04 02:46:30', 'Danny', '003002-eb3b-876d-a5bc-de817ba22bcMainPic.jpg', 'Isam\'s 26 and Maaz\'s 32 boosted the morale of the team but the middle order failed to add any meaningful score to the board. However, they recovered from it due to Saim\'s 34 and Malik\'s 31 runs outstanding knock. This resulted in setting a total of 140 runs at the board. Tigers held the opponent tightly and restrained them from achieving a high total. Zeeshan, Kamran, Rana and Kashif got a wicket each.\r\n\r\n2nd innings turned dramatic when Tiger lost 2 wickets in the span of just 3 overs. However, Shahid\'s 41 followed by Zakaullah\'s 44 and Raja\'s 33 backfired so quickly that opponents couldn\'t hold themselves together and lost their control over the match causing them a 4 wicket and 20 balls left defeat. Although Zeeshan bagged 3 wickets while Sultan and Najeeb got a wicket each. Landhi Tigers won by 4 wickets.\r\n\r\nLandhi Tigers won by 6 wickets.\r\n\r\nShahid Hussain was awarded Player of the match.', '7', '25', '26', 0),
(20, 'Dragon Burned All Others', '0a66b7-eba0-031d-c45e-7c8b71c3a433HeaderPic.jpg', 'Golden Gate Fajr League Season 4 final turned out to be a thriller when two of the most competent teams of the tournament faced each other in the finals.', '2022-11-04 02:48:04', 'Danny', '5b54635-c23a-1c4a-7ea-07575014dfeMainPic.jpg', 'Batting first, Dragon Sports openers started very well as Malik Karar scored 19 runs and Ismail Shah added 15 runs to the board. After their dismissal, Najeeb Lali and Afroz Hassan\'s 68 runs partnership was worth watching. Najeeb struck 49 off 34 while Afroz\'s 31 helped Dragon sports set a very nominal target of 142 runs at the board. Filter Expert bowlers didn\'t turn out to be experts while bowling in tough conditions. Though Khuzaima and Luqman bagged 2 wickets while Haider, Alam, and Khanshah got a wicket only.\r\n\r\nFilter Expert opener Salman started well for them by scoring 19 runs. Aziz and Hussain continued this momentum by contributing valuable 13 and 16 runs respectively. Followed by Khanshah\'s quickfire 26 and Hasnain\'s unbeatable 13. However, Filter Experts failed in getting hold of their wickets which caused them a terrible defeat. Dragon\'s bowlers were in the spotlight throughout the match for their zeal and enthusiasm. Especially, Afroz with 4 and Malik with 3 wickets.\r\n\r\nDragon Sports won by 15 runs.\r\n\r\nAfroz Hassan was awarded Player of the match. Dragon Sports Najeeb Lali was pronounced as the Man of the Tournament for his classic knocks throughout the tournament.', '8', '28', '27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_names`
--

CREATE TABLE `category_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_names`
--

INSERT INTO `category_names` (`id`, `name`) VALUES
(1, 'KMMA League Season 03'),
(2, 'Catchy Classic Season 02'),
(3, 'Friendly'),
(4, 'Catchy Classic Season 03'),
(5, 'Golden Gate Premiere League Season 04'),
(6, '17th KMMA League'),
(7, 'Golden Gate Premiere League Season 05'),
(8, 'Golden Gate Fajar League Season 04');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `innerimages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `team_a` varchar(255) DEFAULT NULL,
  `team_b` varchar(255) DEFAULT NULL,
  `match_category` varchar(255) DEFAULT NULL,
  `mainbanner` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `album_name`, `innerimages`, `team_a`, `team_b`, `match_category`, `mainbanner`, `created_at`, `event_date`) VALUES
(1, 'GSC v Trial Blazers (5/SEP/22)', '[\"46548dd-373a-78c3-06b8-d84b5c1c2a1.jpg\",\"203ead-d17-6366-c03-f23752860cb12.jpg\",\"84abe3-8eab-322a-8fa-e8a18cf5c1a3.jpg\",\"fdcc4cf-5d82-a81f-75f3-d245670e2444.jpg\",\"6c557cd-56c0-c4de-a45c-ffc6dcd132c35.jpg\",\"34a2abf-63bc-f2aa-ef0-30c2df8c3f416.jpg\",\"a5c805-5c6-440e-27f0-18d8eadd50dblog1Pic.jpg\",\"e2c6d02-8d82-671b-f034-dcb0d500db3HeaderPic.jpg\",\"ddc3715-0c5-2641-015d-6a2d2b318510HeaderPic_1.jpg\",\"8cc04-778e-b0a2-d07-cb1e60762MainPic.jpg\"]', '1', '2', '1', '7e41ec0-ed4-aad4-4021-4038a23bccf5.jpg', '2022-11-03 02:31:04', '2022-11-10 07:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `team_names`
--

CREATE TABLE `team_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_names`
--

INSERT INTO `team_names` (`id`, `name`) VALUES
(1, 'Garden Stallion Club'),
(2, 'Trial Blazers'),
(3, 'AA Associates'),
(4, 'AAG CC'),
(5, 'United CV'),
(6, 'Ground Hocks'),
(7, 'Cric IT'),
(8, 'Gamers Inn'),
(9, 'Folio3 Strikers'),
(10, 'Folio3 Sixers'),
(11, 'Noy XI'),
(12, 'Real Estate'),
(13, 'Royal XI'),
(14, 'Metro Safari'),
(15, 'Shiners XI'),
(16, 'Strikers XI'),
(17, 'Groove CC'),
(18, 'P.Khan Cricket Club'),
(19, 'Bavanx CC'),
(20, 'United CV'),
(21, 'Crescent Sports'),
(22, 'Swingers CC'),
(23, 'Gulshan Strikers'),
(24, 'TV One'),
(25, 'DHA Stallions'),
(26, 'Landhi Tigers'),
(27, 'Filter Expert CC'),
(28, 'Dragon Sports');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_names`
--
ALTER TABLE `category_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_names`
--
ALTER TABLE `team_names`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category_names`
--
ALTER TABLE `category_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_names`
--
ALTER TABLE `team_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
