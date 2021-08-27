-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:04 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grouping_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_number` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `id_nr` char(13) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(70) NOT NULL,
  `address` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_number`, `first_name`, `last_name`, `gender`, `id_nr`, `phone`, `email`, `address`) VALUES
(210100236, 'Dillon', 'Gremillion', 'M', '8809195722082', '0643490094', '210100236tut4life.ac.za', '701 S Harrison Rd,San Francisco,San Francisco,CA,94104'),
(210104987, 'Rosendo', 'Duplessis', 'M', '9408165401084', '0670014096', '210104987tut4life.ac.za', '4486 W O St #1,New York,New York,NY,10003'),
(210106513, 'Wallace', 'Venuti', 'M', '8311015385084', '0676670749', '210106513tut4life.ac.za', '426 Wolf St,Metairie,Jefferson,LA,70002'),
(210117193, 'Jim', 'Saxton', 'M', '9006255414083', '0619580298', '210117193tut4life.ac.za', '394 Manchester Blvd,Rockford,Winnebago,IL,61109'),
(210127329, 'Rupert', 'Bye', 'M', '8002195676082', '0673310239', '210127329tut4life.ac.za', '86 Nw 66th St #8673,Shawnee,Johnson,KS,66218'),
(210165334, 'Gale', 'Olesen', 'M', '9311105748084', '0640026078', '210165334tut4life.ac.za', '74 S Westgate St,Albany,Albany,NY,12204'),
(210168541, 'Roy', 'Norfleet', 'M', '8308115506083', '0659730786', '210168541tut4life.ac.za', '762 S Main St,Madison,Dane,WI,53711'),
(210209875, 'Jerald', 'Brigman', 'M', '9408145562082', '0650037023', '210209875tut4life.ac.za', '7 W 32nd St,Erie,Erie,PA,16502'),
(210210400, 'Vince', 'Row', 'M', '8308155018083', '0676910138', '210210400tut4life.ac.za', '20 S Babcock St,Fairbanks,Fairbanks North Star,AK,99712'),
(210227748, 'Arlen', 'Arakaki', 'M', '8108125913083', '0718480815', '210227748tut4life.ac.za', '59 Shady Ln #53,Milwaukee,Milwaukee,WI,53214'),
(210237186, 'Hipolito', 'Coach', 'M', '8501245299084', '0618900836', '210237186tut4life.ac.za', '678 3rd Ave,Miami,Miami-Dade,FL,33196'),
(210264930, 'Errol', 'Lancaster', 'M', '9008165935083', '0752220683', '210264930tut4life.ac.za', '45 E Liberty St,Ridgefield Park,Bergen,NJ,7660'),
(210275601, 'Wiley', 'Parmer', 'M', '9605145682082', '0653120016', '210275601tut4life.ac.za', '8 W Cerritos Ave #54,Bridgeport,Gloucester,NJ,8014'),
(210291596, 'Cletus', 'Blann', 'M', '8310235325082', '0773010724', '210291596tut4life.ac.za', '56 E Morehead St,Laredo,Webb,TX,78045'),
(210302041, 'Joel', 'Scipio', 'M', '9802015304082', '0629710795', '210302041tut4life.ac.za', '1088 Pinehurst St,Chapel Hill,Orange,NC,27514'),
(210302996, 'August', 'Orzechowski', 'M', '8406055379083', '0666270647', '210302996tut4life.ac.za', '59 N Groesbeck Hwy,Austin,Travis,TX,78731'),
(210323975, 'Jamel', 'Rita', 'M', '9707025803082', '0626250335', '210323975tut4life.ac.za', '2742 Distribution Way,New York,New York,NY,10025'),
(210328486, 'Reyes', 'Turman', 'M', '8901115492084', '0681870737', '210328486tut4life.ac.za', '76 Brooks St #9,Flemington,Hunterdon,NJ,8822'),
(210370373, 'Marlin', 'Whelpley', 'M', '8807265006082', '0755300348', '210370373tut4life.ac.za', '201 Hawk Ct,Providence,Providence,RI,2904'),
(210384886, 'Marion', 'Gouin', 'M', '9207045506083', '0745540835', '210384886tut4life.ac.za', '4545 Courthouse Rd,Westbury,Nassau,NY,11590'),
(210394456, 'Wes', 'Zupan', 'M', '9505105414082', '0776410632', '210394456tut4life.ac.za', '639 Main St,Anchorage,Anchorage,AK,99501'),
(210400061, 'Benedict', 'Eilerman', 'M', '9311225666082', '0776840588', '210400061tut4life.ac.za', '6980 Dorsett Rd,Abilene,Dickinson,KS,67410'),
(210404543, 'Kasey', 'Childers', 'M', '9607025082082', '0786440761', '210404543tut4life.ac.za', '17 Morena Blvd,Camarillo,Ventura,CA,93012'),
(210407427, 'Gavin', 'Mantilla', 'M', '8302255455083', '0736180811', '210407427tut4life.ac.za', '128 Bransten Rd,New York,New York,NY,10011'),
(210418900, 'Xavier', 'Stuber', 'M', '9708245403084', '0674810636', '210418900tut4life.ac.za', '7 W Jackson Blvd,San Jose,Santa Clara,CA,95111'),
(210441247, 'Sylvester', 'Algarin', 'M', '9306225941084', '0620053000', '210441247tut4life.ac.za', '38938 Park Blvd,Boston,Suffolk,MA,2128'),
(210444282, 'Noah', 'Buscemi', 'M', '8511135872084', '0753350417', '210444282tut4life.ac.za', '4 B Blue Ridge Blvd,Brighton,Livingston,MI,48116'),
(210460082, 'Normand', 'Lisle', 'M', '8305095844084', '0650067094', '210460082tut4life.ac.za', '65895 S 16th St,Providence,Providence,RI,2909'),
(210473942, 'Joseph', 'Cater', 'M', '8910225719083', '0710063029', '210473942tut4life.ac.za', '39 S 7th St,Tullahoma,Coffee,TN,37388'),
(210483013, 'Jame', 'Ugalde', 'M', '9111075116083', '0628770589', '210483013tut4life.ac.za', '2 Cedar Ave #84,Easton,Talbot,MD,21601'),
(210502614, 'Branden', 'Dauer', 'M', '9710195997084', '0716210304', '210502614tut4life.ac.za', '775 W 17th St,San Antonio,Bexar,TX,78204'),
(210511375, 'Darrick', 'Forbes', 'M', '8007235041083', '0721110681', '210511375tut4life.ac.za', '228 Runamuck Pl #2808,Baltimore,Baltimore City,MD,21224'),
(210517703, 'Brian', 'Markum', 'M', '8303135189084', '0741220002', '210517703tut4life.ac.za', '71 San Mateo Ave,Wayne,Delaware,PA,19087'),
(210526070, 'Johnnie', 'Casiano', 'M', '9704125392083', '0625130880', '210526070tut4life.ac.za', '14302 Pennsylvania Ave,Huntingdon Valley,Montgomery,PA,19006'),
(210526512, 'Mark', 'Lucio', 'M', '8303045735083', '0741360648', '210526512tut4life.ac.za', '98839 Hawthorne Blvd #6101,Columbia,Richland,SC,29201'),
(210554677, 'Danny', 'Knuckles', 'M', '9105105359083', '0662250641', '210554677tut4life.ac.za', '90991 Thorburn Ave,New York,New York,NY,10011'),
(210555452, 'Stuart', 'Scales', 'M', '9304135106084', '0688310394', '210555452tut4life.ac.za', '1048 Main St,Fairbanks,Fairbanks North Star,AK,99708'),
(210559511, 'Earl', 'Rosso', 'M', '9111125615083', '0720033065', '210559511tut4life.ac.za', '53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831'),
(210573792, 'Conrad', 'Bottorff', 'M', '8902165866082', '0738690828', '210573792tut4life.ac.za', '25 E 75th St #69,Los Angeles,Los Angeles,CA,90034'),
(210582614, 'Jermaine', 'Large', 'M', '8006055522084', '0719340919', '210582614tut4life.ac.za', '73 State Road 434 E,Phoenix,Maricopa,AZ,85013'),
(210583178, 'Tyrone', 'Puryear', 'M', '8209195166082', '0615440977', '210583178tut4life.ac.za', '618 W Yakima Ave,Irving,Dallas,TX,75062'),
(210584203, 'Patrick', 'Kaup', 'M', '9409255854083', '0773570618', '210584203tut4life.ac.za', '2853 S Central Expy,Glen Burnie,Anne Arundel,MD,21061'),
(210585169, 'Arnoldo', 'Deschamp', 'M', '9408275791084', '0767540932', '210585169tut4life.ac.za', '6 Greenleaf Ave,San Jose,Santa Clara,CA,95111'),
(210607923, 'Adan', 'Fenton', 'M', '8707215119083', '0717770460', '210607923tut4life.ac.za', '5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006'),
(210612395, 'Dorsey', 'Nicks', 'M', '9105145489084', '0634200623', '210612395tut4life.ac.za', '14288 Foster Ave #4121,Jenkintown,Montgomery,PA,19046'),
(210619579, 'Ernesto', 'Auston', 'M', '8411195068083', '0720066078', '210619579tut4life.ac.za', '74 W College St,Boise,Ada,ID,83707'),
(210638420, 'German', 'Lusby', 'M', '9804135416084', '0757700310', '210638420tut4life.ac.za', '366 South Dr,Las Cruces,Dona Ana,NM,88011'),
(210645334, 'Tomas', 'Cowen', 'M', '9005115412082', '0762840257', '210645334tut4life.ac.za', '322 New Horizon Blvd,Milwaukee,Milwaukee,WI,53207'),
(210647228, 'Glenn', 'Colas', 'M', '8609275881082', '0718060020', '210647228tut4life.ac.za', '3 Mcauley Dr,Ashland,Ashland,OH,44805'),
(210651495, 'Williams', 'Koerber', 'M', '9002095106082', '0781640605', '210651495tut4life.ac.za', '37275 St  Rt 17m M,Middle Island,Suffolk,NY,11953'),
(210653279, 'Nathan', 'Venson', 'M', '8601215704084', '0688970951', '210653279tut4life.ac.za', '1 Central Ave,Stevens Point,Portage,WI,54481'),
(210676880, 'Marc', 'Gilkey', 'M', '9810185649082', '0755750067', '210676880tut4life.ac.za', '18 Fountain St,Anchorage,Anchorage,AK,99515'),
(210705988, 'Elton', 'Schillaci', 'M', '8901215548083', '0682320220', '210705988tut4life.ac.za', '386 9th Ave N,Conroe,Montgomery,TX,77301'),
(210709503, 'Ellsworth', 'Mahar', 'M', '8306225691082', '0668760571', '210709503tut4life.ac.za', '2371 Jerrold Ave,Kulpsville,Montgomery,PA,19443'),
(210727076, 'Bertram', 'Skillings', 'M', '9201105368084', '0664670325', '210727076tut4life.ac.za', '2664 Lewis Rd,Littleton,Douglas,CO,80126'),
(210729322, 'Foster', 'Trundy', 'M', '9802115309084', '0713960463', '210729322tut4life.ac.za', '5 Boston Ave #88,Sioux Falls,Minnehaha,SD,57105'),
(210730018, 'Hung', 'Hartin', 'M', '8110255101083', '0774720113', '210730018tut4life.ac.za', '3273 State St,Middlesex,Middlesex,NJ,8846'),
(210735209, 'Leigh', 'Kita', 'M', '9309265609082', '0743810714', '210735209tut4life.ac.za', '98 Connecticut Ave Nw,Chagrin Falls,Geauga,OH,44023'),
(210763852, 'Margarito', 'Greb', 'M', '8110185720084', '0784130549', '210763852tut4life.ac.za', '3305 Nabell Ave #679,New York,New York,NY,10009'),
(210773535, 'Leonard', 'Schmeling', 'M', '9808195634082', '0637440141', '210773535tut4life.ac.za', '4 Ralph Ct,Dunellen,Middlesex,NJ,8812'),
(210792380, 'Deandre', 'Pietila', 'M', '8310095660082', '0734300896', '210792380tut4life.ac.za', '7219 Woodfield Rd,Overland Park,Johnson,KS,66204'),
(210797871, 'Dusty', 'Darosa', 'M', '8403255869083', '0642920081', '210797871tut4life.ac.za', '74989 Brandon St,Wellsville,Allegany,NY,14895'),
(210800390, 'Dexter', 'Latshaw', 'M', '8803115306083', '0719050380', '210800390tut4life.ac.za', '2737 Pistorio Rd #9230,London,Madison,OH,43140'),
(210821422, 'Freddie', 'Minjares', 'M', '8107255282083', '0685960040', '210821422tut4life.ac.za', '7 Eads St,Chicago,Cook,IL,60632'),
(210827878, 'Eli', 'Markel', 'M', '9701025769082', '0728940639', '210827878tut4life.ac.za', '4 Otis St,Van Nuys,Los Angeles,CA,91405'),
(210829335, 'Ferdinand', 'Lipford', 'M', '9401245551084', '0672110710', '210829335tut4life.ac.za', '69734 E Carrillo St,Mc Minnville,Warren,TN,37110'),
(210883568, 'Basil', 'Rudie', 'M', '9401135125084', '0768650592', '210883568tut4life.ac.za', '209 Decker Dr,Philadelphia,Philadelphia,PA,19132'),
(210885892, 'Zackary', 'Kilpatrick', 'M', '8803075269082', '0781180187', '210885892tut4life.ac.za', '20932 Hedley St,Concord,Contra Costa,CA,94520'),
(210904471, 'Horacio', 'Deloatch', 'M', '8411145612082', '0770023044', '210904471tut4life.ac.za', '30 W 80th St #1995,San Carlos,San Mateo,CA,94070'),
(210909389, 'Ward', 'Hynek', 'M', '9003195222084', '0647910643', '210909389tut4life.ac.za', '74874 Atlantic Ave,Columbus,Franklin,OH,43215'),
(210918059, 'Chauncey', 'Dutra', 'M', '9109275838082', '0758590953', '210918059tut4life.ac.za', '2881 Lewis Rd,Prineville,Crook,OR,97754'),
(210919047, 'Jonah', 'Bouska', 'M', '9207045510082', '0651130741', '210919047tut4life.ac.za', '6 S 33rd St,Aston,Delaware,PA,19014'),
(210937983, 'Michael', 'Constante', 'M', '8904195288084', '0645860243', '210937983tut4life.ac.za', '6649 N Blue Gum St,New Orleans,Orleans,LA,70116'),
(210939173, 'Bret', 'Kogan', 'M', '9802085930082', '0626430436', '210939173tut4life.ac.za', '1 State Route 27,Taylor,Wayne,MI,48180'),
(210942909, 'Carey', 'Profitt', 'M', '8710065927082', '0769410741', '210942909tut4life.ac.za', '6 Kains Ave,Baltimore,Baltimore City,MD,21215'),
(210990743, 'Gregg', 'Tipping', 'M', '8609035066083', '0633350889', '210990743tut4life.ac.za', '2 Lighthouse Ave,Hopkins,Hennepin,MN,55343'),
(211132165, 'Zachariah', 'Plouffe', 'M', '8406065222082', '0613410238', '211132165tut4life.ac.za', '72 Mannix Dr,Cincinnati,Hamilton,OH,45203'),
(211140713, 'Otha', 'Gainey', 'M', '9311245677083', '0637920722', '211140713tut4life.ac.za', '5 N Cleveland Massillon Rd,Thousand Oaks,Ventura,CA,91362'),
(211148511, 'Ahmad', 'Kirch', 'M', '9708195344084', '0623580365', '211148511tut4life.ac.za', '4284 Dorigo Ln,Chicago,Cook,IL,60647'),
(211171593, 'Terrence', 'Jacinto', 'M', '9102185490083', '0784210392', '211171593tut4life.ac.za', '99385 Charity St #840,San Jose,Santa Clara,CA,95110'),
(211176222, 'Cornelius', 'Abshire', 'M', '8508105919082', '0643570449', '211176222tut4life.ac.za', '7 W Pinhook Rd,Lynbrook,Nassau,NY,11563'),
(211177787, 'Simon', 'Turnbough', 'M', '8702125504083', '0729330672', '211177787tut4life.ac.za', '7140 University Ave,Rock Springs,Sweetwater,WY,82901'),
(211217112, 'Maynard', 'Nies', 'M', '8710085176082', '0631920980', '211217112tut4life.ac.za', '90131 J St,Pittstown,Hunterdon,NJ,8867'),
(211224630, 'Amado', 'Benway', 'M', '8607055474083', '0637570630', '211224630tut4life.ac.za', '840 15th Ave,Waco,McLennan,TX,76708'),
(211237398, 'Saul', 'Grogg', 'M', '8906195449083', '0713940861', '211237398tut4life.ac.za', '8927 Vandever Ave,Waco,McLennan,TX,76707'),
(211252324, 'Hoyt', 'Eckhart', 'M', '8203105900082', '0645660520', '211252324tut4life.ac.za', '83649 W Belmont Ave,San Gabriel,Los Angeles,CA,91776'),
(211258457, 'Scot', 'Wingo', 'M', '9702015200082', '0662380874', '211258457tut4life.ac.za', '44 W 4th St,Staten Island,Richmond,NY,10309'),
(211277293, 'Stuart', 'Boley', 'M', '8906275340082', '0668210972', '211277293tut4life.ac.za', '54169 N Main St,Massapequa,Nassau,NY,11758'),
(211295957, 'Shawn', 'Sumrall', 'M', '9301075547083', '0750045046', '211295957tut4life.ac.za', '6794 Lake Dr E,Newark,Essex,NJ,7104'),
(211313013, 'Ronald', 'Hau', 'M', '8807035880084', '0734560606', '211313013tut4life.ac.za', '32860 Sierra Rd,Miami,Miami-Dade,FL,33133'),
(211314613, 'Rodrigo', 'Hiller', 'M', '8906195122084', '0733320400', '211314613tut4life.ac.za', '9387 Charcot Ave,Absecon,Atlantic,NJ,8201'),
(211316729, 'Jamar', 'Gurule', 'M', '9702125386082', '0745510796', '211316729tut4life.ac.za', '8597 W National Ave,Cocoa,Brevard,FL,32922'),
(211327701, 'Stacy', 'Wischmeier', 'M', '8310215621084', '0742400404', '211327701tut4life.ac.za', '2239 Shawnee Mission Pky,Tullahoma,Coffee,TN,37388'),
(211331371, 'Carroll', 'Mcgeorge', 'M', '8502175862082', '0756400921', '211331371tut4life.ac.za', '461 Prospect Pl #316,Euless,Tarrant,TX,76040'),
(211334003, 'Pablo', 'Borgen', 'M', '8401195463084', '0634940895', '211334003tut4life.ac.za', '9 N College Ave #3,Milwaukee,Milwaukee,WI,53216'),
(211338343, 'Marlin', 'Daquila', 'M', '9209145446084', '0630084037', '211338343tut4life.ac.za', '2726 Charcot Ave,Paterson,Passaic,NJ,7501'),
(211351327, 'Evan', 'Perrin', 'M', '8209185227083', '0738000601', '211351327tut4life.ac.za', '83 County Road 437 #8581,Clarks Summit,Lackawanna,PA,18411'),
(211351387, 'Kurt', 'Whittemore', 'M', '9609065316083', '0735540290', '211351387tut4life.ac.za', '3 Aspen St,Worcester,Worcester,MA,1602'),
(211352164, 'Raphael', 'Bowley', 'M', '8607225042082', '0734550485', '211352164tut4life.ac.za', '65 W Maple Ave,Pearl City,Honolulu,HI,96782'),
(211355839, 'Jonathon', 'German', 'M', '9603135003082', '0620032099', '211355839tut4life.ac.za', '4 Bloomfield Ave,Irving,Dallas,TX,75061'),
(211363522, 'Basil', 'Nogle', 'M', '9809075113082', '0761190238', '211363522tut4life.ac.za', '4 Warehouse Point Rd #7,Chicago,Cook,IL,60638'),
(211378841, 'Valentine', 'Lane', 'M', '9107105749082', '0757870053', '211378841tut4life.ac.za', '55892 Jacksonville Rd,Owings Mills,Baltimore,MD,21117'),
(211380550, 'Micah', 'Mcginley', 'M', '9701255458083', '0760036072', '211380550tut4life.ac.za', '52777 Leaders Heights Rd,Ontario,San Bernardino,CA,91761'),
(211403798, 'Bennie', 'Borland', 'M', '9805185097083', '0724400053', '211403798tut4life.ac.za', '5161 Dorsett Rd,Homestead,Miami-Dade,FL,33030'),
(211409509, 'Jackie', 'Breneman', 'M', '9406045095084', '0643580253', '211409509tut4life.ac.za', '4940 Pulaski Park Dr,Portland,Multnomah,OR,97202'),
(211410690, 'Stan', 'Jaycox', 'M', '8408115636083', '0745200227', '211410690tut4life.ac.za', '4 10th St W,High Point,Guilford,NC,27263'),
(211417601, 'Tom', 'Sebastian', 'M', '9810065497084', '0670060047', '211417601tut4life.ac.za', '170 Wyoming Ave,Burnsville,Dakota,MN,55337'),
(211425759, 'Reynaldo', 'Clow', 'M', '8906245628084', '0687520377', '211425759tut4life.ac.za', '55 Riverside Ave,Indianapolis,Marion,IN,46202'),
(211434820, 'Sylvester', 'Solomon', 'M', '9301025376082', '0731940603', '211434820tut4life.ac.za', '627 Walford Ave,Dallas,Dallas,TX,75227'),
(211460957, 'Stevie', 'Keck', 'M', '8911055795083', '0661300983', '211460957tut4life.ac.za', '1 Commerce Way,Portland,Washington,OR,97224'),
(211462473, 'Fernando', 'Robillard', 'M', '8001265246083', '0761640307', '211462473tut4life.ac.za', '30553 Washington Rd,Plainfield,Union,NJ,7062'),
(211464906, 'Palmer', 'Suhr', 'M', '9011275875082', '0630053017', '211464906tut4life.ac.za', '61 13 Stoneridge #835,Findlay,Hancock,OH,45840'),
(211479571, 'Lucas', 'Zamzow', 'M', '8009015533082', '0785630183', '211479571tut4life.ac.za', '47565 W Grand Ave,Newark,Essex,NJ,7105'),
(211506551, 'Ralph', 'Collin', 'M', '8304265111084', '0711140098', '211506551tut4life.ac.za', '1 N Harlem Ave #9,Orange,Essex,NJ,7050'),
(211508795, 'Armando', 'Knuckles', 'M', '9004145181082', '0773100676', '211508795tut4life.ac.za', '798 Lund Farm Way,Rockaway,Morris,NJ,7866'),
(211516418, 'Ray', 'Pak', 'M', '8201095247082', '0742260533', '211516418tut4life.ac.za', '4 Webbs Chapel Rd,Boulder,Boulder,CO,80303'),
(211542966, 'Bobby', 'Eiland', 'M', '8202265480084', '0642510358', '211542966tut4life.ac.za', '31 Douglas Blvd #950,Clovis,Curry,NM,88101'),
(211565574, 'Shaun', 'Eickhoff', 'M', '8203135963083', '0770070471', '211565574tut4life.ac.za', '1747 Calle Amanecer #2,Anchorage,Anchorage,AK,99501'),
(211567377, 'Thaddeus', 'Chausse', 'M', '8008235933082', '0647290916', '211567377tut4life.ac.za', '9 Norristown Rd,Troy,Rensselaer,NY,12180'),
(211568396, 'Elden', 'Lockamy', 'M', '9605205222083', '0741720008', '211568396tut4life.ac.za', '64 5th Ave #1153,Mc Lean,Fairfax,VA,22102'),
(211582831, 'Lamont', 'Bergmann', 'M', '8606195834084', '0783530133', '211582831tut4life.ac.za', '555 Main St,Erie,Erie,PA,16502'),
(211592416, 'Shon', 'Wideman', 'M', '9702195192082', '0776840187', '211592416tut4life.ac.za', '69 Marquette Ave,Hayward,Alameda,CA,94545'),
(211596498, 'Nick', 'Baltz', 'M', '8104085217082', '0613420051', '211596498tut4life.ac.za', '64 Lakeview Ave,Beloit,Rock,WI,53511'),
(211597222, 'Gerry', 'Dauer', 'M', '8209035283084', '0628190844', '211597222tut4life.ac.za', '137 Pioneer Way,Chicago,Cook,IL,60604'),
(211614863, 'Elroy', 'Junge', 'M', '8001015234083', '0733880406', '211614863tut4life.ac.za', '37 Alabama Ave,Evanston,Cook,IL,60201'),
(211616901, 'Rosario', 'Charest', 'M', '9006255160083', '0715670667', '211616901tut4life.ac.za', '92 Main St,Atlantic City,Atlantic,NJ,8401'),
(211623718, 'Elijah', 'Shoemaker', 'M', '9806065290084', '0764920826', '211623718tut4life.ac.za', '3777 E Richmond St #900,Akron,Summit,OH,44302'),
(211637543, 'Alejandro', 'Murguia', 'M', '8906155611084', '0767470725', '211637543tut4life.ac.za', '6 Gilson St,Bronx,Bronx,NY,10468'),
(211640376, 'Zane', 'Kizer', 'M', '8301095951082', '0731930110', '211640376tut4life.ac.za', '12270 Caton Center Dr,Eugene,Lane,OR,97401'),
(211643925, 'Samuel', 'Weisman', 'M', '9204145882082', '0617960629', '211643925tut4life.ac.za', '524 Louisiana Ave Nw,San Leandro,Alameda,CA,94577'),
(211644313, 'Les', 'Mcconville', 'M', '8501125181084', '0646090449', '211644313tut4life.ac.za', '749 W 18th St #45,Smithfield,Johnston,NC,27577'),
(211647628, 'Mckinley', 'Quinn', 'M', '9403085097084', '0711320604', '211647628tut4life.ac.za', '481 W Lemon St,Middleboro,Plymouth,MA,2346'),
(211661025, 'Darius', 'Tomson', 'M', '9602065072082', '0612810773', '211661025tut4life.ac.za', '8 Industry Ln,New York,New York,NY,10002'),
(211663131, 'Reggie', 'Bumpers', 'M', '8608025095083', '0720066069', '211663131tut4life.ac.za', '4646 Kaahumanu St,Hackensack,Bergen,NJ,7601'),
(211673801, 'Branden', 'Troy', 'M', '8104055025082', '0767300863', '211673801tut4life.ac.za', '2 Se 3rd Ave,Mesquite,Dallas,TX,75149'),
(211704059, 'Wade', 'Wiedeman', 'M', '8209085383082', '0721880178', '211704059tut4life.ac.za', '3 Fort Worth Ave,Philadelphia,Philadelphia,PA,19106'),
(211709712, 'Dexter', 'Pidgeon', 'M', '9409195856083', '0749840290', '211709712tut4life.ac.za', '185 Blackstone Bldge,Honolulu,Honolulu,HI,96817'),
(211711248, 'Woodrow', 'Faulcon', 'M', '9706175453083', '0648410222', '211711248tut4life.ac.za', '429 Tiger Ln,Beverly Hills,Los Angeles,CA,90212'),
(211720705, 'German', 'Higuchi', 'M', '9501035151082', '0612690029', '211720705tut4life.ac.za', '3 Secor Rd,New Orleans,Orleans,LA,70112'),
(211753150, 'David', 'Amend', 'M', '9206235233084', '0770040019', '211753150tut4life.ac.za', '134 Lewis Rd,Nashville,Davidson,TN,37211'),
(211776395, 'Leandro', 'Gleason', 'M', '8003035059083', '0613820762', '211776395tut4life.ac.za', '9390 S Howell Ave,Albany,Dougherty,GA,31701'),
(211786082, 'Myron', 'Woolfolk', 'M', '8403015203084', '0631270997', '211786082tut4life.ac.za', '72868 Blackington Ave,Oakland,Alameda,CA,94606'),
(211825555, 'Donnie', 'Shively', 'M', '9001095804083', '0715520972', '211825555tut4life.ac.za', '8 County Center Dr #647,Boston,Suffolk,MA,2210'),
(211854345, 'Abram', 'Cervone', 'M', '8210105238083', '0619000548', '211854345tut4life.ac.za', '866 34th Ave,Denver,Denver,CO,80231'),
(211874260, 'Frank', 'Mckendrick', 'M', '8607155035083', '0715340470', '211874260tut4life.ac.za', '11279 Loytan St,Jacksonville,Duval,FL,32254'),
(211874514, 'Geraldo', 'Guizar', 'M', '9711065117083', '0650010005', '211874514tut4life.ac.za', '70 W Main St,Beachwood,Cuyahoga,OH,44122'),
(211879013, 'Benny', 'Melvin', 'M', '9011195873083', '0712400514', '211879013tut4life.ac.za', '60480 Old Us Highway 51,Preston,Caroline,MD,21655'),
(211903504, 'Lynwood', 'Kinnan', 'M', '9709225011083', '0674190833', '211903504tut4life.ac.za', '47154 Whipple Ave Nw,Gardena,Los Angeles,CA,90247'),
(211913957, 'Long', 'Wadman', 'M', '9108025472082', '0650013000', '211913957tut4life.ac.za', '68556 Central Hwy,San Leandro,Alameda,CA,94577'),
(211932945, 'Darell', 'Piro', 'M', '8502095407084', '0758540807', '211932945tut4life.ac.za', '2 Monroe St,San Mateo,San Mateo,CA,94403'),
(211933269, 'Oscar', 'Wyss', 'M', '8302135741083', '0621550370', '211933269tut4life.ac.za', '4800 Black Horse Pike,Burlingame,San Mateo,CA,94010'),
(211938439, 'Quintin', 'Wager', 'M', '9210075211082', '0687090868', '211938439tut4life.ac.za', '2409 Alabama Rd,Riverside,Riverside,CA,92501'),
(211992315, 'Brooks', 'Kuiper', 'M', '9204155654082', '0771880649', '211992315tut4life.ac.za', '7 Benton Dr,Honolulu,Honolulu,HI,96819'),
(212103656, 'Darron', 'Forkey', 'M', '8411165980084', '0722270915', '212103656tut4life.ac.za', '55 Hawthorne Blvd,Lafayette,Lafayette,LA,70506'),
(212112533, 'Reed', 'Delreal', 'M', '9803015800083', '0721160721', '212112533tut4life.ac.za', '287 Youngstown Warren Rd,Hampstead,Carroll,MD,21074'),
(212113650, 'Neal', 'Conlon', 'M', '9710145945082', '0668940420', '212113650tut4life.ac.za', '4441 Point Term Mkt,Philadelphia,Philadelphia,PA,19143'),
(212118523, 'Luis', 'Sandt', 'M', '8809155942083', '0782980682', '212118523tut4life.ac.za', '77132 Coon Rapids Blvd Nw,Conroe,Montgomery,TX,77301'),
(212128695, 'Gene', 'Barnhill', 'M', '8510195102083', '0727700158', '212128695tut4life.ac.za', '703 Beville Rd,Opa Locka,Miami-Dade,FL,33054'),
(212157689, 'Maria', 'Flink', 'M', '9711275915084', '0777580322', '212157689tut4life.ac.za', '6651 Municipal Rd,Houma,Terrebonne,LA,70360'),
(212161835, 'Winston', 'Catalano', 'M', '9311035031082', '0642510846', '212161835tut4life.ac.za', '2023 Greg St,Saint Paul,Ramsey,MN,55101'),
(212169909, 'Kris', 'Kinoshita', 'M', '8505185876082', '0752950235', '212169909tut4life.ac.za', '3989 Portage Tr,Escondido,San Diego,CA,92025'),
(212170885, 'Lyle', 'Moncayo', 'M', '8806255197082', '0669720191', '212170885tut4life.ac.za', '9635 S Main St,Boise,Ada,ID,83704'),
(212183722, 'Olen', 'Merino', 'M', '8702085018083', '0783300654', '212183722tut4life.ac.za', '2972 Lafayette Ave,Gardena,Los Angeles,CA,90248'),
(212184108, 'Erin', 'Wells', 'M', '8403165322083', '0645750325', '212184108tut4life.ac.za', '37855 Nolan Rd,Bangor,Penobscot,ME,4401'),
(212203820, 'Danny', 'Truby', 'M', '8710175394082', '0618300245', '212203820tut4life.ac.za', '422 E 21st St,Syracuse,Onondaga,NY,13214'),
(212208553, 'Vince', 'Randell', 'M', '8101135750082', '0783580197', '212208553tut4life.ac.za', '3 State Route 35 S,Paramus,Bergen,NJ,7652'),
(212210261, 'Hollis', 'Zdenek', 'M', '8702095128082', '0644700671', '212210261tut4life.ac.za', '38062 E Main St,New York,New York,NY,10048'),
(212225085, 'Jonah', 'Soliday', 'M', '9803135179082', '0676090556', '212225085tut4life.ac.za', '4379 Highway 116,Philadelphia,Philadelphia,PA,19103'),
(212231552, 'Jonas', 'Burlew', 'M', '9406045377084', '0743090102', '212231552tut4life.ac.za', '2140 Diamond Blvd,Rohnert Park,Sonoma,CA,94928'),
(212241469, 'Major', 'Behler', 'M', '9107125260083', '0765140027', '212241469tut4life.ac.za', '50 E Wacker Dr,Bridgewater,Somerset,NJ,8807'),
(212244942, 'Chance', 'Kimmel', 'M', '8206085217082', '0647100126', '212244942tut4life.ac.za', '1 Midway Rd,Westborough,Worcester,MA,1581'),
(212292097, 'Arden', 'Robidoux', 'M', '8504115265082', '0636460800', '212292097tut4life.ac.za', '73 Saint Ann St #86,Reno,Washoe,NV,89502'),
(212292171, 'Tod', 'Zang', 'M', '8410225842084', '0684820926', '212292171tut4life.ac.za', '6 S Broadway St,Cedar Grove,Essex,NJ,7009'),
(212306830, 'Olen', 'Kirkman', 'M', '9408275590084', '0725470833', '212306830tut4life.ac.za', '81 Norris Ave #525,Ronkonkoma,Suffolk,NY,11779'),
(212313033, 'Emile', 'Box', 'M', '8004135447082', '0749100702', '212313033tut4life.ac.za', '7667 S Hulen St #42,Yonkers,Westchester,NY,10701'),
(212316563, 'Otis', 'Archey', 'M', '8806205076082', '0741290919', '212316563tut4life.ac.za', '2887 Knowlton St #5435,Berkeley,Alameda,CA,94710'),
(212320310, 'Alonzo', 'Weidman', 'M', '9307075789082', '0641500439', '212320310tut4life.ac.za', '383 Gunderman Rd #197,Coatesville,Chester,PA,19320'),
(212326304, 'Del', 'Northcott', 'M', '9507225511082', '0717400481', '212326304tut4life.ac.za', '42754 S Ash Ave,Buffalo,Erie,NY,14228'),
(212328983, 'Deangelo', 'Radovich', 'M', '9803185883084', '0749670977', '212328983tut4life.ac.za', '1844 Southern Blvd,Little Rock,Pulaski,AR,72202'),
(212348701, 'Glen', 'Phou', 'M', '9805125958082', '0751820463', '212348701tut4life.ac.za', '9 Church St,Salem,Marion,OR,97302'),
(212372572, 'Randell', 'Humble', 'M', '9709215118082', '0752510380', '212372572tut4life.ac.za', '2026 N Plankinton Ave #3,Austin,Travis,TX,78754'),
(212402606, 'Lonny', 'Rees', 'M', '9011065958083', '0631920766', '212402606tut4life.ac.za', '9939 N 14th St,Riverton,Burlington,NJ,8077'),
(212405288, 'Hilario', 'Helman', 'M', '8002055444084', '0618040146', '212405288tut4life.ac.za', '4671 Alemany Blvd,Jersey City,Hudson,NJ,7304'),
(212458407, 'Hilton', 'Sedlacek', 'M', '9508165739084', '0651190895', '212458407tut4life.ac.za', '577 Parade St,South San Francisco,San Mateo,CA,94080'),
(212471017, 'Earl', 'Pera', 'M', '9807255907083', '0758740897', '212471017tut4life.ac.za', '99586 Main St,Dallas,Dallas,TX,75207'),
(212491098, 'Micheal', 'Gilden', 'M', '9311175097083', '0670043056', '212491098tut4life.ac.za', '17 Us Highway 111,Round Rock,Williamson,TX,78664'),
(212522270, 'Delbert', 'Belle', 'M', '9407075988083', '0627910782', '212522270tut4life.ac.za', '303 N Radcliffe St,Hilo,Hawaii,HI,96720'),
(212528820, 'Christopher', 'Abad', 'M', '8205215176082', '0671680335', '212528820tut4life.ac.za', '195 13n N,Santa Clara,Santa Clara,CA,95054'),
(212544722, 'Deon', 'Toman', 'M', '9001045713082', '0761710068', '212544722tut4life.ac.za', '229 N Forty Driv,New York,New York,NY,10011'),
(212558616, 'Jonas', 'Fey', 'M', '9202205767084', '0716840626', '212558616tut4life.ac.za', '9745 W Main St,Randolph,Morris,NJ,7869'),
(212624819, 'Rudolf', 'Mader', 'M', '9606025317083', '0720072003', '212624819tut4life.ac.za', '55262 N French Rd,Indianapolis,Marion,IN,46240'),
(212634545, 'Stewart', 'Tenenbaum', 'M', '8509095721082', '0730079002', '212634545tut4life.ac.za', '7116 Western Ave,Dearborn,Wayne,MI,48126'),
(212637111, 'Whitney', 'Koth', 'M', '9311145735083', '0677940905', '212637111tut4life.ac.za', '1128 Delaware St,San Jose,Santa Clara,CA,95132'),
(212638163, 'Clinton', 'Seal', 'M', '9402085028082', '0718210955', '212638163tut4life.ac.za', '189 Village Park Rd,Crestview,Okaloosa,FL,32536'),
(212660291, 'Michal', 'Rubio', 'M', '8303185190083', '0760064083', '212660291tut4life.ac.za', '992 Civic Center Dr,Philadelphia,Philadelphia,PA,19123'),
(212668605, 'Donovan', 'Cobbins', 'M', '9010165916084', '0738650258', '212668605tut4life.ac.za', '755 Harbor Way,Milwaukee,Milwaukee,WI,53226'),
(212680873, 'Gary', 'Meserve', 'M', '8704135968084', '0737360574', '212680873tut4life.ac.za', '5384 Southwyck Blvd,Douglasville,Douglas,GA,30135'),
(212684824, 'Otis', 'Beachum', 'M', '9706025465082', '0769440452', '212684824tut4life.ac.za', '4252 N Washington Ave #9,Kennedale,Tarrant,TX,76060'),
(212694237, 'Jed', 'Riegel', 'M', '9505075720084', '0759630324', '212694237tut4life.ac.za', '97 Airport Loop Dr,Jacksonville,Duval,FL,32216'),
(212710366, 'Leonard', 'Oslund', 'M', '9803105443082', '0677910392', '212710366tut4life.ac.za', '84 Bloomfield Ave,Spartanburg,Spartanburg,SC,29301'),
(212725070, 'Wes', 'Monaco', 'M', '8905105636082', '0738520671', '212725070tut4life.ac.za', '5 Elmwood Park Blvd,Biloxi,Harrison,MS,39530'),
(212740343, 'Bradford', 'Sokolowski', 'M', '8001115976082', '0711550525', '212740343tut4life.ac.za', '326 E Main St #6496,Thousand Oaks,Ventura,CA,91362'),
(212757035, 'Jeremiah', 'Fedele', 'M', '9111125112082', '0728630738', '212757035tut4life.ac.za', '8739 Hudson St,Vashon,King,WA,98070'),
(212768634, 'Hung', 'Almanzar', 'M', '8008185953082', '0653410604', '212768634tut4life.ac.za', '82 N Highway 67,Oakley,Contra Costa,CA,94561'),
(212783240, 'Stevie', 'Boateng', 'M', '9206095358082', '0779050388', '212783240tut4life.ac.za', '47939 Porter Ave,Gardena,Los Angeles,CA,90248'),
(212783949, 'Rolando', 'Woolston', 'M', '8607275983083', '0729150797', '212783949tut4life.ac.za', '9 Wales Rd Ne #914,Homosassa,Citrus,FL,34448'),
(212785929, 'Rashad', 'Blick', 'M', '8201265860083', '0781430664', '212785929tut4life.ac.za', '87 Sierra Rd,El Monte,Los Angeles,CA,91731'),
(212813565, 'Zack', 'Raya', 'M', '8303255158084', '0680089013', '212813565tut4life.ac.za', '6916 W Main St,Sacramento,Sacramento,CA,95827'),
(212816132, 'Hong', 'Rayos', 'M', '9305255610082', '0733900782', '212816132tut4life.ac.za', '5 Harrison Rd,New York,New York,NY,10038'),
(212836151, 'Cristopher', 'Wetmore', 'M', '9606145521084', '0638570723', '212836151tut4life.ac.za', '44 58th St,Wheeling,Cook,IL,60090'),
(212841513, 'Ivan', 'Raynes', 'M', '9805085690084', '0646520905', '212841513tut4life.ac.za', '406 Main St,Somerville,Somerset,NJ,8876'),
(212844975, 'Garth', 'Laviolette', 'M', '9009045805084', '0645190943', '212844975tut4life.ac.za', '6 Harry L Dr #6327,Perrysburg,Wood,OH,43551'),
(212863942, 'Weston', 'Frigo', 'M', '8105065216083', '0666840050', '212863942tut4life.ac.za', '501 N 19th Ave,Cherry Hill,Camden,NJ,8002'),
(212865732, 'Chadwick', 'Whisman', 'M', '8909085813084', '0612640704', '212865732tut4life.ac.za', '3 Elmwood Dr,Beaverton,Washington,OR,97005'),
(212875110, 'Garfield', 'Gengler', 'M', '9206135761082', '0612480332', '212875110tut4life.ac.za', '70 Euclid Ave #722,Bohemia,Suffolk,NY,11716'),
(212877923, 'Melvin', 'Tugwell', 'M', '8905245461084', '0678540030', '212877923tut4life.ac.za', '70 Mechanic St,Northridge,Los Angeles,CA,91325'),
(212889786, 'Claudio', 'Heath', 'M', '8408245163083', '0641110867', '212889786tut4life.ac.za', '455 N Main Ave,Garden City,Nassau,NY,11530'),
(212898222, 'Vance', 'Whitting', 'M', '8705245609082', '0664350489', '212898222tut4life.ac.za', '93 Redmond Rd #492,Orlando,Orange,FL,32803'),
(212912199, 'Esteban', 'Schuh', 'M', '8707115374083', '0652080954', '212912199tut4life.ac.za', '1 Huntwood Ave,Phoenix,Maricopa,AZ,85017'),
(212913209, 'Adalberto', 'Bring', 'M', '9609185043083', '0746830193', '212913209tut4life.ac.za', '6 Middlegate Rd #106,San Francisco,San Francisco,CA,94107'),
(212932843, 'Elbert', 'Kontos', 'M', '8302255907082', '0781390299', '212932843tut4life.ac.za', '3717 Hamann Industrial Pky,San Francisco,San Francisco,CA,94104'),
(212935979, 'Tomas', 'Hepp', 'M', '8407175268083', '0639160376', '212935979tut4life.ac.za', '75684 S Withlapopka Dr #32,Dallas,Dallas,TX,75227'),
(212949490, 'Nick', 'Dutcher', 'M', '9507135630082', '0733720130', '212949490tut4life.ac.za', '23 Palo Alto Sq,Miami,Miami-Dade,FL,33134'),
(212952486, 'Freeman', 'Lockett', 'M', '9008135516084', '0627560134', '212952486tut4life.ac.za', '98 University Dr,San Ramon,Contra Costa,CA,94583'),
(212953049, 'Amos', 'Bellefeuille', 'M', '9407025955083', '0665190440', '212953049tut4life.ac.za', '99 Tank Farm Rd,Hazleton,Luzerne,PA,18201'),
(212954265, 'Neal', 'Mecham', 'M', '8701085479082', '0726350631', '212954265tut4life.ac.za', '6 Van Buren St,Mount Vernon,Westchester,NY,10553'),
(212972359, 'Rodney', 'Costales', 'M', '8901055525082', '0760026045', '212972359tut4life.ac.za', '63381 Jenks Ave,Philadelphia,Philadelphia,PA,19134'),
(212989960, 'Theo', 'Kall', 'M', '9204045092084', '0735660800', '212989960tut4life.ac.za', '9 Murfreesboro Rd,Chicago,Cook,IL,60623'),
(212991728, 'Jackson', 'Cieslak', 'M', '9811195518083', '0789840872', '212991728tut4life.ac.za', '523 Marquette Ave,Concord,Middlesex,MA,1742'),
(212997358, 'Clifford', 'Wiren', 'M', '9106025767082', '0763850059', '212997358tut4life.ac.za', '73 Southern Blvd,Philadelphia,Philadelphia,PA,19103'),
(213137619, 'Diego', 'Sauer', 'M', '8003075934084', '0648760546', '213137619tut4life.ac.za', '8977 Connecticut Ave Nw #3,Niles,Berrien,MI,49120'),
(213145301, 'Dave', 'Goff', 'M', '9505155461084', '0639030640', '213145301tut4life.ac.za', '5 Green Pond Rd #4,Southampton,Bucks,PA,18966'),
(213156818, 'Christian', 'Tu', 'M', '9703255078083', '0680068020', '213156818tut4life.ac.za', '87393 E Highland Rd,Indianapolis,Marion,IN,46220'),
(213163045, 'Jayson', 'Wenzel', 'M', '8205185379084', '0735300354', '213163045tut4life.ac.za', '22 Bridle Ln,Valley Park,Saint Louis,MO,63088'),
(213171323, 'Paul', 'Blose', 'M', '9106245005084', '0619620214', '213171323tut4life.ac.za', '6538 E Pomona St #60,Indianapolis,Marion,IN,46222'),
(213180448, 'Kevin', 'Gathright', 'M', '9002045749083', '0755320167', '213180448tut4life.ac.za', '6535 Joyce St,Wichita Falls,Wichita,TX,76301'),
(213231579, 'Scotty', 'Weingartner', 'M', '8310155610084', '0746750163', '213231579tut4life.ac.za', '66697 Park Pl #3224,Riverton,Fremont,WY,82501'),
(213235280, 'Duane', 'Chrysler', 'M', '8506065688082', '0624040426', '213235280tut4life.ac.za', '9122 Carpenter Ave,New Haven,New Haven,CT,6511'),
(213242748, 'Ramon', 'Meagher', 'M', '9510205798083', '0777440765', '213242748tut4life.ac.za', '77 Massillon Rd #822,Satellite Beach,Brevard,FL,32937'),
(213247094, 'Miles', 'Nemec', 'M', '9210115747084', '0654370312', '213247094tut4life.ac.za', '66552 Malone Rd,Plaistow,Rockingham,NH,3865'),
(213278032, 'Monty', 'Huf', 'M', '8902095538083', '0678180866', '213278032tut4life.ac.za', '60 Fillmore Ave,Huntington Beach,Orange,CA,92647'),
(213290338, 'Bart', 'Weatherford', 'M', '9010015079082', '0650096079', '213290338tut4life.ac.za', '8 Mcarthur Ln,Richboro,Bucks,PA,18954'),
(213311258, 'Desmond', 'Lavery', 'M', '9808255968083', '0749090093', '213311258tut4life.ac.za', '37 N Elm St #916,Tacoma,Pierce,WA,98409'),
(213312064, 'Dewitt', 'Hutchins', 'M', '9504195660083', '0776360129', '213312064tut4life.ac.za', '3211 E Northeast Loop,Tampa,Hillsborough,FL,33619'),
(213333562, 'Refugio', 'Lebouef', 'M', '9103175572084', '0665780585', '213333562tut4life.ac.za', '5 S Colorado Blvd #449,Bothell,Snohomish,WA,98021'),
(213337867, 'Linwood', 'Blanton', 'M', '8304125263082', '0611550290', '213337867tut4life.ac.za', '8 Fair Lawn Ave,Tampa,Hillsborough,FL,33614'),
(213346664, 'Caleb', 'Melton', 'M', '8405035929084', '0653020964', '213346664tut4life.ac.za', '26659 N 13th St,Costa Mesa,Orange,CA,92626'),
(213349657, 'Brice', 'Dearmond', 'M', '9111035962083', '0678060364', '213349657tut4life.ac.za', '96263 Greenwood Pl,Warren,Knox,ME,4864'),
(213364620, 'Reuben', 'Bartz', 'M', '9007175508084', '0616810079', '213364620tut4life.ac.za', '5221 Bear Valley Rd,Nashville,Davidson,TN,37211'),
(213393699, 'Richie', 'Carrell', 'M', '8609245533083', '0758060491', '213393699tut4life.ac.za', '4 58th St #3519,Scottsdale,Maricopa,AZ,85254'),
(213394487, 'Buddy', 'Smallwood', 'M', '9208155168082', '0734110702', '213394487tut4life.ac.za', '87 Imperial Ct #79,Fargo,Cass,ND,58102'),
(213400224, 'Bert', 'Meinecke', 'M', '8411245910082', '0619860412', '213400224tut4life.ac.za', '94 W Dodge Rd,Carson City,Carson City,NV,89701'),
(213400338, 'Norberto', 'Zufelt', 'M', '8606085182083', '0725120319', '213400338tut4life.ac.za', '48 Lenox St,Fairfax,Fairfax City,VA,22030'),
(213410026, 'Jefferey', 'Schuch', 'M', '9507215885082', '0611520676', '213410026tut4life.ac.za', '3718 S Main St,New Orleans,Orleans,LA,70130'),
(213451568, 'Frederic', 'High', 'M', '9309235139082', '0652590827', '213451568tut4life.ac.za', '9 N 14th St,El Cajon,San Diego,CA,92020'),
(213453180, 'Wilfredo', 'Nish', 'M', '8806125084083', '0720017088', '213453180tut4life.ac.za', '6882 Torresdale Ave,Columbia,Richland,SC,29201'),
(213456548, 'Keenan', 'Gott', 'M', '8009275166084', '0659430831', '213456548tut4life.ac.za', '3958 S Dupont Hwy #7,Ramsey,Bergen,NJ,7446'),
(213461451, 'Alexander', 'Neidig', 'M', '9709075650082', '0731240236', '213461451tut4life.ac.za', '3270 Dequindre Rd,Deer Park,Suffolk,NY,11729'),
(213473339, 'Carlton', 'Mathers', 'M', '8303125375084', '0614030806', '213473339tut4life.ac.za', '57 Haven Ave #90,Southfield,Oakland,MI,48075'),
(213484545, 'Gus', 'Brisker', 'M', '8009025212084', '0612490809', '213484545tut4life.ac.za', '7 W Wabansia Ave #227,Orlando,Orange,FL,32822'),
(213493255, 'Arden', 'Desouza', 'M', '9408265770083', '0777440466', '213493255tut4life.ac.za', '759 Eldora St,New Haven,New Haven,CT,6515'),
(213499039, 'Lindsay', 'Paterson', 'M', '8507125920084', '0656580685', '213499039tut4life.ac.za', '26 Montgomery St,Atlanta,Fulton,GA,30328'),
(213504022, 'Jamal', 'Hodgkinson', 'M', '8610255969084', '0635290819', '213504022tut4life.ac.za', '18 Waterloo Geneva Rd,Highland Park,Lake,IL,60035'),
(213505271, 'Joshua', 'Edlin', 'M', '8501065711083', '0778340015', '213505271tut4life.ac.za', '7 S San Marcos Rd,New York,New York,NY,10004'),
(213508628, 'Ty', 'Tighe', 'M', '8202275610084', '0786740556', '213508628tut4life.ac.za', '3 Railway Ave #75,Little Falls,Passaic,NJ,7424'),
(213509773, 'Arthur', 'Chen', 'M', '8911125468082', '0763740352', '213509773tut4life.ac.za', '812 S Haven St,Amarillo,Randall,TX,79109'),
(213519730, 'Ronald', 'Mingo', 'M', '8903045298084', '0761800060', '213519730tut4life.ac.za', '9677 Commerce Dr,Richmond,Richmond City,VA,23219'),
(213523491, 'Kasey', 'Romanelli', 'M', '8008145070084', '0720075017', '213523491tut4life.ac.za', '985 E 6th Ave,Santa Rosa,Sonoma,CA,95407'),
(213539552, 'Dave', 'Murch', 'M', '8808105902082', '0749620506', '213539552tut4life.ac.za', '5 Little River Tpke,Wilmington,Middlesex,MA,1887'),
(213548037, 'Emmitt', 'Huggett', 'M', '9004225026084', '0752060298', '213548037tut4life.ac.za', '433 Westminster Blvd #590,Roseville,Placer,CA,95661'),
(213548064, 'Zachery', 'Joye', 'M', '9602085252082', '0616620279', '213548064tut4life.ac.za', '1 Garfield Ave #7,Canton,Stark,OH,44707'),
(213552193, 'Jody', 'Baines', 'M', '8710235363082', '0788020604', '213552193tut4life.ac.za', '3882 W Congress St #799,Los Angeles,Los Angeles,CA,90016'),
(213559960, 'Jerry', 'Underwood', 'M', '8206025824084', '0681010927', '213559960tut4life.ac.za', '42744 Hamann Industrial Pky #82,Miami,Miami-Dade,FL,33136'),
(213572918, 'Alfredo', 'Lords', 'M', '8403125698082', '0741440968', '213572918tut4life.ac.za', '47857 Coney Island Ave,Clinton,Prince Georges,MD,20735'),
(213585769, 'Delbert', 'Gammon', 'M', '9504095449082', '0631720843', '213585769tut4life.ac.za', '57254 Brickell Ave #372,Worcester,Worcester,MA,1602'),
(213607512, 'Burt', 'Tenorio', 'M', '8501155896083', '0719360725', '213607512tut4life.ac.za', '3196 S Rider Trl,Stockton,San Joaquin,CA,95207'),
(213614472, 'Abe', 'Appleberry', 'M', '8004105157082', '0712140696', '213614472tut4life.ac.za', '669 Packerland Dr #1438,Denver,Denver,CO,80212'),
(213624243, 'Granville', 'Wattles', 'M', '9705275274084', '0726490803', '213624243tut4life.ac.za', '9648 S Main,Salisbury,Wicomico,MD,21801'),
(213626807, 'Clarence', 'Mccook', 'M', '8306205550084', '0734140534', '213626807tut4life.ac.za', '61304 N French Rd,Somerset,Somerset,NJ,8873'),
(213627652, 'Andy', 'Maclennan', 'M', '8508175352083', '0619630512', '213627652tut4life.ac.za', '45 2nd Ave #9759,Atlanta,Fulton,GA,30328'),
(213660138, 'Dane', 'Lowman', 'M', '9305255011084', '0742860027', '213660138tut4life.ac.za', '96541 W Central Blvd,Phoenix,Maricopa,AZ,85034'),
(213664661, 'Damon', 'Christenson', 'M', '9106275962082', '0670056086', '213664661tut4life.ac.za', '506 S Hacienda Dr,Atlantic City,Atlantic,NJ,8401'),
(213708595, 'Ike', 'Heslin', 'M', '8901245180082', '0721380943', '213708595tut4life.ac.za', '67 E Chestnut Hill Rd,Seattle,King,WA,98133'),
(213713607, 'Otis', 'Stahl', 'M', '8010105821084', '0732010509', '213713607tut4life.ac.za', '78112 Morris Ave,North Haven,New Haven,CT,6473'),
(213717149, 'Numbers', 'Schimpf', 'M', '8403075473083', '0782900298', '213717149tut4life.ac.za', '96950 Hidden Ln,Aberdeen,Harford,MD,21001'),
(213723719, 'Oren', 'Sassano', 'M', '8907245165082', '0760034030', '213723719tut4life.ac.za', '25346 New Rd,New York,New York,NY,10016'),
(213727829, 'Leif', 'Earnshaw', 'M', '9611135437084', '0677180969', '213727829tut4life.ac.za', '206 Main St #2804,Lansing,Ingham,MI,48933'),
(213742045, 'Laverne', 'Messerly', 'M', '8108265396082', '0771650516', '213742045tut4life.ac.za', '70099 E North Ave,Arlington,Tarrant,TX,76013'),
(213800439, 'Dane', 'Coghlan', 'M', '9104025968083', '0711240475', '213800439tut4life.ac.za', '8100 Jacksonville Rd #7,Hays,Ellis,KS,67601'),
(213801351, 'Jordan', 'Steil', 'M', '9503075409082', '0630077031', '213801351tut4life.ac.za', '1950 5th Ave,Milwaukee,Milwaukee,WI,53209'),
(213809724, 'Zachary', 'Leffler', 'M', '9801025861083', '0753580888', '213809724tut4life.ac.za', '4 E Colonial Dr,La Mesa,San Diego,CA,91942'),
(213810604, 'Fernando', 'Gosha', 'M', '9702115150084', '0784470589', '213810604tut4life.ac.za', '33 Lewis Rd #46,Burlington,Alamance,NC,27215'),
(213827534, 'Lewis', 'Bernhardt', 'M', '9308205961083', '0775450816', '213827534tut4life.ac.za', '7 West Ave #1,Palatine,Cook,IL,60067'),
(213830335, 'Troy', 'Dreyer', 'M', '9602175632082', '0732980574', '213830335tut4life.ac.za', '944 Gaither Dr,Strongsville,Cuyahoga,OH,44136'),
(213846116, 'Dewayne', 'Pummill', 'M', '8308235416082', '0778490844', '213846116tut4life.ac.za', '25657 Live Oak St,Brooklyn,Kings,NY,11226'),
(213863204, 'Sterling', 'Malley', 'M', '8706235636082', '0714410687', '213863204tut4life.ac.za', '7563 Cornwall Rd #4462,Denver,Lancaster,PA,17517'),
(213868602, 'Cristopher', 'Chynoweth', 'M', '9510035995082', '0638890462', '213868602tut4life.ac.za', '9 Vanowen St,College Station,Brazos,TX,77840'),
(213871839, 'Foster', 'Pflug', 'M', '9409215243084', '0778180747', '213871839tut4life.ac.za', '25 Minters Chapel Rd #9,Minneapolis,Hennepin,MN,55401'),
(213892865, 'Terence', 'Sensabaugh', 'M', '8506215946082', '0762840477', '213892865tut4life.ac.za', '9 Waydell St,Fairfield,Essex,NJ,7004'),
(213894779, 'Hosea', 'Mckell', 'M', '9810235108084', '0745850564', '213894779tut4life.ac.za', '3 N Groesbeck Hwy,Toledo,Lucas,OH,43613'),
(213907058, 'Carlo', 'Bixler', 'M', '8004025708083', '0767000591', '213907058tut4life.ac.za', '43 Huey P Long Ave,Lafayette,Lafayette,LA,70508'),
(213910779, 'Mervin', 'Rabin', 'M', '8106165869083', '0744070116', '213910779tut4life.ac.za', '34 Saint George Ave #2,Bangor,Penobscot,ME,4401'),
(213917183, 'Byron', 'Carman', 'M', '8603265171083', '0732010422', '213917183tut4life.ac.za', '3732 Sherman Ave,Bridgewater,Somerset,NJ,8807'),
(213934426, 'Abe', 'Ronald', 'M', '9103215902083', '0751660971', '213934426tut4life.ac.za', '560 Civic Center Dr,Ann Arbor,Washtenaw,MI,48103'),
(213944652, 'Tomas', 'Tryon', 'M', '8204245582083', '0665660450', '213944652tut4life.ac.za', '13252 Lighthouse Ave,Cathedral City,Riverside,CA,92234'),
(213964752, 'Whitney', 'Kotek', 'M', '8603235590084', '0741010465', '213964752tut4life.ac.za', '636 Commerce Dr #42,Shakopee,Scott,MN,55379'),
(213973848, 'Leigh', 'Padgett', 'M', '8105065734084', '0638680124', '213973848tut4life.ac.za', '4923 Carey Ave,Saint Louis,Saint Louis City,MO,63104'),
(214107516, 'Chadwick', 'Mcentyre', 'M', '9703215081082', '0743280572', '214107516tut4life.ac.za', '88 15th Ave Ne,Vestal,Broome,NY,13850'),
(214130578, 'Gary', 'Canter', 'M', '9510185607082', '0654770844', '214130578tut4life.ac.za', '72119 S Walker Ave #63,Anaheim,Orange,CA,92801'),
(214151584, 'Laurence', 'Cummingham', 'M', '8007025995083', '0632430488', '214151584tut4life.ac.za', '2845 Boulder Crescent St,Cleveland,Cuyahoga,OH,44103'),
(214178567, 'Carmine', 'Tullis', 'M', '8108275432084', '0756840326', '214178567tut4life.ac.za', '8 Sheridan Rd,Jersey City,Hudson,NJ,7304'),
(214179863, 'Herman', 'Argueta', 'M', '8311115046082', '0678530442', '214179863tut4life.ac.za', '1 Rancho Del Mar Shopping C,Providence,Providence,RI,2903'),
(214180669, 'Tuan', 'Adkisson', 'M', '9208145189083', '0731070672', '214180669tut4life.ac.za', '10759 Main St,Scottsdale,Maricopa,AZ,85260'),
(214181019, 'Keith', 'Gess', 'M', '9409105366082', '0611890805', '214181019tut4life.ac.za', '993 Washington Ave,Nutley,Essex,NJ,7110'),
(214198666, 'Benjamin', 'Gossett', 'M', '8807175574083', '0719230371', '214198666tut4life.ac.za', '201 Ridgewood Rd,Moscow,Latah,ID,83843'),
(214210521, 'Horace', 'Rockey', 'M', '9109185092084', '0711380255', '214210521tut4life.ac.za', '7061 N 2nd St,Burnsville,Dakota,MN,55337'),
(214214359, 'Zane', 'Murga', 'M', '9009255207082', '0782800921', '214214359tut4life.ac.za', '49 N Mays St,Broussard,Lafayette,LA,70518'),
(214216426, 'Kennith', 'Lacourse', 'M', '9405235938083', '0641230046', '214216426tut4life.ac.za', '7 S Beverly Dr,Fort Wayne,Allen,IN,46802'),
(214262615, 'Thad', 'Orman', 'M', '8604085266083', '0644150616', '214262615tut4life.ac.za', '13 S Hacienda Dr,Livingston,Essex,NJ,7039'),
(214262826, 'Adalberto', 'Hogsett', 'M', '8206135869082', '0752350335', '214262826tut4life.ac.za', '395 S 6th St #2,El Cajon,San Diego,CA,92020'),
(214272071, 'Marlon', 'Tuff', 'M', '8202075741083', '0625170719', '214272071tut4life.ac.za', '1 S Pine St,Memphis,Shelby,TN,38112'),
(214282609, 'Kyle', 'Drennen', 'M', '8006145876084', '0766370082', '214282609tut4life.ac.za', '40 9th Ave Sw #91,Waterford,Oakland,MI,48329'),
(214289912, 'Vern', 'Vanslyke', 'M', '9403195048082', '0612510282', '214289912tut4life.ac.za', '33 State St,Abilene,Taylor,TX,79601'),
(214298339, 'Scott', 'Freeze', 'M', '8208095303084', '0734340215', '214298339tut4life.ac.za', '63728 Poway Rd #1,Scranton,Lackawanna,PA,18509'),
(214316026, 'Brooks', 'Desjardin', 'M', '8905245735082', '0775840783', '214316026tut4life.ac.za', '2 S Biscayne Blvd,Baltimore,Baltimore City,MD,21230'),
(214325115, 'Alphonse', 'Soderquist', 'M', '9310155793084', '0767240143', '214325115tut4life.ac.za', '7422 Martin Ave #8,Toledo,Lucas,OH,43607'),
(214337346, 'Chong', 'Sarkisian', 'M', '8611255006083', '0635990899', '214337346tut4life.ac.za', '598 43rd St,Beverly Hills,Los Angeles,CA,90210'),
(214339290, 'Darrell', 'Woolverton', 'M', '8308155147082', '0670070094', '214339290tut4life.ac.za', '5 Williams St,Johnston,Providence,RI,2919'),
(214349013, 'Alton', 'Brisco', 'M', '9105015825082', '0643880258', '214349013tut4life.ac.za', '85092 Southern Blvd,San Antonio,Bexar,TX,78204'),
(214353848, 'Adan', 'Curren', 'M', '8506045537084', '0684310349', '214353848tut4life.ac.za', '3158 Runamuck Pl,Round Rock,Williamson,TX,78664'),
(214354890, 'Nick', 'Mathers', 'M', '9002105176084', '0670060087', '214354890tut4life.ac.za', '61047 Mayfield Ave,Brooklyn,Kings,NY,11223'),
(214360366, 'Prince', 'Crays', 'M', '8811275892083', '0644090863', '214360366tut4life.ac.za', '33 N Michigan Ave,Green Bay,Brown,WI,54301'),
(214362724, 'Millard', 'Hartmann', 'M', '8506135824083', '0774380332', '214362724tut4life.ac.za', '347 Chestnut St,Peoria,Maricopa,AZ,85381'),
(214377692, 'Rudolph', 'Fluharty', 'M', '9403175198083', '0771270661', '214377692tut4life.ac.za', '41 Steel Ct,Northfield,Rice,MN,55057'),
(214383833, 'Diego', 'Sandford', 'M', '8811255225082', '0785040715', '214383833tut4life.ac.za', '187 Market St,Atlanta,Fulton,GA,30342'),
(214403893, 'Elroy', 'Mahmoud', 'M', '8301205515083', '0737840448', '214403893tut4life.ac.za', '369 Latham St #500,Saint Louis,Saint Louis City,MO,63102'),
(214421412, 'Frances', 'Riojas', 'M', '8501165466083', '0639520959', '214421412tut4life.ac.za', '94 Chase Rd,Hyattsville,Prince Georges,MD,20785'),
(214429513, 'Elden', 'Dowdell', 'M', '9603235757083', '0783020305', '214429513tut4life.ac.za', '8772 Old County Rd #5410,Kent,King,WA,98032'),
(214465373, 'Mac', 'Soler', 'M', '8903275899084', '0716590720', '214465373tut4life.ac.za', '73 W Barstow Ave,Arlington Heights,Cook,IL,60004'),
(214470549, 'Glen', 'Cerda', 'M', '9809035308084', '0681530340', '214470549tut4life.ac.za', '3125 Packer Ave #9851,Austin,Travis,TX,78753'),
(214470673, 'Waldo', 'Murray', 'M', '8207195908082', '0744310685', '214470673tut4life.ac.za', '721 Interstate 45 S,Colorado Springs,El Paso,CO,80919'),
(214489515, 'Tony', 'Donahue', 'M', '8707275481082', '0676860437', '214489515tut4life.ac.za', '89 20th St E #779,Sterling Heights,Macomb,MI,48310'),
(214492213, 'Alan', 'Macke', 'M', '8303175448082', '0752780829', '214492213tut4life.ac.za', '82 Winsor St #54,Atlanta,Dekalb,GA,30340'),
(214494361, 'Adan', 'Pickard', 'M', '8302175743082', '0687360998', '214494361tut4life.ac.za', '8 Us Highway 22,Colorado Springs,El Paso,CO,80937'),
(214514562, 'Julius', 'Klink', 'M', '9108015830083', '0669160826', '214514562tut4life.ac.za', '4 Carroll St,North Attleboro,Bristol,MA,2760'),
(214534652, 'Cliff', 'Mcclurg', 'M', '8104105071082', '0653680143', '214534652tut4life.ac.za', '919 Wall Blvd,Meridian,Lauderdale,MS,39307'),
(214536887, 'Lamont', 'Aucoin', 'M', '8109135053083', '0761130557', '214536887tut4life.ac.za', '92899 Kalakaua Ave,El Paso,El Paso,TX,79925'),
(214548077, 'Royal', 'Ricketts', 'M', '8501255275082', '0737080094', '214548077tut4life.ac.za', '2215 Prosperity Dr,Lyndhurst,Bergen,NJ,7071'),
(214556506, 'Tyree', 'Zapien', 'M', '9511065673083', '0613250333', '214556506tut4life.ac.za', '60 Old Dover Rd,Hialeah,Miami-Dade,FL,33014'),
(214567358, 'Bryant', 'Barcia', 'M', '8309195268084', '0749310367', '214567358tut4life.ac.za', '80 Pittsford Victor Rd #9,Cleveland,Cuyahoga,OH,44103');


