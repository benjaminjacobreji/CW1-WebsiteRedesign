DROP DATABASE website;
CREATE DATABASE website;
USE website;

DROP TABLE review;
DROP TABLE users;
DROP TABLE products;

CREATE TABLE products(
    product_ID VARCHAR(50) PRIMARY KEY,
    product_NAME VARCHAR(50),
    product_COST DECIMAL(10,2),
    product_CATEGORY VARCHAR(50),
    product_DESCRIPTION VARCHAR(500),
    product_IMAGE LONGBLOB
)ENGINE=INNODB;

CREATE TABLE users(
    user_ID VARCHAR(50) PRIMARY KEY,
    user_EMAIL VARCHAR(50),
    user_FNAME VARCHAR(50),
    user_LNAME VARCHAR(50)
)ENGINE=INNODB;

CREATE TABLE reviews (
    review_ID INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    review_CONTENT VARCHAR(500),
    review_STAR INTEGER,
    product_ID VARCHAR(50),
    user_ID VARCHAR(50),
    FOREIGN KEY (product_ID) REFERENCES products(product_ID),
    FOREIGN KEY (user_ID) REFERENCES users(user_ID)
 ) ENGINE = InnoDB;

 INSERT INTO products VALUES
    ('CA061983PCB','Atari 600XL Keyboard',65,'Keyboards','As you can see the item does work but does not come with any cartridges not the adapter piece to go from tv/computer switch to tv.  View on screen is a little staticy guessing from dust on contacts as you would expect from an item this vintage. Comes the unit. power supply, conector switch, and connector cable, as well as the manual. ','Atari600XL.jpg'),
    ('CB10315PCA','Atari 1200XL Keyboard',39.95,'Keyboards','Atari 1200xl In Nice Working Condition. 
Fully tested - 
Keyboard works without an effort - all keys fully tested
Joystick ports tested and working
Loads DOS from a 1050 drive (Drive NOT included)
Passes memory tests
Overall in nice condition.  Some yellowing on one side
Includes 6 cartridges and 2 joystick, as pictured
Comes with power supply and 5 pin DIN to composite cable.','Atari1200XL.jpg'),
    ('FK100308','Atari STM Mouse',39.95,'Mouses','Original Atari STM1 Mouse as used with all the range of Atari ST  / STE / Mega / TT and Falcon computers
Fully cleaned and fitted with new switches where required
Excellent condition.
Any questions - please ask.
I combine shipping on all items.','AtariSTMMouse.jpg'),
    ('CO121110G','Atari CX40 Joystick',60,'Joysticks','Atari Standard Joystick for the 2600. Model CX40','CX40Joystick.jpg'),
    ('CO160342X','Atari CX52 Joystick',80,'Joysticks','Latest Revision 9 circuit card
Start/Pause/Reset Auxiliary Pad 
Two triple dot fire buttons
Numeric keypad
Detailed installation instructions
Free email technical support','CX52Joystick.jpg'),
    ('CB102249  ','CX24 Handle Shaft',19.99,'Spare Parts ','CX24 Handle Shaft is spare part used in Atari consoles','CX24handleshaft.jpg'),
    ('CB102330','CX24 Fire Button',19.99,'Spare Parts ',' CX24 Slim line Deluxe Joystick (sometimes called the Atari Proline Joystick) and the ill fated Atari Space Age Joystick, which had an internal flex circuit problem from the start and caused it to be dropped by Atari very fast.  Now Atari Space Age Joysticks are a very rare Atari collector item.','Firebutton.jpg'),
    ('CB103109  ','CX30 Paddle ',19.99,'Spare Parts ','A paddle is a game controller with a round wheel and one or more fire buttons, where the wheel is typically used to control movement of the player object along one axis of the video screen.

A paddle controller rotates through a fixed arc (usually about 330 degrees); it has a stop at each end.','CX30Paddles.jpg'),
    ('CA017087','AtariI VCS 2600',19.99,'Spare Parts ','The Atari 2600''s CPU is the MOS Technology 6507, a version of the 6502,[33] running at 1.19 MHz in the 2600','Atari2600.jpg'),
    ('B001E9F1QO','Atari Jaguar US System',600,'Consoles','RAM: 2 MB on a 64-bit bus using 4 16-bit fast page mode DRAMs (80 ns)[35]
Storage: ROM cartridges – up to 6 MB
DSP-port (JagLink)
Monitor-port (Composite/S-Video/RGB)
Antenna-port (UHF/VHF) Fixed at 591 MHz in Europe
Not present on French model
Support for ComLynx I/O
NTSC/PAL machines can be identified by their power LED colour, Red = NTSC, Green = PAL','AtariJaguar.jpg'),
    ('RT244423','Atari Lynx',374.95,'Consoles','The Atari Lynx''s innovative features include being the first color handheld, with a backlit display, a switchable right-handed/left-handed (upside down) configuration, and the ability to network with up to 15 other units via its Comlynx system (though most games would network eight or fewer players).','AtariLynx.jpg'),
    ('RW235223','Atari 7800 Console',400,'Consoles','The Atari 7800 was a sleek and capable videogame console released in 1986. While it had a solid offering of its own games, the 7800 featured a prime system feature: full, built-in compatibility with the Atari 2600. While consoles of the past could play Atari 2600 games through the use of an optional adapter, the 7800 accepted these cartridges right in the main slot and played them without any extra add-ons.','Atari7800.jpg'),
    ('RW245675','Atari 2600A VGS',170,'Consoles',NULL,NULL),
    ('RW245676','Atari Flashback 9 - Electronic Games',19.99,'Consoles','The special edition released by Atari for their flashback 9 which is the 9th version released in their series of flashback consoles. This special edition consists of the 120 games and two wireless 2.4 GHz joysticks.','Atari flashback 9.jpg'),
    ('RW245677','Atari Flashback 9 Gold - Electronic Games',38.91,'Consoles','HDMI game console with classic games built-in. Comes with wired joypad controllers, SD card slot and 110 classic games. HDMI Video Output (720p),Comes with two Wired Game Controllers,SD Card Slot ,Save/Load/Rewind all Games,Plug & Play on HD TVs ','Atari Flashback 9 Gold - Electronic Games.jpg'),
    ('RW245678','Atari(R) Flashback(R) 8 Classic Game Console',74.99,'Consoles','The Flashback 8 was the 8th version released in Atari''s line up of Flashback devices. It includes wired controlles and consists 105 games. Most of the games are the same games seen in the previous edition, Flashback 7 and consisted of a few extra ones.','Flashback 8.jpg'),
    ('RW245679','Atari Flashback Portable Deluxe Edition ',36.86,'Consoles','The Atari Flashback Portable was a proposed handheld version of the Flashback series. Games are loaded into the internal memory, however future editions came with an SD Card slot. The Deluxe edition includes an SD Card slot, 70 games including the classics.','Atari Flashback Portable Deluxe Edition.jpg'),
    ('RW245680','Atari Flashback 8 Gold: Activision Edition ',29.99,'Consoles','The Atari Flashback 8 GOLD Activation Edition is part of the Flashback series, it is a special edition of Atari partnered with Activation. It includes The classics from both Activation and Atari. It comes with two 2.4G wireless controllers and supports HDMI output.','Atari Flashback 8 Gold Activision Edition.jpg'),
    ('RW245681','Atari Flashback 5 ',72.89,'Consoles','The Atari Flashback 5 was released in 2014 and was built by AtGames. It includes two Infrared wireless joystics but add''s 17 new games to the existing 92 games. It includes Atari and M Network games and titles which can be played with the Atari 2600 peripherals.','Atari Flashback 5.jpg'),
    ('RW245682','Atari Flashback 6',69.99,'Consoles','The Atari Flashback 6 was released in 2015, like it''s previous release it was made by AtGames. It consists of infrared joysticks, and add''s the 92 games that currently exist in the Atari line up with 8 more brand new games and titles.','Atari Flashback 6.jpg'),
    ('RW245683','Atari Flashback 2+ Plug-in-Play',27.29,'Consoles','The Atari Flashback 2+ is the successor to the original flashback console. A few of the included games are ones that were created by enthusiasts over the years and two new games which were released by Activation Games, Pitfall! and River Raid.','Atari Flashback 2.jpg'),
    ('RW245684','Atari Flashback 8 Gold Console',69.99,'Consoles','Atari Flashback 8 Gold Console continues to composite video connection to the television as with the previous models, this too incles a 720p HDMI video output. The Flashback 8 Gold includes 2.4 GHz controllers instead of the typical infrared wirless controllers. It comes with the option to pause, save and rewind games as well as 130 games.','Atari Flashback 8 Gold Console.jpg'),
    ('RJ9662972','Atari VCS: Onyx',449.95,'Consoles','Atari VCS: Onyx transforms how you will engage with your TV. It''s from Atari so it includes classic arcade games and an open source Linux OS so you can add your own software and customize your own paltform on the new VCS.','Atari VCS Onyx.jpg'),
    ('CB142845','Double Dragon',59.95,'Games','The gameplay in most of the games takes place in a psuedo 3D perspective like in Renegade. The player can perform a variety of unarmed fighting techniques agains their enemies, they can use weapons as well. In some installments, there are combo techniques that can be done with another player.','Double Dragon.jpg'),
    ('CR243645','Pitfall ll',59.95,'Games','Pitfall ll is a platform video game originally released for the Atari 2600.  Pitfall ll had a few major additions, for example, vertical scrolling, rivers to swim in and Balloons that can be grabbed to float. The game involved the used avoiding ganger in the forms of crocodiles, scorpions, cobras and quicksand.','Pitfall2.png'),
    ('CB434764','Task Force',12.95,'Games','Task Force is a tactical shooter that focuses on close quarters infantry combat. It aims to provide competitive arcade-style gameplay inspired by classic third-person games. Maps will include locations around the world where special operations are conducted.','Task force.jpg'),
    ('CR342756','SpiderMan',39.95,'Games','Spider-Man is an action video game released by Parker Brothers for the Atari 2600.  The game involves players controlling Spider-Man to scale a building using his web shooters in order to defuse bombs planted by the Green Goblin.','Spider Man.jpg'),
    ('CB124432','Star Voyager',12.95,'Games',' Star Voyager is a first-person space shooter for the Atari 2600 by Imagic. In the game, the player has to save the Capital Starport','Star Voyager.jpg'),
    ('CB233234','Space Invader',9.95,'Games','Space Invaders is an arcade video game shooting games and the aim is to defeat waves of aliens with a laser cannon to earn as many points as possible','Space Invaders.jpg'),
    ('CB241222','Pong',70,'Games','Pong is one of the earliest arcade video games. It is a table tennis sports game featuring simple two-dimensional graphics','Pong.jpg'),
    ('CB634634','Ms Pac Man',60,'Games','Ms. Pac-Man is an arcade video game, The player earns points by eating pellets and avoiding ghosts','MsPacMan.jpg'),
    ('GK434213','Battlezone',45.95,'Games','Battlezone is a first-person shooter tank combat arcade game.The player controls a tank which is attacked by other tanks and missiles.','Battlezone.jpg'),
    ('GJ296625','Defender ',70.95,'Games','Defender is an arcade video gam , the game is set on an unnamed planet where the player must defeat waves of invading aliens while protecting astronauts','Defender.jpg'),
    ('GJ665132','Donkey Kong',80,'Games','Donkey Kong is an arcade game, the gameplay focuses on maneuvering the main character across a series of platforms while dodging and jumping over obstacles. ','Donkey Kong.jpg'),
    ('GP349788','CityTopia',45.95,'Games','Citytopia, an exciting city builder and management game with beautiful 3D graphics and an innovative needs-based objective system. ','City topia.jpg'),
    ('GD343202','Asteroids',60,'Games','Asteroids is a space-themed multidirectional shooter arcade game. The player controls a single spaceship in an asteroid field which is periodically traversed by flying saucers.','Asteroids.jpg'),
    ('GJ343481','Secret Quest',12.95,'Games','Secret Quest is an action-adventure game developed by Axlon. The player controls a humanoid character that fights monsters and gathers items on a series of space stations.','Secret Quest.jpg'),
    ('GJ343132','Star Raiders',39.95,'Games','Star Raiders is a first-person shooter space combat simulator video game. The game is commonly referred to as the platform''s killer app. ','Star raidersjpg.jpg'),
    ('GP993432','Frogger',9.95,'Games','Frogger is an arcade game introduced in 1981.The object of the game is to direct frogs to their homes one by one. ','Frogger.jpg'),
    ('GS343467','Spy Hunter',59.95,'Games',' Spy Hunter is an arcade game.The game''s controls consist of a steering wheel in the form of a futuristic aircraft-style yoke with several special-purpose buttons, a two-position stick shift, and a pedal used for acceleration. It is a single-player game. ','Spy Hunter.jpg'),
    ('RT254214','New Jaguar Cable',44.95,'Cables','The Atari Jaguar will output RGB natively and only an RGB cable is needed.','NewJaguarCable.jpg'),
    ('RT753235','Composite VC',19.99,'Cables','Atarti VC compostie cable allows for composite and S-Video output now and it has audio and the palette switch','atariCompositeVideocable(2nd Gen).jpg');

INSERT INTO users VALUES
    ('hm11','hmm11@hw.ac.uk','Hitesh','Manani'),
    ('ppp1','ppp1@hw.ac.uk','Pranav','Pai'),
    ('bjr5','bjr5@hw.ac.uk','Benjamin','Jacob Reji'),
    ('bc50','bc50@hw.ac.uk','Brenden','Cyrus Monterio'),
    ('vsd2','vsd2@hw.ac.uk','Vishan','De Silva');

INSERT INTO reviews VALUES
    (NULL,'Excellent Keys, very smooth',5,'CA061983PCB','hm11'),
    (NULL,'Runs terrefic, very resposive keys',1,'CA061983PCB','ppp1'),
    (NULL,'Tactile keys, clicky buttons as well',5,'CA061983PCB','bjr5'),
    (NULL,'Great build quality',2,'CA061983PCB','bc50'),
    (NULL,'Easy to setup, works great',4,'CA061983PCB','vsd2'),
    (NULL,'Best budget Atari Keyboard',5,'CB10315PCA','hm11'),
    (NULL,'Amazing performance',3,'CB10315PCA','ppp1'),
    (NULL,'Great if you''re on a budget !!',4,'CB10315PCA','bjr5'),
    (NULL,'Works excellent',2,'CB10315PCA','bc50'),
    (NULL,'Excellent build at this price',1,'CB10315PCA','vsd2'),
    (NULL,'Excellent tactile buttons',5,'FK100308','hm11'),
    (NULL,'Superb build quality ',5,'FK100308','ppp1'),
    (NULL,'Excellent packaging and performance',1,'FK100308','bjr5'),
    (NULL,'Beautifully Designed  ',2,'FK100308','bc50'),
    (NULL,'Very reliable Atari product',2,'FK100308','vsd2'),
    (NULL,'Works flawlessly',2,'CO160342X','hm11'),
    (NULL,'Terrefic build quality',5,'CO160342X','ppp1'),
    (NULL,'It is a joy to use this product !',2,'CO160342X','bjr5'),
    (NULL,'Love the design ',2,'CO160342X','bc50'),
    (NULL,'Brought back many memories',2,'CO160342X','vsd2'),
    (NULL,'Product delivered on time',5,'CB102249  ','hm11'),
    (NULL,'Great Customer Service',3,'CB102249  ','ppp1'),
    (NULL,'Works better than the original !',5,'CB102249  ','bjr5'),
    (NULL,'Amazing quality',4,'CB102249  ','bc50'),
    (NULL,'Easy and simple to replace ',5,'CB102249  ','vsd2'),
    (NULL,'Excellent prduct for the price',1,'CB102330','hm11'),
    (NULL,'Very satsified with the quality',3,'CB102330','ppp1'),
    (NULL,'Could not be happier with the parts',5,'CB102330','bjr5'),
    (NULL,'Great build',4,'CB102330','bc50'),
    (NULL,'Very pleased with the product',1,'CB102330','vsd2'),
    (NULL,'Thank you very pleased with it',5,'CB103109  ','hm11'),
    (NULL,'Joystick works great now',3,'CB103109  ','ppp1'),
    (NULL,'Replacement process is very simple',2,'CB103109  ','bjr5'),
    (NULL,'Parts are soild ',1,'CB103109  ','bc50'),
    (NULL,'Works better than expected',4,'CB103109  ','vsd2'),
    (NULL,'Easy to replace and handle',5,'CA017087','hm11'),
    (NULL,'Delivered exactly on time, thank u!',3,'CA017087','ppp1'),
    (NULL,'Didn''t expect such amazing service',5,'CA017087','bjr5'),
    (NULL,'Good quality parts',3,'CA017087','bc50'),
    (NULL,'Overall very satisfied with it',5,'CA017087','vsd2'),
    (NULL,'Best Atari console hands down',1,'B001E9F1QO','hm11'),
    (NULL,'Love the colors and overall feel of it',2,'B001E9F1QO','ppp1'),
    (NULL,'Beautiful video and picture quality',2,'B001E9F1QO','bjr5'),
    (NULL,'Works like a charm ',2,'B001E9F1QO','bc50'),
    (NULL,'Great Packaging and design',5,'B001E9F1QO','vsd2'),
    (NULL,'Very overpriced',1,'RT244423','hm11'),
    (NULL,'Not worth the price',2,'RT244423','ppp1'),
    (NULL,'Good console!',2,'RT244423','bjr5'),
    (NULL,'Don’t purchase this item',5,'RT244423','bc50'),
    (NULL,'Works well',5,'RT244423','vsd2'),
    (NULL,'The console is the good conditon',3,'RW235223','hm11'),
    (NULL,'Great but too expensive',3,'RW235223','ppp1'),
    (NULL,'I am in love with this console!',1,'RW235223','bjr5'),
    (NULL,'Good compact Design',2,'RW235223','bc50'),
    (NULL,'A must buy for gamers',1,'RW235223','vsd2'),
    (NULL,'Too huge!',5,'RW245675','hm11'),
    (NULL,'Broke down within a day',2,'RW245675','ppp1'),
    (NULL,'Excellent working console',3,'RW245675','bjr5'),
    (NULL,'Aside from the design,its great!',2,'RW245675','bc50'),
    (NULL,'Loved the console, excellent build quailty',2,'RW245675','vsd2'),
    (NULL,'One of the best consoles I''ve ever used',2,'RJ9662972','hm11'),
    (NULL,'Atari has outdone themselves yet again',1,'RJ9662972','ppp1'),
    (NULL,'This deserves all the praise it gets',4,'RJ9662972','bjr5'),
    (NULL,'Absoulte beast of a device',1,'RJ9662972','bc50'),
    (NULL,'Great design, Better performance !!',3,'RJ9662972','vsd2'),
    (NULL,'Great Game.',2,'CB142845','hm11'),
    (NULL,'Beautifully designed game.',5,'CB142845','ppp1'),
    (NULL,'Love the artwork',1,'CB142845','bjr5'),
    (NULL,'Lovely gameplay',5,'CB142845','bc50'),
    (NULL,'Graphics is top notch!',4,'CB142845','vsd2'),
    (NULL,'Love the sequel',5,'CR243645','hm11'),
    (NULL,'To be honest the first one was better',2,'CR243645','ppp1'),
    (NULL,'Best shooting game!',5,'CR243645','bjr5'),
    (NULL,'Really good game!',1,'CR243645','bc50'),
    (NULL,'It was an OK game',1,'CR243645','vsd2'),
    (NULL,'The gameplay was on a next level',4,'CB434764','hm11'),
    (NULL,'This game is Fantastic',5,'CB434764','ppp1'),
    (NULL,'Loved the characters',3,'CB434764','bjr5'),
    (NULL,'Fast pace game!',5,'CB434764','bc50'),
    (NULL,'Great!',2,'CB434764','vsd2'),
    (NULL,'Always love SpiderMan',3,'CR342756','hm11'),
    (NULL,'Fantastic Story',2,'CR342756','ppp1'),
    (NULL,'I have played better games',1,'CR342756','bjr5'),
    (NULL,'Really cool game',1,'CR342756','bc50'),
    (NULL,'Insane Gameplay!',2,'CR342756','vsd2'),
    (NULL,'Unbelievable Game!',1,'CB124432','hm11'),
    (NULL,'Nice sound Effects!',3,'CB124432','ppp1'),
    (NULL,'The graphics for each Star is perfect',1,'CB124432','bjr5'),
    (NULL,'Similar to Star Raiders',4,'CB124432','bc50'),
    (NULL,'Not the Best!',2,'CB124432','vsd2'),
    (NULL,'Atari makes the best space games!',3,'CB233234','hm11'),
    (NULL,'Best Space game ever',2,'CB233234','ppp1'),
    (NULL,'Nice artwork',4,'CB233234','bjr5'),
    (NULL,'Could have been better',2,'CB233234','bc50'),
    (NULL,'Sick game!',2,'CB233234','vsd2'),
    (NULL,'Really addictive and fun',1,'CB241222','hm11'),
    (NULL,'Smooth running Game',3,'CB241222','ppp1'),
    (NULL,'Finally!Got this game',5,'CB241222','bjr5'),
    (NULL,'Worth the wait.Buy IT',1,'CB241222','bc50'),
    (NULL,'Easily one of the best games on atari',4,'CB241222','vsd2'),
    (NULL,'Lovely game..just like Pac man',3,'CB634634','hm11'),
    (NULL,'Better than pac man',5,'CB634634','ppp1'),
    (NULL,'If you plaed pac man,you ant miss out on this',3,'CB634634','bjr5'),
    (NULL,'Ms Pac man for life!!',5,'CB634634','bc50'),
    (NULL,'My kids love this game!',1,'CB634634','vsd2'),
    (NULL,'Got it this christmas!Love it',2,'GK434213','hm11'),
    (NULL,'The graphics is unreal',4,'GK434213','ppp1'),
    (NULL,'The battleship could have been better',1,'GK434213','bjr5'),
    (NULL,'Got it for my brother,he loves it!',1,'GK434213','bc50'),
    (NULL,'This game is very addictive',4,'GK434213','vsd2'),
    (NULL,'I was waiting for this to come out',2,'GJ296625','hm11'),
    (NULL,'I bought this in a heartbeat',1,'GJ296625','ppp1'),
    (NULL,'Was waiting a long time for this game',1,'GJ296625','bjr5'),
    (NULL,'Yess..My dreams have come true',5,'GJ296625','bc50'),
    (NULL,'The game has one of the best mechanics',3,'GJ296625','vsd2'),
    (NULL,'Brings me back memories',5,'GJ665132','hm11'),
    (NULL,'This game is the defination of GAME',1,'GJ665132','ppp1'),
    (NULL,'They should have not stopped the series',4,'GJ665132','bjr5'),
    (NULL,'All time favourite game',3,'GJ665132','bc50'),
    (NULL,'One of the best retro games out there!',4,'GJ665132','vsd2'),
    (NULL,'Beautiful game, really impressed ',2,'GP349788','hm11'),
    (NULL,'This game unleashes your inner architect',2,'GP349788','ppp1'),
    (NULL,'One of the most creative Atari games !',2,'GP349788','bjr5'),
    (NULL,'Underrated game for sure',1,'GP349788','bc50'),
    (NULL,'Amazing and creative concept ',1,'GP349788','vsd2'),
    (NULL,'Spaceships,rocks,action 3 words 3 stars',2,'GD343202','hm11'),
    (NULL,'Action packed and thrilling !',5,'GD343202','ppp1'),
    (NULL,'Possible the hardest Atari game ever made !',3,'GD343202','bjr5'),
    (NULL,'Great graphics for its time',1,'GD343202','bc50'),
    (NULL,'Really exciting and energetic gameplay',5,'GD343202','vsd2'),
    (NULL,'Unleash your inner detective skills !!',5,'GJ343481','hm11'),
    (NULL,'One of the best soundtracks in any game',1,'GJ343481','ppp1'),
    (NULL,'Guaranteed to make you think like a pro !',1,'GJ343481','bjr5'),
    (NULL,'Beautifully Designed game ',4,'GJ343481','bc50'),
    (NULL,'Great gameplay and amazing soundtrack !',1,'GJ343481','vsd2'),
    (NULL,'This game is worth every penny !',1,'GJ343132','hm11'),
    (NULL,'This game has set the bar so high for the rest',2,'GJ343132','ppp1'),
    (NULL,'Vivid colors and beatiful graphics !',1,'GJ343132','bjr5'),
    (NULL,'Very very immersive !',4,'GJ343132','bc50'),
    (NULL,'Guarenteed to get you on edge of your seat !',4,'GJ343132','vsd2'),
    (NULL,'This game is a steal at this price !',4,'GP993432','hm11'),
    (NULL,'Can''t belive how cheap this game is ',1,'GP993432','ppp1'),
    (NULL,'This game is one of the best bargains !',1,'GP993432','bjr5'),
    (NULL,'Amazing game !!',4,'GP993432','bc50'),
    (NULL,'Best bang for your buck !',1,'GP993432','vsd2'),
    (NULL,'One of the different and unique games !',2,'GS343467','hm11'),
    (NULL,'Not like your usual Atari games, amazing work',3,'GS343467','ppp1'),
    (NULL,'Highly recommend it to everyone ',3,'GS343467','bjr5'),
    (NULL,'Excellent gameplay, mindblowing',5,'GS343467','bc50'),
    (NULL,'This game is a masterpiece, Absolutelty beautiful',3,'GS343467','vsd2'),
    (NULL,'Very Sturdy',1,'RT254214','hm11'),
    (NULL,'Good Length',2,'RT254214','ppp1'),
    (NULL,'Good working condition',1,'RT254214','bjr5'),
    (NULL,'A must order',2,'RT254214','bc50'),
    (NULL,'Great for the price',1,'RT254214','vsd2'),
    (NULL,'Good quality Cable',3,'RT753235','hm11'),
    (NULL,'The length is a bit small',5,'RT753235','ppp1'),
    (NULL,'Got it within a day',3,'RT753235','bjr5'),
    (NULL,'Better than Jaguar',2,'RT753235','bc50'),
    (NULL,'Absoletly worth, highly recommend it !!',1,'RT753235','vsd2'),
    (NULL,'Incredibly versitile ',5,'RW245676','hm11'),
    (NULL,'A bit too bulky',2,'RW245676','ppp1'),
    (NULL,'Runs slow after a while of using ',3,'RW245676','bjr5'),
    (NULL,'Does not come with batteries',2,'RW245676','bc50'),
    (NULL,'Pretty smooth as a system',4,'RW245676','vsd2'),
    (NULL,'Can do almost everything!',1,'RW245677','hm11'),
    (NULL,'Very fun to play around with',2,'RW245677','ppp1'),
    (NULL,'The price for it does not match the product',4,'RW245677','bjr5'),
    (NULL,'Get''s boring after a while',1,'RW245677','bc50'),
    (NULL,'A bit fun, a bit boring.',3,'RW245677','vsd2'),
    (NULL,'Beautifully made and smooth',3,'RW245678','hm11'),
    (NULL,'Incredibly slow',3,'RW245678','ppp1'),
    (NULL,'Aside from looks, it is terrible as a console',2,'RW245678','bjr5'),
    (NULL,'Very laggy',4,'RW245678','bc50'),
    (NULL,'I rather buy a nintendo!',3,'RW245678','vsd2'),
    (NULL,'A bit slow but gets the job done',3,'RW245679','hm11'),
    (NULL,'It''s alright didn''t expect much for the price',5,'RW245679','ppp1'),
    (NULL,'Has the same games as the past one ',5,'RW245679','bjr5'),
    (NULL,'Really boring',1,'RW245679','bc50'),
    (NULL,'Some indepth graphics',5,'RW245679','vsd2'),
    (NULL,'Has almost all the Activision games I want',3,'RW245680','hm11'),
    (NULL,'As does, it''s boring but it has a lot of games.',1,'RW245680','ppp1'),
    (NULL,'Got as a gift, couldn''t be happier',4,'RW245680','bjr5'),
    (NULL,'Very fun to play around with',4,'RW245680','bc50'),
    (NULL,'Exciting stuff right out of the box',2,'RW245680','vsd2'),
    (NULL,'Good throwback to the old games',4,'RW245681','hm11'),
    (NULL,'Nice games but repetative in all series',4,'RW245681','ppp1'),
    (NULL,'Sometimes boring, sometimes fun',5,'RW245681','bjr5'),
    (NULL,'Really REALLY fun',5,'RW245681','bc50'),
    (NULL,'I''m excited and brag to my friends about this!',2,'RW245681','vsd2'),
    (NULL,'Nostalgic and fun',1,'RW245682','hm11'),
    (NULL,'The games that came with it are boring',3,'RW245682','ppp1'),
    (NULL,'Feels like the good ol'' days',1,'RW245682','bjr5'),
    (NULL,'Pretty good stuff',1,'RW245682','bc50'),
    (NULL,'Gets boring after hours of playing',1,'RW245682','vsd2'),
    (NULL,'Very slow',2,'RW245683','hm11'),
    (NULL,'Looks are very good',4,'RW245683','ppp1'),
    (NULL,'Atari need''s to work on this product ',5,'RW245683','bjr5'),
    (NULL,'Terrible product',1,'RW245683','bc50'),
    (NULL,'The exterior can''t make up for all the other flaws',2,'RW245683','vsd2'),
    (NULL,'Gets boring after a while',3,'RW245684','hm11'),
    (NULL,'Graphics are nice',4,'RW245684','ppp1'),
    (NULL,'Really boring',5,'RW245684','bjr5'),
    (NULL,'Can be improved',1,'RW245684','bc50'),
    (NULL,'Didn''t expect anything',3,'RW245684','vsd2');