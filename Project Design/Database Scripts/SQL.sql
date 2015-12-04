CREATE SCHEMA IF NOT exists `music_store` ;

USE music_store;


CREATE TABLE Genres(
	GenreId INT PRIMARY KEY NOT NULL,
	Name VARCHAR(120) NULL,
	Description VARCHAR(4000) NULL
);

INSERT INTO Genres (GenreId, Name, Description) VALUES (1, 'Rock', 'Rock and Roll is a form of rock music developed in the 1950s and 1960s. Rock music combines many kinds of music from the United States, such as country music, folk music, church music, work songs, blues and jazz.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (2, 'Jazz', 'Jazz is a type of music which was invented in the United States. Jazz music combines African-American music with European music. Some common jazz instruments include the saxophone, trumpet, piano, double bass, and drums.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (3, 'Metal', 'Heavy Metal is a loud, aggressive style of Rock music. The bands who play heavy-metal music usually have one or two guitars, a bass guitar and drums. In some bands, electronic keyboards, organs, or other instruments are used. Heavy metal songs are loud and powerful-sounding, and have strong rhythms that are repeated. There are many different types of Heavy Metal, some of which are described below. Heavy metal bands sometimes dress in jeans, leather jackets, and leather boots, and have long hair. Heavy metal bands sometimes behave in a dramatic way when they play their instruments or sing. However, many heavy metal bands do not like to do this.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (4, 'Alternative', 'Alternative rock is a type of rock music that became popular in the 1980s and became widely popular in the 1990s. Alternative rock is made up of various subgenres that have come out of the indie music scene since the 1980s, such as grunge, indie rock, Britpop, gothic rock, and indie pop. These genres are sorted by their collective types of punk, which laid the groundwork for alternative music in the 1970s.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (5, 'Disco', 'Disco is a style of pop music that was popular in the mid-1970s. Disco music has a strong beat that people can dance to. People usually dance to disco music at bars called disco clubs. The word "disco" is also used to refer to the style of dancing that people do to disco music, or to the style of clothes that people wear to go disco dancing. Disco was at its most popular in the United States and Europe in the 1970s and early 1980s. Disco was brought INTo the mainstream by the hit movie Saturday Night Fever, which was released in 1977. This movie, which starred John Travolta, showed people doing disco dancing. Many radio stations played disco in the late 1970s.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (6, 'Blues', 'The blues is a form of music that started in the United States during the start of the 20th century. It was started by former African slaves from spirituals, praise songs, and chants. The first blues songs were called Delta blues. These songs came from the area near the mouth of the Mississippi River.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (7, 'Lati', 'Latin American music is the music of all countries in Latin America (and the Caribbean) and comes in many varieties. Latin America is home to musical styles such as the simple, rural conjunto music of northern Mexico, the sophisticated habanera of Cuba, the rhythmic sounds of the Puerto Rican plena, the symphonies of Heitor Villa-Lobos, and the simple and moving Andean flute. Music has played an important part recently in Latin America''s politics, the nueva canci髇 movement being a prime example. Latin music is very diverse, with the only truly unifying thread being the use of Latin-derived languages, predominantly the Spanish language, the Portuguese language in Brazil, and to a lesser extent, Latin-derived creole languages, such as those found in Haiti.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (8, 'Reggae', 'Reggae is a music genre first developed in Jamaica in the late 1960s. While sometimes used in a broader sense to refer to most types of Jamaican music, the term reggae more properly denotes a particular music style that originated following on the development of ska and rocksteady.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (9, 'Pop', 'Pop music is a music genre that developed from the mid-1950s as a softer alternative to rock & roll and later to rock music. It has a focus on commercial recording, often oriented towards a youth market, usually through the medium of relatively short and simple love songs. While these basic elements of the genre have remained fairly constant, pop music has absorbed influences from most other forms of popular music, particularly borrowing from the development of rock music, and utilizing key technological innovations to produce new variations on existing themes.');
INSERT INTO Genres (GenreId, Name, Description) VALUES (10, 'Classical', 'Classical music is a very general term which normally refers to the standard music of countries in the Western world. It is music that has been composed by musicians who are trained in the art of writing music (composing) and written down in music notation so that other musicians can play it. Classical music can also be described as "art music" because great art (skill) is needed to compose it and to perform it well. Classical music differs from pop music because it is not made just in order to be popular for a short time or just to be a commercial success.');


CREATE TABLE Orders(
	OrderId INT PRIMARY KEY NOT NULL,
	OrderDate DATE NOT NULL,
	Username VARCHAR(256) NULL,
	FirstName VARCHAR(160) NULL,
	LastName VARCHAR(160) NULL,
	Address VARCHAR(70) NULL,
	City VARCHAR(40) NULL,
	State VARCHAR(40) NULL,
	PostalCode VARCHAR(10) NULL,
	Country VARCHAR(40) NULL,
	Phone VARCHAR(24) NULL,
	Email VARCHAR(160) NULL,
	Total DOUBLE(10, 2) NOT NULL
 );
 
 
 CREATE TABLE Artists(
	ArtistId INT PRIMARY KEY NOT NULL,
	Name VARCHAR(120) NULL
 );
 
 
 INSERT INTO Artists (ArtistId, Name) VALUES (1, 'AC/DC');
INSERT INTO Artists (ArtistId, Name) VALUES (2, 'Accept');
INSERT INTO Artists (ArtistId, Name) VALUES (3, 'Aerosmith');
INSERT INTO Artists (ArtistId, Name) VALUES (4, 'Alanis Morissette');
INSERT INTO Artists (ArtistId, Name) VALUES (5, 'Alice In Chains');
INSERT INTO Artists (ArtistId, Name) VALUES (6, 'Ant鬾io Carlos Jobim');
INSERT INTO Artists (ArtistId, Name) VALUES (7, 'Apocalyptica');
INSERT INTO Artists (ArtistId, Name) VALUES (8, 'Audioslave');
INSERT INTO Artists (ArtistId, Name) VALUES (10, 'Billy Cobham');
INSERT INTO Artists (ArtistId, Name) VALUES (11, 'Black Label Society');
INSERT INTO Artists (ArtistId, Name) VALUES (12, 'Black Sabbath');
INSERT INTO Artists (ArtistId, Name) VALUES (14, 'Bruce Dickinso');
INSERT INTO Artists (ArtistId, Name) VALUES (15, 'Buddy Guy');
INSERT INTO Artists (ArtistId, Name) VALUES (16, 'Caetano Veloso');
INSERT INTO Artists (ArtistId, Name) VALUES (17, 'Chico Buarque');
INSERT INTO Artists (ArtistId, Name) VALUES (18, 'Chico Science & Na玢o Zumbi');
INSERT INTO Artists (ArtistId, Name) VALUES (19, 'Cidade Negra');
INSERT INTO Artists (ArtistId, Name) VALUES (20, 'Cl醬dio Zoli');
INSERT INTO Artists (ArtistId, Name) VALUES (21, 'Various Artists');
INSERT INTO Artists (ArtistId, Name) VALUES (22, 'Led Zeppeli');
INSERT INTO Artists (ArtistId, Name) VALUES (23, 'Frank Zappa & Captain Beefheart');
INSERT INTO Artists (ArtistId, Name) VALUES (24, 'Marcos Valle');
INSERT INTO Artists (ArtistId, Name) VALUES (27, 'Gilberto Gil');
INSERT INTO Artists (ArtistId, Name) VALUES (37, 'Ed Motta');
INSERT INTO Artists (ArtistId, Name) VALUES (41, 'Elis Regina');
INSERT INTO Artists (ArtistId, Name) VALUES (42, 'Milton Nascimento');
INSERT INTO Artists (ArtistId, Name) VALUES (46, 'Jorge Be');
INSERT INTO Artists (ArtistId, Name) VALUES (50, 'Metallica');
INSERT INTO Artists (ArtistId, Name) VALUES (51, 'Quee');
INSERT INTO Artists (ArtistId, Name) VALUES (52, 'Kiss');
INSERT INTO Artists (ArtistId, Name) VALUES (53, 'Spyro Gyra');
INSERT INTO Artists (ArtistId, Name) VALUES (55, 'David Coverdale');
INSERT INTO Artists (ArtistId, Name) VALUES (56, 'Gonzaguinha');
INSERT INTO Artists (ArtistId, Name) VALUES (58, 'Deep Purple');
INSERT INTO Artists (ArtistId, Name) VALUES (59, 'Santana');
INSERT INTO Artists (ArtistId, Name) VALUES (68, 'Miles Davis');
INSERT INTO Artists (ArtistId, Name) VALUES (72, 'Vin韈ius De Moraes');
INSERT INTO Artists (ArtistId, Name) VALUES (76, 'Creedence Clearwater Revival');
INSERT INTO Artists (ArtistId, Name) VALUES (77, 'C醩sia Eller');
INSERT INTO Artists (ArtistId, Name) VALUES (79, 'Dennis Chambers');
INSERT INTO Artists (ArtistId, Name) VALUES (80, 'Djava');
INSERT INTO Artists (ArtistId, Name) VALUES (81, 'Eric Clapto');
INSERT INTO Artists (ArtistId, Name) VALUES (82, 'Faith No More');
INSERT INTO Artists (ArtistId, Name) VALUES (83, 'Falamansa');
INSERT INTO Artists (ArtistId, Name) VALUES (84, 'Foo Fighters');
INSERT INTO Artists (ArtistId, Name) VALUES (86, 'Funk Como Le Gusta');
INSERT INTO Artists (ArtistId, Name) VALUES (87, 'Godsmack');
INSERT INTO Artists (ArtistId, Name) VALUES (88, 'Guns '' Roses');
INSERT INTO Artists (ArtistId, Name) VALUES (89, 'Incognito');
INSERT INTO Artists (ArtistId, Name) VALUES (90, 'Iron Maide');
INSERT INTO Artists (ArtistId, Name) VALUES (92, 'Jamiroquai');
INSERT INTO Artists (ArtistId, Name) VALUES (94, 'Jimi Hendrix');
INSERT INTO Artists (ArtistId, Name) VALUES (95, 'Joe Satriani');
INSERT INTO Artists (ArtistId, Name) VALUES (96, 'Jota Quest');
INSERT INTO Artists (ArtistId, Name) VALUES (98, 'Judas Priest');
INSERT INTO Artists (ArtistId, Name) VALUES (99, 'Legi鉶 Urbana');
INSERT INTO Artists (ArtistId, Name) VALUES (100, 'Lenny Kravitz');
INSERT INTO Artists (ArtistId, Name) VALUES (101, 'Lulu Santos');
INSERT INTO Artists (ArtistId, Name) VALUES (102, 'Marillio');
INSERT INTO Artists (ArtistId, Name) VALUES (103, 'Marisa Monte');
INSERT INTO Artists (ArtistId, Name) VALUES (105, 'Men At Work');
INSERT INTO Artists (ArtistId, Name) VALUES (106, 'Mot鰎head');
INSERT INTO Artists (ArtistId, Name) VALUES (109, 'M鰐ley Cr黣');
INSERT INTO Artists (ArtistId, Name) VALUES (110, 'Nirvana');
INSERT INTO Artists (ArtistId, Name) VALUES (111, 'O Ter鏾');
INSERT INTO Artists (ArtistId, Name) VALUES (112, 'Olodum');
INSERT INTO Artists (ArtistId, Name) VALUES (113, 'Os Paralamas Do Sucesso');
INSERT INTO Artists (ArtistId, Name) VALUES (114, 'Ozzy Osbourne');
INSERT INTO Artists (ArtistId, Name) VALUES (115, 'Page & Plant');
INSERT INTO Artists (ArtistId, Name) VALUES (117, 'Paul D''Ianno');
INSERT INTO Artists (ArtistId, Name) VALUES (118, 'Pearl Jam');
INSERT INTO Artists (ArtistId, Name) VALUES (120, 'Pink Floyd');
INSERT INTO Artists (ArtistId, Name) VALUES (124, 'R.E.M.');
INSERT INTO Artists (ArtistId, Name) VALUES (126, 'Raul Seixas');
INSERT INTO Artists (ArtistId, Name) VALUES (127, 'Red Hot Chili Peppers');
INSERT INTO Artists (ArtistId, Name) VALUES (128, 'Rush');
INSERT INTO Artists (ArtistId, Name) VALUES (130, 'Skank');
INSERT INTO Artists (ArtistId, Name) VALUES (132, 'Soundgarde');
INSERT INTO Artists (ArtistId, Name) VALUES (133, 'Stevie Ray Vaughan & Double Trouble');
INSERT INTO Artists (ArtistId, Name) VALUES (134, 'Stone Temple Pilots');
INSERT INTO Artists (ArtistId, Name) VALUES (135, 'System Of A Dow');
INSERT INTO Artists (ArtistId, Name) VALUES (136, 'Terry Bozzio, Tony Levin & Steve Stevens');
INSERT INTO Artists (ArtistId, Name) VALUES (137, 'The Black Crowes');
INSERT INTO Artists (ArtistId, Name) VALUES (139, 'The Cult');
INSERT INTO Artists (ArtistId, Name) VALUES (140, 'The Doors');
INSERT INTO Artists (ArtistId, Name) VALUES (141, 'The Police');
INSERT INTO Artists (ArtistId, Name) VALUES (142, 'The Rolling Stones');
INSERT INTO Artists (ArtistId, Name) VALUES (144, 'The Who');
INSERT INTO Artists (ArtistId, Name) VALUES (145, 'Tim Maia');
INSERT INTO Artists (ArtistId, Name) VALUES (150, 'U2');
INSERT INTO Artists (ArtistId, Name) VALUES (151, 'UB40');
INSERT INTO Artists (ArtistId, Name) VALUES (152, 'Van Hale');
INSERT INTO Artists (ArtistId, Name) VALUES (153, 'Velvet Revolver');
INSERT INTO Artists (ArtistId, Name) VALUES (155, 'Zeca Pagodinho');
INSERT INTO Artists (ArtistId, Name) VALUES (157, 'Dread Zeppeli');
INSERT INTO Artists (ArtistId, Name) VALUES (179, 'Scorpions');
INSERT INTO Artists (ArtistId, Name) VALUES (196, 'Cake');
INSERT INTO Artists (ArtistId, Name) VALUES (197, 'Aisha Duo');
INSERT INTO Artists (ArtistId, Name) VALUES (200, 'The Posies');
INSERT INTO Artists (ArtistId, Name) VALUES (201, 'Luciana Souza/Romero Lubambo');
INSERT INTO Artists (ArtistId, Name) VALUES (202, 'Aaron Goldberg');
INSERT INTO Artists (ArtistId, Name) VALUES (203, 'Nicolaus Esterhazy Sinfonia');
INSERT INTO Artists (ArtistId, Name) VALUES (204, 'Temple of the Dog');
INSERT INTO Artists (ArtistId, Name) VALUES (205, 'Chris Cornell');
INSERT INTO Artists (ArtistId, Name) VALUES (206, 'Alberto Turco & Nova Schola Gregoriana');
INSERT INTO Artists (ArtistId, Name) VALUES (208, 'English Concert & Trevor Pinnock');
INSERT INTO Artists (ArtistId, Name) VALUES (211, 'Wilhelm Kempff');
INSERT INTO Artists (ArtistId, Name) VALUES (212, 'Yo-Yo Ma');
INSERT INTO Artists (ArtistId, Name) VALUES (213, 'Scholars Baroque Ensemble');
INSERT INTO Artists (ArtistId, Name) VALUES (217, 'Royal Philharmonic Orchestra & Sir Thomas Beecham');
INSERT INTO Artists (ArtistId, Name) VALUES (219, 'Britten Sinfonia, Ivor Bolton & Lesley Garrett');
INSERT INTO Artists (ArtistId, Name) VALUES (221, 'Sir Georg Solti & Wiener Philharmoniker');
INSERT INTO Artists (ArtistId, Name) VALUES (223, 'London Symphony Orchestra & Sir Charles Mackerras');
INSERT INTO Artists (ArtistId, Name) VALUES (224, 'Barry Wordsworth & BBC Concert Orchestra');
INSERT INTO Artists (ArtistId, Name) VALUES (226, 'Eugene Ormandy');
INSERT INTO Artists (ArtistId, Name) VALUES (229, 'Boston Symphony Orchestra & Seiji Ozawa');
INSERT INTO Artists (ArtistId, Name) VALUES (230, 'Aaron Copland & London Symphony Orchestra');
INSERT INTO Artists (ArtistId, Name) VALUES (231, 'Ton Koopma');
INSERT INTO Artists (ArtistId, Name) VALUES (232, 'Sergei Prokofiev & Yuri Temirkanov');
INSERT INTO Artists (ArtistId, Name) VALUES (233, 'Chicago Symphony Orchestra & Fritz Reiner');
INSERT INTO Artists (ArtistId, Name) VALUES (234, 'Orchestra of The Age of Enlightenment');
INSERT INTO Artists (ArtistId, Name) VALUES (236, 'James Levine');
INSERT INTO Artists (ArtistId, Name) VALUES (237, 'Berliner Philharmoniker & Hans Rosbaud');
INSERT INTO Artists (ArtistId, Name) VALUES (238, 'Maurizio Pollini');
INSERT INTO Artists (ArtistId, Name) VALUES (240, 'Gustav Mahler');
INSERT INTO Artists (ArtistId, Name) VALUES (242, 'Edo de Waart & San Francisco Symphony');
INSERT INTO Artists (ArtistId, Name) VALUES (244, 'Choir Of Westminster Abbey & Simon Presto');
INSERT INTO Artists (ArtistId, Name) VALUES (245, 'Michael Tilson Thomas & San Francisco Symphony');
INSERT INTO Artists (ArtistId, Name) VALUES (247, 'The King''s Singers');
INSERT INTO Artists (ArtistId, Name) VALUES (248, 'Berliner Philharmoniker & Herbert Von Karaja');
INSERT INTO Artists (ArtistId, Name) VALUES (250, 'Christopher O''Riley');
INSERT INTO Artists (ArtistId, Name) VALUES (251, 'Fretwork');
INSERT INTO Artists (ArtistId, Name) VALUES (252, 'Amy Winehouse');
INSERT INTO Artists (ArtistId, Name) VALUES (253, 'Calexico');
INSERT INTO Artists (ArtistId, Name) VALUES (255, 'Yehudi Menuhi');
INSERT INTO Artists (ArtistId, Name) VALUES (258, 'Les Arts Florissants & William Christie');
INSERT INTO Artists (ArtistId, Name) VALUES (259, 'The 12 Cellists of The Berlin Philharmonic');
INSERT INTO Artists (ArtistId, Name) VALUES (260, 'Adrian Leaper & Doreen de Feis');
INSERT INTO Artists (ArtistId, Name) VALUES (261, 'Roger Norrington, London Classical Players');
INSERT INTO Artists (ArtistId, Name) VALUES (264, 'Kent Nagano and Orchestre de l''Op閞a de Lyo');
INSERT INTO Artists (ArtistId, Name) VALUES (265, 'Julian Bream');
INSERT INTO Artists (ArtistId, Name) VALUES (266, 'Martin Roscoe');
INSERT INTO Artists (ArtistId, Name) VALUES (267, 'G鰐eborgs Symfoniker & Neeme J鋜vi');
INSERT INTO Artists (ArtistId, Name) VALUES (270, 'Gerald Moore');
INSERT INTO Artists (ArtistId, Name) VALUES (271, 'Mela Tenenbaum, Pro Musica Prague & Richard Kapp');
INSERT INTO Artists (ArtistId, Name) VALUES (274, 'Nash Ensemble');
INSERT INTO Artists (ArtistId, Name) VALUES (276, 'Chic');
INSERT INTO Artists (ArtistId, Name) VALUES (277, 'Anita Ward');
INSERT INTO Artists (ArtistId, Name) VALUES (278, 'Donna Summer');


CREATE TABLE Albums(
	AlbumId INT PRIMARY KEY NOT NULL,
	GenreId INT NOT NULL,
	ArtistId INT NOT NULL,
	Title VARCHAR(160) NOT NULL,
	Price DOUBLE(10, 2) NOT NULL,
	AlbumArtUrl VARCHAR(1024) NULL
);


INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (1, 1, 1, 'For Those About To Rock We Salute You',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (2, 1, 1, 'Let There Be Rock',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (3, 1, 100, 'Greatest Hits',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (4, 1, 102, 'Misplaced Childhood',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (5, 1, 105, 'The Best Of Men At Work',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (7, 1, 110, 'Nevermind',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (8, 1, 111, 'Compositores',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (9, 1, 114, 'Bark at the Moon (Remastered)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (10, 1, 114, 'Blizzard of Ozz',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (11, 1, 114, 'Diary of a Madman (Remastered)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (12, 1, 114, 'No More Tears (Remastered)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (13, 1, 114, 'Speak of the Devil',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (14, 1, 115, 'Walking INTo Clarksdale',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (15, 1, 117, 'The Beast Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (16, 1, 118, 'Live On Two Legs Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (17, 1, 118, 'Riot Act',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (18, 1, 118, 'Te',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (19, 1, 118, 'Vs.',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (20, 1, 120, 'Dark Side Of The Moo',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (21, 1, 124, 'New Adventures In Hi-Fi',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (22, 1, 126, 'Raul Seixas',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (23, 1, 127, 'By The Way',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (24, 1, 127, 'Californicatio',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (25, 1, 128, 'Retrospective I (1974-1980)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (26, 1, 130, 'Maquinarama',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (27, 1, 130, 'O Samba Pocon?',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (28, 1, 132, 'A-Sides',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (29, 1, 134, 'Core',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (30, 1, 136, '1997 Black Light Syndrome',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (31, 1, 139, 'Beyond Good And Evil',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (33, 1, 140, 'The Doors',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (34, 1, 141, 'The Police Greatest Hits',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (35, 1, 142, 'Hot Rocks, 1964-1971 (Disc 1)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (36, 1, 142, 'No Security',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (37, 1, 142, 'Voodoo Lounge',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (38, 1, 144, 'My Generation - The Very Best Of The Who',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (39, 1, 150, 'Achtung Baby',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (40, 1, 150, 'B-Sides 1980-1990',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (41, 1, 150, 'How To Dismantle An Atomic Bomb',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (42, 1, 150, 'Pop',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (43, 1, 150, 'Rattle And Hum',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (44, 1, 150, 'The Best Of 1980-1990',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (45, 1, 150, 'War',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (46, 1, 150, 'Zooropa',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (47, 1, 152, 'Diver Dow',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (48, 1, 152, 'The Best Of Van Halen, Vol. I',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (49, 1, 152, 'Van Halen III',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (50, 1, 152, 'Van Hale',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (51, 1, 153, 'Contraband',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (52, 1, 157, 'Un-Led-Ed',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (54, 1, 2, 'Balls to the Wall',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (55, 1, 2, 'Restless and Wild',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (56, 1, 200, 'Every Kind of Light',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (57, 1, 22, 'BBC Sessions Disc 1 Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (58, 1, 22, 'BBC Sessions Disc 2 Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (59, 1, 22, 'Coda',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (60, 1, 22, 'Houses Of The Holy',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (61, 1, 22, 'In Through The Out Door',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (62, 1, 22, 'IV',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (63, 1, 22, 'Led Zeppelin I',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (64, 1, 22, 'Led Zeppelin II',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (65, 1, 22, 'Led Zeppelin III',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (66, 1, 22, 'Physical Graffiti Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (67, 1, 22, 'Physical Graffiti Disc 2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (68, 1, 22, 'Presence',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (69, 1, 22, 'The Song Remains The Same (Disc 1)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (70, 1, 22, 'The Song Remains The Same (Disc 2)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (71, 1, 23, 'Bongo Fury',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (72, 1, 3, 'Big Ones',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (73, 1, 4, 'Jagged Little Pill',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (74, 1, 5, 'Facelift',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (75, 1, 51, 'Greatest Hits I',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (76, 1, 51, 'Greatest Hits II',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (77, 1, 51, 'News Of The World',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (78, 1, 52, 'Greatest Kiss',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (79, 1, 52, 'Unplugged Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (80, 1, 55, 'INTo The Light',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (81, 1, 58, 'Come Taste The Band',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (82, 1, 58, 'Deep Purple In Rock',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (83, 1, 58, 'Fireball',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (84, 1, 58, 'Machine Head',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (85, 1, 58, 'MK III The Final Concerts Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (86, 1, 58, 'Purpendicular',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (87, 1, 58, 'Slaves And Masters',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (88, 1, 58, 'Stormbringer',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (89, 1, 58, 'The Battle Rages O',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (90, 1, 58, 'The Final Concerts (Disc 2)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (91, 1, 59, 'Santana - As Years Go By',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (92, 1, 59, 'Santana Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (93, 1, 59, 'Supernatural',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (94, 1, 76, 'Chronicle, Vol. 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (95, 1, 76, 'Chronicle, Vol. 2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (96, 1, 8, 'Audioslave',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (97, 1, 82, 'King For A Day Fool For A Lifetime',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (98, 1, 84, 'In Your Honor Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (99, 1, 84, 'In Your Honor Disc 2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (100, 1, 84, 'The Colour And The Shape',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (101, 1, 88, 'Appetite for Destructio',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (102, 1, 88, 'Use Your Illusion I',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (103, 1, 90, 'A Matter of Life and Death',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (104, 1, 90, 'Brave New World',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (105, 1, 90, 'Fear Of The Dark',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (106, 1, 90, 'Live At Donington 1992 (Disc 1)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (107, 1, 90, 'Live At Donington 1992 (Disc 2)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (108, 1, 90, 'Rock In Rio CD2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (109, 1, 90, 'The DOUBLE of The Beast',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (110, 1, 90, 'The X Factor',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (111, 1, 90, 'Virtual XI',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (112, 1, 92, 'Emergency On Planet Earth',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (113, 1, 94, 'Are You Experienced?',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (114, 1, 95, 'Surfing with the Alien (Remastered)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (115, 10, 203, 'The Best of Beethove',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (119, 10, 208, 'Pachelbel: Canon & Gigue',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (122, 10, 211, 'Bach: Goldberg Variations',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (123, 10, 212, 'Bach: The Cello Suites',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (124, 10, 213, 'Handel: The Messiah (Highlights)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (128, 10, 217, 'Haydn: Symphonies 99 - 104',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (130, 10, 219, 'A Soprano Inspired',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (132, 10, 221, 'Wagner: Favourite Overtures',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (134, 10, 223, 'Tchaikovsky: The Nutcracker',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (135, 10, 224, 'The Last Night of the Proms',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (138, 10, 226, 'Respighi:Pines of Rome',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (139, 10, 226, 'Strauss: Waltzes',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (140, 10, 229, 'Carmina Burana',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (141, 10, 230, 'A Copland Celebration, Vol. I',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (142, 10, 231, 'Bach: Toccata & Fugue in D Minor',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (143, 10, 232, 'Prokofiev: Symphony No.1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (144, 10, 233, 'Scheherazade',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (145, 10, 234, 'Bach: The Brandenburg Concertos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (147, 10, 236, 'Mascagni: Cavalleria Rusticana',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (148, 10, 237, 'Sibelius: Finlandia',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (152, 10, 242, 'Adams, John: The Chairman Dances',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (154, 10, 245, 'Berlioz: Symphonie Fantastique',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (155, 10, 245, 'Prokofiev: Romeo & Juliet',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (157, 10, 247, 'English Renaissance',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (159, 10, 248, 'Mozart: Symphonies Nos. 40 & 41',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (161, 10, 250, 'SCRIABIN: Vers la flamme',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (163, 10, 255, 'Bartok: Violin & Viola Concertos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (166, 10, 259, 'South American Getaway',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (167, 10, 260, 'G髍ecki: Symphony No. 3',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (168, 10, 261, 'Purcell: The Fairy Quee',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (171, 10, 264, 'Weill: The Seven Deadly Sins',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (173, 10, 266, 'Szymanowski: Piano Works, Vol. 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (174, 10, 267, 'Nielsen: The Six Symphonies',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (177, 10, 274, 'Mozart: Chamber Music',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (178, 2, 10, 'The Best Of Billy Cobham',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (179, 2, 197, 'Quiet Songs',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (180, 2, 202, 'Worlds',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (181, 2, 27, 'Quanta Gente Veio ver--B鬾us De Carnaval',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (182, 2, 53, 'Heart of the Night',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (183, 2, 53, 'Morning Dance',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (184, 2, 6, 'Warner 25 Anos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (185, 2, 68, 'Miles Ahead',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (186, 2, 68, 'The Essential Miles Davis Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (187, 2, 68, 'The Essential Miles Davis Disc 2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (188, 2, 79, 'Outbreak',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (189, 2, 89, 'Blue Moods',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (190, 3, 100, 'Greatest Hits',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (191, 3, 106, 'Ace Of Spades',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (192, 3, 109, 'Motley Crue Greatest Hits',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (193, 3, 11, 'Alcohol Fueled Brewtality Live! Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (194, 3, 11, 'Alcohol Fueled Brewtality Live! Disc 2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (195, 3, 114, 'Tribute',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (196, 3, 12, 'Black Sabbath Vol. 4 (Remaster)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (197, 3, 12, 'Black Sabbath',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (198, 3, 135, 'Mezmerize',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (199, 3, 14, 'Chemical Wedding',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (200, 3, 50, '...And Justice For All',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (201, 3, 50, 'Black Album',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (202, 3, 50, 'Garage Inc. (Disc 1)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (203, 3, 50, 'Garage Inc. (Disc 2)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (204, 3, 50, 'Load',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (205, 3, 50, 'Master Of Puppets',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (206, 3, 50, 'ReLoad',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (207, 3, 50, 'Ride The Lightning',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (208, 3, 50, 'St. Anger',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (209, 3, 7, 'Plays Metallica By Four Cellos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (210, 3, 87, 'Faceless',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (211, 3, 88, 'Use Your Illusion II',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (212, 3, 90, 'A Real Dead One',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (213, 3, 90, 'A Real Live One',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (214, 3, 90, 'Live After Death',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (215, 3, 90, 'No Prayer For The Dying',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (216, 3, 90, 'Piece Of Mind',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (217, 3, 90, 'Powerslave',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (218, 3, 90, 'Rock In Rio CD1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (219, 3, 90, 'Rock In Rio CD2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (220, 3, 90, 'Seventh Son of a Seventh So',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (221, 3, 90, 'Somewhere in Time',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (222, 3, 90, 'The DOUBLE of The Beast',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (223, 3, 98, 'Living After Midnight',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (224, 4, 196, 'Cake: B-Sides and Rarities',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (225, 4, 204, 'Temple of the Dog',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (226, 4, 205, 'Carry O',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (227, 4, 253, 'Carried to Dust (Bonus Track Version)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (228, 4, 8, 'Revelations',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (229, 6, 133, 'In Step',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (230, 6, 137, 'Live Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (231, 6, 137, 'Live Disc 2',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (233, 6, 81, 'The Cream Of Clapto',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (234, 6, 81, 'Unplugged',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (235, 6, 90, 'Iron Maide',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (238, 7, 103, 'Barulhinho Bom',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (239, 7, 112, 'Olodum',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (240, 7, 113, 'Ac鷖tico MTV',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (241, 7, 113, 'Arquivo II',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (242, 7, 113, 'Arquivo Os Paralamas Do Sucesso',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (243, 7, 145, 'Serie Sem Limite (Disc 1)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (244, 7, 145, 'Serie Sem Limite (Disc 2)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (245, 7, 155, 'Ao Vivo IMPORT',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (246, 7, 16, 'Prenda Minha',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (247, 7, 16, 'Sozinho Remix Ao Vivo',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (248, 7, 17, 'Minha Historia',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (249, 7, 18, 'Afrociberdelia',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (250, 7, 18, 'Da Lama Ao Caos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (251, 7, 20, 'Na Pista',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (252, 7, 201, 'Duos II',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (253, 7, 21, 'Sambas De Enredo 2001',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (254, 7, 21, 'Vozes do MPB',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (255, 7, 24, 'Chill: Brazil (Disc 1)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (256, 7, 27, 'Quanta Gente Veio Ver (Live)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (257, 7, 37, 'The Best of Ed Motta',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (258, 7, 41, 'Elis Regina-Minha Hist髍ia',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (259, 7, 42, 'Milton Nascimento Ao Vivo',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (260, 7, 42, 'Minas',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (261, 7, 46, 'Jorge Ben Jor 25 Anos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (262, 7, 56, 'Meus Momentos',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (263, 7, 6, 'Chill: Brazil (Disc 2)',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (264, 7, 72, 'Vinicius De Moraes',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (266, 7, 77, 'C醩sia Eller - Sem Limite Disc 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (267, 7, 80, 'Djavan Ao Vivo - Vol. 02',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (268, 7, 80, 'Djavan Ao Vivo - Vol. 1',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (269, 7, 81, 'Unplugged',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (270, 7, 83, 'Deixa Entrar',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (271, 7, 86, 'Roda De Funk',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (272, 7, 96, 'Jota Quest-1995',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (274, 7, 99, 'Mais Do Mesmo',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (275, 8, 100, 'Greatest Hits',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (276, 8, 151, 'UB40 The Best Of - Volume Two UK',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (277, 8, 19, 'Ac鷖tico MTV Live',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (278, 8, 19, 'Cidade Negra - Hits',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (280, 9, 21, 'Ax?Bahia 2001',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (281, 9, 252, 'Frank',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (282, 5, 276, 'Le Freak',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (283, 5, 278, 'MacArthur Park Suite',  8.99  , '/Images/placeholder.gif');
INSERT INTO Albums (AlbumId, GenreId, ArtistId, Title, Price, AlbumArtUrl) VALUES (284, 5, 277, 'Ring My Bell',  8.99, '/Images/placeholder.gif');


CREATE TABLE OrderDetails(
	OrderDetailId INT PRIMARY KEY NOT NULL,
	OrderId INT NOT NULL,
	AlbumId INT NOT NULL,
	Quantity INT NOT NULL,
	UnitPrice DOUBLE(10, 2) NOT NULL
);

CREATE TABLE Carts(
	RecordId INT PRIMARY KEY NOT NULL,
	CartId  VARCHAR(50) NOT NULL,
	AlbumId INT NOT NULL,
	Count INT NOT NULL,
	DateCreated DATE NOT NULL
);

ALTER TABLE Albums ADD CONSTRAINT FK_ALBUMS_ARTISTS_ID  FOREIGN KEY (ArtistId) REFERENCES ARTISTS(ArtistId);
ALTER TABLE Albums ADD CONSTRAINT FK_ALBUMS_GENRES_ID  FOREIGN KEY (GenreId) REFERENCES Genres(GenreId);
ALTER TABLE Carts ADD CONSTRAINT FK_CARTS_ALBUMS_ID  FOREIGN KEY (AlbumId) REFERENCES Albums(AlbumId);
ALTER TABLE OrderDetails ADD CONSTRAINT FK_ORDERTAILS_ALBUMS_ID  FOREIGN KEY (AlbumId) REFERENCES Albums(AlbumId);
ALTER TABLE OrderDetails ADD CONSTRAINT FK_ORDERTAILS_ORDERS_ID  FOREIGN KEY (OrderId) REFERENCES Orders(OrderId);