-- These ones here are out
INSERT INTO `student` (`stud_number`, `first_name`, `last_name`, `gender`, `id_nr`, `phone`, `email`, `address`) VALUES
(214573579, 'Francisco', 'Spraggs', 'M', '8205275417082', '0724390809', '214573579tut4life.ac.za', '8728 S Broad St,Coram,Suffolk,NY,11727'),
(214597509, 'Guadalupe', 'Stump', 'M', '9603095907084', '0658350089', '214597509tut4life.ac.za', '70295 Pioneer Ct,Brandon,Hillsborough,FL,33511'),
(214615487, 'Sheldon', 'Khang', 'M', '8804065827083', '0631830908', '214615487tut4life.ac.za', '3943 N Highland Ave,Lancaster,Lancaster,PA,17601'),
(214630580, 'Ralph', 'Dermody', 'M', '9405185952084', '0630051081', '214630580tut4life.ac.za', '39 Moccasin Dr,San Francisco,San Francisco,CA,94104'),
(214633786, 'Eloy', 'Italiano', 'M', '8311155000083', '0639100848', '214633786tut4life.ac.za', '9 Plainsboro Rd #598,Greensboro,Guilford,NC,27409'),
(214642666, 'Warner', 'Logue', 'M', '9502135953082', '0773380783', '214642666tut4life.ac.za', '77 222 Dr,Oroville,Butte,CA,95965'),
(214661950, 'Art', 'Sienkiewicz', 'M', '9504205996083', '0682400665', '214661950tut4life.ac.za', '99 5th Ave #33,Trion,Chattooga,GA,30753'),
(214662391, 'Delmar', 'Ivey', 'M', '8806155349083', '0743470581', '214662391tut4life.ac.za', '596 Santa Maria Ave #7913,Mesquite,Dallas,TX,75150'),
(214669053, 'Perry', 'Janas', 'M', '9201165899083', '0627330944', '214669053tut4life.ac.za', '87163 N Main Ave,New York,New York,NY,10013'),
(214697149, 'Lorenzo', 'Hatter', 'M', '9405175254083', '0769110093', '214697149tut4life.ac.za', '5 Cabot Rd,Mc Lean,Fairfax,VA,22102'),
(214697930, 'Kristopher', 'Schleicher', 'M', '9511105971084', '0752760770', '214697930tut4life.ac.za', '97 E 3rd St #9,Long Island City,Queens,NY,11101'),
(214763235, 'Nolan', 'Hudspeth', 'M', '9608025960083', '0764350865', '214763235tut4life.ac.za', '8573 Lincoln Blvd,York,York,PA,17404'),
(214772970, 'Bernardo', 'Kell', 'M', '8602155861082', '0665420705', '214772970tut4life.ac.za', '393 Lafayette Ave,Richmond,Richmond City,VA,23219'),
(214777564, 'Young', 'Padula', 'M', '8807235480082', '0620035024', '214777564tut4life.ac.za', '94290 S Buchanan St,Pacifica,San Mateo,CA,94044'),
(214782598, 'Kenneth', 'Sumrell', 'M', '9410195658084', '0736100168', '214782598tut4life.ac.za', '9581 E Arapahoe Rd,Rochester,Oakland,MI,48307'),
(214786631, 'Jessie', 'Mojica', 'M', '9310265050082', '0741620530', '214786631tut4life.ac.za', '64 Newman Springs Rd E,Brooklyn,Kings,NY,11219'),
(214793264, 'Yong', 'Olveda', 'M', '9810235319083', '0646790106', '214793264tut4life.ac.za', '48 Stratford Ave,Pomona,Los Angeles,CA,91768'),
(214825092, 'Dino', 'Council', 'M', '8104165159084', '0654750685', '214825092tut4life.ac.za', '49440 Dearborn St,Norwalk,Fairfield,CT,6854'),
(214837570, 'Quinton', 'Mcspadden', 'M', '8005125778082', '0715090147', '214837570tut4life.ac.za', '3387 Ryan Dr,Hanover,Anne Arundel,MD,21076'),
(214856119, 'Kenton', 'Mcallister', 'M', '8406085194083', '0650032094', '214856119tut4life.ac.za', '617 Nw 36th Ave,Brook Park,Cuyahoga,OH,44142'),
(214856986, 'Renaldo', 'Hesse', 'M', '9101055749082', '0779960512', '214856986tut4life.ac.za', '3 Lawton St,New York,New York,NY,10013'),
(214875290, 'Clair', 'Maxim', 'M', '9308185384083', '0745760455', '214875290tut4life.ac.za', '45 E Acacia Ct,Chicago,Cook,IL,60624'),
(214875614, 'Lenny', 'Max', 'M', '9202085708084', '0626360358', '214875614tut4life.ac.za', '772 W River Dr,Bloomington,Monroe,IN,47404'),
(214888871, 'Rickie', 'Tiano', 'M', '9809115132082', '0781110567', '214888871tut4life.ac.za', '2 S 15th St,Fort Worth,Tarrant,TX,76107'),
(214893189, 'Riley', 'Neill', 'M', '8710045749084', '0733980949', '214893189tut4life.ac.za', '8116 Mount Vernon Ave,Bucyrus,Crawford,OH,44820'),
(214898007, 'Devin', 'Groleau', 'M', '9701235530082', '0752560348', '214898007tut4life.ac.za', '3381 E 40th Ave,Passaic,Passaic,NJ,7055'),
(214901782, 'Blair', 'Summers', 'M', '8609035415083', '0769300117', '214901782tut4life.ac.za', '2139 Santa Rosa Ave,Orlando,Orange,FL,32801'),
(214902286, 'Motho', 'Batho', 'M', '9310205187084', '0733430238', '214902286tut4life.ac.za', '8139 I Hwy 10 #92,New Bedford,Bristol,MA,2745'),
(214910718, 'Cameron', 'Lundeen', 'M', '8002235318084', '0684460794', '214910718tut4life.ac.za', '53 W Carey St,Port Jervis,Orange,NY,12771'),
(214934000, 'Ellsworth', 'Kupiec', 'M', '8807135574084', '0759690212', '214934000tut4life.ac.za', '3829 Ventura Blvd,Butte,Silver Bow,MT,59701'),
(214955273, 'Amos', 'Flicker', 'M', '9610055739082', '0772740292', '214955273tut4life.ac.za', '4 Kohler Memorial Dr,Brooklyn,Kings,NY,11230'),
(214959249, 'Jeffrey', 'Raabe', 'M', '8402095117084', '0614770181', '214959249tut4life.ac.za', '9506 Edgemore Ave,Bladensburg,Prince Georges,MD,20710'),
(214975275, 'Trinidad', 'Burrows', 'M', '8404075916083', '0624010337', '214975275tut4life.ac.za', '38 Pleasant Hill Rd,Hayward,Alameda,CA,94545'),
(214991978, 'Luigi', 'Busick', 'M', '8907225261084', '0759620601', '214991978tut4life.ac.za', '868 State St #38,Cincinnati,Hamilton,OH,45251'),
(215102614, 'Earnest', 'Takacs', 'M', '8606035687084', '0722510891', '215102614tut4life.ac.za', '72 Southern Blvd,Mesa,Maricopa,AZ,85204'),
(215119142, 'Fermin', 'Yunker', 'M', '8606125322083', '0628780550', '215119142tut4life.ac.za', '2500 Pringle Rd Se #508,Hatfield,Montgomery,PA,19440'),
(215124082, 'Norris', 'Thackston', 'M', '9503075170082', '0634450254', '215124082tut4life.ac.za', '17 Jersey Ave,Englewood,Arapahoe,CO,80110'),
(215127656, 'Dannie', 'Ganser', 'M', '8705165516082', '0648390212', '215127656tut4life.ac.za', '2 A Kelley Dr,Katonah,Westchester,NY,10536'),
(215151137, 'Anthony', 'Beverlin', 'M', '8002075223083', '0750040007', '215151137tut4life.ac.za', '10276 Brooks St,San Francisco,San Francisco,CA,94105'),
(215157959, 'Chi', 'Baucom', 'M', '9502035633083', '0649510758', '215157959tut4life.ac.za', '4 Iwaena St,Baltimore,Baltimore City,MD,21202'),
(215206039, 'Erich', 'Markus', 'M', '8306175369082', '0614760494', '215206039tut4life.ac.za', '1644 Clove Rd,Miami,Miami-Dade,FL,33155'),
(215210079, 'Buford', 'Emmerich', 'M', '8807205277082', '0689260677', '215210079tut4life.ac.za', '79 S Howell Ave,Grand Rapids,Kent,MI,49546'),
(215231212, 'Ruben', 'Dozier', 'M', '8003265145083', '0773340868', '215231212tut4life.ac.za', '88827 Frankford Ave,Greensboro,Guilford,NC,27401'),
(215238603, 'Dale', 'Counce', 'M', '9007185716084', '0669440901', '215238603tut4life.ac.za', '72 Beechwood Ter,Chicago,Cook,IL,60657'),
(215244200, 'Emory', 'Stroope', 'M', '9202125828083', '0656580826', '215244200tut4life.ac.za', '393 Hammond Dr,Lafayette,Lafayette,LA,70506'),
(215251459, 'Lesley', 'Fabiano', 'M', '8805055951082', '0714200883', '215251459tut4life.ac.za', '78 Maryland Dr #146,Denville,Morris,NJ,7834'),
(215254071, 'Roscoe', 'Huntzinger', 'M', '9102225120082', '0754570928', '215254071tut4life.ac.za', '7 Flowers Rd #403,Trenton,Mercer,NJ,8611'),
(215254855, 'Derick', 'Rochester', 'M', '8605215800084', '0633350004', '215254855tut4life.ac.za', '86350 Roszel Rd,Phoenix,Maricopa,AZ,85012'),
(215275204, 'Gino', 'Arbuckle', 'M', '8010255463083', '0746010679', '215275204tut4life.ac.za', '19 Amboy Ave,Miami,Miami-Dade,FL,33142'),
(215278001, 'Carlton', 'Cales', 'M', '9209235393084', '0679270329', '215278001tut4life.ac.za', '9 W Central Ave,Phoenix,Maricopa,AZ,85013'),
(215286578, 'Juan', 'Wigginton', 'M', '9101265243082', '0639080385', '215286578tut4life.ac.za', '46314 Route 130,Bridgeport,Fairfield,CT,6610'),
(215291897, 'Shad', 'Lightfoot', 'M', '9305135545084', '0674600305', '215291897tut4life.ac.za', '18 Coronado Ave #563,Pasadena,Los Angeles,CA,91106'),
(215304852, 'Garry', 'Foushee', 'M', '9702275546083', '0725880109', '215304852tut4life.ac.za', '75698 N Fiesta Blvd,Orlando,Orange,FL,32806'),
(215308320, 'Elvin', 'Willhite', 'M', '8510085951083', '0638870750', '215308320tut4life.ac.za', '4 Stovall St #72,Union City,Hudson,NJ,7087'),
(215330085, 'Brock', 'Boston', 'M', '8711065477084', '0611180201', '215330085tut4life.ac.za', '4119 Metropolitan Dr,Los Angeles,Los Angeles,CA,90021'),
(215330621, 'Boyd', 'Gouveia', 'M', '8003105521082', '0728430104', '215330621tut4life.ac.za', '80312 W 32nd St,Conroe,Montgomery,TX,77301'),
(215341203, 'Jody', 'Waechter', 'M', '9602155745084', '0782820299', '215341203tut4life.ac.za', '95 Main Ave #2,Barberton,Summit,OH,44203'),
(215342038, 'Samual', 'Overfield', 'M', '9704175443084', '0626460912', '215342038tut4life.ac.za', '28 S 7th St #2824,Englewood,Bergen,NJ,7631'),
(215380498, 'Abe', 'Merrow', 'M', '9603235143084', '0671360222', '215380498tut4life.ac.za', '6201 S Nevada Ave,Toms River,Ocean,NJ,8755'),
(215391515, 'Claude', 'Rardin', 'M', '9509225118083', '0715830341', '215391515tut4life.ac.za', '87895 Concord Rd,La Mesa,San Diego,CA,91942'),
(215394385, 'Jacob', 'Winkles', 'M', '8002185993083', '0681240167', '215394385tut4life.ac.za', '90177 N 55th Ave,Nashville,Davidson,TN,37211'),
(215399001, 'Houston', 'Reding', 'M', '9303205577084', '0752210679', '215399001tut4life.ac.za', '539 Coldwater Canyon Ave,Bloomfield,Essex,NJ,7003'),
(215401602, 'Keneth', 'Provencher', 'M', '8502255181083', '0621740658', '215401602tut4life.ac.za', '26849 Jefferson Hwy,Rolling Meadows,Cook,IL,60008'),
(215409260, 'Archie', 'Hemminger', 'M', '9807135146084', '0662440344', '215409260tut4life.ac.za', '2 W Grand Ave,Memphis,Shelby,TN,38112'),
(215414217, 'Bernie', 'Gettings', 'M', '8811055356083', '0637920712', '215414217tut4life.ac.za', '39 Franklin Ave,Richland,Benton,WA,99352'),
(215420345, 'Joey', 'Tieu', 'M', '9604265330084', '0745310003', '215420345tut4life.ac.za', '1 Washington St,Lake Worth,Palm Beach,FL,33461'),
(215434423, 'Dwain', 'Gentile', 'M', '8010205243084', '0677330044', '215434423tut4life.ac.za', '8429 Miller Rd,Pelham,Westchester,NY,10803'),
(215437182, 'Ashley', 'Polito', 'M', '8008135825084', '0755030409', '215437182tut4life.ac.za', '1610 14th St Nw,Newport News,Newport News City,VA,23608'),
(215451292, 'Brett', 'Dasilva', 'M', '8011235131082', '0641710380', '215451292tut4life.ac.za', '4 Cowesett Ave,Kearny,Hudson,NJ,7032'),
(215471726, 'Michael', 'Faulk', 'M', '8508215370084', '0731050491', '215471726tut4life.ac.za', '88 Sw 28th Ter,Harrison,Hudson,NJ,7029'),
(215477784, 'Darrel', 'Brousseau', 'M', '8108095479083', '0716980010', '215477784tut4life.ac.za', '5 W 7th St,Parkville,Baltimore,MD,21234'),
(215480098, 'Keneth', 'Ivery', 'M', '8107165934083', '0717010098', '215480098tut4life.ac.za', '55713 Lake City Hwy,South Bend,St Joseph,IN,46601'),
(215483535, 'Barry', 'Lindauer', 'M', '9101205843082', '0740088095', '215483535tut4life.ac.za', '27846 Lafayette Ave,Oak Hill,Volusia,FL,32759'),
(215483818, 'Elwood', 'Parr', 'M', '9301025688082', '0718100526', '215483818tut4life.ac.za', '29 Cherry St #7073,Des Moines,Polk,IA,50315'),
(215502153, 'Eldridge', 'Lunt', 'M', '8405205356084', '0712160569', '215502153tut4life.ac.za', '1482 College Ave,Fayetteville,Cumberland,NC,28301'),
(215502928, 'Simon', 'Mandeville', 'M', '9807045408083', '0663180374', '215502928tut4life.ac.za', '2759 Livingston Ave,Memphis,Shelby,TN,38118'),
(215517357, 'Benny', 'Lundgreen', 'M', '8803105217083', '0731550837', '215517357tut4life.ac.za', '1 N San Saba,Erie,Erie,PA,16501'),
(215523016, 'Emilio', 'Hammon', 'M', '9307105041084', '0713700633', '215523016tut4life.ac.za', '987 Main St,Raleigh,Wake,NC,27601'),
(215562727, 'Bernard', 'Michener', 'M', '9211015225083', '0673410350', '215562727tut4life.ac.za', '810 N La Brea Ave,King of Prussia,Montgomery,PA,19406'),
(215573263, 'Conrad', 'Leftwich', 'M', '8209155497082', '0718560981', '215573263tut4life.ac.za', '735 Crawford Dr,Anchorage,Anchorage,AK,99501'),
(215590598, 'Haywood', 'Stallcup', 'M', '8407055613084', '0639610105', '215590598tut4life.ac.za', '8590 Lake Lizzie Dr,Bowling Green,Wood,OH,43402'),
(215631078, 'Luigi', 'Kegley', 'M', '8101065409083', '0655220374', '215631078tut4life.ac.za', '1 Century Park E,San Diego,San Diego,CA,92110'),
(215650300, 'Gilbert', 'Carpio', 'M', '8101045680082', '0681430219', '215650300tut4life.ac.za', '82 Us Highway 46,Clifton,Passaic,NJ,7011'),
(215663880, 'Kenneth', 'Earnshaw', 'M', '8707275496083', '0778770107', '215663880tut4life.ac.za', '2094 Ne 36th Ave,Worcester,Worcester,MA,1603'),
(215669983, 'Junior', 'Fry', 'M', '9309085739084', '0649870793', '215669983tut4life.ac.za', '35433 Blake St #588,Gardena,Los Angeles,CA,90248'),
(215681498, 'Rico', 'Fewell', 'M', '9405135203082', '0673600246', '215681498tut4life.ac.za', '7 Tarrytown Rd,Cincinnati,Hamilton,OH,45217'),
(215688268, 'Edmund', 'Waltz', 'M', '9810165102084', '0752670663', '215688268tut4life.ac.za', '2 W Beverly Blvd,Harrisburg,Dauphin,PA,17110'),
(215700916, 'Lonnie', 'Stegner', 'M', '9404245338084', '0738350258', '215700916tut4life.ac.za', '65 Mountain View Dr,Whippany,Morris,NJ,7981'),
(215708321, 'Lorenzo', 'Esh', 'M', '9410215343084', '0731840351', '215708321tut4life.ac.za', '76598 Rd  I 95 #1,Denver,Denver,CO,80216'),
(215709179, 'Milton', 'Smolka', 'M', '9608085544082', '0616020206', '215709179tut4life.ac.za', '105 Richmond Valley Rd,Escondido,San Diego,CA,92025'),
(215709627, 'Gil', 'Boyett', 'M', '9303095735083', '0755710633', '215709627tut4life.ac.za', '22 Spruce St #595,Gardena,Los Angeles,CA,90248'),
(215716695, 'Michale', 'Takahashi', 'M', '8010165318082', '0713140705', '215716695tut4life.ac.za', '51120 State Route 18,Salt Lake City,Salt Lake,UT,84115'),
(215717270, 'Doyle', 'Clifford', 'M', '8701165027083', '0727950774', '215717270tut4life.ac.za', '9 State Highway 57 #22,Jersey City,Hudson,NJ,7306'),
(215744175, 'Otha', 'Gershon', 'M', '8101245606084', '0787140557', '215744175tut4life.ac.za', '2167 Sierra Rd,East Lansing,Ingham,MI,48823'),
(215768299, 'Salvatore', 'Caver', 'M', '8508085896083', '0769510260', '215768299tut4life.ac.za', '278 Bayview Ave,Milan,Monroe,MI,48160'),
(215781610, 'Rod', 'Rizzuto', 'M', '9706125577084', '0745510623', '215781610tut4life.ac.za', '4 S Washington Ave,San Bernardino,San Bernardino,CA,92410'),
(215790465, 'Johnny', 'Capps', 'M', '9302165875084', '0651090641', '215790465tut4life.ac.za', '2 Flynn Rd,Hicksville,Nassau,NY,11801'),
(215792113, 'Quinn', 'Granado', 'M', '9311065726084', '0621670631', '215792113tut4life.ac.za', '9 Tower Ave,Burlington,Boone,KY,41005'),
(215806225, 'Lyman', 'Donis', 'M', '9310205912083', '0657980303', '215806225tut4life.ac.za', '25 Se 176th Pl,Cambridge,Middlesex,MA,2138'),
(215812185, 'Ned', 'Minner', 'M', '9803245527084', '0741350969', '215812185tut4life.ac.za', '92 Broadway,Astoria,Queens,NY,11103'),
(215820310, 'Rolf', 'Pfister', 'M', '8701015709084', '0625560596', '215820310tut4life.ac.za', '63 Smith Ln #8343,Moss,Clay,TN,38575'),
(215833187, 'Terrance', 'Hansard', 'M', '9404155276083', '0745910935', '215833187tut4life.ac.za', '32820 Corkwood Rd,Newark,Essex,NJ,7104'),
(215840274, 'Orlando', 'Stapleton', 'M', '9703025275082', '0644900200', '215840274tut4life.ac.za', '36 Lancaster Dr Se,Pearl,Rankin,MS,39208'),
(215842393, 'Stacy', 'Morgenstern', 'M', '9802225703084', '0615010987', '215842393tut4life.ac.za', '6 Sunrise Ave,Utica,Oneida,NY,13501'),
(215848501, 'Judson', 'Istre', 'M', '8004275636083', '0672650855', '215848501tut4life.ac.za', '2094 Montour Blvd,Muskegon,Muskegon,MI,49442'),
(215867987, 'Del', 'Lisi', 'M', '8604065463082', '0767640363', '215867987tut4life.ac.za', '649 Tulane Ave,Tulsa,Tulsa,OK,74105'),
(215887023, 'Dannie', 'Fore', 'M', '8909015651084', '0610050384', '215887023tut4life.ac.za', '11360 S Halsted St,Santa Ana,Orange,CA,92705'),
(215908236, 'Eddie', 'Fludd', 'M', '9608115207083', '0638810270', '215908236tut4life.ac.za', '910 Rahway Ave,Philadelphia,Philadelphia,PA,19102'),
(215942526, 'Kip', 'Knotts', 'M', '8307095435084', '0771410264', '215942526tut4life.ac.za', '4 Nw 12th St #3849,Madison,Dane,WI,53717'),
(215960749, 'Kevin', 'Happel', 'M', '9306265748084', '0653930295', '215960749tut4life.ac.za', '34 Raritan Center Pky,Bellflower,Los Angeles,CA,90706'),
(215961750, 'Kris', 'Buczek', 'M', '8501235391083', '0763370761', '215961750tut4life.ac.za', '36 Enterprise St Se,Richland,Benton,WA,99352'),
(216113933, 'Shawnna', 'Creekmore', 'M', '9004085641082', '0719110388', '216113933tut4life.ac.za', '34 Saint George Ave #2,Bangor,Penobscot,ME,4401'),
(216118216, 'Lenna', 'Blakney', 'M', '8311055116084', '0641020218', '216118216tut4life.ac.za', '2 S 15th St,Fort Worth,Tarrant,TX,76107'),
(216133755, 'Ana', 'Attwood', 'M', '8403115945083', '0617050468', '216133755tut4life.ac.za', '8573 Lincoln Blvd,York,York,PA,17404'),
(216147154, 'Taren', 'Wince', 'M', '9704265390082', '0714510333', '216147154tut4life.ac.za', '1 Rancho Del Mar Shopping C,Providence,Providence,RI,2903'),
(216151384, 'Wilton', 'Bierman', 'M', '9307145817082', '0629590457', '216151384tut4life.ac.za', '89992 E 15th St,Alliance,Box Butte,NE,69301'),
(216155518, 'Classie', 'Ahner', 'M', '9411155188084', '0722290488', '216155518tut4life.ac.za', '96541 W Central Blvd,Phoenix,Maricopa,AZ,85034'),
(216180577, 'Issac', 'Nicola', 'M', '8004125139083', '0724400504', '216180577tut4life.ac.za', '2 W Mount Royal Ave,Fortville,Hancock,IN,46040'),
(216202289, 'Kimber', 'Lavoie', 'M', '8403195901084', '0670050077', '216202289tut4life.ac.za', '60 Old Dover Rd,Hialeah,Miami-Dade,FL,33014'),
(216210269, 'Nadia', 'Lamy', 'M', '8102265913084', '0679070463', '216210269tut4life.ac.za', '3943 N Highland Ave,Lancaster,Lancaster,PA,17601'),
(216213288, 'Douglas', 'Kulp', 'M', '8309135321083', '0675730752', '216213288tut4life.ac.za', '6 Ridgewood Center Dr,Old Forge,Lackawanna,PA,18518'),
(216216811, 'Marcelina', 'Moose', 'M', '9102085240082', '0669200174', '216216811tut4life.ac.za', '5 Williams St,Johnston,Providence,RI,2919'),
(216230117, 'Sang', 'Piscopo', 'M', '8605115389083', '0658900417', '216230117tut4life.ac.za', '469 Outwater Ln,San Diego,San Diego,CA,92126'),
(216243742, 'Magdalen', 'Degenhardt', 'M', '8204065181084', '0774710050', '216243742tut4life.ac.za', '64 Newman Springs Rd E,Brooklyn,Kings,NY,11219'),
(216250873, 'Jene', 'Havens', 'M', '8905235964084', '0632850725', '216250873tut4life.ac.za', '80 Pittsford Victor Rd #9,Cleveland,Cuyahoga,OH,44103'),
(216279986, 'Andrew', 'Oberry', 'M', '9702255427084', '0623880323', '216279986tut4life.ac.za', '5 Washington St #1,Roseville,Placer,CA,95678'),
(216306472, 'Johnson', 'Bultman', 'M', '8410195135083', '0742220164', '216306472tut4life.ac.za', '18 3rd Ave,New York,New York,NY,10016'),
(216323902, 'Bryan', 'Mcrae', 'M', '9309095242084', '0657450912', '216323902tut4life.ac.za', '67 Rv Cent,Boise,Ada,ID,83709'),
(216327993, 'Tomasa', 'Pastorius', 'M', '8705135647083', '0748920971', '216327993tut4life.ac.za', '40 9th Ave Sw #91,Waterford,Oakland,MI,48329'),
(216340762, 'Gwyn', 'Botsford', 'M', '9202125818082', '0753990075', '216340762tut4life.ac.za', '4 Kohler Memorial Dr,Brooklyn,Kings,NY,11230'),
(216344984, 'Madelyn', 'Bohrer', 'M', '8605155946082', '0629020943', '216344984tut4life.ac.za', '94 Chase Rd,Hyattsville,Prince Georges,MD,20785'),
(216372767, 'Anne', 'Hulett', 'M', '9505125712083', '0711550392', '216372767tut4life.ac.za', '9581 E Arapahoe Rd,Rochester,Oakland,MI,48307'),
(216378630, 'Annice', 'Whitehouse', 'M', '9403165793082', '0616570804', '216378630tut4life.ac.za', '33 N Michigan Ave,Green Bay,Brown,WI,54301'),
(216383095, 'Heriberto', 'Plotner', 'M', '9102075808084', '0643560404', '216383095tut4life.ac.za', '1953 Telegraph Rd,Saint Joseph,Buchanan,MO,64504'),
(216396025, 'Rosenda', 'Schauwecker', 'M', '9211265958082', '0760061068', '216396025tut4life.ac.za', '85092 Southern Blvd,San Antonio,Bexar,TX,78204'),
(216413042, 'Theron', 'Reith', 'M', '9607065058084', '0788900561', '216413042tut4life.ac.za', '62 W Austin St,Syosset,Nassau,NY,11791'),
(216423468, 'Renato', 'Speece', 'M', '8904255061083', '0630078028', '216423468tut4life.ac.za', '2184 Worth St,Hayward,Alameda,CA,94545'),
(216432919, 'Kerrie', 'Lalonde', 'M', '8511085161083', '0658200921', '216432919tut4life.ac.za', '8 Us Highway 22,Colorado Springs,El Paso,CO,80937'),
(216447574, 'Cheryll', 'Knighten', 'M', '9404175474083', '0665470913', '216447574tut4life.ac.za', '87163 N Main Ave,New York,New York,NY,10013'),
(216456482, 'Wai', 'Tupper', 'M', '8309095493084', '0689010081', '216456482tut4life.ac.za', '5 Cabot Rd,Mc Lean,Fairfax,VA,22102'),
(216458427, 'Laurel', 'Southall', 'M', '8707155484083', '0668100565', '216458427tut4life.ac.za', '2 S Biscayne Blvd,Baltimore,Baltimore City,MD,21230'),
(216458997, 'Willodean', 'Chiles', 'M', '9604275112084', '0763040736', '216458997tut4life.ac.za', '33 State St,Abilene,Taylor,TX,79601'),
(216468157, 'Nestor', 'Greear', 'M', '8210135060084', '0725530262', '216468157tut4life.ac.za', '62260 Park Stre,Monroe Township,Middlesex,NJ,8831'),
(216471838, 'Lessie', 'Capito', 'M', '8407015906084', '0779930394', '216471838tut4life.ac.za', '8139 I Hwy 10 #92,New Bedford,Bristol,MA,2745'),
(216500143, 'Lakiesha', 'Luther', 'M', '9809035344082', '0642250521', '216500143tut4life.ac.za', '8 Sheridan Rd,Jersey City,Hudson,NJ,7304'),
(216527814, 'Camille', 'Deroche', 'M', '9211135589084', '0738910330', '216527814tut4life.ac.za', '13 S Hacienda Dr,Livingston,Essex,NJ,7039'),
(216534519, 'Gil', 'Vanzandt', 'M', '8401025361083', '0748740648', '216534519tut4life.ac.za', '21575 S Apple Creek Rd,Omaha,Douglas,NE,68124'),
(216540701, 'Amber', 'Hampshire', 'M', '8206185457084', '0637540766', '216540701tut4life.ac.za', '7422 Martin Ave #8,Toledo,Lucas,OH,43607'),
(216589573, 'Harrison', 'Lipari', 'M', '8905075780083', '0768930368', '216589573tut4life.ac.za', '251 Park Ave #979,Saratoga,Santa Clara,CA,95070'),
(216608158, 'Pete', 'Mcmurtrie', 'M', '8603085778082', '0624850636', '216608158tut4life.ac.za', '43496 Commercial Dr #29,Cherry Hill,Camden,NJ,8003'),
(216610660, 'Basil', 'Griggs', 'M', '8410225781082', '0716460121', '216610660tut4life.ac.za', '63517 Dupont St,Jackson,Hinds,MS,39211'),
(216650278, 'Jewell', 'Gingrich', 'M', '9505035967082', '0751510071', '216650278tut4life.ac.za', '5 E Truman Rd,Abilene,Taylor,TX,79602'),
(216652254, 'Solomon', 'Brimmer', 'M', '9107165172082', '0615000836', '216652254tut4life.ac.za', '9 Front St,Washington,District of Columbia,DC,20001'),
(216656709, 'Vannesa', 'Pulice', 'M', '8704245703084', '0768350210', '216656709tut4life.ac.za', '88 15th Ave Ne,Vestal,Broome,NY,13850'),
(216658438, 'Ahmed', 'Ekberg', 'M', '9107115138083', '0713460183', '216658438tut4life.ac.za', '40 Cambridge Ave,Madison,Dane,WI,53715'),
(216673652, 'Donnell', 'Burchard', 'M', '9803185912082', '0672440342', '216673652tut4life.ac.za', '61556 W 20th Ave,Seattle,King,WA,98104'),
(216688441, 'Jocelyn', 'Bearse', 'M', '8003185192082', '0738790958', '216688441tut4life.ac.za', '39 Moccasin Dr,San Francisco,San Francisco,CA,94104'),
(216701843, 'Shery', 'Connally', 'M', '9607245845083', '0751500348', '216701843tut4life.ac.za', '3829 Ventura Blvd,Butte,Silver Bow,MT,59701'),
(216703062, 'Riley', 'Yardley', 'M', '8903155857082', '0672200986', '216703062tut4life.ac.za', '35 E Main St #43,Elk Grove Village,Cook,IL,60007'),
(216711703, 'Marni', 'Rohan', 'M', '8002195660082', '0659150006', '216711703tut4life.ac.za', '393 Lafayette Ave,Richmond,Richmond City,VA,23219'),
(216719658, 'Darrick', 'Gosse', 'M', '8007135199084', '0624420580', '216719658tut4life.ac.za', '13 Gunnison St,Plano,Collin,TX,75075'),
(216744699, 'Diana', 'Mcclintock', 'M', '9104165558082', '0681710920', '216744699tut4life.ac.za', '4 Carroll St,North Attleboro,Bristol,MA,2760'),
(216761021, 'Wallace', 'Anspach', 'M', '8510095541084', '0668360425', '216761021tut4life.ac.za', '62 Monroe St,Thousand Palms,Riverside,CA,92276'),
(216764536, 'Jeffrey', 'Koo', 'M', '9408055587082', '0763280309', '216764536tut4life.ac.za', '2 W Scyene Rd #3,Baltimore,Baltimore City,MD,21217'),
(216778880, 'Teries', 'Montenegro', 'M', '8005045473084', '0648660572', '216778880tut4life.ac.za', '201 Ridgewood Rd,Moscow,Latah,ID,83843'),
(216795074, 'Dwain', 'Pursell', 'M', '9602055580083', '0766090847', '216795074tut4life.ac.za', '177 S Rider Trl #52,Crystal River,Citrus,FL,34429'),
(216799427, 'Cyrus', 'Hetzler', 'M', '9802185241084', '0673150601', '216799427tut4life.ac.za', '747 Leonis Blvd,Annandale,Fairfax,VA,22003'),
(216799627, 'Lonny', 'Manners', 'M', '8707095166083', '0645630727', '216799627tut4life.ac.za', '2 Sw Nyberg Rd,Elkhart,Elkhart,IN,46514'),
(216819445, 'Sheldon', 'Frick', 'M', '8106225202083', '0627500865', '216819445tut4life.ac.za', '7163 W Clark Rd,Freehold,Monmouth,NJ,7728'),
(216835820, 'Theodore', 'Vitale', 'M', '8807025399082', '0710052028', '216835820tut4life.ac.za', '9 Hwy,Providence,Providence,RI,2906'),
(216837317, 'Kaley', 'Brugnoli', 'M', '9502015937084', '0670083093', '216837317tut4life.ac.za', '48 Stratford Ave,Pomona,Los Angeles,CA,91768'),
(216838728, 'Pedro', 'Biddy', 'M', '9203225523083', '0786900185', '216838728tut4life.ac.za', '3424 29th St Se,Kerrville,Kerr,TX,78028'),
(216841674, 'Lynn', 'Mathis', 'M', '8703245142082', '0636910610', '216841674tut4life.ac.za', '1933 Packer Ave #2,Novato,Marin,CA,94945'),
(216845816, 'Willie', 'Hausman', 'M', '8106205106083', '0724940186', '216845816tut4life.ac.za', '16452 Greenwich St,Garden City,Nassau,NY,11530'),
(216849498, 'Kimiko', 'Wiliams', 'M', '8203225205082', '0724910249', '216849498tut4life.ac.za', '47857 Coney Island Ave,Clinton,Prince Georges,MD,20735'),
(216856637, 'Brandon', 'Rieth', 'M', '8604185222084', '0634750914', '216856637tut4life.ac.za', '8284 Hart St,Abilene,Dickinson,KS,67410'),
(216867271, 'Mariano', 'Arras', 'M', '8802025083084', '0671520066', '216867271tut4life.ac.za', '3338 A Lockport Pl #6,Margate City,Atlantic,NJ,8402'),
(216873550, 'Kiyoko', 'Stanford', 'M', '9202155404084', '0664330254', '216873550tut4life.ac.za', '99 5th Ave #33,Trion,Chattooga,GA,30753'),
(216893434, 'Maribeth', 'Scheffel', 'M', '8502075949083', '0736970184', '216893434tut4life.ac.za', '993 Washington Ave,Nutley,Essex,NJ,7110'),
(216920578, 'Leonie', 'Rodenberger', 'M', '9501165376083', '0763950549', '216920578tut4life.ac.za', '2845 Boulder Crescent St,Cleveland,Cuyahoga,OH,44103'),
(216922777, 'Monty', 'Kalinowski', 'M', '8607025249084', '0779340698', '216922777tut4life.ac.za', '63 E Aurora Dr,Orlando,Orange,FL,32804'),
(216924654, 'Shaunda', 'Jantzen', 'M', '9009185446083', '0745200544', '216924654tut4life.ac.za', '49 N Mays St,Broussard,Lafayette,LA,70518'),
(216947863, 'Keitha', 'Rojero', 'M', '9209095841082', '0613100417', '216947863tut4life.ac.za', '596 Santa Maria Ave #7913,Mesquite,Dallas,TX,75150'),
(216955960, 'Shiko', 'Matlala', 'M', '8604265257084', '0765870538', '210104455tut@4life.ac.za', '5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006'),
(216964543, 'Terrance', 'Langford', 'M', '8304165527082', '0750093029', '216964543tut4life.ac.za', '38773 Gravois Ave,Cheyenne,Laramie,WY,82001'),
(216981319, 'Walton', 'Mumford', 'M', '8810175715083', '0668690905', '216981319tut4life.ac.za', '8 S Haven St,Daytona Beach,Volusia,FL,32114'),
(216982630, 'Johnathon', 'Goza', 'M', '8504245097083', '0776330028', '216982630tut4life.ac.za', '50126 N Plankinton Ave,Longwood,Seminole,FL,32750'),
(216984909, 'Jacinda', 'Riggins', 'M', '8504275335082', '0735110255', '216984909tut4life.ac.za', '3381 E 40th Ave,Passaic,Passaic,NJ,7055'),
(216990182, 'Allen', 'Soria', 'M', '9006195285082', '0627620364', '216990182tut4life.ac.za', '20113 4th Ave E,Kearny,Hudson,NJ,7032'),
(217113239, 'Mamie', 'Fredette', 'M', '8103235269084', '0712240543', '217113239tut4life.ac.za', '5 W 7th St,Parkville,Baltimore,MD,21234'),
(217118493, 'Signe', 'Ogrady', 'M', '8011095976083', '0744750922', '217118493tut4life.ac.za', '35433 Blake St #588,Gardena,Los Angeles,CA,90248'),
(217119040, 'Sheryl', 'Rodes', 'M', '8110215385083', '0744670866', '217119040tut4life.ac.za', '94290 S Buchanan St,Pacifica,San Mateo,CA,94044'),
(217120832, 'Ula', 'Weibel', 'M', '9103065016083', '0764490529', '217120832tut4life.ac.za', '92899 Kalakaua Ave,El Paso,El Paso,TX,79925'),
(217130535, 'Candelaria', 'Barras', 'M', '9508275129083', '0782670259', '217130535tut4life.ac.za', '3 Mcauley Dr,Ashland,Ashland,OH,44805'),
(217133307, 'Marian', 'Wire', 'M', '9207095185084', '0732900964', '217133307tut4life.ac.za', '2094 Montour Blvd,Muskegon,Muskegon,MI,49442'),
(217133939, 'Mafalda', 'Catto', 'M', '9106045903084', '0661790532', '217133939tut4life.ac.za', '70295 Pioneer Ct,Brandon,Hillsborough,FL,33511'),
(217135622, 'Billye', 'Narron', 'M', '9704135286082', '0686470963', '217135622tut4life.ac.za', '53 W Carey St,Port Jervis,Orange,NY,12771'),
(217138041, 'Danyelle', 'Seamans', 'M', '8908065282082', '0724760885', '217138041tut4life.ac.za', '1 S Pine St,Memphis,Shelby,TN,38112'),
(217142522, 'Leonora', 'Gutierrez', 'M', '9310145496082', '0754660741', '217142522tut4life.ac.za', '3125 Packer Ave #9851,Austin,Travis,TX,78753'),
(217142666, 'Marianna', 'Hutchens', 'F', '8806220537084', '0710079007', '217142666tut4life.ac.za', '6 Greenleaf Ave,San Jose,Santa Clara,CA,95111'),
(217149674, 'Paula', 'Tom', 'F', '8602091883084', '0616370766', '217149674tut4life.ac.za', '618 W Yakima Ave,Irving,Dallas,TX,75062'),
(217167857, 'Kaylee', 'Delancey', 'F', '9111074316082', '0765220611', '217167857tut4life.ac.za', '98 Connecticut Ave Nw,Chagrin Falls,Geauga,OH,44023'),
(217180784, 'Enid', 'Enright', 'M', '9811215538083', '0686560201', '217180784tut4life.ac.za', '5 Boston Ave #88,Sioux Falls,Minnehaha,SD,57105'),
(217184427, 'Lorretta', 'Sabb', 'M', '8106195360083', '0740070636', '217184427tut4life.ac.za', '987 Main St,Raleigh,Wake,NC,27601'),
(217239376, 'Celina', 'Bergan', 'M', '8401075864082', '0619870947', '217239376tut4life.ac.za', '9 Plainsboro Rd #598,Greensboro,Guilford,NC,27409'),
(217248206, 'Oleta', 'Atlas', 'M', '8705255891084', '0653410309', '217248206tut4life.ac.za', '7061 N 2nd St,Burnsville,Dakota,MN,55337'),
(217258388, 'Eulah', 'Memmott', 'M', '9207205548083', '0634570134', '217258388tut4life.ac.za', '38 Pleasant Hill Rd,Hayward,Alameda,CA,94545'),
(217267508, 'Claris', 'Rothschild', 'M', '9603115921082', '0676940206', '217267508tut4life.ac.za', '393 Hammond Dr,Lafayette,Lafayette,LA,70506'),
(217278993, 'Edra', 'Yutzy', 'M', '9711025721083', '0671740108', '217278993tut4life.ac.za', '36 Enterprise St Se,Richland,Benton,WA,99352'),
(217349922, 'Jeanmarie', 'Anwar', 'M', '9507145769083', '0729570343', '217349922tut4life.ac.za', '72119 S Walker Ave #63,Anaheim,Orange,CA,92801'),
(217364324, 'Nadine', 'Dannenberg', 'M', '9403045764084', '0642640451', '217364324tut4life.ac.za', '3 Lawton St,New York,New York,NY,10013'),
(217381499, 'Toccara', 'Liz', 'M', '8009275956082', '0712910316', '217381499tut4life.ac.za', '63728 Poway Rd #1,Scranton,Lackawanna,PA,18509'),
(217382205, 'Rosaline', 'Stefan', 'M', '8409215770084', '0618210694', '217382205tut4life.ac.za', '369 Latham St #500,Saint Louis,Saint Louis City,MO,63102'),
(217399780, 'Kayleen', 'Rakow', 'M', '8110215822082', '0736800990', '217399780tut4life.ac.za', '187 Market St,Atlanta,Fulton,GA,30342'),
(217401840, 'Merideth', 'Romig', 'F', '8307084584083', '0729300460', '217401840tut4life.ac.za', '6 S 33rd St,Aston,Delaware,PA,19014'),
(217404363, 'Demetria', 'Segui', 'F', '9207051170083', '0664900911', '217404363tut4life.ac.za', '37275 St  Rt 17m M,Middle Island,Suffolk,NY,11953'),
(217405789, 'Dannielle', 'Bourgault', 'M', '9705175306082', '0753170483', '217405789tut4life.ac.za', '41 Steel Ct,Northfield,Rice,MN,55057'),
(217411817, 'Jammie', 'Mcghie', 'M', '9106205441082', '0628710904', '217411817tut4life.ac.za', '395 S 6th St #2,El Cajon,San Diego,CA,92020'),
(217418510, 'Christina', 'Mccrae', 'M', '8502125679084', '0750055026', '217418510tut4life.ac.za', '919 Wall Blvd,Meridian,Lauderdale,MS,39307'),
(217432962, 'Alejandrina', 'Fielding', 'F', '8511110716084', '0763430306', '217432962tut4life.ac.za', '69734 E Carrillo St,Mc Minnville,Warren,TN,37110'),
(217442033, 'Malvina', 'Kunst', 'M', '9306145263084', '0739820771', '217442033tut4life.ac.za', '10759 Main St,Scottsdale,Maricopa,AZ,85260'),
(217456345, 'Bridgette', 'Dulac', 'M', '9307205449082', '0769670873', '217456345tut4life.ac.za', '82 Winsor St #54,Atlanta,Dekalb,GA,30340'),
(217460003, 'Merna', 'Gaeth', 'M', '8101065896084', '0658150389', '217460003tut4life.ac.za', '228 Runamuck Pl #2808,Baltimore,Baltimore City,MD,21224'),
(217473978, 'Senaida', 'Kies', 'M', '8702105310082', '0662580098', '217473978tut4life.ac.za', '598 43rd St,Beverly Hills,Los Angeles,CA,90210'),
(217490404, 'Alessandra', 'Birkland', 'M', '9605165822083', '0779170055', '217490404tut4life.ac.za', '772 W River Dr,Bloomington,Monroe,IN,47404'),
(217496973, 'Sabine', 'Kucera', 'M', '9607265517082', '0634590272', '217496973tut4life.ac.za', '721 Interstate 45 S,Colorado Springs,El Paso,CO,80919'),
(217513309, 'Winnie', 'Kentner', 'M', '8409255480083', '0660014013', '217513309tut4life.ac.za', '73 W Barstow Ave,Arlington Heights,Cook,IL,60004'),
(217518508, 'Ciera', 'Chabolla', 'M', '9401235932082', '0738430389', '217518508tut4life.ac.za', '77 222 Dr,Oroville,Butte,CA,95965'),
(217522340, 'Sherley', 'Woolston', 'M', '9401135643083', '0676560840', '217522340tut4life.ac.za', '7 Tarrytown Rd,Cincinnati,Hamilton,OH,45217'),
(217528714, 'Veda', 'Brodeur', 'F', '9804110782082', '0743680454', '217528714tut4life.ac.za', '2371 Jerrold Ave,Kulpsville,Montgomery,PA,19443'),
(217551620, 'Barbar', 'Rumley', 'M', '8604115579084', '0750051002', '217551620tut4life.ac.za', '347 Chestnut St,Peoria,Maricopa,AZ,85381'),
(217604932, 'Arlene', 'Laursen', 'M', '8209175384084', '0756570594', '217604932tut4life.ac.za', '2215 Prosperity Dr,Lyndhurst,Bergen,NJ,7071'),
(217612459, 'Delorse', 'Mcgaha', 'M', '9308175324083', '0661360801', '217612459tut4life.ac.za', '649 Tulane Ave,Tulsa,Tulsa,OK,74105'),
(217619383, 'Arianna', 'Gangemi', 'M', '8703065059083', '0722440647', '217619383tut4life.ac.za', '61047 Mayfield Ave,Brooklyn,Kings,NY,11223'),
(217626938, 'Melonie', 'Garceau', 'F', '8210164869084', '0733690478', '217626938tut4life.ac.za', '73 State Road 434 E,Phoenix,Maricopa,AZ,85013'),
(217678663, 'Anastasia', 'Chason', 'M', '9702175903082', '0784440386', '217678663tut4life.ac.za', '9506 Edgemore Ave,Bladensburg,Prince Georges,MD,20710'),
(217679040, 'Nu', 'Keifer', 'M', '9609245214084', '0663070686', '217679040tut4life.ac.za', '735 Crawford Dr,Anchorage,Anchorage,AK,99501'),
(217693703, 'Mirtha', 'Hooser', 'F', '8602160925082', '0649130933', '217693703tut4life.ac.za', '74 S Westgate St,Albany,Albany,NY,12204'),
(217695472, 'Wisani', 'Zupan', 'M', '9201025352082', '0720084010', '210143832tut@4life.ac.za', '639 Main St,Anchorage,Anchorage,AK,99501'),
(217700783, 'Lashonda', 'Barlett', 'F', '8210270517084', '0728330907', '217700783tut4life.ac.za', '322 New Horizon Blvd,Milwaukee,Milwaukee,WI,53207'),
(217711045, 'Sueann', 'Schultheis', 'M', '8605035778083', '0714780006', '217711045tut4life.ac.za', '89 20th St E #779,Sterling Heights,Macomb,MI,48310'),
(217713613, 'Marlen', 'Boughner', 'M', '8410055145083', '0787560316', '217713613tut4life.ac.za', '8429 Miller Rd,Pelham,Westchester,NY,10803'),
(217723090, 'Jona', 'Demeter', 'M', '9302065003084', '0773360231', '217723090tut4life.ac.za', '810 N La Brea Ave,King of Prussia,Montgomery,PA,19406'),
(217723230, 'Chrystal', 'Mayne', 'F', '9510061323084', '0772640134', '217723230tut4life.ac.za', '3273 State St,Middlesex,Middlesex,NJ,8846'),
(217728686, 'Anh', 'Corsi', 'F', '8003231536082', '0663610250', '217728686tut4life.ac.za', '1 State Route 27,Taylor,Wayne,MI,48180'),
(217731749, 'Yan', 'Brwon', 'M', '8404045007083', '0685770764', '217731749tut4life.ac.za', '617 Nw 36th Ave,Brook Park,Cuyahoga,OH,44142'),
(217748326, 'Kara', 'Toler', 'M', '8908045714083', '0668180401', '217748326tut4life.ac.za', '49440 Dearborn St,Norwalk,Fairfield,CT,6854'),
(217756607, 'Mica', 'Santo', 'M', '8610265453082', '0622950724', '217756607tut4life.ac.za', '8116 Mount Vernon Ave,Bucyrus,Crawford,OH,44820'),
(217762501, 'Carlota', 'Hatfield', 'M', '9608165503083', '0769020801', '217762501tut4life.ac.za', '97 E 3rd St #9,Long Island City,Queens,NY,11101'),
(217776530, 'Lachelle', 'Simmonds', 'M', '9010255337084', '0765250782', '217776530tut4life.ac.za', '29 Cherry St #7073,Des Moines,Polk,IA,50315'),
(217796275, 'Meredith', 'Skowronski', 'M', '9103135985082', '0618960363', '217796275tut4life.ac.za', '7 Eads St,Chicago,Cook,IL,60632'),
(217798901, 'Marilu', 'Inglis', 'M', '9210165183083', '0760060048', '217798901tut4life.ac.za', '2 Flynn Rd,Hicksville,Nassau,NY,11801'),
(217812364, 'Dionne', 'Alva', 'M', '9404255904084', '0746600308', '217812364tut4life.ac.za', '3158 Runamuck Pl,Round Rock,Williamson,TX,78664'),
(217815452, 'Corrin', 'Alas', 'M', '9109175165082', '0661700913', '217815452tut4life.ac.za', '45 E Acacia Ct,Chicago,Cook,IL,60624'),
(217818972, 'Velda', 'Erne', 'M', '9704105518084', '0743140699', '217818972tut4life.ac.za', '7 W Jackson Blvd,San Jose,Santa Clara,CA,95111'),
(217831584, 'Robbyn', 'Hoar', 'M', '8802165310084', '0756720713', '217831584tut4life.ac.za', '868 State St #38,Cincinnati,Hamilton,OH,45251'),
(217842850, 'Myrtle', 'Haskell', 'F', '8608274640083', '0771620437', '217842850tut4life.ac.za', '25 E 75th St #69,Los Angeles,Los Angeles,CA,90034'),
(217856088, 'Tonie', 'Kahle', 'M', '8708105237082', '0632260817', '217856088tut4life.ac.za', '8772 Old County Rd #5410,Kent,King,WA,98032'),
(217858110, 'Kathleen', 'Schweinsberg', 'M', '8907085371083', '0610081052', '217858110tut4life.ac.za', '2139 Santa Rosa Ave,Orlando,Orange,FL,32801'),
(217874627, 'Ronni', 'Guglielmo', 'M', '8804175885083', '0748880822', '217874627tut4life.ac.za', '910 Rahway Ave,Philadelphia,Philadelphia,PA,19102'),
(217936025, 'Alana', 'Livesay', 'M', '8406165897084', '0723960837', '217936025tut4life.ac.za', '8728 S Broad St,Coram,Suffolk,NY,11727'),
(217942006, 'Vernice', 'Stilts', 'M', '9306255339084', '0617880056', '217942006tut4life.ac.za', '7 S Beverly Dr,Fort Wayne,Allen,IN,46802'),
(217945222, 'Eleanora', 'Shanley', 'F', '9003240276084', '0658600956', '217945222tut4life.ac.za', '56 E Morehead St,Laredo,Webb,TX,78045'),
(217946460, 'Ocie', 'Pepe', 'M', '9203155623082', '0623170521', '217946460tut4life.ac.za', '2094 Ne 36th Ave,Worcester,Worcester,MA,1603'),
(217949821, 'Lurlene', 'Drucker', 'M', '9802195635083', '0659520679', '217949821tut4life.ac.za', '539 Coldwater Canyon Ave,Bloomfield,Essex,NJ,7003'),
(217987272, 'Marine', 'Bond', 'M', '9801085296084', '0684230322', '217987272tut4life.ac.za', '3387 Ryan Dr,Hanover,Anne Arundel,MD,21076'),
(217990106, 'Beata', 'Desrosier', 'F', '8501071029082', '0668220718', '217990106tut4life.ac.za', '394 Manchester Blvd,Rockford,Winnebago,IL,61109'),
(218101895, 'Hildred', 'Lanclos', 'F', '9709034292082', '0659090142', '218101895tut4life.ac.za', '4 Webbs Chapel Rd,Boulder,Boulder,CO,80303'),
(218122825, 'Alishia', 'Napier', 'F', '8302110972082', '0648910053', '218122825tut4life.ac.za', '2 Cedar Ave #84,Easton,Talbot,MD,21601'),
(218124548, 'Melida', 'Bay', 'F', '8401120931084', '0661000436', '218124548tut4life.ac.za', '386 9th Ave N,Conroe,Montgomery,TX,77301'),
(218141445, 'Kourtney', 'Erdmann', 'F', '9807063086082', '0769160566', '218141445tut4life.ac.za', '4800 Black Horse Pike,Burlingame,San Mateo,CA,94010'),
(218145541, 'Livia', 'Suire', 'F', '9608160149084', '0627320193', '218145541tut4life.ac.za', '45 E Liberty St,Ridgefield Park,Bergen,NJ,7660'),
(218154463, 'Rosenda', 'Boltz', 'F', '9305021693083', '0663080155', '218154463tut4life.ac.za', '59 Shady Ln #53,Milwaukee,Milwaukee,WI,53214'),
(218160767, 'Renata', 'Leitch', 'F', '8610164233082', '0721560405', '218160767tut4life.ac.za', '5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006'),
(218167502, 'Blondell', 'Ayars', 'F', '8411132932082', '0766800240', '218167502tut4life.ac.za', '30 W 80th St #1995,San Carlos,San Mateo,CA,94070'),
(218171024, 'Lavonda', 'Okeeffe', 'F', '8311031622082', '0716170467', '218171024tut4life.ac.za', '2742 Distribution Way,New York,New York,NY,10025'),
(218174348, 'Lizzie', 'Roman', 'F', '9102223580082', '0714550879', '218174348tut4life.ac.za', '3 Fort Worth Ave,Philadelphia,Philadelphia,PA,19106'),
(218178800, 'Wilhemina', 'Cava', 'F', '8407124049084', '0722270127', '218178800tut4life.ac.za', '14302 Pennsylvania Ave,Huntingdon Valley,Montgomery,PA,19006'),
(218187175, 'Amelia', 'Zakrzewski', 'F', '8702061076082', '0652230985', '218187175tut4life.ac.za', '524 Louisiana Ave Nw,San Leandro,Alameda,CA,94577'),
(218198571, 'Ashton', 'Vollmer', 'F', '9805103968082', '0667940637', '218198571tut4life.ac.za', '74989 Brandon St,Wellsville,Allegany,NY,14895'),
(218202082, 'Carlena', 'Prochaska', 'F', '9504082428083', '0684830616', '218202082tut4life.ac.za', '840 15th Ave,Waco,McLennan,TX,76708'),
(218209788, 'Pearly', 'Lan', 'F', '8404031773082', '0711570598', '218209788tut4life.ac.za', '71 San Mateo Ave,Wayne,Delaware,PA,19087'),
(218213988, 'Shannan', 'Range', 'F', '8303114716084', '0718730510', '218213988tut4life.ac.za', '366 South Dr,Las Cruces,Dona Ana,NM,88011'),
(218216436, 'Veronika', 'Costilla', 'F', '9402123044083', '0737940565', '218216436tut4life.ac.za', '76 Brooks St #9,Flemington,Hunterdon,NJ,8822'),
(218218848, 'Keena', 'Steller', 'F', '9302152715082', '0660020378', '218218848tut4life.ac.za', '128 Bransten Rd,New York,New York,NY,10011'),
(218232864, 'Lashay', 'Kriger', 'F', '8208101823082', '0732400995', '218232864tut4life.ac.za', '2853 S Central Expy,Glen Burnie,Anne Arundel,MD,21061'),
(218244322, 'Alysa', 'Goulet', 'F', '9407241580082', '0767340663', '218244322tut4life.ac.za', '14288 Foster Ave #4121,Jenkintown,Montgomery,PA,19046'),
(218252279, 'Denita', 'Oliveri', 'F', '9107071415084', '0741060307', '218252279tut4life.ac.za', '53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831'),
(218279369, 'Zella', 'Tabares', 'F', '9004104034083', '0731820795', '218279369tut4life.ac.za', '1088 Pinehurst St,Chapel Hill,Orange,NC,27514'),
(218279860, 'Britta', 'Grizzell', 'F', '8805222515082', '0681720019', '218279860tut4life.ac.za', '69 Marquette Ave,Hayward,Alameda,CA,94545'),
(218287423, 'Melisa', 'Shutter', 'F', '8109230928084', '0735690814', '218287423tut4life.ac.za', '6794 Lake Dr E,Newark,Essex,NJ,7104'),
(218290819, 'Sima', 'Mays', 'F', '9006160979082', '0748150563', '218290819tut4life.ac.za', '59 N Groesbeck Hwy,Austin,Travis,TX,78731'),
(218295896, 'Alfredia', 'Kincer', 'F', '9310011392082', '0726610349', '218295896tut4life.ac.za', '47154 Whipple Ave Nw,Gardena,Los Angeles,CA,90247'),
(218306041, 'Janice', 'Dalessandro', 'F', '9003193694082', '0770070013', '218306041tut4life.ac.za', '775 W 17th St,San Antonio,Bexar,TX,78204'),
(218995411, 'Tsholofelo', 'Itumeleng', 'M', '8707105536082', '0683920770', '210157269tut@4life.ac.za', 'Mabopane'),
(218995412, 'Tsholofelo', 'Itumeleng', 'F', '9910220897087', '0641449040', '218995412@tut4life.ac.za', 'South Africa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_number`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218995441;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


18203 Lerato Makapane 8901010025086 F 885210566 leratomakapane@gmail.com

Edit Edit
Copy Copy
Delete Delete
22010
Ephraim
Sanyane
7011275418082
M
775870538
ephraimsanyane@gmail.com




INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210865845", "Lowell", "Cordeiro", "M", "210865845@tut4life.ac.za", "8302155786084", "0625940354", "6649 N Blue Gum St,New Orleans,Orleans,LA,70116");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210850242", "Geoffrey", "Nicol", "M", "210850242@tut4life.ac.za", "8907205035083", "0786820218", "4 B Blue Ridge Blvd,Brighton,Livingston,MI,48116");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210365180", "Branden", "Hager", "M", "210365180@tut4life.ac.za", "8509105839084", "0742220305", "8 W Cerritos Ave #54,Bridgeport,Gloucester,NJ,8014");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210441493", "Nicolas", "Crupi", "M", "210441493@tut4life.ac.za", "8101155351084", "0755820647", "639 Main St,Anchorage,Anchorage,AK,99501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210279565", "Samuel", "Briseno", "M", "210279565@tut4life.ac.za", "8606035066082", "0772890478", "34 Center St,Hamilton,Butler,OH,45011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210256467", "Bradly", "Toman", "M", "210256467@tut4life.ac.za", "9505075167083", "0637690683", "3 Mcauley Dr,Ashland,Ashland,OH,44805");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210986940", "Gregorio", "Barnwell", "M", "210986940@tut4life.ac.za", "9804275926084", "06400640370", "7 Eads St,Chicago,Cook,IL,60632");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210299224", "Alejandro", "Ruocco", "M", "210299224@tut4life.ac.za", "8601015086083", "0676990298", "7 W Jackson Blvd,San Jose,Santa Clara,CA,95111");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210296022", "Robby", "Ellett", "M", "210296022@tut4life.ac.za", "8309045718082", "0667950362", "5 Boston Ave #88,Sioux Falls,Minnehaha,SD,57105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210977941", "Jospeh", "Arciniega", "M", "210977941@tut4life.ac.za", "9410185264083", "0615250177", "228 Runamuck Pl #2808,Baltimore,Baltimore City,MD,21224");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210831571", "Terrance", "Hulse", "M", "210831571@tut4life.ac.za", "9311075747082", "0673530166", "2371 Jerrold Ave,Kulpsville,Montgomery,PA,19443");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210836586", "Rory", "Razor", "M", "210836586@tut4life.ac.za", "9206135935083", "0721590255", "37275 St  Rt 17m M,Middle Island,Suffolk,NY,11953");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210867292", "Stephen", "Baumgarten", "M", "210867292@tut4life.ac.za", "9208115778083", "0743740753", "25 E 75th St #69,Los Angeles,Los Angeles,CA,90034");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210866744", "Micheal", "Keenan", "M", "210866744@tut4life.ac.za", "8506145073082", "0634850382", "98 Connecticut Ave Nw,Chagrin Falls,Geauga,OH,44023");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210459102", "Scottie", "Granada", "M", "210459102@tut4life.ac.za", "8707155395082", "0734320725", "56 E Morehead St,Laredo,Webb,TX,78045");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210571469", "Ronny", "Millard", "M", "210571469@tut4life.ac.za", "9603095282082", "0685230477", "73 State Road 434 E,Phoenix,Maricopa,AZ,85013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210181464", "Issac", "Dalby", "M", "210181464@tut4life.ac.za", "8807095513084", "0629860392", "69734 E Carrillo St,Mc Minnville,Warren,TN,37110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210617577", "Sandy", "Ashburn", "M", "210617577@tut4life.ac.za", "9409245572083", "0611580997", "322 New Horizon Blvd,Milwaukee,Milwaukee,WI,53207");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210108997", "Hong", "Ramsier", "M", "210108997@tut4life.ac.za", "8008075848083", "0611990202", "1 State Route 27,Taylor,Wayne,MI,48180");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210650708", "Dong", "Boise", "M", "210650708@tut4life.ac.za", "9401085519083", "0773160030", "394 Manchester Blvd,Rockford,Winnebago,IL,61109");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210179951", "Dwight", "Kirsh", "M", "210179951@tut4life.ac.za", "8501055057083", "0614140750", "6 S 33rd St,Aston,Delaware,PA,19014");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210212027", "Guadalupe", "Kral", "M", "210212027@tut4life.ac.za", "9506135727083", "0773690464", "6 Greenleaf Ave,San Jose,Santa Clara,CA,95111");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210186297", "Edward", "Schull", "M", "210186297@tut4life.ac.za", "9809225200082", "0764840336", "618 W Yakima Ave,Irving,Dallas,TX,75062");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210743065", "Werner", "Kriner", "M", "210743065@tut4life.ac.za", "9302255389083", "0684980172", "74 S Westgate St,Albany,Albany,NY,12204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210633179", "Brain", "Rasmussen", "M", "210633179@tut4life.ac.za", "9105035202082", "0725390563", "3273 State St,Middlesex,Middlesex,NJ,8846");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210684123", "Benny", "Barkett", "M", "210684123@tut4life.ac.za", "8710265782082", "0752600949", "1 Central Ave,Stevens Point,Portage,WI,54481");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210408820", "Emil", "Marrone", "M", "210408820@tut4life.ac.za", "9101015737083", "0766150078", "86 Nw 66th St #8673,Shawnee,Johnson,KS,66218");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210705837", "Brendan", "Ohanlon", "M", "210705837@tut4life.ac.za", "8503245786084", "0757070577", "2 Cedar Ave #84,Easton,Talbot,MD,21601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210688593", "Roger", "Horton", "M", "210688593@tut4life.ac.za", "8311195627083", "0781950127", "90991 Thorburn Ave,New York,New York,NY,10011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210749001", "Gabriel", "Rothchild", "M", "210749001@tut4life.ac.za", "9307235073083", "0754100339", "386 9th Ave N,Conroe,Montgomery,TX,77301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210577826", "Young", "Fritsch", "M", "210577826@tut4life.ac.za", "9106255745084", "0729780147", "74874 Atlantic Ave,Columbus,Franklin,OH,43215");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210158717", "Arnulfo", "Rimer", "M", "210158717@tut4life.ac.za", "9508085853082", "0663900408", "366 South Dr,Las Cruces,Dona Ana,NM,88011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210780327", "Haywood", "Ehlers", "M", "210780327@tut4life.ac.za", "8906105141084", "0663680797", "45 E Liberty St,Ridgefield Park,Bergen,NJ,7660");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210192878", "Randell", "Awong", "M", "210192878@tut4life.ac.za", "8105025806082", "07600300939", "4 Ralph Ct,Dunellen,Middlesex,NJ,8812");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210835341", "Luke", "Creasey", "M", "210835341@tut4life.ac.za", "9701025555084", "0712520973", "2742 Distribution Way,New York,New York,NY,10025");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210778044", "Jarvis", "Groseclose", "M", "210778044@tut4life.ac.za", "8201165742084", "0611060749", "426 Wolf St,Metairie,Jefferson,LA,70002");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210596879", "Carlos", "Deardorff", "M", "210596879@tut4life.ac.za", "9502025856082", "0646350488", "128 Bransten Rd,New York,New York,NY,10011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210977531", "Gavin", "Rain", "M", "210977531@tut4life.ac.za", "9205165978083", "0744270800", "17 Morena Blvd,Camarillo,Ventura,CA,93012");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210482090", "Leonardo", "Laureano", "M", "210482090@tut4life.ac.za", "8905025123082", "0617850303", "775 W 17th St,San Antonio,Bexar,TX,78204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210520057", "Teodoro", "Olvera", "M", "210520057@tut4life.ac.za", "9104115731084", "0760050204", "6980 Dorsett Rd,Abilene,Dickinson,KS,67410");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210534516", "Brant", "Lockley", "M", "210534516@tut4life.ac.za", "8709275169082", "0664110602", "2881 Lewis Rd,Prineville,Crook,OR,97754");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210875065", "Chris", "Perreault", "M", "210875065@tut4life.ac.za", "9304095383084", "0741360919", "7219 Woodfield Rd,Overland Park,Johnson,KS,66204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210791791", "Eloy", "Hoos", "M", "210791791@tut4life.ac.za", "9204015217084", "07400610858", "1048 Main St,Fairbanks,Fairbanks North Star,AK,99708");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210138072", "Alva", "Rushing", "M", "210138072@tut4life.ac.za", "8803095153082", "0763930874", "678 3rd Ave,Miami,Miami-Dade,FL,33196");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210836249", "Bo", "Louie", "M", "210836249@tut4life.ac.za", "9203125582083", "0639540005", "20 S Babcock St,Fairbanks,Fairbanks North Star,AK,99712");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210209980", "Lenard", "Pitcher", "M", "210209980@tut4life.ac.za", "9101125499083", "0717400781", "2 Lighthouse Ave,Hopkins,Hennepin,MN,55343");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210294566", "Pat", "Holiday", "M", "210294566@tut4life.ac.za", "9107165702084", "0649850171", "38938 Park Blvd,Boston,Suffolk,MA,2128");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210645488", "Hollis", "Drayer", "M", "210645488@tut4life.ac.za", "8003035349084", "0648900438", "5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210239570", "Domenic", "Hile", "M", "210239570@tut4life.ac.za", "8801205549083", "0737860817", "762 S Main St,Madison,Dane,WI,53711");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210589356", "Ashley", "Shack", "M", "210589356@tut4life.ac.za", "9807185905084", "0726210738", "209 Decker Dr,Philadelphia,Philadelphia,PA,19132");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210237741", "Rayford", "Ebel", "M", "210237741@tut4life.ac.za", "8609115223083", "0639810086", "4486 W O St #1,New York,New York,NY,10003");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210276782", "Delbert", "Whitten", "M", "210276782@tut4life.ac.za", "8304175589082", "0658150012", "39 S 7th St,Tullahoma,Coffee,TN,37388");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210219016", "Rob", "Gebhart", "M", "210219016@tut4life.ac.za", "9302175884082", "0746000195", "98839 Hawthorne Blvd #6101,Columbia,Richland,SC,29201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210585890", "Jess", "Lok", "M", "210585890@tut4life.ac.za", "9602085563082", "0666560512", "71 San Mateo Ave,Wayne,Delaware,PA,19087");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210198176", "Stanley", "Mettler", "M", "210198176@tut4life.ac.za", "8708175410082", "0769830070", "76 Brooks St #9,Flemington,Hunterdon,NJ,8822");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210490740", "Garfield", "Hillard", "M", "210490740@tut4life.ac.za", "8507175091082", "0721570512", "4545 Courthouse Rd,Westbury,Nassau,NY,11590");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210366834", "Cornelius", "Bagdon", "M", "210366834@tut4life.ac.za", "9309155018082", "06100180063", "14288 Foster Ave #4121,Jenkintown,Montgomery,PA,19046");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210373514", "Ezequiel", "Burch", "M", "210373514@tut4life.ac.za", "9704255887084", "0785460216", "4 Otis St,Van Nuys,Los Angeles,CA,91405");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210398914", "Dwight", "Burchette", "M", "210398914@tut4life.ac.za", "8806215282082", "0725450194", "65895 S 16th St,Providence,Providence,RI,2909");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210691375", "Shane", "Remo", "M", "210691375@tut4life.ac.za", "8902065108082", "0751560602", "14302 Pennsylvania Ave,Huntingdon Valley,Montgomery,PA,19006");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210221595", "Jerrold", "Habib", "M", "210221595@tut4life.ac.za", "9211215615083", "0617080717", "201 Hawk Ct,Providence,Providence,RI,2904");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210474237", "Robin", "Fralick", "M", "210474237@tut4life.ac.za", "9111055036084", "07200270263", "53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210236930", "Jessie", "Leyden", "M", "210236930@tut4life.ac.za", "8810115190082", "06700870792", "59 N Groesbeck Hwy,Austin,Travis,TX,78731");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210434331", "Jonathon", "Soliday", "M", "210434331@tut4life.ac.za", "9511035792082", "0757640145", "2664 Lewis Rd,Littleton,Douglas,CO,80126");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210929257", "Pedro", "Paulsen", "M", "210929257@tut4life.ac.za", "9010225732084", "0659620180", "59 Shady Ln #53,Milwaukee,Milwaukee,WI,53214");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210608152", "Landon", "Greeno", "M", "210608152@tut4life.ac.za", "9010135104082", "0675150574", "3305 Nabell Ave #679,New York,New York,NY,10009");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210365831", "Eusebio", "Sommerville", "M", "210365831@tut4life.ac.za", "9711105338083", "0668590387", "18 Fountain St,Anchorage,Anchorage,AK,99515");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210484294", "Adolph", "Redman", "M", "210484294@tut4life.ac.za", "8810105292082", "06600460672", "7 W 32nd St,Erie,Erie,PA,16502");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210733934", "Judson", "Runge", "M", "210733934@tut4life.ac.za", "9410075048084", "0784930975", "2853 S Central Expy,Glen Burnie,Anne Arundel,MD,21061");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210751298", "Isreal", "Yedinak", "M", "210751298@tut4life.ac.za", "8003235311084", "0754800439", "74 W College St,Boise,Ada,ID,83707");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210672197", "Chung", "Gullatt", "M", "210672197@tut4life.ac.za", "9307215554084", "0765500158", "701 S Harrison Rd,San Francisco,San Francisco,CA,94104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210648966", "Trey", "Rishel", "M", "210648966@tut4life.ac.za", "9410245530083", "0716860297", "1088 Pinehurst St,Chapel Hill,Orange,NC,27514");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210851590", "Vince", "Hackley", "M", "210851590@tut4life.ac.za", "8310185643082", "07200320031", "30 W 80th St #1995,San Carlos,San Mateo,CA,94070");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210419205", "Jesse", "Broadhead", "M", "210419205@tut4life.ac.za", "8307025899084", "0621550672", "20932 Hedley St,Concord,Contra Costa,CA,94520");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210240393", "Jarrett", "Pidgeon", "M", "210240393@tut4life.ac.za", "8704105296084", "0623200318", "2737 Pistorio Rd #9230,London,Madison,OH,43140");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210540184", "Britt", "Capp", "M", "210540184@tut4life.ac.za", "9703175472084", "0779100109", "74989 Brandon St,Wellsville,Allegany,NY,14895");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210608833", "Sammie", "Palomares", "M", "210608833@tut4life.ac.za", "9206225735083", "0628040968", "6 Kains Ave,Baltimore,Baltimore City,MD,21215");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("210516831", "Luciano", "Suter", "M", "210516831@tut4life.ac.za", "9601045022083", "0775160367", "47565 W Grand Ave,Newark,Essex,NJ,7105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211679159", "Evan", "Meyerhoff", "M", "211679159@tut4life.ac.za", "9708155429084", "0780030564", "4284 Dorigo Ln,Chicago,Cook,IL,60647");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211358501", "Mohammad", "Dimick", "M", "211358501@tut4life.ac.za", "8501035501082", "0675320629", "6794 Lake Dr E,Newark,Essex,NJ,7104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211127743", "Sherwood", "Nocera", "M", "211127743@tut4life.ac.za", "8704245878084", "06800420581", "31 Douglas Blvd #950,Clovis,Curry,NM,88101");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211724336", "Irwin", "Resendiz", "M", "211724336@tut4life.ac.za", "8506135751084", "0789780373", "44 W 4th St,Staten Island,Richmond,NY,10309");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211817704", "Ramiro", "Witzke", "M", "211817704@tut4life.ac.za", "8303195207082", "0679050639", "11279 Loytan St,Jacksonville,Duval,FL,32254");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211882941", "Patrick", "Kummer", "M", "211882941@tut4life.ac.za", "8610105817084", "0658560661", "69 Marquette Ave,Hayward,Alameda,CA,94545");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211428136", "Vaughn", "Lesage", "M", "211428136@tut4life.ac.za", "9705245527082", "0775810355", "70 W Main St,Beachwood,Cuyahoga,OH,44122");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211790698", "Nicolas", "Silverberg", "M", "211790698@tut4life.ac.za", "9602235742082", "0726670647", "461 Prospect Pl #316,Euless,Tarrant,TX,76040");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211612207", "Norman", "Mccandless", "M", "211612207@tut4life.ac.za", "8005205776082", "0642080645", "47154 Whipple Ave Nw,Gardena,Los Angeles,CA,90247");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211380854", "Neil", "Closson", "M", "211380854@tut4life.ac.za", "8104015777082", "0673700155", "37 Alabama Ave,Evanston,Cook,IL,60201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211323273", "Jewel", "Zalewski", "M", "211323273@tut4life.ac.za", "8407245663083", "06200550593", "3777 E Richmond St #900,Akron,Summit,OH,44302");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211250535", "Brendon", "Slocum", "M", "211250535@tut4life.ac.za", "9703035111082", "0657080094", "3 Fort Worth Ave,Philadelphia,Philadelphia,PA,19106");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211181837", "Cesar", "Burell", "M", "211181837@tut4life.ac.za", "9011025601083", "0651520054", "4800 Black Horse Pike,Burlingame,San Mateo,CA,94010");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211453221", "Gayle", "Bottorff", "M", "211453221@tut4life.ac.za", "9406115015084", "0645300048", "83649 W Belmont Ave,San Gabriel,Los Angeles,CA,91776");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211769786", "Guillermo", "Denham", "M", "211769786@tut4life.ac.za", "8607135002082", "0682240895", "840 15th Ave,Waco,McLennan,TX,76708");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211796250", "Matthew", "Stebbins", "M", "211796250@tut4life.ac.za", "8004025696084", "0635070270", "1747 Calle Amanecer #2,Anchorage,Anchorage,AK,99501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211593209", "Carson", "Kyles", "M", "211593209@tut4life.ac.za", "8001065268083", "0748090078", "99385 Charity St #840,San Jose,Santa Clara,CA,95110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211181720", "Darrin", "Driskill", "M", "211181720@tut4life.ac.za", "8008105815083", "0684560041", "68556 Central Hwy,San Leandro,Alameda,CA,94577");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211405075", "Gregory", "Mcardle", "M", "211405075@tut4life.ac.za", "8603085574082", "0744490702", "55 Riverside Ave,Indianapolis,Marion,IN,46202");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211109156", "Lawrence", "Mckissack", "M", "211109156@tut4life.ac.za", "9803145277084", "0634130210", "7140 University Ave,Rock Springs,Sweetwater,WY,82901");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211509001", "Lucius", "Cameron", "M", "211509001@tut4life.ac.za", "8102225232084", "0749270248", "64 5th Ave #1153,Mc Lean,Fairfax,VA,22102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211550055", "Tracy", "Sturtevant", "M", "211550055@tut4life.ac.za", "9506265310082", "0677190625", "3 Secor Rd,New Orleans,Orleans,LA,70112");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211473901", "Jules", "Rizo", "M", "211473901@tut4life.ac.za", "9702025365082", "0761630072", "4 Webbs Chapel Rd,Boulder,Boulder,CO,80303");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211596517", "Carrol", "Pfarr", "M", "211596517@tut4life.ac.za", "8903165464084", "0624490048", "524 Louisiana Ave Nw,San Leandro,Alameda,CA,94577");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211786046", "Delmer", "Loredo", "M", "211786046@tut4life.ac.za", "9003065938083", "0743300188", "185 Blackstone Bldge,Honolulu,Honolulu,HI,96817");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211238222", "Haywood", "Beverage", "M", "211238222@tut4life.ac.za", "9209225389083", "07800790439", "170 Wyoming Ave,Burnsville,Dakota,MN,55337");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211683132", "Micheal", "Lombardi", "M", "211683132@tut4life.ac.za", "8410195656082", "0758800466", "4 10th St W,High Point,Guilford,NC,27263");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211228628", "Danny", "Scholze", "M", "211228628@tut4life.ac.za", "8508245943084", "0769040129", "7 W Pinhook Rd,Lynbrook,Nassau,NY,11563");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211532608", "Newton", "Manor", "M", "211532608@tut4life.ac.za", "8711255042082", "0664520196", "1 Commerce Way,Portland,Washington,OR,97224");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211577408", "Carroll", "Buchman", "M", "211577408@tut4life.ac.za", "8201115691082", "0665050545", "64 Lakeview Ave,Beloit,Rock,WI,53511");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211450452", "Noah", "Penland", "M", "211450452@tut4life.ac.za", "9110025225082", "0689240849", "3 Aspen St,Worcester,Worcester,MA,1602");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211893740", "Edmund", "Mease", "M", "211893740@tut4life.ac.za", "8111265552082", "0729370652", "32860 Sierra Rd,Miami,Miami-Dade,FL,33133");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211502334", "Marcellus", "Ellithorpe", "M", "211502334@tut4life.ac.za", "8208265934084", "0732720171", "555 Main St,Erie,Erie,PA,16502");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211723103", "Abdul", "Schulte", "M", "211723103@tut4life.ac.za", "8404205188084", "0659280691", "2 Se 3rd Ave,Mesquite,Dallas,TX,75149");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211855666", "Herbert", "Lehto", "M", "211855666@tut4life.ac.za", "9507095333082", "06200520846", "2239 Shawnee Mission Pky,Tullahoma,Coffee,TN,37388");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211131303", "Moshe", "Tsosie", "M", "211131303@tut4life.ac.za", "9410035571082", "0689270110", "2726 Charcot Ave,Paterson,Passaic,NJ,7501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211474928", "Gary", "Hillyard", "M", "211474928@tut4life.ac.za", "9309055073084", "0762110769", "5161 Dorsett Rd,Homestead,Miami-Dade,FL,33030");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211159187", "Wilber", "Overbey", "M", "211159187@tut4life.ac.za", "8603225198082", "0653710601", "55892 Jacksonville Rd,Owings Mills,Baltimore,MD,21117");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211805147", "Darron", "Bloomfield", "M", "211805147@tut4life.ac.za", "8405045685083", "0642610167", "5 N Cleveland Massillon Rd,Thousand Oaks,Ventura,CA,91362");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211135056", "Brice", "Murrow", "M", "211135056@tut4life.ac.za", "9110085930083", "0714430241", "7 Benton Dr,Honolulu,Honolulu,HI,96819");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211432704", "Gino", "Trabert", "M", "211432704@tut4life.ac.za", "9804225925083", "07500400898", "9390 S Howell Ave,Albany,Dougherty,GA,31701");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211606447", "Todd", "Mcfadin", "M", "211606447@tut4life.ac.za", "9004095774083", "0736170472", "8 County Center Dr #647,Boston,Suffolk,MA,2210");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211123451", "Scottie", "Wester", "M", "211123451@tut4life.ac.za", "8801205501083", "0649700880", "4646 Kaahumanu St,Hackensack,Bergen,NJ,7601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211676314", "Billy", "Corlew", "M", "211676314@tut4life.ac.za", "8102075326084", "0786420210", "2 Monroe St,San Mateo,San Mateo,CA,94403");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211996191", "Ahmed", "Schlager", "M", "211996191@tut4life.ac.za", "8604175427083", "0634930500", "52777 Leaders Heights Rd,Ontario,San Bernardino,CA,91761");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211341414", "Brant", "Mclarty", "M", "211341414@tut4life.ac.za", "8811065783082", "0685500279", "72868 Blackington Ave,Oakland,Alameda,CA,94606");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211495668", "Xavier", "Spagnoli", "M", "211495668@tut4life.ac.za", "9002085606082", "07400950998", "9 Norristown Rd,Troy,Rensselaer,NY,12180");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211181455", "Teddy", "Ines", "M", "211181455@tut4life.ac.za", "9105135492084", "0614400302", "83 County Road 437 #8581,Clarks Summit,Lackawanna,PA,18411");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211541716", "Raymundo", "Rappold", "M", "211541716@tut4life.ac.za", "8006175346082", "0719150447", "1 N Harlem Ave #9,Orange,Essex,NJ,7050");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211373652", "Isiah", "Guidi", "M", "211373652@tut4life.ac.za", "8705215801084", "0721020996", "90131 J St,Pittstown,Hunterdon,NJ,8867");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211922111", "Justin", "Schuller", "M", "211922111@tut4life.ac.za", "8306125567083", "0714950720", "8597 W National Ave,Cocoa,Brevard,FL,32922");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211585293", "Victor", "Seamans", "M", "211585293@tut4life.ac.za", "8803225246084", "0615440912", "6 Gilson St,Bronx,Bronx,NY,10468");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211177586", "Chung", "Sick", "M", "211177586@tut4life.ac.za", "8908195317083", "0636380673", "65 W Maple Ave,Pearl City,Honolulu,HI,96782");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211553093", "Buddy", "Roselli", "M", "211553093@tut4life.ac.za", "9805115899082", "07500620046", "866 34th Ave,Denver,Denver,CO,80231");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211706696", "Ricky", "Noonan", "M", "211706696@tut4life.ac.za", "9103255353083", "0625750523", "798 Lund Farm Way,Rockaway,Morris,NJ,7866");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211650396", "Matthew", "Kalinowski", "M", "211650396@tut4life.ac.za", "9203255521084", "0657980092", "9387 Charcot Ave,Absecon,Atlantic,NJ,8201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211351511", "Ian", "Treadway", "M", "211351511@tut4life.ac.za", "8710065475083", "0718570886", "30553 Washington Rd,Plainfield,Union,NJ,7062");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211326527", "Val", "Swope", "M", "211326527@tut4life.ac.za", "8006075592084", "0737390341", "481 W Lemon St,Middleboro,Plymouth,MA,2346");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211116050", "Morris", "Carls", "M", "211116050@tut4life.ac.za", "9202025584082", "0675320865", "4 Warehouse Point Rd #7,Chicago,Cook,IL,60638");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211834506", "Jacob", "Ballweg", "M", "211834506@tut4life.ac.za", "9311215259083", "0679760432", "4940 Pulaski Park Dr,Portland,Multnomah,OR,97202");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211436931", "Lincoln", "Alcantara", "M", "211436931@tut4life.ac.za", "8508085929082", "0729490318", "627 Walford Ave,Dallas,Dallas,TX,75227");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211783511", "Chas", "Reiff", "M", "211783511@tut4life.ac.za", "9506025155084", "0737580632", "137 Pioneer Way,Chicago,Cook,IL,60604");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211144873", "Zachariah", "Bryer", "M", "211144873@tut4life.ac.za", "8911025807082", "0717310978", "61 13 Stoneridge #835,Findlay,Hancock,OH,45840");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211539113", "Brock", "Mahler", "M", "211539113@tut4life.ac.za", "8604275745084", "0788420133", "2409 Alabama Rd,Riverside,Riverside,CA,92501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211710051", "Jasper", "Cardinale", "M", "211710051@tut4life.ac.za", "9503035041082", "0738950610", "8927 Vandever Ave,Waco,McLennan,TX,76707");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211574415", "Jon", "Flinchum", "M", "211574415@tut4life.ac.za", "8004115175084", "0736150463", "134 Lewis Rd,Nashville,Davidson,TN,37211");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211963220", "Lyndon", "Forbus", "M", "211963220@tut4life.ac.za", "8711235802084", "0654900327", "9 N College Ave #3,Milwaukee,Milwaukee,WI,53216");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211404787", "Mac", "Manrique", "M", "211404787@tut4life.ac.za", "8807265761084", "0638830030", "60480 Old Us Highway 51,Preston,Caroline,MD,21655");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211257532", "Mathew", "Nish", "M", "211257532@tut4life.ac.za", "8202135655084", "0789240790", "4 Bloomfield Ave,Irving,Dallas,TX,75061");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211973693", "Earnest", "Marse", "M", "211973693@tut4life.ac.za", "8705055809083", "0773830304", "429 Tiger Ln,Beverly Hills,Los Angeles,CA,90212");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211640256", "Lenard", "Mcglamery", "M", "211640256@tut4life.ac.za", "9407085788082", "0643900619", "54169 N Main St,Massapequa,Nassau,NY,11758");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211827451", "Les", "Evans", "M", "211827451@tut4life.ac.za", "8807085241083", "0735180174", "92 Main St,Atlantic City,Atlantic,NJ,8401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211904843", "Von", "Helton", "M", "211904843@tut4life.ac.za", "9008105834083", "0614530145", "72 Mannix Dr,Cincinnati,Hamilton,OH,45203");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211893471", "Chuck", "Bearse", "M", "211893471@tut4life.ac.za", "9707125045083", "0758490662", "12270 Caton Center Dr,Eugene,Lane,OR,97401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211328897", "Shayne", "Zamarripa", "M", "211328897@tut4life.ac.za", "9104275477083", "06700910931", "749 W 18th St #45,Smithfield,Johnston,NC,27577");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211177193", "Cortez", "Rowser", "M", "211177193@tut4life.ac.za", "8603125146083", "0712130436", "8 Industry Ln,New York,New York,NY,10002");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211487962", "Keneth", "Nutter", "M", "211487962@tut4life.ac.za", "9803205299083", "0771570243", "1 Huntwood Ave,Phoenix,Maricopa,AZ,85017");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("211357721", "Nick", "Mackin", "M", "211357721@tut4life.ac.za", "8810255406082", "0737160877", "55262 N French Rd,Indianapolis,Marion,IN,46240");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212785115", "Gary", "Lightsey", "M", "212785115@tut4life.ac.za", "9806025284083", "0661710282", "422 E 21st St,Syracuse,Onondaga,NY,13214");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212544510", "Thurman", "Olander", "M", "212544510@tut4life.ac.za", "8605075901084", "0735670682", "501 N 19th Ave,Cherry Hill,Camden,NJ,8002");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212895991", "Mitchel", "Isaacson", "M", "212895991@tut4life.ac.za", "9210185934082", "0642900004", "455 N Main Ave,Garden City,Nassau,NY,11530");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212362626", "Jospeh", "Franchi", "M", "212362626@tut4life.ac.za", "8604195864082", "0641880453", "1844 Southern Blvd,Little Rock,Pulaski,AR,72202");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212219725", "Reynaldo", "Stillwagon", "M", "212219725@tut4life.ac.za", "9210215394084", "0716240017", "2023 Greg St,Saint Paul,Ramsey,MN,55101");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212897603", "Lon", "Surber", "M", "212897603@tut4life.ac.za", "9301275535083", "0718740123", "63381 Jenks Ave,Philadelphia,Philadelphia,PA,19134");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212209372", "Elmo", "Diniz", "M", "212209372@tut4life.ac.za", "8702275214084", "0717380366", "6651 Municipal Rd,Houma,Terrebonne,LA,70360");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212559824", "Kieth", "Mathew", "M", "212559824@tut4life.ac.za", "8302155979082", "07700980251", "81 Norris Ave #525,Ronkonkoma,Suffolk,NY,11779");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212232321", "Kenneth", "Dickerson", "M", "212232321@tut4life.ac.za", "9603045787082", "0733390139", "6916 W Main St,Sacramento,Sacramento,CA,95827");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212942462", "Rayford", "Laing", "M", "212942462@tut4life.ac.za", "9001095449082", "0758820534", "9635 S Main St,Boise,Ada,ID,83704");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212865735", "Ian", "Mcnear", "M", "212865735@tut4life.ac.za", "8503145811084", "0654840014", "17 Us Highway 111,Round Rock,Williamson,TX,78664");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212989968", "Johnson", "Klemm", "M", "212989968@tut4life.ac.za", "8007275976082", "07200500203", "992 Civic Center Dr,Philadelphia,Philadelphia,PA,19123");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212676603", "Jude", "Paton", "M", "212676603@tut4life.ac.za", "9307125231082", "0717810099", "303 N Radcliffe St,Hilo,Hawaii,HI,96720");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212528705", "Norris", "Towell", "M", "212528705@tut4life.ac.za", "9607115386082", "0757650305", "73 Saint Ann St #86,Reno,Washoe,NV,89502");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212503809", "Cyrus", "Byler", "M", "212503809@tut4life.ac.za", "9504055768084", "06800890354", "44 58th St,Wheeling,Cook,IL,60090");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212664590", "Adam", "Leeder", "M", "212664590@tut4life.ac.za", "8808255619083", "0668270275", "9745 W Main St,Randolph,Morris,NJ,7869");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212378412", "Darrell", "Sachs", "M", "212378412@tut4life.ac.za", "9505155951082", "0642250589", "84 Bloomfield Ave,Spartanburg,Spartanburg,SC,29301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212202493", "Kareem", "Longshore", "M", "212202493@tut4life.ac.za", "8609215656082", "0634490660", "287 Youngstown Warren Rd,Hampstead,Carroll,MD,21074");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212969973", "Rudolf", "Osornio", "M", "212969973@tut4life.ac.za", "8005135099083", "0726680779", "6 Van Buren St,Mount Vernon,Westchester,NY,10553");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212382688", "Davis", "Ketterman", "M", "212382688@tut4life.ac.za", "9406275208082", "0647870198", "229 N Forty Driv,New York,New York,NY,10011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212534152", "Courtney", "Pantaleo", "M", "212534152@tut4life.ac.za", "9306075405084", "0669250237", "2887 Knowlton St #5435,Berkeley,Alameda,CA,94710");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212295653", "Wilbur", "Wever", "M", "212295653@tut4life.ac.za", "8402095751084", "0649120437", "523 Marquette Ave,Concord,Middlesex,MA,1742");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212439972", "Kevin", "Usrey", "M", "212439972@tut4life.ac.za", "9405085929082", "0677490545", "3717 Hamann Industrial Pky,San Francisco,San Francisco,CA,94104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212534549", "Steve", "Paille", "M", "212534549@tut4life.ac.za", "9003055153084", "0751880067", "3 State Route 35 S,Paramus,Bergen,NJ,7652");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212175480", "Waldo", "Telles", "M", "212175480@tut4life.ac.za", "8505165603084", "0751840244", "82 N Highway 67,Oakley,Contra Costa,CA,94561");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212981800", "Elden", "Platt", "M", "212981800@tut4life.ac.za", "9004235393084", "0632240310", "9 Murfreesboro Rd,Chicago,Cook,IL,60623");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212960624", "Carson", "Whitner", "M", "212960624@tut4life.ac.za", "9805215258082", "0689880155", "6 S Broadway St,Cedar Grove,Essex,NJ,7009");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212923432", "Marshall", "Outman", "M", "212923432@tut4life.ac.za", "8310105518084", "0738810670", "6 Harry L Dr #6327,Perrysburg,Wood,OH,43551");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212979387", "Tim", "Millspaugh", "M", "212979387@tut4life.ac.za", "9306165687084", "0624320783", "47939 Porter Ave,Gardena,Los Angeles,CA,90248");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212210379", "Tyron", "Manzano", "M", "212210379@tut4life.ac.za", "8510035936083", "0786780304", "9 Wales Rd Ne #914,Homosassa,Citrus,FL,34448");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212521894", "Stephen", "Maust", "M", "212521894@tut4life.ac.za", "9101095262084", "0769950301", "195 13n N,Santa Clara,Santa Clara,CA,95054");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212620443", "Wilburn", "Goyette", "M", "212620443@tut4life.ac.za", "8707095111084", "0648150065", "99 Tank Farm Rd,Hazleton,Luzerne,PA,18201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212846239", "Cornell", "Tripoli", "M", "212846239@tut4life.ac.za", "9003015352084", "0637360417", "4671 Alemany Blvd,Jersey City,Hudson,NJ,7304");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212663818", "Bertram", "Brock", "M", "212663818@tut4life.ac.za", "9207065001084", "0661780302", "98 University Dr,San Ramon,Contra Costa,CA,94583");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212178410", "Armand", "Walls", "M", "212178410@tut4life.ac.za", "8402065441084", "0665440997", "50 E Wacker Dr,Bridgewater,Somerset,NJ,8807");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212527893", "Eldridge", "Hahn", "M", "212527893@tut4life.ac.za", "8107135556083", "0649960974", "70 Euclid Ave #722,Bohemia,Suffolk,NY,11716");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212850664", "Collin", "Gallant", "M", "212850664@tut4life.ac.za", "9707195652082", "0673500331", "326 E Main St #6496,Thousand Oaks,Ventura,CA,91362");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212894315", "Grady", "Littrell", "M", "212894315@tut4life.ac.za", "8506275082084", "0749980589", "406 Main St,Somerville,Somerset,NJ,8876");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212265381", "Cyril", "Houde", "M", "212265381@tut4life.ac.za", "9409265194084", "0711040645", "3 Elmwood Dr,Beaverton,Washington,OR,97005");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212615135", "Jefferey", "Ponder", "M", "212615135@tut4life.ac.za", "9203135799084", "0764570552", "9 Church St,Salem,Marion,OR,97302");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212489358", "Wilber", "Lanterman", "M", "212489358@tut4life.ac.za", "8703045669083", "0656350392", "9939 N 14th St,Riverton,Burlington,NJ,8077");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212885041", "Chance", "Degregorio", "M", "212885041@tut4life.ac.za", "8705225141082", "0726380479", "5384 Southwyck Blvd,Douglasville,Douglas,GA,30135");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212821533", "Hassan", "Wayne", "M", "212821533@tut4life.ac.za", "9308215062084", "06100460178", "97 Airport Loop Dr,Jacksonville,Duval,FL,32216");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212353841", "Gerald", "Kauffman", "M", "212353841@tut4life.ac.za", "9805055827082", "0656220272", "37855 Nolan Rd,Bangor,Penobscot,ME,4401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212141362", "Benito", "Seelye", "M", "212141362@tut4life.ac.za", "8808215556082", "0634100327", "4252 N Washington Ave #9,Kennedale,Tarrant,TX,76060");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212355215", "Dustin", "Portales", "M", "212355215@tut4life.ac.za", "8011215480083", "0764550053", "42754 S Ash Ave,Buffalo,Erie,NY,14228");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212570345", "Stanley", "Stalling", "M", "212570345@tut4life.ac.za", "8906035834082", "0682500962", "703 Beville Rd,Opa Locka,Miami-Dade,FL,33054");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212851034", "Aron", "Monge", "M", "212851034@tut4life.ac.za", "9105125510084", "0719300202", "5 Harrison Rd,New York,New York,NY,10038");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212687677", "Hilario", "Atherton", "M", "212687677@tut4life.ac.za", "9208255687084", "0686950676", "73 Southern Blvd,Philadelphia,Philadelphia,PA,19103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212266003", "Ron", "Leaf", "M", "212266003@tut4life.ac.za", "8107215977083", "0786000937", "189 Village Park Rd,Crestview,Okaloosa,FL,32536");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212548136", "Hobert", "Royster", "M", "212548136@tut4life.ac.za", "8005145322083", "0665430240", "6 Middlegate Rd #106,San Francisco,San Francisco,CA,94107");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212956166", "Val", "Turpen", "M", "212956166@tut4life.ac.za", "9403115626083", "0675640422", "1128 Delaware St,San Jose,Santa Clara,CA,95132");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212826316", "Frank", "Pulliam", "M", "212826316@tut4life.ac.za", "8507225208082", "0716170455", "577 Parade St,South San Francisco,San Mateo,CA,94080");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212762262", "Arden", "Portillo", "M", "212762262@tut4life.ac.za", "8711205205083", "0722250571", "70 Mechanic St,Northridge,Los Angeles,CA,91325");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212711166", "Louis", "Steigerwald", "M", "212711166@tut4life.ac.za", "8806205539083", "0771700122", "4379 Highway 116,Philadelphia,Philadelphia,PA,19103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212624401", "Mack", "Fountain", "M", "212624401@tut4life.ac.za", "8702045418084", "0646670284", "55 Hawthorne Blvd,Lafayette,Lafayette,LA,70506");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212516005", "Abram", "Krick", "M", "212516005@tut4life.ac.za", "8001145385084", "0675490194", "7116 Western Ave,Dearborn,Wayne,MI,48126");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212759450", "Darnell", "Burgher", "M", "212759450@tut4life.ac.za", "9011215421082", "0778470238", "2026 N Plankinton Ave #3,Austin,Travis,TX,78754");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212399768", "Rene", "Wethington", "M", "212399768@tut4life.ac.za", "9606245757082", "0628610285", "99586 Main St,Dallas,Dallas,TX,75207");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212122985", "Marc", "Loomis", "M", "212122985@tut4life.ac.za", "9011035683083", "0639500339", "8739 Hudson St,Vashon,King,WA,98070");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212366411", "Shelby", "Sieren", "M", "212366411@tut4life.ac.za", "8511115410082", "0644350709", "383 Gunderman Rd #197,Coatesville,Chester,PA,19320");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212797853", "Forrest", "Squires", "M", "212797853@tut4life.ac.za", "9105265448083", "0652160745", "4441 Point Term Mkt,Philadelphia,Philadelphia,PA,19143");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212297469", "Oscar", "Fagen", "M", "212297469@tut4life.ac.za", "9603055266082", "0768820059", "2972 Lafayette Ave,Gardena,Los Angeles,CA,90248");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212155233", "Warner", "Amison", "M", "212155233@tut4life.ac.za", "9606265213082", "0771060461", "2140 Diamond Blvd,Rohnert Park,Sonoma,CA,94928");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212416822", "Arturo", "Krob", "M", "212416822@tut4life.ac.za", "9402145655084", "0729890660", "93 Redmond Rd #492,Orlando,Orange,FL,32803");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212578906", "Efrain", "Stlawrence", "M", "212578906@tut4life.ac.za", "8203045272084", "0618070123", "3989 Portage Tr,Escondido,San Diego,CA,92025");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212816475", "Giovanni", "Weymouth", "M", "212816475@tut4life.ac.za", "8905185479084", "0714870736", "1 Midway Rd,Westborough,Worcester,MA,1581");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212759121", "Alden", "Redinger", "M", "212759121@tut4life.ac.za", "8809115459082", "0667540511", "77132 Coon Rapids Blvd Nw,Conroe,Montgomery,TX,77301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212442321", "Ralph", "Ivory", "M", "212442321@tut4life.ac.za", "9203155230083", "0663880669", "755 Harbor Way,Milwaukee,Milwaukee,WI,53226");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212989617", "Bruce", "Zakrzewski", "M", "212989617@tut4life.ac.za", "8111185576084", "0645040030", "87 Sierra Rd,El Monte,Los Angeles,CA,91731");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212232448", "Dorian", "Slee", "M", "212232448@tut4life.ac.za", "9203265247084", "0648100659", "7667 S Hulen St #42,Yonkers,Westchester,NY,10701");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212131183", "Dante", "Crossley", "M", "212131183@tut4life.ac.za", "8504215307083", "0638490417", "75684 S Withlapopka Dr #32,Dallas,Dallas,TX,75227");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212385181", "Arnulfo", "Swinehart", "M", "212385181@tut4life.ac.za", "9209215048084", "06400890817", "5 Elmwood Park Blvd,Biloxi,Harrison,MS,39530");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212301766", "Arnoldo", "Clune", "M", "212301766@tut4life.ac.za", "8408105564084", "0742950279", "23 Palo Alto Sq,Miami,Miami-Dade,FL,33134");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212842507", "Dillon", "Blish", "M", "212842507@tut4life.ac.za", "9609185504084", "0672400358", "38062 E Main St,New York,New York,NY,10048");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212496817", "Dorsey", "Rostad", "M", "212496817@tut4life.ac.za", "9001205292084", "0675050878", "3958 S Dupont Hwy #7,Ramsey,Bergen,NJ,7446");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212121509", "Willy", "Fly", "M", "212121509@tut4life.ac.za", "8511125204084", "0659290177", "560 Civic Center Dr,Ann Arbor,Washtenaw,MI,48103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("212512301", "Johnie", "Goulart", "M", "212512301@tut4life.ac.za", "8007165531084", "0681830244", "3270 Dequindre Rd,Deer Park,Suffolk,NY,11729");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213679037", "Diego", "Cloninger", "M", "213679037@tut4life.ac.za", "8309115287083", "06200120073", "1 Garfield Ave #7,Canton,Stark,OH,44707");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213489480", "Seymour", "Rising", "M", "213489480@tut4life.ac.za", "9605075859082", "0672930429", "9122 Carpenter Ave,New Haven,New Haven,CT,6511");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213331655", "Dana", "Templin", "M", "213331655@tut4life.ac.za", "9501255690084", "0784950181", "48 Lenox St,Fairfax,Fairfax City,VA,22030");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213352928", "Robt", "Gwozdz", "M", "213352928@tut4life.ac.za", "9203075563082", "0756160148", "5 Little River Tpke,Wilmington,Middlesex,MA,1887");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213941104", "Marlon", "Kysar", "M", "213941104@tut4life.ac.za", "9010215429082", "0753160731", "3 N Groesbeck Hwy,Toledo,Lucas,OH,43613");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213131821", "Ezra", "Clatterbuck", "M", "213131821@tut4life.ac.za", "9209275790082", "0728300685", "37 N Elm St #916,Tacoma,Pierce,WA,98409");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213420735", "Jarred", "Mcsween", "M", "213420735@tut4life.ac.za", "9210225254082", "0651800690", "433 Westminster Blvd #590,Roseville,Placer,CA,95661");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213186755", "Ricardo", "Huey", "M", "213186755@tut4life.ac.za", "8402145159084", "0683180469", "66697 Park Pl #3224,Riverton,Fremont,WY,82501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213839982", "Chauncey", "Gowdy", "M", "213839982@tut4life.ac.za", "9209045119083", "0782750444", "96263 Greenwood Pl,Warren,Knox,ME,4864");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213943525", "Buster", "Ham", "M", "213943525@tut4life.ac.za", "9311225651083", "06600670489", "8 Mcarthur Ln,Richboro,Bucks,PA,18954");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213135959", "Ronald", "Hay", "M", "213135959@tut4life.ac.za", "8707185096082", "0752580826", "8 Fair Lawn Ave,Tampa,Hillsborough,FL,33614");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213533127", "Austin", "Bains", "M", "213533127@tut4life.ac.za", "9504245013083", "0786840671", "9 N 14th St,El Cajon,San Diego,CA,92020");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213764247", "Earle", "Kinnison", "M", "213764247@tut4life.ac.za", "8609215469083", "0633530842", "9 Vanowen St,College Station,Brazos,TX,77840");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213742973", "Christoper", "Kear", "M", "213742973@tut4life.ac.za", "9710125572083", "0711290050", "18 Waterloo Geneva Rd,Highland Park,Lake,IL,60035");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213273443", "Kyle", "Quade", "M", "213273443@tut4life.ac.za", "9105275285084", "07300680777", "506 S Hacienda Dr,Atlantic City,Atlantic,NJ,8401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213137358", "Nathan", "Dusseault", "M", "213137358@tut4life.ac.za", "8005215534083", "0768700165", "3732 Sherman Ave,Bridgewater,Somerset,NJ,8807");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213895712", "Hal", "Cornforth", "M", "213895712@tut4life.ac.za", "8305045881083", "0789310290", "25657 Live Oak St,Brooklyn,Kings,NY,11226");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213170802", "Leopoldo", "Glanton", "M", "213170802@tut4life.ac.za", "9407135737083", "0787710468", "4923 Carey Ave,Saint Louis,Saint Louis City,MO,63104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213697101", "Pedro", "Traverso", "M", "213697101@tut4life.ac.za", "8407225158084", "07500770893", "3196 S Rider Trl,Stockton,San Joaquin,CA,95207");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213701587", "Dale", "Hamdan", "M", "213701587@tut4life.ac.za", "8311055567082", "0723340081", "3 Railway Ave #75,Little Falls,Passaic,NJ,7424");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213588114", "Del", "Studley", "M", "213588114@tut4life.ac.za", "8809195477084", "0749150014", "87393 E Highland Rd,Indianapolis,Marion,IN,46220");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213691986", "Young", "Gibbens", "M", "213691986@tut4life.ac.za", "9705145035082", "0656120952", "67 E Chestnut Hill Rd,Seattle,King,WA,98133");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213379372", "Irvin", "Retzlaff", "M", "213379372@tut4life.ac.za", "9701175815082", "0674700909", "33 Lewis Rd #46,Burlington,Alamance,NC,27215");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213912112", "Zackary", "Ayer", "M", "213912112@tut4life.ac.za", "9008255846083", "0648740323", "8100 Jacksonville Rd #7,Hays,Ellis,KS,67601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213428358", "Anthony", "Corn", "M", "213428358@tut4life.ac.za", "9101075661082", "0674610130", "7 W Wabansia Ave #227,Orlando,Orange,FL,32822");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213260991", "Jamaal", "Cassella", "M", "213260991@tut4life.ac.za", "9105215311082", "0741550881", "25 Minters Chapel Rd #9,Minneapolis,Hennepin,MN,55401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213182752", "Darren", "Maguire", "M", "213182752@tut4life.ac.za", "9701045991084", "0624760654", "6882 Torresdale Ave,Columbia,Richland,SC,29201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213657119", "Monty", "Raia", "M", "213657119@tut4life.ac.za", "9304165130084", "0778000959", "985 E 6th Ave,Santa Rosa,Sonoma,CA,95407");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213509707", "Preston", "Larry", "M", "213509707@tut4life.ac.za", "8604205654083", "0629200613", "7 West Ave #1,Palatine,Cook,IL,60067");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213950092", "Isidro", "Ishida", "M", "213950092@tut4life.ac.za", "8511075367082", "0659510244", "26659 N 13th St,Costa Mesa,Orange,CA,92626");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213296689", "Fletcher", "Lamon", "M", "213296689@tut4life.ac.za", "8509145247082", "0737900639", "669 Packerland Dr #1438,Denver,Denver,CO,80212");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213710253", "Gilbert", "Donegan", "M", "213710253@tut4life.ac.za", "9103125478082", "0752740456", "759 Eldora St,New Haven,New Haven,CT,6515");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213935200", "Cesar", "Kulik", "M", "213935200@tut4life.ac.za", "8510205596082", "07600590221", "5 S Colorado Blvd #449,Bothell,Snohomish,WA,98021");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213884375", "Clint", "Dewalt", "M", "213884375@tut4life.ac.za", "9707215301082", "0658290483", "944 Gaither Dr,Strongsville,Cuyahoga,OH,44136");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213207693", "Tyron", "Ogles", "M", "213207693@tut4life.ac.za", "8704265891084", "0615650751", "66552 Malone Rd,Plaistow,Rockingham,NH,3865");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213736414", "Abe", "Hisle", "M", "213736414@tut4life.ac.za", "8606095957084", "07400980912", "77 Massillon Rd #822,Satellite Beach,Brevard,FL,32937");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213657887", "Riley", "Daye", "M", "213657887@tut4life.ac.za", "8407215633084", "0614520125", "25346 New Rd,New York,New York,NY,10016");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213246937", "Mauro", "Rumley", "M", "213246937@tut4life.ac.za", "9409105173082", "0719260816", "60 Fillmore Ave,Huntington Beach,Orange,CA,92647");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213251342", "Merle", "Melendrez", "M", "213251342@tut4life.ac.za", "8204145193083", "0742410782", "57 Haven Ave #90,Southfield,Oakland,MI,48075");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213492997", "Rick", "Hyder", "M", "213492997@tut4life.ac.za", "8811245304084", "0775120301", "6538 E Pomona St #60,Indianapolis,Marion,IN,46222");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213764955", "Dallas", "Tippin", "M", "213764955@tut4life.ac.za", "9205165573083", "0751590143", "6535 Joyce St,Wichita Falls,Wichita,TX,76301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213180617", "Florentino", "Panter", "M", "213180617@tut4life.ac.za", "8904215100084", "07800570574", "78112 Morris Ave,North Haven,New Haven,CT,6473");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213916615", "Wilford", "Saum", "M", "213916615@tut4life.ac.za", "9508195280084", "0779250033", "96950 Hidden Ln,Aberdeen,Harford,MD,21001");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213703442", "Javier", "Obey", "M", "213703442@tut4life.ac.za", "8907035775082", "0767160938", "3718 S Main St,New Orleans,Orleans,LA,70130");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213340682", "Shad", "Swain", "M", "213340682@tut4life.ac.za", "8402195576082", "0621710762", "9677 Commerce Dr,Richmond,Richmond City,VA,23219");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213678780", "David", "Dudley", "M", "213678780@tut4life.ac.za", "9411115986083", "0787510308", "5 Green Pond Rd #4,Southampton,Bucks,PA,18966");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213885527", "Troy", "Mcginnis", "M", "213885527@tut4life.ac.za", "9102135041082", "0682010968", "636 Commerce Dr #42,Shakopee,Scott,MN,55379");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213313808", "Fredric", "Archer", "M", "213313808@tut4life.ac.za", "8402095705084", "0769740111", "42744 Hamann Industrial Pky #82,Miami,Miami-Dade,FL,33136");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213914883", "Peter", "Stanley", "M", "213914883@tut4life.ac.za", "9202115113083", "0652320091", "1950 5th Ave,Milwaukee,Milwaukee,WI,53209");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213261615", "Domingo", "Lininger", "M", "213261615@tut4life.ac.za", "9805025175084", "0716260651", "61304 N French Rd,Somerset,Somerset,NJ,8873");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213290806", "Rhett", "Elsey", "M", "213290806@tut4life.ac.za", "9803155694083", "0666300687", "87 Imperial Ct #79,Fargo,Cass,ND,58102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213532646", "Junior", "Vang", "M", "213532646@tut4life.ac.za", "8008115321084", "0647360358", "94 W Dodge Rd,Carson City,Carson City,NV,89701");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213782125", "Alec", "Calvin", "M", "213782125@tut4life.ac.za", "9202225360084", "07700520132", "4 58th St #3519,Scottsdale,Maricopa,AZ,85254");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213193929", "Rodrigo", "Frierson", "M", "213193929@tut4life.ac.za", "8104255409083", "0746360693", "5221 Bear Valley Rd,Nashville,Davidson,TN,37211");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213806937", "Darrell", "Salmons", "M", "213806937@tut4life.ac.za", "9706175279083", "0730080743", "9648 S Main,Salisbury,Wicomico,MD,21801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213772564", "Sebastian", "Hammitt", "M", "213772564@tut4life.ac.za", "8703255402082", "0774110165", "7 S San Marcos Rd,New York,New York,NY,10004");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213738786", "Dillon", "Sohn", "M", "213738786@tut4life.ac.za", "9106165090083", "0767410991", "812 S Haven St,Amarillo,Randall,TX,79109");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213748947", "Victor", "Brumley", "M", "213748947@tut4life.ac.za", "9501165120084", "0715000509", "3882 W Congress St #799,Los Angeles,Los Angeles,CA,90016");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213546511", "Jamie", "Blakley", "M", "213546511@tut4life.ac.za", "9504115938083", "0674280496", "4 E Colonial Dr,La Mesa,San Diego,CA,91942");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213606423", "Mel", "Clubb", "M", "213606423@tut4life.ac.za", "8006275276084", "0649600518", "45 2nd Ave #9759,Atlanta,Fulton,GA,30328");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213505577", "Johnson", "Jasper", "M", "213505577@tut4life.ac.za", "9101015780082", "0636940773", "57254 Brickell Ave #372,Worcester,Worcester,MA,1602");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213568118", "Gonzalo", "Pippin", "M", "213568118@tut4life.ac.za", "8610195044084", "0731140643", "8977 Connecticut Ave Nw #3,Niles,Berrien,MI,49120");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213173568", "Eric", "Vierling", "M", "213173568@tut4life.ac.za", "8403125958082", "07300590296", "9 Waydell St,Fairfield,Essex,NJ,7004");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213170364", "Brain", "Favero", "M", "213170364@tut4life.ac.za", "8211025319083", "0672840602", "43 Huey P Long Ave,Lafayette,Lafayette,LA,70508");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213616980", "Vern", "Lossing", "M", "213616980@tut4life.ac.za", "8208275818084", "0628030938", "7563 Cornwall Rd #4462,Denver,Lancaster,PA,17517");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213621985", "Ricky", "Clyne", "M", "213621985@tut4life.ac.za", "8504125423084", "0735850065", "22 Bridle Ln,Valley Park,Saint Louis,MO,63088");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213879534", "Zack", "Dunneback", "M", "213879534@tut4life.ac.za", "8505195064082", "0738410349", "70099 E North Ave,Arlington,Tarrant,TX,76013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213963716", "Kirby", "Mitra", "M", "213963716@tut4life.ac.za", "8006025409084", "0752690610", "3211 E Northeast Loop,Tampa,Hillsborough,FL,33619");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213581732", "Tim", "Hazelrigg", "M", "213581732@tut4life.ac.za", "8902205323084", "0675440635", "26 Montgomery St,Atlanta,Fulton,GA,30328");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213461925", "Diego", "Rahim", "M", "213461925@tut4life.ac.za", "8403205536084", "0669580910", "13252 Lighthouse Ave,Cathedral City,Riverside,CA,92234");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213295625", "Modesto", "Claybrooks", "M", "213295625@tut4life.ac.za", "8506275680082", "0772480028", "206 Main St #2804,Lansing,Ingham,MI,48933");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213553574", "Teddy", "Vigue", "M", "213553574@tut4life.ac.za", "8111155099082", "0726820371", "96541 W Central Blvd,Phoenix,Maricopa,AZ,85034");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213930876", "Guadalupe", "Ferro", "M", "213930876@tut4life.ac.za", "9503265208084", "0777730532", "34 Saint George Ave #2,Bangor,Penobscot,ME,4401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213114437", "Dee", "Ellefson", "M", "213114437@tut4life.ac.za", "9204115467082", "0611410036", "47857 Coney Island Ave,Clinton,Prince Georges,MD,20735");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213617301", "Nelson", "Amore", "M", "213617301@tut4life.ac.za", "9006045089083", "0726890636", "8573 Lincoln Blvd,York,York,PA,17404");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213119925", "Gaylord", "Gade", "M", "213119925@tut4life.ac.za", "8007275440082", "0615070770", "596 Santa Maria Ave #7913,Mesquite,Dallas,TX,75150");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213994416", "Emile", "Ranck", "M", "213994416@tut4life.ac.za", "8008015292084", "0765800061", "3829 Ventura Blvd,Butte,Silver Bow,MT,59701");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("213676006", "Doyle", "Marrin", "M", "213676006@tut4life.ac.za", "8008225583083", "06300760857", "13 S Hacienda Dr,Livingston,Essex,NJ,7039");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214569134", "Henry", "Christain", "M", "214569134@tut4life.ac.za", "8102145779083", "0613700951", "40 9th Ave Sw #91,Waterford,Oakland,MI,48329");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214292333", "Luigi", "Hazard", "M", "214292333@tut4life.ac.za", "9005025610083", "0675050838", "2845 Boulder Crescent St,Cleveland,Cuyahoga,OH,44103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214479195", "Chas", "Danziger", "M", "214479195@tut4life.ac.za", "9207275575084", "0647900403", "33 State St,Abilene,Taylor,TX,79601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214318267", "Humberto", "Kost", "M", "214318267@tut4life.ac.za", "8008075544084", "0782040231", "2 S 15th St,Fort Worth,Tarrant,TX,76107");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214196603", "Delbert", "Rakestraw", "M", "214196603@tut4life.ac.za", "8607235279083", "0766040186", "4 Kohler Memorial Dr,Brooklyn,Kings,NY,11230");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214347153", "Harry", "Murphy", "M", "214347153@tut4life.ac.za", "9503125539083", "0741400933", "1 Rancho Del Mar Shopping C,Providence,Providence,RI,2903");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214606484", "Ernesto", "Mojica", "M", "214606484@tut4life.ac.za", "8511205254084", "0681200497", "3943 N Highland Ave,Lancaster,Lancaster,PA,17601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214767363", "Efrain", "Lira", "M", "214767363@tut4life.ac.za", "9204205809083", "0717810716", "5 Williams St,Johnston,Providence,RI,2919");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214721976", "Agustin", "Ishibashi", "M", "214721976@tut4life.ac.za", "9407045905083", "0672140709", "60 Old Dover Rd,Hialeah,Miami-Dade,FL,33014");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214777075", "Roy", "Mata", "M", "214777075@tut4life.ac.za", "9403195300083", "0639180592", "8 Sheridan Rd,Jersey City,Hudson,NJ,7304");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214949489", "Lino", "Whitworth", "M", "214949489@tut4life.ac.za", "9002135856084", "0755040625", "85092 Southern Blvd,San Antonio,Bexar,TX,78204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214905395", "King", "Berning", "M", "214905395@tut4life.ac.za", "9205075992084", "0668370802", "64 Newman Springs Rd E,Brooklyn,Kings,NY,11219");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214177096", "Chester", "Swinehart", "M", "214177096@tut4life.ac.za", "9305215337083", "0746060430", "48 Stratford Ave,Pomona,Los Angeles,CA,91768");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214518585", "Hubert", "Frink", "M", "214518585@tut4life.ac.za", "8203215715082", "0661610272", "80 Pittsford Victor Rd #9,Cleveland,Cuyahoga,OH,44103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214306570", "Stuart", "Liebold", "M", "214306570@tut4life.ac.za", "8507225987083", "07300270674", "87163 N Main Ave,New York,New York,NY,10013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214341940", "Mauro", "Linsley", "M", "214341940@tut4life.ac.za", "9002145395084", "0613630107", "393 Lafayette Ave,Richmond,Richmond City,VA,23219");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214273197", "Bret", "Henton", "M", "214273197@tut4life.ac.za", "9701055617082", "0746480526", "99 5th Ave #33,Trion,Chattooga,GA,30753");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214956850", "Karl", "Gargiulo", "M", "214956850@tut4life.ac.za", "8907165431083", "0615950756", "49 N Mays St,Broussard,Lafayette,LA,70518");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214655065", "Sammy", "Cheeseman", "M", "214655065@tut4life.ac.za", "8611055779083", "0786830377", "993 Washington Ave,Nutley,Essex,NJ,7110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214495008", "Jonathan", "Hyer", "M", "214495008@tut4life.ac.za", "8501035940084", "0724260197", "88 15th Ave Ne,Vestal,Broome,NY,13850");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214399552", "Douglas", "Rising", "M", "214399552@tut4life.ac.za", "9206205901082", "0685420075", "3381 E 40th Ave,Passaic,Passaic,NJ,7055");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214218098", "Emmett", "Neel", "M", "214218098@tut4life.ac.za", "8907145857082", "0789110380", "201 Ridgewood Rd,Moscow,Latah,ID,83843");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214885069", "Emerson", "Adelman", "M", "214885069@tut4life.ac.za", "9503035029083", "0644860631", "39 Moccasin Dr,San Francisco,San Francisco,CA,94104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214719123", "Major", "Relyea", "M", "214719123@tut4life.ac.za", "9205125388082", "0772090259", "4 Carroll St,North Attleboro,Bristol,MA,2760");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214635337", "Harvey", "Willcox", "M", "214635337@tut4life.ac.za", "8807075270084", "0665630221", "9581 E Arapahoe Rd,Rochester,Oakland,MI,48307");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214114988", "Chauncey", "Ryant", "M", "214114988@tut4life.ac.za", "8501095670084", "0644110693", "33 N Michigan Ave,Green Bay,Brown,WI,54301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214855149", "Scot", "Somerville", "M", "214855149@tut4life.ac.za", "8911115075084", "0611830102", "2 S Biscayne Blvd,Baltimore,Baltimore City,MD,21230");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214285367", "Florencio", "Steed", "M", "214285367@tut4life.ac.za", "9408225090082", "06200250816", "8 Us Highway 22,Colorado Springs,El Paso,CO,80937");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214667046", "Tony", "Simonetti", "M", "214667046@tut4life.ac.za", "9603175920083", "07600750752", "7422 Martin Ave #8,Toledo,Lucas,OH,43607");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214972371", "Johnny", "Earles", "M", "214972371@tut4life.ac.za", "8806125854082", "0652220171", "94 Chase Rd,Hyattsville,Prince Georges,MD,20785");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214805913", "Coy", "Santangelo", "M", "214805913@tut4life.ac.za", "8906015954082", "0762600233", "8139 I Hwy 10 #92,New Bedford,Bristol,MA,2745");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214513509", "Benjamin", "Burtner", "M", "214513509@tut4life.ac.za", "8707025471082", "0722950465", "5 Cabot Rd,Mc Lean,Fairfax,VA,22102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214384437", "Dominique", "Coburn", "M", "214384437@tut4life.ac.za", "8005045963084", "0732330930", "3387 Ryan Dr,Hanover,Anne Arundel,MD,21076");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214808687", "Stacey", "Charlie", "M", "214808687@tut4life.ac.za", "9810015354084", "0742510659", "3125 Packer Ave #9851,Austin,Travis,TX,78753");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214931365", "Travis", "Sugar", "M", "214931365@tut4life.ac.za", "8710085749082", "0774510947", "347 Chestnut St,Peoria,Maricopa,AZ,85381");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214996906", "Warren", "Mclain", "M", "214996906@tut4life.ac.za", "8409245933082", "0613300051", "8116 Mount Vernon Ave,Bucyrus,Crawford,OH,44820");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214412185", "Sam", "Mcelligott", "M", "214412185@tut4life.ac.za", "8704135787084", "0655600708", "8772 Old County Rd #5410,Kent,King,WA,98032");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214656993", "Wilson", "Capello", "M", "214656993@tut4life.ac.za", "9807155199083", "0621360382", "868 State St #38,Cincinnati,Hamilton,OH,45251");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214197457", "Sonny", "Vashon", "M", "214197457@tut4life.ac.za", "9504265695084", "0629980099", "772 W River Dr,Bloomington,Monroe,IN,47404");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214216385", "Earl", "Schuessler", "M", "214216385@tut4life.ac.za", "8103095180084", "0713950505", "73 W Barstow Ave,Arlington Heights,Cook,IL,60004");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214558696", "Luigi", "Urbain", "M", "214558696@tut4life.ac.za", "8509095556082", "0652150654", "61047 Mayfield Ave,Brooklyn,Kings,NY,11223");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214514890", "Robby", "Kemplin", "M", "214514890@tut4life.ac.za", "9811265596082", "0713950749", "2139 Santa Rosa Ave,Orlando,Orange,FL,32801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214426633", "Maxwell", "Sickles", "M", "214426633@tut4life.ac.za", "9006165849082", "0673220361", "598 43rd St,Beverly Hills,Los Angeles,CA,90210");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214543374", "Collin", "Serafin", "M", "214543374@tut4life.ac.za", "9507245783083", "0619550377", "70295 Pioneer Ct,Brandon,Hillsborough,FL,33511");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214609028", "Dalton", "Worm", "M", "214609028@tut4life.ac.za", "8004185111084", "0722570715", "92899 Kalakaua Ave,El Paso,El Paso,TX,79925");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214315247", "Nelson", "Manfredi", "M", "214315247@tut4life.ac.za", "9208045489083", "0771640478", "395 S 6th St #2,El Cajon,San Diego,CA,92020");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214286156", "Lewis", "Barrick", "M", "214286156@tut4life.ac.za", "8510055034083", "06300760159", "9506 Edgemore Ave,Bladensburg,Prince Georges,MD,20710");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214230676", "Dana", "Portwood", "M", "214230676@tut4life.ac.za", "8301055546084", "0628230467", "72119 S Walker Ave #63,Anaheim,Orange,CA,92801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214128020", "Terrance", "Hillin", "M", "214128020@tut4life.ac.za", "8907045909082", "0724880382", "369 Latham St #500,Saint Louis,Saint Louis City,MO,63102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214992997", "Kristopher", "Koster", "M", "214992997@tut4life.ac.za", "9706055196083", "0721810603", "3158 Runamuck Pl,Round Rock,Williamson,TX,78664");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214916037", "Bernard", "Bellamy", "M", "214916037@tut4life.ac.za", "8102165356083", "0664610594", "9 Plainsboro Rd #598,Greensboro,Guilford,NC,27409");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214527869", "Clair", "Metcalfe", "M", "214527869@tut4life.ac.za", "8008135996083", "0767310253", "8728 S Broad St,Coram,Suffolk,NY,11727");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214333923", "Guy", "Barris", "M", "214333923@tut4life.ac.za", "9508055529082", "0768460986", "2215 Prosperity Dr,Lyndhurst,Bergen,NJ,7071");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214117782", "Jerrold", "Grignon", "M", "214117782@tut4life.ac.za", "8003165530084", "06400360764", "1 S Pine St,Memphis,Shelby,TN,38112");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214546089", "Lou", "Bohling", "M", "214546089@tut4life.ac.za", "9310255388082", "07200300173", "187 Market St,Atlanta,Fulton,GA,30342");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214398768", "Valentin", "Atchley", "M", "214398768@tut4life.ac.za", "8711105867084", "0739310042", "94290 S Buchanan St,Pacifica,San Mateo,CA,94044");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214433380", "Michel", "Penny", "M", "214433380@tut4life.ac.za", "9406165611084", "0771360916", "7061 N 2nd St,Burnsville,Dakota,MN,55337");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214866727", "Thurman", "Bernal", "M", "214866727@tut4life.ac.za", "9211215119083", "0687860776", "10759 Main St,Scottsdale,Maricopa,AZ,85260");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214933324", "Willian", "Prokop", "M", "214933324@tut4life.ac.za", "9208185173084", "0618770692", "97 E 3rd St #9,Long Island City,Queens,NY,11101");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214874584", "Rayford", "Monty", "M", "214874584@tut4life.ac.za", "8811115771084", "0623180294", "82 Winsor St #54,Atlanta,Dekalb,GA,30340");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214813605", "Gino", "Crossman", "M", "214813605@tut4life.ac.za", "8102095871084", "0641720223", "41 Steel Ct,Northfield,Rice,MN,55057");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214581132", "Heriberto", "Bischoff", "M", "214581132@tut4life.ac.za", "9102045581084", "0618170401", "49440 Dearborn St,Norwalk,Fairfield,CT,6854");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214252023", "Rich", "Nuzzo", "M", "214252023@tut4life.ac.za", "9705025077083", "0765720983", "7 S Beverly Dr,Fort Wayne,Allen,IN,46802");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214790563", "Daren", "Carlock", "M", "214790563@tut4life.ac.za", "9106275112082", "0753530782", "919 Wall Blvd,Meridian,Lauderdale,MS,39307");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214976096", "Dion", "Lundblad", "M", "214976096@tut4life.ac.za", "9708055127084", "0638780811", "89 20th St E #779,Sterling Heights,Macomb,MI,48310");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214739142", "Amado", "Carico", "M", "214739142@tut4life.ac.za", "8711045275082", "07500570244", "721 Interstate 45 S,Colorado Springs,El Paso,CO,80919");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214897216", "Eliseo", "Hermansen", "M", "214897216@tut4life.ac.za", "9603135431083", "0611710003", "3 Lawton St,New York,New York,NY,10013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214870610", "Harley", "Mcmeen", "M", "214870610@tut4life.ac.za", "9401125177083", "0732860927", "38 Pleasant Hill Rd,Hayward,Alameda,CA,94545");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214898268", "Clayton", "Hornberger", "M", "214898268@tut4life.ac.za", "9409085527084", "0763660708", "45 E Acacia Ct,Chicago,Cook,IL,60624");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214291637", "Kareem", "Sieren", "M", "214291637@tut4life.ac.za", "8902255424082", "0661990725", "63728 Poway Rd #1,Scranton,Lackawanna,PA,18509");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214113322", "Morgan", "Strackbein", "M", "214113322@tut4life.ac.za", "8210265196082", "0644880946", "77 222 Dr,Oroville,Butte,CA,95965");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214697917", "Dirk", "Upton", "M", "214697917@tut4life.ac.za", "8602105216083", "0719110927", "53 W Carey St,Port Jervis,Orange,NY,12771");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214768287", "Cole", "Hilton", "M", "214768287@tut4life.ac.za", "9306225748083", "0661380004", "617 Nw 36th Ave,Brook Park,Cuyahoga,OH,44142");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214159835", "Eddy", "Freund", "M", "214159835@tut4life.ac.za", "8107255787084", "0788030078", "539 Coldwater Canyon Ave,Bloomfield,Essex,NJ,7003");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214143556", "Dino", "Such", "M", "214143556@tut4life.ac.za", "8405025570082", "0737510680", "735 Crawford Dr,Anchorage,Anchorage,AK,99501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214684081", "Andrew", "Larson", "M", "214684081@tut4life.ac.za", "9503275603084", "06600880207", "910 Rahway Ave,Philadelphia,Philadelphia,PA,19102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214258322", "Noel", "Bordelon", "M", "214258322@tut4life.ac.za", "8406245772084", "0772140568", "7 Tarrytown Rd,Cincinnati,Hamilton,OH,45217");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("214725191", "Kory", "Mcquaig", "M", "214725191@tut4life.ac.za", "8510245430084", "0634160218", "35433 Blake St #588,Gardena,Los Angeles,CA,90248");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215978089", "Ricky", "Minnick", "M", "215978089@tut4life.ac.za", "9706105074083", "0675760309", "29 Cherry St #7073,Des Moines,Polk,IA,50315");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215472771", "Mason", "Lena", "M", "215472771@tut4life.ac.za", "9507255220084", "0665370272", "810 N La Brea Ave,King of Prussia,Montgomery,PA,19406");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215991084", "Darius", "Stutsman", "M", "215991084@tut4life.ac.za", "8203275767082", "0783900552", "987 Main St,Raleigh,Wake,NC,27601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215466283", "Emil", "Degraw", "M", "215466283@tut4life.ac.za", "8510075519082", "0771320805", "36 Enterprise St Se,Richland,Benton,WA,99352");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215719728", "Stanley", "Grieco", "M", "215719728@tut4life.ac.za", "8310055857084", "0669320659", "8429 Miller Rd,Pelham,Westchester,NY,10803");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215422518", "Courtney", "Lauffer", "M", "215422518@tut4life.ac.za", "9402075974083", "0764710585", "5 W 7th St,Parkville,Baltimore,MD,21234");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215459161", "Adolfo", "Drummond", "M", "215459161@tut4life.ac.za", "8701255346082", "0783660382", "2 Flynn Rd,Hicksville,Nassau,NY,11801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215362289", "Emmett", "Mehta", "M", "215362289@tut4life.ac.za", "9109165198082", "07200290128", "2094 Ne 36th Ave,Worcester,Worcester,MA,1603");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215727115", "Toney", "Dostie", "M", "215727115@tut4life.ac.za", "8009065937084", "0616410256", "649 Tulane Ave,Tulsa,Tulsa,OK,74105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215112301", "Valentine", "Dales", "M", "215112301@tut4life.ac.za", "8507115575082", "0620030807", "2094 Montour Blvd,Muskegon,Muskegon,MI,49442");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215360968", "Christena", "Kintner", "M", "215360968@tut4life.ac.za", "8607105068082", "0715610029", "393 Hammond Dr,Lafayette,Lafayette,LA,70506");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215254887", "Emilie", "Richey", "M", "215254887@tut4life.ac.za", "9304245441082", "0668290963", "8590 Lake Lizzie Dr,Bowling Green,Wood,OH,43402");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215142338", "Telma", "Rivera", "M", "215142338@tut4life.ac.za", "8502105078083", "0713240007", "87895 Concord Rd,La Mesa,San Diego,CA,91942");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215826735", "Stephenie", "Palen", "M", "215826735@tut4life.ac.za", "8403235563083", "0743620126", "46314 Route 130,Bridgeport,Fairfield,CT,6610");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215159668", "Venessa", "Bozek", "M", "215159668@tut4life.ac.za", "9007035752082", "0786570964", "4 Cowesett Ave,Kearny,Hudson,NJ,7032");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215553009", "Tara", "Collazo", "M", "215553009@tut4life.ac.za", "8601215844084", "0721820290", "95 Main Ave #2,Barberton,Summit,OH,44203");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215181218", "Margherita", "Kirkman", "M", "215181218@tut4life.ac.za", "9307065540084", "0645050325", "28 S 7th St #2824,Englewood,Bergen,NJ,7631");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215853695", "Jada", "Carlucci", "M", "215853695@tut4life.ac.za", "8508255784083", "07600270615", "79 S Howell Ave,Grand Rapids,Kent,MI,49546");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215596560", "Shirly", "Hopps", "M", "215596560@tut4life.ac.za", "8704145085082", "0624590991", "36 Lancaster Dr Se,Pearl,Rankin,MS,39208");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215754703", "Tarra", "Maston", "M", "215754703@tut4life.ac.za", "8501015244083", "0713910542", "2759 Livingston Ave,Memphis,Shelby,TN,38118");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215761655", "Dannielle", "Papke", "M", "215761655@tut4life.ac.za", "8804045917082", "0661400975", "17 Jersey Ave,Englewood,Arapahoe,CO,80110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215967241", "Margarett", "Woolsey", "M", "215967241@tut4life.ac.za", "8407205079082", "06300520136", "2 W Grand Ave,Memphis,Shelby,TN,38112");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215328634", "Jacki", "Deasy", "M", "215328634@tut4life.ac.za", "8006175475084", "0626680652", "18 Coronado Ave #563,Pasadena,Los Angeles,CA,91106");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215313308", "Galina", "Basil", "M", "215313308@tut4life.ac.za", "8506245490084", "0712300584", "72 Beechwood Ter,Chicago,Cook,IL,60657");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215703639", "Kristian", "Roberie", "M", "215703639@tut4life.ac.za", "8106015575083", "0663340954", "92 Broadway,Astoria,Queens,NY,11103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215835320", "Christina", "Stainbrook", "M", "215835320@tut4life.ac.za", "9803085921082", "0687340652", "39 Franklin Ave,Richland,Benton,WA,99352");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215676100", "Jessenia", "Konecny", "M", "215676100@tut4life.ac.za", "9806205088082", "0766860247", "4 Iwaena St,Baltimore,Baltimore City,MD,21202");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215578284", "Basilia", "Nail", "M", "215578284@tut4life.ac.za", "8206135604083", "0754840022", "32820 Corkwood Rd,Newark,Essex,NJ,7104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215396967", "Regine", "Nagy", "M", "215396967@tut4life.ac.za", "9708235044083", "0711960957", "34 Raritan Center Pky,Bellflower,Los Angeles,CA,90706");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215493933", "Pearly", "Damiano", "M", "215493933@tut4life.ac.za", "8607265489083", "0757440938", "6201 S Nevada Ave,Toms River,Ocean,NJ,8755");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215745357", "Karol", "Oster", "M", "215745357@tut4life.ac.za", "8101125449083", "0647890682", "78 Maryland Dr #146,Denville,Morris,NJ,7834");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215256530", "Jolynn", "Deibel", "M", "215256530@tut4life.ac.za", "8808095100083", "0636510694", "76598 Rd  I 95 #1,Denver,Denver,CO,80216");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215253015", "Celestine", "Marrin", "M", "215253015@tut4life.ac.za", "9009225931084", "0655210973", "1610 14th St Nw,Newport News,Newport News City,VA,23608");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215934639", "Jeneva", "Roger", "M", "215934639@tut4life.ac.za", "9406095915082", "0672890386", "86350 Roszel Rd,Phoenix,Maricopa,AZ,85012");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215979172", "Talia", "Riffle", "M", "215979172@tut4life.ac.za", "8406225906083", "0652550843", "1644 Clove Rd,Miami,Miami-Dade,FL,33155");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215289584", "Rosanna", "Pasco", "M", "215289584@tut4life.ac.za", "9701215895083", "0732780491", "9 W Central Ave,Phoenix,Maricopa,AZ,85013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215467083", "Priscila", "Hafley", "M", "215467083@tut4life.ac.za", "9809215003083", "0784080406", "27846 Lafayette Ave,Oak Hill,Volusia,FL,32759");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215652863", "Dona", "Fichter", "M", "215652863@tut4life.ac.za", "9803205740083", "0719430901", "10276 Brooks St,San Francisco,San Francisco,CA,94105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215818615", "Chloe", "Bureau", "M", "215818615@tut4life.ac.za", "8508215505083", "0667740408", "1 Century Park E,San Diego,San Diego,CA,92110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215133892", "Grazyna", "Bargas", "M", "215133892@tut4life.ac.za", "9009275456082", "0647580780", "9 State Highway 57 #22,Jersey City,Hudson,NJ,7306");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215239465", "Joanna", "Kiesling", "M", "215239465@tut4life.ac.za", "8310075743082", "0663320029", "4 S Washington Ave,San Bernardino,San Bernardino,CA,92410");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215391449", "Venus", "Dorazio", "M", "215391449@tut4life.ac.za", "8705195977084", "06300510249", "25 Se 176th Pl,Cambridge,Middlesex,MA,2138");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215782653", "Marylynn", "Acklin", "M", "215782653@tut4life.ac.za", "8201105451082", "0722870261", "105 Richmond Valley Rd,Escondido,San Diego,CA,92025");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215351599", "Sharon", "Vida", "M", "215351599@tut4life.ac.za", "8402215584082", "0644480021", "22 Spruce St #595,Gardena,Los Angeles,CA,90248");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215148788", "Amiee", "Gayle", "M", "215148788@tut4life.ac.za", "8709035180083", "0721040998", "2 W Beverly Blvd,Harrisburg,Dauphin,PA,17110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215306200", "Nicol", "Kramer", "M", "215306200@tut4life.ac.za", "8706015131082", "0624800776", "72 Southern Blvd,Mesa,Maricopa,AZ,85204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215830761", "Vallie", "Pepin", "M", "215830761@tut4life.ac.za", "8701215183082", "0726280109", "1 Washington St,Lake Worth,Palm Beach,FL,33461");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215778085", "Freda", "Christen", "M", "215778085@tut4life.ac.za", "9501065174084", "0749140188", "90177 N 55th Ave,Nashville,Davidson,TN,37211");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215703803", "Carisa", "Jolliff", "M", "215703803@tut4life.ac.za", "8104015108084", "0771410615", "9 Tower Ave,Burlington,Boone,KY,41005");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215564529", "Brook", "Woodman", "M", "215564529@tut4life.ac.za", "9808065772082", "0639950899", "278 Bayview Ave,Milan,Monroe,MI,48160");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215628698", "Debra", "Vantassell", "M", "215628698@tut4life.ac.za", "9011075444083", "0633150846", "80312 W 32nd St,Conroe,Montgomery,TX,77301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215554098", "Alyse", "Tulley", "M", "215554098@tut4life.ac.za", "8504035038084", "06100400640", "82 Us Highway 46,Clifton,Passaic,NJ,7011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215483317", "Steffanie", "Lauritsen", "M", "215483317@tut4life.ac.za", "8101165731084", "0728210420", "4 Stovall St #72,Union City,Hudson,NJ,7087");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215969347", "Whitley", "Bruen", "M", "215969347@tut4life.ac.za", "8701175106082", "06100410587", "19 Amboy Ave,Miami,Miami-Dade,FL,33142");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215801104", "Many", "Pulley", "M", "215801104@tut4life.ac.za", "8804035846083", "0765640170", "63 Smith Ln #8343,Moss,Clay,TN,38575");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215605177", "Candi", "Gratton", "M", "215605177@tut4life.ac.za", "8504135746082", "0654020513", "11360 S Halsted St,Santa Ana,Orange,CA,92705");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215660708", "Kym", "Conkling", "M", "215660708@tut4life.ac.za", "9010245202082", "0636910998", "26849 Jefferson Hwy,Rolling Meadows,Cook,IL,60008");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215815241", "Darline", "Barnum", "M", "215815241@tut4life.ac.za", "8005245018082", "0679010744", "2500 Pringle Rd Se #508,Hatfield,Montgomery,PA,19440");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215100006", "Peggy", "Goodrow", "M", "215100006@tut4life.ac.za", "9108245843082", "0615400852", "65 Mountain View Dr,Whippany,Morris,NJ,7981");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215658276", "Lynnette", "Leatherwood", "M", "215658276@tut4life.ac.za", "9206275620084", "0754110907", "1 N San Saba,Erie,Erie,PA,16501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215623740", "Davida", "Fuss", "M", "215623740@tut4life.ac.za", "9807115421083", "0674930456", "51120 State Route 18,Salt Lake City,Salt Lake,UT,84115");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215409901", "Qiana", "Pilcher", "M", "215409901@tut4life.ac.za", "9108145471084", "07800360038", "1482 College Ave,Fayetteville,Cumberland,NC,28301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215268732", "Adina", "Boivin", "M", "215268732@tut4life.ac.za", "9310115066082", "0654870241", "4119 Metropolitan Dr,Los Angeles,Los Angeles,CA,90021");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215225700", "Janis", "Quach", "M", "215225700@tut4life.ac.za", "8711055540084", "0612780437", "2167 Sierra Rd,East Lansing,Ingham,MI,48823");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215793103", "Robena", "Delgadillo", "M", "215793103@tut4life.ac.za", "9001145917082", "06100130492", "6 Sunrise Ave,Utica,Oneida,NY,13501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215162008", "Ozie", "Iversen", "M", "215162008@tut4life.ac.za", "8905205364082", "0721860308", "55713 Lake City Hwy,South Bend,St Joseph,IN,46601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215958867", "Jada", "Lamberti", "M", "215958867@tut4life.ac.za", "8603095484083", "0654930971", "75698 N Fiesta Blvd,Orlando,Orange,FL,32806");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215369503", "Concha", "Berti", "M", "215369503@tut4life.ac.za", "9107085005083", "0763300461", "88 Sw 28th Ter,Harrison,Hudson,NJ,7029");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215956946", "Tiffani", "Freeney", "M", "215956946@tut4life.ac.za", "8911055135083", "0682740798", "7 Flowers Rd #403,Trenton,Mercer,NJ,8611");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215834269", "Ai", "Mcmanus", "M", "215834269@tut4life.ac.za", "9611145216082", "0737670025", "4 Nw 12th St #3849,Madison,Dane,WI,53717");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215630321", "Susannah", "Wasielewski", "M", "215630321@tut4life.ac.za", "8901065557083", "0681070714", "2 A Kelley Dr,Katonah,Westchester,NY,10536");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215732128", "Hyo", "Flax", "M", "215732128@tut4life.ac.za", "9508105499082", "06300800180", "88827 Frankford Ave,Greensboro,Guilford,NC,27401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215219155", "Charlott", "Myler", "M", "215219155@tut4life.ac.za", "8608055266082", "0761150051", "2 W Scyene Rd #3,Baltimore,Baltimore City,MD,21217");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215253163", "Princess", "Kuhns", "M", "215253163@tut4life.ac.za", "9604245456083", "0748020613", "62260 Park Stre,Monroe Township,Middlesex,NJ,8831");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215756688", "Ettie", "Burgo", "M", "215756688@tut4life.ac.za", "9607035738083", "0626130981", "3424 29th St Se,Kerrville,Kerr,TX,78028");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215253555", "Araceli", "Hazlitt", "M", "215253555@tut4life.ac.za", "8407255259083", "0678820925", "35 E Main St #43,Elk Grove Village,Cook,IL,60007");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215913229", "Liz", "Olah", "M", "215913229@tut4life.ac.za", "9501155343084", "0658520898", "7163 W Clark Rd,Freehold,Monmouth,NJ,7728");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("215610032", "Nancy", "Winton", "M", "215610032@tut4life.ac.za", "9006135689083", "0675980417", "21575 S Apple Creek Rd,Omaha,Douglas,NE,68124");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216138387", "Yvonne", "Geoghegan", "M", "216138387@tut4life.ac.za", "8002245684083", "0634130611", "747 Leonis Blvd,Annandale,Fairfax,VA,22003");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216375360", "Beatrice", "Higgins", "M", "216375360@tut4life.ac.za", "9110205949082", "07700150752", "13 Gunnison St,Plano,Collin,TX,75075");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216589039", "Kaitlin", "Cottrell", "M", "216589039@tut4life.ac.za", "8508125592084", "0771380202", "18 3rd Ave,New York,New York,NY,10016");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216840859", "Lovella", "Matney", "M", "216840859@tut4life.ac.za", "8406245378083", "0761760858", "62 W Austin St,Syosset,Nassau,NY,11791");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216287810", "Chae", "Goudreau", "M", "216287810@tut4life.ac.za", "8103175457084", "0767540499", "177 S Rider Trl #52,Crystal River,Citrus,FL,34429");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216137533", "Francina", "Arakaki", "M", "216137533@tut4life.ac.za", "9410245322083", "0637160287", "2 W Mount Royal Ave,Fortville,Hancock,IN,46040");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216772177", "Nu", "Primus", "M", "216772177@tut4life.ac.za", "8203225940083", "0719910331", "1953 Telegraph Rd,Saint Joseph,Buchanan,MO,64504");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216267262", "Merrilee", "Mabie", "M", "216267262@tut4life.ac.za", "9202155639084", "0711210956", "63517 Dupont St,Jackson,Hinds,MS,39211");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216640618", "Tracee", "Fava", "M", "216640618@tut4life.ac.za", "8008055222082", "0745910560", "5 E Truman Rd,Abilene,Taylor,TX,79602");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216218571", "Lizbeth", "Douglas", "M", "216218571@tut4life.ac.za", "9710045832083", "0784520652", "251 Park Ave #979,Saratoga,Santa Clara,CA,95070");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216618456", "Glady", "Hibbard", "M", "216618456@tut4life.ac.za", "9205095055084", "0753020234", "43496 Commercial Dr #29,Cherry Hill,Camden,NJ,8003");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216723638", "Brandi", "Reny", "M", "216723638@tut4life.ac.za", "8309195479082", "06500520565", "2184 Worth St,Hayward,Alameda,CA,94545");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216412846", "Marguerita", "Moots", "M", "216412846@tut4life.ac.za", "9005065719083", "06700430710", "50126 N Plankinton Ave,Longwood,Seminole,FL,32750");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216903397", "Dovie", "Pepe", "M", "216903397@tut4life.ac.za", "9106115727084", "0753230105", "38773 Gravois Ave,Cheyenne,Laramie,WY,82001");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216355006", "Khalilah", "Hollister", "M", "216355006@tut4life.ac.za", "8104245919084", "0622030632", "16452 Greenwich St,Garden City,Nassau,NY,11530");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216515174", "Kelli", "Pelc", "M", "216515174@tut4life.ac.za", "9510095074082", "0622240593", "40 Cambridge Ave,Madison,Dane,WI,53715");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216112571", "Deborah", "Silguero", "M", "216112571@tut4life.ac.za", "9007105940082", "0763770957", "20113 4th Ave E,Kearny,Hudson,NJ,7032");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216901697", "Min", "Hawkin", "M", "216901697@tut4life.ac.za", "8311085369084", "0625630279", "6 Ridgewood Center Dr,Old Forge,Lackawanna,PA,18518");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216490459", "Corine", "Berney", "M", "216490459@tut4life.ac.za", "9005075662084", "0761640307", "469 Outwater Ln,San Diego,San Diego,CA,92126");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216445245", "Alysha", "Lobue", "M", "216445245@tut4life.ac.za", "8609035115083", "06400170925", "62 Monroe St,Thousand Palms,Riverside,CA,92276");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216362665", "Karmen", "Sisler", "M", "216362665@tut4life.ac.za", "9503215669083", "0686040933", "3338 A Lockport Pl #6,Margate City,Atlantic,NJ,8402");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216685911", "Olevia", "Dooley", "M", "216685911@tut4life.ac.za", "9211055158082", "0723400677", "9 Hwy,Providence,Providence,RI,2906");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216115940", "Alejandra", "Pharis", "M", "216115940@tut4life.ac.za", "9001165547084", "0648540167", "8284 Hart St,Abilene,Dickinson,KS,67410");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216970193", "Agripina", "Scott", "M", "216970193@tut4life.ac.za", "8208275856084", "0636660579", "5 Washington St #1,Roseville,Placer,CA,95678");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216665076", "Julieta", "Kettner", "M", "216665076@tut4life.ac.za", "8103185209082", "0745700931", "8 S Haven St,Daytona Beach,Volusia,FL,32114");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216564412", "Nikole", "Correira", "M", "216564412@tut4life.ac.za", "8204255359082", "0666690194", "9 Front St,Washington,District of Columbia,DC,20001");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216312722", "Starr", "Blow", "M", "216312722@tut4life.ac.za", "8005275715083", "0619560302", "1933 Packer Ave #2,Novato,Marin,CA,94945");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216199881", "Shanel", "Overholt", "M", "216199881@tut4life.ac.za", "8909025974082", "0734140364", "67 Rv Cent,Boise,Ada,ID,83709");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216899542", "Leta", "Gaudette", "M", "216899542@tut4life.ac.za", "9611185727082", "0777270627", "2 Sw Nyberg Rd,Elkhart,Elkhart,IN,46514");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216845821", "Dede", "Carmen", "M", "216845821@tut4life.ac.za", "9206105056082", "0662610939", "89992 E 15th St,Alliance,Box Butte,NE,69301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216272418", "Elna", "Pelham", "M", "216272418@tut4life.ac.za", "8803235241083", "0742880932", "61556 W 20th Ave,Seattle,King,WA,98104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216566972", "Alessandra", "Lipps", "M", "216566972@tut4life.ac.za", "8604095214084", "0717850239", "63 E Aurora Dr,Orlando,Orange,FL,32804");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216935069", "Jayme", "Hegg", "M", "216935069@tut4life.ac.za", "8604135800082", "0714180992", "96541 W Central Blvd,Phoenix,Maricopa,AZ,85034");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216962970", "Trudie", "Rowlands", "M", "216962970@tut4life.ac.za", "8106055273082", "0761010409", "34 Saint George Ave #2,Bangor,Penobscot,ME,4401");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216989621", "Kimberli", "Olive", "M", "216989621@tut4life.ac.za", "9009035117083", "0731670129", "47857 Coney Island Ave,Clinton,Prince Georges,MD,20735");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216442027", "Leeanne", "Tewksbury", "M", "216442027@tut4life.ac.za", "9601015988084", "0627940021", "8573 Lincoln Blvd,York,York,PA,17404");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216659793", "Sheryl", "Doll", "M", "216659793@tut4life.ac.za", "9804275331084", "0771320032", "596 Santa Maria Ave #7913,Mesquite,Dallas,TX,75150");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216683132", "Helaine", "Beckford", "M", "216683132@tut4life.ac.za", "8005075525082", "0752200356", "3829 Ventura Blvd,Butte,Silver Bow,MT,59701");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216834042", "Leeann", "Holguin", "M", "216834042@tut4life.ac.za", "9604175046082", "0614600183", "13 S Hacienda Dr,Livingston,Essex,NJ,7039");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216979350", "Sigrid", "Croff", "M", "216979350@tut4life.ac.za", "9501225273083", "0628190776", "40 9th Ave Sw #91,Waterford,Oakland,MI,48329");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216516275", "Joaquina", "Frick", "M", "216516275@tut4life.ac.za", "8402135328082", "0747710486", "2845 Boulder Crescent St,Cleveland,Cuyahoga,OH,44103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216385370", "Cathrine", "Vanderpol", "M", "216385370@tut4life.ac.za", "9705065352084", "0766800927", "33 State St,Abilene,Taylor,TX,79601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216111595", "Lea", "Malson", "M", "216111595@tut4life.ac.za", "8711025207083", "0685880975", "2 S 15th St,Fort Worth,Tarrant,TX,76107");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216183899", "Victorina", "Bresnahan", "M", "216183899@tut4life.ac.za", "9305255679083", "0668070285", "4 Kohler Memorial Dr,Brooklyn,Kings,NY,11230");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216224412", "Lilla", "Chaffin", "M", "216224412@tut4life.ac.za", "8411245202084", "0748740435", "1 Rancho Del Mar Shopping C,Providence,Providence,RI,2903");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216476315", "Zella", "Messing", "M", "216476315@tut4life.ac.za", "9010215840084", "07300810273", "3943 N Highland Ave,Lancaster,Lancaster,PA,17601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216196093", "Eboni", "Mccumber", "M", "216196093@tut4life.ac.za", "9709115878084", "0645460524", "5 Williams St,Johnston,Providence,RI,2919");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216371581", "Zada", "Cuffee", "M", "216371581@tut4life.ac.za", "9605225184082", "06400830851", "60 Old Dover Rd,Hialeah,Miami-Dade,FL,33014");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216705267", "Britteny", "Rolon", "M", "216705267@tut4life.ac.za", "8002165339084", "0776780052", "8 Sheridan Rd,Jersey City,Hudson,NJ,7304");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216940484", "Cinderella", "Ikner", "M", "216940484@tut4life.ac.za", "9206055153084", "0745810985", "85092 Southern Blvd,San Antonio,Bexar,TX,78204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216216845", "Sally", "Justice", "M", "216216845@tut4life.ac.za", "9604045285082", "0721020579", "64 Newman Springs Rd E,Brooklyn,Kings,NY,11219");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216534819", "Joanne", "Lugar", "M", "216534819@tut4life.ac.za", "8303175275082", "0762370054", "48 Stratford Ave,Pomona,Los Angeles,CA,91768");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216995538", "Gabrielle", "Callejas", "M", "216995538@tut4life.ac.za", "9406165519082", "0632180636", "80 Pittsford Victor Rd #9,Cleveland,Cuyahoga,OH,44103");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216332103", "Rachal", "Larmon", "M", "216332103@tut4life.ac.za", "9502205599084", "07600210273", "87163 N Main Ave,New York,New York,NY,10013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216510518", "Ola", "Burdett", "M", "216510518@tut4life.ac.za", "9302165602084", "0749330901", "393 Lafayette Ave,Richmond,Richmond City,VA,23219");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216294606", "Stefany", "Dietrich", "M", "216294606@tut4life.ac.za", "8406275866082", "0637590612", "99 5th Ave #33,Trion,Chattooga,GA,30753");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216815924", "Herta", "Walton", "M", "216815924@tut4life.ac.za", "9706095591083", "0615060001", "49 N Mays St,Broussard,Lafayette,LA,70518");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216359207", "Veronique", "Bettencourt", "M", "216359207@tut4life.ac.za", "9311175268082", "0769250987", "993 Washington Ave,Nutley,Essex,NJ,7110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216933259", "Corina", "Hernandez", "M", "216933259@tut4life.ac.za", "8704125078082", "0731040854", "88 15th Ave Ne,Vestal,Broome,NY,13850");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216380448", "Despina", "Skeen", "M", "216380448@tut4life.ac.za", "9705135907083", "0727770975", "3381 E 40th Ave,Passaic,Passaic,NJ,7055");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216194426", "Lue", "Montz", "M", "216194426@tut4life.ac.za", "9711175975083", "0639290723", "201 Ridgewood Rd,Moscow,Latah,ID,83843");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216382304", "Destiny", "Frances", "M", "216382304@tut4life.ac.za", "8809195718083", "06500460243", "39 Moccasin Dr,San Francisco,San Francisco,CA,94104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216937954", "Nereida", "Rhodus", "M", "216937954@tut4life.ac.za", "9808195648082", "0634860688", "4 Carroll St,North Attleboro,Bristol,MA,2760");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216533235", "Karan", "Backus", "M", "216533235@tut4life.ac.za", "9711245422082", "0647000443", "9581 E Arapahoe Rd,Rochester,Oakland,MI,48307");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216663935", "Una", "Dymond", "M", "216663935@tut4life.ac.za", "8705155705083", "0627200757", "33 N Michigan Ave,Green Bay,Brown,WI,54301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216785808", "Magan", "Viger", "M", "216785808@tut4life.ac.za", "8306025912082", "0732450964", "2 S Biscayne Blvd,Baltimore,Baltimore City,MD,21230");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216706842", "Nikki", "Moritz", "M", "216706842@tut4life.ac.za", "9403075002082", "0748870264", "8 Us Highway 22,Colorado Springs,El Paso,CO,80937");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216595452", "Delena", "Hust", "M", "216595452@tut4life.ac.za", "9707175536084", "0751110981", "7422 Martin Ave #8,Toledo,Lucas,OH,43607");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216490388", "Maragret", "Brassfield", "M", "216490388@tut4life.ac.za", "9109265318082", "0639030969", "94 Chase Rd,Hyattsville,Prince Georges,MD,20785");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216916654", "Rachael", "Cousin", "M", "216916654@tut4life.ac.za", "8409215492084", "0721380538", "8139 I Hwy 10 #92,New Bedford,Bristol,MA,2745");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216106803", "Gennie", "Matherne", "M", "216106803@tut4life.ac.za", "8506065083084", "0659180508", "5 Cabot Rd,Mc Lean,Fairfax,VA,22102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216188005", "Jaclyn", "Romans", "M", "216188005@tut4life.ac.za", "8203155537084", "0713130922", "3387 Ryan Dr,Hanover,Anne Arundel,MD,21076");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216899342", "Dawne", "Lesser", "M", "216899342@tut4life.ac.za", "9011105637082", "0628310124", "3125 Packer Ave #9851,Austin,Travis,TX,78753");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216931940", "Sha", "Yarrington", "M", "216931940@tut4life.ac.za", "8807275689084", "0725200843", "347 Chestnut St,Peoria,Maricopa,AZ,85381");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216170800", "Elicia", "Zaremba", "M", "216170800@tut4life.ac.za", "8805245998083", "0782050232", "8116 Mount Vernon Ave,Bucyrus,Crawford,OH,44820");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216960933", "Shaunna", "Lezama", "M", "216960933@tut4life.ac.za", "9503185678083", "0631000569", "8772 Old County Rd #5410,Kent,King,WA,98032");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216664232", "Myrna", "Delancey", "M", "216664232@tut4life.ac.za", "9409165417082", "0652880839", "868 State St #38,Cincinnati,Hamilton,OH,45251");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("216710459", "Latoya", "Pasha", "M", "216710459@tut4life.ac.za", "9006235369083", "07200470357", "772 W River Dr,Bloomington,Monroe,IN,47404");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217883793", "Lizette", "Landen", "M", "217883793@tut4life.ac.za", "9807055363083", "0739200296", "73 W Barstow Ave,Arlington Heights,Cook,IL,60004");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217564362", "Allyson", "Gethers", "M", "217564362@tut4life.ac.za", "8011065026083", "0768110454", "61047 Mayfield Ave,Brooklyn,Kings,NY,11223");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217604847", "Janis", "Isler", "M", "217604847@tut4life.ac.za", "9205155560082", "0633690281", "2139 Santa Rosa Ave,Orlando,Orange,FL,32801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217821785", "Bruna", "Melcher", "M", "217821785@tut4life.ac.za", "8509195130082", "0626280220", "598 43rd St,Beverly Hills,Los Angeles,CA,90210");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217604015", "Doreatha", "Cesario", "M", "217604015@tut4life.ac.za", "9211095177082", "0652520817", "70295 Pioneer Ct,Brandon,Hillsborough,FL,33511");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217654492", "Wynell", "Hilker", "M", "217654492@tut4life.ac.za", "8607225677082", "07500470605", "92899 Kalakaua Ave,El Paso,El Paso,TX,79925");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217403380", "Melinda", "Schank", "M", "217403380@tut4life.ac.za", "9608145513083", "0632510087", "395 S 6th St #2,El Cajon,San Diego,CA,92020");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217961909", "Opal", "Pinkett", "M", "217961909@tut4life.ac.za", "8007255376083", "07600400376", "9506 Edgemore Ave,Bladensburg,Prince Georges,MD,20710");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217285460", "Rea", "Balentine", "M", "217285460@tut4life.ac.za", "8107185580083", "0769450022", "72119 S Walker Ave #63,Anaheim,Orange,CA,92801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217376481", "Kandy", "Hileman", "M", "217376481@tut4life.ac.za", "8201245054083", "0614980810", "369 Latham St #500,Saint Louis,Saint Louis City,MO,63102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217990921", "Charlott", "Shockley", "M", "217990921@tut4life.ac.za", "8602245026082", "0676960419", "3158 Runamuck Pl,Round Rock,Williamson,TX,78664");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217223908", "Gwyn", "Barrio", "M", "217223908@tut4life.ac.za", "9108115891082", "0639740912", "9 Plainsboro Rd #598,Greensboro,Guilford,NC,27409");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217884447", "Cornelia", "Davy", "M", "217884447@tut4life.ac.za", "8603225507083", "0617090838", "8728 S Broad St,Coram,Suffolk,NY,11727");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217171253", "Reta", "Kaler", "M", "217171253@tut4life.ac.za", "8303115149083", "0686890637", "2215 Prosperity Dr,Lyndhurst,Bergen,NJ,7071");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217447276", "Jenelle", "Lynch", "M", "217447276@tut4life.ac.za", "8006245163084", "0746230989", "1 S Pine St,Memphis,Shelby,TN,38112");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217685627", "Pamela", "Atchinson", "M", "217685627@tut4life.ac.za", "8007265522084", "0713860352", "187 Market St,Atlanta,Fulton,GA,30342");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217598921", "Zella", "Primavera", "M", "217598921@tut4life.ac.za", "8110105609082", "0732850250", "94290 S Buchanan St,Pacifica,San Mateo,CA,94044");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217801012", "Latanya", "Bodily", "M", "217801012@tut4life.ac.za", "9204155996083", "0673460615", "7061 N 2nd St,Burnsville,Dakota,MN,55337");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217675024", "Marcene", "Nottingham", "M", "217675024@tut4life.ac.za", "8708065115082", "0652890862", "10759 Main St,Scottsdale,Maricopa,AZ,85260");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217499740", "Ghislaine", "Jeffrey", "M", "217499740@tut4life.ac.za", "9004035194082", "0721870273", "97 E 3rd St #9,Long Island City,Queens,NY,11101");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217281405", "Cordie", "Ooten", "M", "217281405@tut4life.ac.za", "8305065181083", "06600590941", "82 Winsor St #54,Atlanta,Dekalb,GA,30340");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217171601", "Roberta", "Carbo", "M", "217171601@tut4life.ac.za", "9409205529084", "0736690224", "41 Steel Ct,Northfield,Rice,MN,55057");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217207066", "Sulema", "Petsche", "M", "217207066@tut4life.ac.za", "8105225765083", "0732540333", "49440 Dearborn St,Norwalk,Fairfield,CT,6854");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217261956", "Milly", "Hysmith", "M", "217261956@tut4life.ac.za", "9201125121082", "0715080008", "7 S Beverly Dr,Fort Wayne,Allen,IN,46802");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217817034", "Corrin", "Steenberg", "M", "217817034@tut4life.ac.za", "9004225563084", "0676230554", "919 Wall Blvd,Meridian,Lauderdale,MS,39307");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217443953", "Scarlet", "Kearse", "M", "217443953@tut4life.ac.za", "8911055834083", "0665660444", "89 20th St E #779,Sterling Heights,Macomb,MI,48310");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217333870", "Yolonda", "Rushin", "M", "217333870@tut4life.ac.za", "8808215800082", "0663570591", "721 Interstate 45 S,Colorado Springs,El Paso,CO,80919");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217700958", "Sharolyn", "Otoole", "M", "217700958@tut4life.ac.za", "9508125326084", "0766370242", "3 Lawton St,New York,New York,NY,10013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217558147", "Leeanne", "Thurman", "M", "217558147@tut4life.ac.za", "9208265699082", "0769170578", "38 Pleasant Hill Rd,Hayward,Alameda,CA,94545");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217701393", "Cassidy", "Loaiza", "M", "217701393@tut4life.ac.za", "8801215783082", "0675830980", "45 E Acacia Ct,Chicago,Cook,IL,60624");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217389030", "Kathryn", "Board", "M", "217389030@tut4life.ac.za", "8701245575083", "0775350827", "63728 Poway Rd #1,Scranton,Lackawanna,PA,18509");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217106766", "Krista", "Minix", "M", "217106766@tut4life.ac.za", "8104265115084", "0667740063", "77 222 Dr,Oroville,Butte,CA,95965");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217117904", "Shiela", "Dvorak", "M", "217117904@tut4life.ac.za", "9409255546083", "0679130642", "53 W Carey St,Port Jervis,Orange,NY,12771");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217981258", "Maximina", "Winslow", "M", "217981258@tut4life.ac.za", "8208255932082", "0768120374", "617 Nw 36th Ave,Brook Park,Cuyahoga,OH,44142");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217143343", "Adell", "Terrell", "M", "217143343@tut4life.ac.za", "8201165930084", "0611290632", "539 Coldwater Canyon Ave,Bloomfield,Essex,NJ,7003");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217510466", "Daphine", "Schill", "M", "217510466@tut4life.ac.za", "8006265752083", "0761090339", "735 Crawford Dr,Anchorage,Anchorage,AK,99501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217288395", "Emmie", "Frigo", "M", "217288395@tut4life.ac.za", "9710235990084", "0744030003", "910 Rahway Ave,Philadelphia,Philadelphia,PA,19102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217451063", "Briana", "Ryans", "M", "217451063@tut4life.ac.za", "9705015072084", "0662080991", "7 Tarrytown Rd,Cincinnati,Hamilton,OH,45217");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217575812", "Bethel", "Marquardt", "M", "217575812@tut4life.ac.za", "9204065376082", "0756940168", "35433 Blake St #588,Gardena,Los Angeles,CA,90248");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217207919", "Marcy", "Fossum", "M", "217207919@tut4life.ac.za", "9006055159082", "0622420578", "29 Cherry St #7073,Des Moines,Polk,IA,50315");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217395162", "Laurene", "Taranto", "M", "217395162@tut4life.ac.za", "9302075777083", "0765070888", "810 N La Brea Ave,King of Prussia,Montgomery,PA,19406");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217392080", "Esmeralda", "Crecelius", "M", "217392080@tut4life.ac.za", "8802225956082", "0667050472", "987 Main St,Raleigh,Wake,NC,27601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217112483", "Nadine", "Milford", "M", "217112483@tut4life.ac.za", "9403245304084", "0642350853", "36 Enterprise St Se,Richland,Benton,WA,99352");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217140318", "Tennie", "Creasy", "M", "217140318@tut4life.ac.za", "8807185955082", "07500400408", "8429 Miller Rd,Pelham,Westchester,NY,10803");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217734979", "Betsey", "Loyd", "M", "217734979@tut4life.ac.za", "8109235978083", "0746620208", "5 W 7th St,Parkville,Baltimore,MD,21234");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217915924", "Myesha", "Seago", "M", "217915924@tut4life.ac.za", "9009165335083", "0742440936", "2 Flynn Rd,Hicksville,Nassau,NY,11801");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217680072", "June", "Levering", "M", "217680072@tut4life.ac.za", "8708235142082", "0774520853", "2094 Ne 36th Ave,Worcester,Worcester,MA,1603");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217474340", "Miesha", "Pfaff", "M", "217474340@tut4life.ac.za", "9104215672084", "0783910902", "649 Tulane Ave,Tulsa,Tulsa,OK,74105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217687074", "Bridgett", "Pettyjohn", "M", "217687074@tut4life.ac.za", "9501265654084", "07600650328", "2094 Montour Blvd,Muskegon,Muskegon,MI,49442");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217222881", "Shantelle", "Boll", "M", "217222881@tut4life.ac.za", "8502215491082", "0749590700", "393 Hammond Dr,Lafayette,Lafayette,LA,70506");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217341441", "Classie", "Hetrick", "M", "217341441@tut4life.ac.za", "9809225161084", "0720040890", "3 Mcauley Dr,Ashland,Ashland,OH,44805");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217502050", "Cythia", "Barrie", "M", "217502050@tut4life.ac.za", "8104085936084", "0647050190", "7 Eads St,Chicago,Cook,IL,60632");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217551921", "Calista", "Jeppesen", "M", "217551921@tut4life.ac.za", "9402205350082", "0645340274", "7 W Jackson Blvd,San Jose,Santa Clara,CA,95111");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217762249", "Nakesha", "Haralson", "M", "217762249@tut4life.ac.za", "9808185801083", "0782350785", "5 Boston Ave #88,Sioux Falls,Minnehaha,SD,57105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217877170", "Maddie", "Collings", "M", "217877170@tut4life.ac.za", "9202245262083", "0788170825", "228 Runamuck Pl #2808,Baltimore,Baltimore City,MD,21224");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217165602", "Alene", "Grenier", "F", "217165602@tut4life.ac.za", "9409061087083", "06700920441", "2371 Jerrold Ave,Kulpsville,Montgomery,PA,19443");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217711883", "Lavina", "Pascoe", "F", "217711883@tut4life.ac.za", "9309050041082", "0747040482", "37275 St  Rt 17m M,Middle Island,Suffolk,NY,11953");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217284217", "Tona", "Bickel", "F", "217284217@tut4life.ac.za", "8211090523083", "0652420454", "25 E 75th St #69,Los Angeles,Los Angeles,CA,90034");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217433468", "Valery", "Wattles", "F", "217433468@tut4life.ac.za", "9208060870083", "0724920417", "98 Connecticut Ave Nw,Chagrin Falls,Geauga,OH,44023");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217721012", "Akiko", "Propp", "F", "217721012@tut4life.ac.za", "9609032836084", "07800180872", "56 E Morehead St,Laredo,Webb,TX,78045");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217437134", "Alexia", "Nakata", "F", "217437134@tut4life.ac.za", "8404173196083", "0674450094", "73 State Road 434 E,Phoenix,Maricopa,AZ,85013");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217841041", "Irene", "Montesinos", "F", "217841041@tut4life.ac.za", "9108020610083", "0715270980", "69734 E Carrillo St,Mc Minnville,Warren,TN,37110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217382912", "April", "Bierman", "F", "217382912@tut4life.ac.za", "9704221616084", "0738120758", "322 New Horizon Blvd,Milwaukee,Milwaukee,WI,53207");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217474636", "Louisa", "Salvas", "F", "217474636@tut4life.ac.za", "9005033918083", "06300870562", "1 State Route 27,Taylor,Wayne,MI,48180");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217778364", "Wonda", "Derouin", "F", "217778364@tut4life.ac.za", "9405170717084", "0637210983", "394 Manchester Blvd,Rockford,Winnebago,IL,61109");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217953727", "Sun", "Turnipseed", "F", "217953727@tut4life.ac.za", "8701163506084", "0785420298", "6 S 33rd St,Aston,Delaware,PA,19014");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217189870", "Lisha", "Rentz", "F", "217189870@tut4life.ac.za", "8008191783082", "0725560287", "6 Greenleaf Ave,San Jose,Santa Clara,CA,95111");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217804257", "Janette", "Beddingfield", "F", "217804257@tut4life.ac.za", "9711072227082", "0756920648", "618 W Yakima Ave,Irving,Dallas,TX,75062");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217146453", "Miss", "Ko", "F", "217146453@tut4life.ac.za", "9110223642082", "0658080379", "74 S Westgate St,Albany,Albany,NY,12204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217189182", "Santa", "Kalish", "F", "217189182@tut4life.ac.za", "9509133407083", "0717190238", "3273 State St,Middlesex,Middlesex,NJ,8846");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217230994", "Becki", "Sydnor", "F", "217230994@tut4life.ac.za", "9305063359082", "0748060114", "1 Central Ave,Stevens Point,Portage,WI,54481");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217818283", "Bernadette", "Dejean", "F", "217818283@tut4life.ac.za", "8410074088082", "0628750948", "86 Nw 66th St #8673,Shawnee,Johnson,KS,66218");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217361056", "Lea", "Shufelt", "F", "217361056@tut4life.ac.za", "8802061867083", "0625020546", "2 Cedar Ave #84,Easton,Talbot,MD,21601");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217630123", "Maximina", "Wittig", "F", "217630123@tut4life.ac.za", "9406140106084", "0726260138", "90991 Thorburn Ave,New York,New York,NY,10011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217959639", "Torie", "Arviso", "F", "217959639@tut4life.ac.za", "9308164588083", "0685410644", "386 9th Ave N,Conroe,Montgomery,TX,77301");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217311943", "Tessie", "Silverberg", "F", "217311943@tut4life.ac.za", "8309263302084", "0752480827", "74874 Atlantic Ave,Columbus,Franklin,OH,43215");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217275553", "Marva", "Senger", "F", "217275553@tut4life.ac.za", "9703154891083", "0673890225", "366 South Dr,Las Cruces,Dona Ana,NM,88011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("217313543", "Esther", "Leverett", "F", "217313543@tut4life.ac.za", "9009273291082", "0765960270", "45 E Liberty St,Ridgefield Park,Bergen,NJ,7660");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218281843", "Mia", "Merlino", "F", "218281843@tut4life.ac.za", "9110094580083", "0715080842", "4 Ralph Ct,Dunellen,Middlesex,NJ,8812");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218481127", "Beula", "Cabaniss", "F", "218481127@tut4life.ac.za", "9709261537082", "0741710602", "2742 Distribution Way,New York,New York,NY,10025");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218568014", "Katharine", "Carey", "F", "218568014@tut4life.ac.za", "8904114897083", "0647760289", "426 Wolf St,Metairie,Jefferson,LA,70002");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218893228", "Lyndsey", "Gutter", "F", "218893228@tut4life.ac.za", "9711173121084", "0619490608", "128 Bransten Rd,New York,New York,NY,10011");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218429655", "Esmeralda", "Taplin", "F", "218429655@tut4life.ac.za", "8507220902083", "0677940685", "17 Morena Blvd,Camarillo,Ventura,CA,93012");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218963356", "Jona", "Leake", "F", "218963356@tut4life.ac.za", "9011214059083", "0634500331", "775 W 17th St,San Antonio,Bexar,TX,78204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218820676", "Flor", "Ledger", "F", "218820676@tut4life.ac.za", "8403262814082", "0681720319", "6980 Dorsett Rd,Abilene,Dickinson,KS,67410");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218319641", "Sebrina", "Massengale", "F", "218319641@tut4life.ac.za", "8907070669083", "0685140227", "2881 Lewis Rd,Prineville,Crook,OR,97754");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218699838", "Akilah", "Ing", "F", "218699838@tut4life.ac.za", "9202092731083", "0682280813", "7219 Woodfield Rd,Overland Park,Johnson,KS,66204");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218613263", "Vikki", "Doung", "F", "218613263@tut4life.ac.za", "9107221117084", "0615840239", "1048 Main St,Fairbanks,Fairbanks North Star,AK,99708");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218146153", "Krystin", "Atchinson", "F", "218146153@tut4life.ac.za", "9106121671083", "0717570615", "678 3rd Ave,Miami,Miami-Dade,FL,33196");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218726209", "Erminia", "Morlan", "F", "218726209@tut4life.ac.za", "9403182220082", "0628880415", "20 S Babcock St,Fairbanks,Fairbanks North Star,AK,99712");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218342473", "Judi", "Harmer", "F", "218342473@tut4life.ac.za", "9304212239082", "0677540013", "2 Lighthouse Ave,Hopkins,Hennepin,MN,55343");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218984172", "Hyo", "Lozada", "F", "218984172@tut4life.ac.za", "8704051589082", "0726480994", "38938 Park Blvd,Boston,Suffolk,MA,2128");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218734843", "Zetta", "Peart", "F", "218734843@tut4life.ac.za", "8307042429082", "0649530363", "5 Tomahawk Dr,Los Angeles,Los Angeles,CA,90006");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218779789", "Treva", "Kanode", "F", "218779789@tut4life.ac.za", "8302274275082", "0727270993", "762 S Main St,Madison,Dane,WI,53711");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218399710", "Freeda", "Nigh", "F", "218399710@tut4life.ac.za", "8409183168084", "07400490346", "209 Decker Dr,Philadelphia,Philadelphia,PA,19132");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218707447", "Donna", "Hodel", "F", "218707447@tut4life.ac.za", "8910204901082", "0612390262", "4486 W O St #1,New York,New York,NY,10003");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218464223", "Leonida", "Mahlum", "F", "218464223@tut4life.ac.za", "9705074870083", "0723060320", "39 S 7th St,Tullahoma,Coffee,TN,37388");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218735641", "Aurelia", "Arevalo", "F", "218735641@tut4life.ac.za", "8808183692083", "0649770484", "98839 Hawthorne Blvd #6101,Columbia,Richland,SC,29201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218807678", "Evelia", "Bourquin", "F", "218807678@tut4life.ac.za", "8607192425083", "0734600987", "71 San Mateo Ave,Wayne,Delaware,PA,19087");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218850929", "Amy", "Amoroso", "F", "218850929@tut4life.ac.za", "9806163654083", "0674880658", "76 Brooks St #9,Flemington,Hunterdon,NJ,8822");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218763559", "Shandi", "Kluge", "F", "218763559@tut4life.ac.za", "8309180674083", "0772320970", "4545 Courthouse Rd,Westbury,Nassau,NY,11590");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218947381", "Regena", "Castano", "F", "218947381@tut4life.ac.za", "8209134190083", "0637020771", "14288 Foster Ave #4121,Jenkintown,Montgomery,PA,19046");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218514620", "Marguerite", "Brousseau", "F", "218514620@tut4life.ac.za", "9404141094083", "07100650930", "4 Otis St,Van Nuys,Los Angeles,CA,91405");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218722500", "Shellie", "Vangundy", "F", "218722500@tut4life.ac.za", "9704211506082", "0659670553", "65895 S 16th St,Providence,Providence,RI,2909");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218716570", "Maira", "Dungy", "F", "218716570@tut4life.ac.za", "8006021215084", "0629880750", "14302 Pennsylvania Ave,Huntingdon Valley,Montgomery,PA,19006");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218531595", "Melony", "Sidwell", "F", "218531595@tut4life.ac.za", "8208060560084", "0772430421", "201 Hawk Ct,Providence,Providence,RI,2904");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218626262", "Concha", "Munroe", "F", "218626262@tut4life.ac.za", "9404083806084", "0770080175", "53075 Sw 152nd Ter #615,Monroe Township,Middlesex,NJ,8831");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218497669", "Eugena", "Markowitz", "F", "218497669@tut4life.ac.za", "8602033935083", "0732700243", "59 N Groesbeck Hwy,Austin,Travis,TX,78731");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218889568", "Mitsuko", "Symonds", "F", "218889568@tut4life.ac.za", "8004134778082", "0621210634", "2664 Lewis Rd,Littleton,Douglas,CO,80126");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218613651", "Gilberte", "Omar", "F", "218613651@tut4life.ac.za", "8707274446083", "0762100286", "59 Shady Ln #53,Milwaukee,Milwaukee,WI,53214");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218633721", "Asuncion", "Lawhorn", "F", "218633721@tut4life.ac.za", "8409094250083", "0616290411", "3305 Nabell Ave #679,New York,New York,NY,10009");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218574034", "Rosalind", "Crofts", "F", "218574034@tut4life.ac.za", "9101151346083", "0748470323", "18 Fountain St,Anchorage,Anchorage,AK,99515");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218763873", "Eliza", "Polich", "F", "218763873@tut4life.ac.za", "9305174489083", "0671810198", "7 W 32nd St,Erie,Erie,PA,16502");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218900263", "Catheryn", "Mccullen", "F", "218900263@tut4life.ac.za", "8111181808084", "0620040601", "2853 S Central Expy,Glen Burnie,Anne Arundel,MD,21061");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218606877", "Glinda", "Terranova", "F", "218606877@tut4life.ac.za", "9108030527082", "0740030698", "74 W College St,Boise,Ada,ID,83707");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218197812", "Esperanza", "Rosen", "F", "218197812@tut4life.ac.za", "9610150838083", "0772110411", "701 S Harrison Rd,San Francisco,San Francisco,CA,94104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218640182", "Bambi", "Gullett", "F", "218640182@tut4life.ac.za", "9505153405083", "0653500182", "1088 Pinehurst St,Chapel Hill,Orange,NC,27514");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218262774", "Laurene", "Brien", "F", "218262774@tut4life.ac.za", "8803213601083", "0782640498", "30 W 80th St #1995,San Carlos,San Mateo,CA,94070");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218942768", "Cristy", "Wohlwend", "F", "218942768@tut4life.ac.za", "9506032264084", "0724360481", "20932 Hedley St,Concord,Contra Costa,CA,94520");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218595968", "Arminda", "Bresler", "F", "218595968@tut4life.ac.za", "9807014834082", "0621880427", "2737 Pistorio Rd #9230,London,Madison,OH,43140");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218726047", "Trang", "Guy", "F", "218726047@tut4life.ac.za", "8010152639083", "0761260827", "74989 Brandon St,Wellsville,Allegany,NY,14895");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218404221", "Felipa", "Parmley", "F", "218404221@tut4life.ac.za", "9108133646084", "0733430069", "6 Kains Ave,Baltimore,Baltimore City,MD,21215");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218754576", "Annice", "Pascoe", "F", "218754576@tut4life.ac.za", "8310184731082", "0772450792", "47565 W Grand Ave,Newark,Essex,NJ,7105");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218576602", "Bree", "Staudt", "F", "218576602@tut4life.ac.za", "9510222862083", "0789610560", "4284 Dorigo Ln,Chicago,Cook,IL,60647");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218527246", "Rhoda", "Connally", "F", "218527246@tut4life.ac.za", "8007043676082", "0731170272", "6794 Lake Dr E,Newark,Essex,NJ,7104");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218248118", "Georgette", "Probst", "F", "218248118@tut4life.ac.za", "9502192274084", "0621890571", "31 Douglas Blvd #950,Clovis,Curry,NM,88101");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218942892", "Alejandra", "Cappello", "F", "218942892@tut4life.ac.za", "8704093358082", "0679080901", "44 W 4th St,Staten Island,Richmond,NY,10309");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218898950", "Candi", "Sher", "F", "218898950@tut4life.ac.za", "8709172091084", "0657240894", "11279 Loytan St,Jacksonville,Duval,FL,32254");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218371364", "Doreatha", "Franzone", "F", "218371364@tut4life.ac.za", "9411173417082", "0761380348", "69 Marquette Ave,Hayward,Alameda,CA,94545");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218433237", "Carolina", "Solem", "F", "218433237@tut4life.ac.za", "9405171810084", "0763100472", "70 W Main St,Beachwood,Cuyahoga,OH,44122");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218754416", "Reatha", "Stetz", "F", "218754416@tut4life.ac.za", "8603111676084", "0615240281", "461 Prospect Pl #316,Euless,Tarrant,TX,76040");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218331890", "Louise", "Overbay", "F", "218331890@tut4life.ac.za", "8804083110083", "0647030614", "47154 Whipple Ave Nw,Gardena,Los Angeles,CA,90247");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218843327", "Marna", "Pretty", "F", "218843327@tut4life.ac.za", "9107151031082", "0681580232", "37 Alabama Ave,Evanston,Cook,IL,60201");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218558623", "Lala", "Niemiec", "F", "218558623@tut4life.ac.za", "8403052044083", "0755880293", "3777 E Richmond St #900,Akron,Summit,OH,44302");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218298003", "Zada", "Frady", "F", "218298003@tut4life.ac.za", "8310033604084", "0641200003", "3 Fort Worth Ave,Philadelphia,Philadelphia,PA,19106");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218998380", "Mao", "Cargo", "F", "218998380@tut4life.ac.za", "8008182035083", "0676810178", "4800 Black Horse Pike,Burlingame,San Mateo,CA,94010");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218361457", "Misti", "Waechter", "F", "218361457@tut4life.ac.za", "9604213854083", "0621250860", "83649 W Belmont Ave,San Gabriel,Los Angeles,CA,91776");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218708337", "Lola", "Kinne", "F", "218708337@tut4life.ac.za", "9505110091084", "0674700810", "840 15th Ave,Waco,McLennan,TX,76708");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218964916", "Alissa", "Malek", "F", "218964916@tut4life.ac.za", "9602070137083", "0656060760", "1747 Calle Amanecer #2,Anchorage,Anchorage,AK,99501");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218218093", "Donya", "Rappaport", "F", "218218093@tut4life.ac.za", "9605013740082", "07700850319", "99385 Charity St #840,San Jose,Santa Clara,CA,95110");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218382950", "Georgine", "Carta", "F", "218382950@tut4life.ac.za", "8603090840082", "0753010627", "68556 Central Hwy,San Leandro,Alameda,CA,94577");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218326064", "Veta", "Hasty", "F", "218326064@tut4life.ac.za", "8610063680083", "07600590743", "55 Riverside Ave,Indianapolis,Marion,IN,46202");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218361979", "Raquel", "Zweifel", "F", "218361979@tut4life.ac.za", "9004202681084", "0744080646", "7140 University Ave,Rock Springs,Sweetwater,WY,82901");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218181743", "Twanda", "Riedel", "F", "218181743@tut4life.ac.za", "9202144493082", "0658290066", "64 5th Ave #1153,Mc Lean,Fairfax,VA,22102");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218444847", "Meaghan", "Nevin", "F", "218444847@tut4life.ac.za", "8411143061084", "0781940266", "3 Secor Rd,New Orleans,Orleans,LA,70112");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218233399", "Magaly", "Grundy", "F", "218233399@tut4life.ac.za", "9504012272082", "0615270789", "4 Webbs Chapel Rd,Boulder,Boulder,CO,80303");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218270709", "Ouida", "Edmondson", "F", "218270709@tut4life.ac.za", "8308154833082", "0723740318", "524 Louisiana Ave Nw,San Leandro,Alameda,CA,94577");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218593059", "Chelsie", "Mattia", "F", "218593059@tut4life.ac.za", "9611102036084", "0758520118", "185 Blackstone Bldge,Honolulu,Honolulu,HI,96817");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218759672", "Veronika", "Kuck", "F", "218759672@tut4life.ac.za", "8402144437084", "0631230043", "170 Wyoming Ave,Burnsville,Dakota,MN,55337");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218472505", "Birgit", "Calise", "F", "218472505@tut4life.ac.za", "8101240827082", "0754410543", "4 10th St W,High Point,Guilford,NC,27263");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218791369", "Anissa", "Bixby", "F", "218791369@tut4life.ac.za", "9110200809083", "0679770620", "7 W Pinhook Rd,Lynbrook,Nassau,NY,11563");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218856365", "Hortencia", "Passman", "F", "218856365@tut4life.ac.za", "8205020959084", "0711570649", "1 Commerce Way,Portland,Washington,OR,97224");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218546524", "Latrisha", "Chappell", "F", "218546524@tut4life.ac.za", "8104251808083", "0771170196", "64 Lakeview Ave,Beloit,Rock,WI,53511");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218740863", "Lorinda", "Mcrae", "F", "218740863@tut4life.ac.za", "8204100570082", "0634220336", "3 Aspen St,Worcester,Worcester,MA,1602");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218621240", "Ara", "Miser", "F", "218621240@tut4life.ac.za", "8606062636083", "0669820683", "32860 Sierra Rd,Miami,Miami-Dade,FL,33133");
INSERT INTO student (`stud_number`,`first_name`,`last_name`, `gender`,`email`,`id_nr`,`phone`,`address`) VALUES ("218262239", "Hye", "Hungate", "F", "218262239@tut4life.ac.za", "8809021293083", "0739710357", "555 Main St,Erie,Erie,PA,16502");