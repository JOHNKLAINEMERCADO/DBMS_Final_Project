CREATE TABLE Cards(
CardID int,
Title varchar(25),
CardType varchar(10),
AP int,
MP int,
FP int,
laze int,
addturn int,
duration int,
FPCost int,
MPCost int,
qty int,
description varchar(50),
message varchar(80),
PRIMARY KEY (CardID)
);

INSERT INTO Cards(CardID, Title, CardType, AP, MP, FP, laze, addturn, duration, FPCost, MPCost, qty, description, message) VALUES 
(1, 'Book Reading', 'RED', 3, 0, 0, 0, 0, 1, 1, 0, 3, 'Gain 3 Academic Points', 'You Played Book Reading, Gained 3 AP'),
(2, 'Advanced Study','RED', 5, 0, 0, 0, 0, 1, 2, 0, 2, 'Use two slots, Gain 5 Academic Points', 'You Played AdvancedStudy\, Gained 5 AP'), 
(3, 'Last Minute Review', 'RED', 1, 0, 0, 0, 0, 0, 0, 0, 2, 'Gain 1 Academic Poin', 'You Played Last Minute Review, Gained 1 AP'),
(4, 'Just A Peek', 'RED', 2, 0, 0, 0, 0, 0, 0, 2, 2, 'Just A Peek is fine right?', 'You Played Just a Peek, Gained 2 AP'),
(5, 'Procrastinate', 'RED', 7, 3, 0, 0, 0, 2, 2, 2, 1, 'Gain 7 AP', 'You chose to Procrastinate, Gained 3*laze AP'),
(6, 'Gaming Session', 'GREEN', 0, 4, 0, 2, 0, 2, 3, 0, 1, '+1 laze Stack, Restore 1 Mental Prowess', 'You Played Gaming Session, restored 2 MP'),
(7, 'Just One Game', 'GREEN', 0, 1, 0, 1, 0, 1, 1, 0, 2, '+1 laze Stack, Restore 1 Mental Prowess', 'You Played Just One Game, restored 1 MP'),
(8, 'On The Side', 'GREEN', 0, 1, 0, 0, 0, 0, 1, 0, 2, 'Restore 1 Mental Prowess, draw one card', 'You relaxed for a short while, restored 1 MP'),
(9, 'ShortNap', 'BLUE', 0, 0, 3, 0, 0, 1, 0, 0, 2, 'Restore 3 Focus Points', 'You took a Short Nap, Restored 2 FP'),
(10, 'Hot Shower', 'BLUE', 0, 0, 2, 0, 0, 1, 0, 0, 2, 'Restore 2 Focus Points', 'You took a Hot Shower, Restored 2 FP');

SELECT * FROM Cards WHERE CardID = 1

CREATE TABLE Decks(
DeckID int NOT NULL AUTO_INCREMENT, 
DeckName varchar(20), 
Card1 int,
Card2 int,
Card3 int,
Card4 int,
Card5 int,
Card6 int,
Card7 int,
Card8 int,
Card9 int,
Card10 int,
PRIMARY  KEY (DeckID),
UNIQUE(DeckName),
FOREIGN KEY (Card1) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card2) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card3) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card4) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card5) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card6) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card7) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card8) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card9) REFERENCES cards(CardID) ON DELETE CASCADE,
FOREIGN KEY (Card10) REFERENCES cards(CardID) ON DELETE CASCADE
);


INSERT INTO Decks(DeckID, DeckName, Card1, Card2, Card3, Card4, Card5, Card6, Card7, Card8, Card9, Card10) 
VALUES (1, 'sampledeck', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);