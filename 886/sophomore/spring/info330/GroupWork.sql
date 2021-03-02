USE Info330AProj_Gaming

-- Tables
CREATE TABLE AUDIENCE (
    AudienceID INT PRIMARY KEY IDENTITY(1,1),
    Fname varchar(20) NOT NULL,
    Lname varchar(20) NOT NULL,
    Gender varchar(20)
)

SET IDENTITY_INSERT AUDIENCE ON
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (1, 'Gabbey', 'Melrose', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (2, 'Ginny', 'Clausson', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (3, 'Grace', 'Noell', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (4, 'Layney', 'Brassington', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (5, 'Ody', 'Maytom', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (6, 'Skippie', 'Dineges', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (7, 'Chiquita', 'Whitelock', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (8, 'Henderson', 'Faughey', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (9, 'Cati', 'Flippelli', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (10, 'Lynelle', 'Bavridge', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (11, 'Gilligan', 'Littell', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (12, 'Lonnie', 'Gaskin', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (13, 'Olva', 'Kells', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (14, 'Arlen', 'Clough', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (15, 'Deny', 'Jantzen', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (16, 'Derby', 'Cantrell', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (17, 'Prentice', 'McGarahan', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (18, 'Jeremie', 'Rishman', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (19, 'Gladi', 'Mattessen', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (20, 'Brynn', 'Sibly', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (21, 'Emmott', 'Antonognoli', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (22, 'Arlee', 'MacGahy', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (23, 'Anita', 'Giscken', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (24, 'Pinchas', 'Gratrix', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (25, 'Aaron', 'Waeland', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (26, 'Margit', 'Normington', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (27, 'Sherlock', 'Bavin', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (28, 'Brew', 'Robathon', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (29, 'Leia', 'Poli', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (30, 'Timotheus', 'Ruscoe', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (31, 'Katine', 'Setchfield', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (32, 'Benjie', 'Sweett', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (33, 'Lucho', 'Alvares', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (34, 'Dory', 'Iskowicz', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (35, 'Vyky', 'Jacombs', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (36, 'Josiah', 'Duguid', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (37, 'Cirilo', 'Glazer', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (38, 'Gisele', 'Fisk', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (39, 'Fabe', 'Howkins', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (40, 'Paulette', 'Fairrie', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (41, 'Jabez', 'Lutzmann', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (42, 'Terencio', 'Monkhouse', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (43, 'Justen', 'Brownhill', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (44, 'Ravi', 'Brunsden', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (45, 'Jayne', 'Fortesquieu', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (46, 'Tyson', 'Cullivan', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (47, 'Shelby', 'Hegel', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (48, 'Valerie', 'Blasl', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (49, 'Christoffer', 'Kerwin', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (50, 'Armin', 'Olensby', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (51, 'Allin', 'Jedrzejewicz', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (52, 'Rochella', 'Tarrant', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (53, 'Dolorita', 'Roke', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (54, 'Lemuel', 'Wisniowski', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (55, 'Misti', 'Gaenor', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (56, 'Vinni', 'Batcock', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (57, 'Bron', 'Ayrs', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (58, 'Izabel', 'Harsant', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (59, 'Sheelah', 'Plumb', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (60, 'Vick', 'Pendred', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (61, 'Theobald', 'Spillman', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (62, 'Aldin', 'Bowness', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (63, 'Marian', 'Maffetti', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (64, 'Carrissa', 'Poultney', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (65, 'Charlean', 'Georgeot', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (66, 'Mikol', 'Bim', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (67, 'Boony', 'Burrill', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (68, 'Saunder', 'Wall', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (69, 'Abbey', 'Labet', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (70, 'Quintilla', 'Ivakhin', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (71, 'Angelia', 'Comiskey', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (72, 'Emlen', 'Reveley', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (73, 'Mahmoud', 'Garrett', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (74, 'Rahal', 'Berks', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (75, 'Damon', 'Thurner', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (76, 'Amalea', 'Hadgkiss', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (77, 'Angie', 'Newbery', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (78, 'Shaun', 'Haslum', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (79, 'Jeth', 'Shevell', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (80, 'Luelle', 'Feldberger', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (81, 'Dorie', 'Balls', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (82, 'Burl', 'Gilberthorpe', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (83, 'Ailina', 'Furber', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (84, 'Ricky', 'Renard', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (85, 'Cy', 'Fibbit', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (86, 'Milzie', 'Caldicot', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (87, 'Meredith', 'Challener', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (88, 'Grenville', 'Zoren', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (89, 'Kaleena', 'Rainford', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (90, 'Thane', 'Hampton', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (91, 'Zebulon', 'Kiefer', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (92, 'Massimiliano', 'Tewkesberrie', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (93, 'Perren', 'Arnaldi', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (94, 'Yasmeen', 'Thormwell', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (95, 'Benedick', 'Tweddle', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (96, 'Cristian', 'Oliveti', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (97, 'Norman', 'Whymark', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (98, 'Antonino', 'O''Teague', 'Male');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (99, 'Kimmie', 'Petrello', 'Female');
insert into AUDIENCE (AudienceID, Fname, Lname, Gender) values (100, 'Tad', 'Witul', 'Male');
SET IDENTITY_INSERT AUDIENCE OFF

CREATE TABLE TICKET (
    TicketID INT PRIMARY KEY IDENTITY(1,1),
    AudienceID INT FOREIGN KEY REFERENCES AUDIENCE(AudienceID),
    TrnStageID INT FOREIGN KEY REFERENCES TOURNAMENT_STAGE(TrnStageID),
    SeatNumber INT NOT NULL,
    Price DECIMAL(3,2) NOT NULL
)

SET IDENTITY_INSERT TICKET ON
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (1, 21, 15, 13, 5.61);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (2, 4, 16, 28, 7.55);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (3, 61, 12, 35, 7.76);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (4, 80, 15, 1, 6.78);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (5, 95, 20, 16, 5.26);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (6, 74, 10, 30, 8.65);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (7, 31, 14, 15, 8.96);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (8, 6, 18, 10, 7.64);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (9, 9, 14, 5, 7.67);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (10, 73, 11, 29, 7.7);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (11, 13, 15, 39, 5.14);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (12, 49, 13, 29, 8.89);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (13, 53, 16, 32, 8.45);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (14, 76, 17, 7, 7.27);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (15, 29, 9, 39, 8.49);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (16, 19, 14, 6, 8.42);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (17, 38, 15, 21, 7.47);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (18, 35, 16, 48, 8.33);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (19, 57, 13, 20, 7.61);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (20, 65, 13, 16, 6.4);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (21, 59, 17, 42, 5.88);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (22, 100, 20, 19, 5.95);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (23, 69, 14, 48, 6.59);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (24, 30, 13, 30, 6.18);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (25, 3, 16, 36, 8.73);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (26, 71, 12, 50, 7.6);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (27, 7, 20, 12, 8.49);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (28, 80, 13, 4, 5.69);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (29, 6, 20, 23, 6.76);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (30, 11, 11, 26, 8.05);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (31, 35, 9, 26, 7.42);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (32, 50, 20, 27, 5.05);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (33, 24, 19, 21, 8.23);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (34, 14, 11, 18, 7.92);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (35, 24, 10, 4, 7.59);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (36, 43, 13, 30, 5.48);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (37, 37, 14, 33, 5.72);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (38, 66, 16, 25, 8.89);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (39, 12, 19, 33, 5.61);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (40, 45, 13, 16, 8.45);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (41, 64, 13, 10, 8.84);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (42, 41, 19, 21, 5.17);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (43, 98, 17, 33, 8.98);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (44, 38, 10, 43, 8.02);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (45, 10, 18, 10, 6.4);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (46, 19, 20, 13, 8.1);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (47, 91, 9, 7, 7.34);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (48, 72, 14, 2, 5.58);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (49, 51, 11, 25, 5.06);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (50, 56, 18, 14, 6.9);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (51, 20, 20, 42, 5.43);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (52, 77, 12, 7, 8.37);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (53, 75, 13, 19, 8.01);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (54, 83, 11, 13, 7.1);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (55, 79, 10, 48, 8.29);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (56, 25, 17, 10, 8.0);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (57, 91, 17, 7, 8.06);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (58, 75, 9, 22, 7.69);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (59, 12, 10, 50, 8.25);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (60, 70, 19, 50, 6.08);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (61, 43, 9, 33, 6.89);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (62, 37, 12, 1, 8.23);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (63, 50, 16, 6, 6.42);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (64, 3, 18, 46, 6.62);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (65, 17, 17, 40, 7.06);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (66, 39, 10, 2, 7.64);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (67, 53, 14, 6, 6.9);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (68, 80, 18, 19, 6.36);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (69, 89, 19, 3, 7.25);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (70, 10, 14, 16, 5.7);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (71, 11, 17, 21, 6.65);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (72, 91, 10, 10, 6.39);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (73, 58, 17, 23, 5.42);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (74, 74, 15, 5, 5.73);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (75, 23, 14, 8, 6.2);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (76, 26, 18, 27, 6.75);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (77, 5, 15, 44, 7.78);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (78, 91, 10, 32, 6.83);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (79, 31, 20, 6, 6.8);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (80, 80, 19, 18, 5.93);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (81, 74, 18, 13, 7.6);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (82, 86, 13, 40, 8.95);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (83, 36, 19, 29, 8.87);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (84, 34, 19, 29, 5.09);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (85, 53, 11, 21, 7.0);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (86, 57, 20, 18, 7.43);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (87, 51, 19, 25, 5.56);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (88, 82, 9, 15, 5.2);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (89, 19, 20, 37, 5.87);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (90, 55, 15, 20, 8.27);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (91, 93, 20, 16, 8.62);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (92, 56, 11, 29, 7.27);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (93, 20, 10, 8, 5.17);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (94, 1, 15, 22, 6.5);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (95, 64, 14, 50, 8.2);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (96, 19, 17, 5, 6.28);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (97, 90, 15, 5, 7.4);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (98, 27, 16, 39, 5.78);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (99, 54, 20, 41, 7.01);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (100, 67, 15, 10, 8.5);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (101, 82, 13, 27, 5.31);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (102, 14, 11, 49, 7.91);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (103, 96, 20, 22, 6.29);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (104, 18, 11, 27, 8.99);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (105, 74, 15, 6, 5.53);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (106, 81, 15, 25, 8.41);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (107, 6, 12, 25, 8.11);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (108, 98, 9, 8, 7.99);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (109, 62, 14, 29, 7.36);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (110, 87, 18, 25, 7.45);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (111, 57, 16, 3, 5.3);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (112, 21, 12, 45, 6.79);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (113, 5, 18, 16, 8.01);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (114, 29, 10, 8, 7.18);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (115, 10, 13, 16, 5.16);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (116, 58, 9, 40, 8.14);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (117, 28, 18, 17, 6.91);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (118, 100, 19, 28, 8.29);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (119, 45, 20, 37, 5.08);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (120, 37, 19, 46, 7.64);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (121, 31, 18, 29, 7.1);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (122, 17, 18, 4, 7.96);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (123, 60, 9, 21, 8.24);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (124, 26, 20, 7, 5.62);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (125, 93, 10, 16, 8.4);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (126, 98, 16, 14, 7.13);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (127, 38, 18, 3, 7.29);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (128, 32, 15, 12, 7.69);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (129, 68, 10, 28, 8.05);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (130, 97, 13, 45, 6.16);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (131, 45, 10, 20, 6.71);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (132, 4, 18, 7, 6.4);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (133, 36, 14, 30, 5.48);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (134, 72, 9, 4, 5.82);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (135, 66, 20, 13, 7.05);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (136, 46, 17, 33, 7.16);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (137, 69, 15, 7, 7.81);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (138, 16, 19, 20, 6.03);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (139, 27, 18, 28, 5.59);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (140, 94, 19, 12, 8.26);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (141, 59, 12, 4, 5.38);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (142, 77, 20, 36, 8.29);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (143, 73, 12, 33, 6.16);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (144, 93, 12, 43, 6.23);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (145, 26, 20, 23, 7.15);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (146, 84, 14, 17, 5.46);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (147, 11, 10, 12, 5.07);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (148, 67, 16, 7, 5.6);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (149, 91, 17, 16, 5.51);
insert into TICKET (TicketID, AudienceID, TrnStageID, SeatNumber, Price) values (150, 15, 15, 30, 7.34);
SET IDENTITY_INSERT TICKET OFF


CREATE TABLE TEAM (
    TeamID INT PRIMARY KEY IDENTITY(1,1),
    ManagerID INT FOREIGN KEY REFERENCES MANAGER(ManagerID),
    TeamName varchar(50) NOT NULL,
    TeamDesc varchar(500)
)

SET IDENTITY_INSERT TEAM ON
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (1, 1, 'Wolff-Stokes', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (2, 2, 'Bayer-Eichmann', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (3, 3, 'Harber Inc', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (4, 4, 'MacGyver-Tromp', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. ');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (5, 5, 'Walter, Witting and Bernier', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (6, 6, 'O''Reilly LLC', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (7, 7, 'Legros, Blanda and Beer', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.');
insert into TEAM (TeamID, ManagerID, TeamName, TeamDesc) values (8, 8, 'McGlynn, Feeney and Rodriguez', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.');
SET IDENTITY_INSERT TEAM OFF

CREATE TABLE GAME (
    GameID INT PRIMARY KEY IDENTITY(1,1),
    TrnStageID INT FOREIGN KEY REFERENCES TOURNAMENT_STAGE(TrnStageID),
	WinningTeamID INT FOREIGN KEY REFERENCES TEAM(TeamID),
	LosingTeamID INT FOREIGN KEY REFERENCES TEAM(TeamID),
    BeginTime TIME NOT NULL,
	EndTime TIME NOT NULL,
    GameDate DATE NOT NULL,
    WinningSide varchar(20) NOT NULL
)

ALTER TABLE GAME
ADD SerialNumber INT

ALTER TABLE GAME
DROP COLUMN GameDate

SET IDENTITY_INSERT GAME ON
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (1, 9, 4, 1, '2:13 PM', '3:07 PM', 3, 'Red');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (2, 12, 7, 6, '2:02 PM', '2:41 PM', 5, 'Blue');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (3, 12, 2, 3, '2:20 PM', '3:00 PM', 3, 'Red');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (4, 10, 8, 1, '2:45 PM', '3:16 PM', 1, 'Red');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (5, 11, 3, 1, '2:21 PM', '3:19 PM', 5, 'Blue');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (6, 12, 8, 5, '2:37 PM', '3:24 PM', 3, 'Red');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (7, 9, 7, 3, '2:07 PM', '2:53 PM', 1, 'Blue');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (8, 9, 3, 3, '2:09 PM', '3:00 PM', 4, 'Blue');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (9, 12, 7, 8, '2:18 PM', '3:06 PM', 3, 'Red');
insert into GAME (GameID, TrnStageID, WinningTeamID, LosingTeamID, BeginTime, EndTime, SerialNumber, WinningSide) values (10, 11, 1, 6, '2:54 PM', '3:34 PM', 5, 'Red');
SET IDENTITY_INSERT GAME OFF


CREATE TABLE STAT (
    StatID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    StatName varchar(20),
    StatDesc varchar(500),
    StatWeight INT
)

SET IDENTITY_INSERT STAT ON
INSERT INTO STAT (StatID, StatName, StatDesc, StatWeight) VALUES (1, 'kill', 'when a player kills another player', 2)
INSERT INTO STAT (StatID, StatName, StatDesc, StatWeight) VALUES (2, 'death', 'when a player is killed by another player', -1)
INSERT INTO STAT (StatID, StatName, StatDesc, StatWeight) VALUES (3, 'assist', 'when a player helps a teammate kill another player', 1)
SET IDENTITY_INSERT STAT OFF


-- Business rules:
-- A player cannot be on two teams at the same time
CREATE FUNCTION dbo.PlayerInOneTeam()
RETURNS INT
AS
    BEGIN
        DECLARE @RET INT = 0
        IF EXISTS(
                SELECT T.TeamID, T.TeamName
                FROM TEAM T
                    JOIN PLAYER_TEAM PT ON T.TeamID = PT.TeamID
                    JOIN PLAYER P ON PT.PlayerID = P.PlayerID
                GROUP BY T.TeamID, T.TeamName
                HAVING COUNT(DISTINCT P.PlayerID) > 1
        )
        SET @RET = 1
        RETURN @RET
    END

ALTER TABLE PLAYER_TEAM WITH NOCHECK
ADD CONSTRAINT CK_PlayerCanBeOnOnlyOneTeam
CHECK (dbo.PlayerInOneTeam() = 0)

-- A team must have 5 roles
CREATE FUNCTION dbo.TeamAtLeastFiveRoles()
RETURNS INT
AS
    BEGIN
        DECLARE @RET INT = 0
        IF EXISTS(
                SELECT T.TeamID, T.TeamName
                FROM TEAM T
                    JOIN PLAYER_TEAM PT ON T.TeamID = PT.TeamID
                    JOIN PLAYER P ON PT.PlayerID = P.PlayerID
                GROUP BY T.TeamID, T.TeamName
                HAVING COUNT(DISTINCT P.Role) < 5
        )
        SET @RET = 1
        RETURN @RET
    END

ALTER TABLE PLAYER_TEAM WITH NOCHECK
ADD CONSTRAINT CK_AtLeastFiveRoles
CHECK (dbo.TeamAtLeastFiveRoles() = 0)


-- Computed Columns:
-- Total wins per team (TEAM)
CREATE FUNCTION fn_TotalWinsPerTeam(@PK INT)
RETURNS INT
AS
BEGIN
    DECLARE @RET INT = (
        SELECT COUNT(G.WinningTeamID)
        FROM TEAM T
            JOIN GAME G ON T.TeamID = G.WinningTeamID
        WHERE T.TeamID = @PK
    )
RETURN @RET
END

ALTER TABLE TEAM
ADD CalcTotalWins AS (dbo.fn_TotalWinsPerTeam(TeamID))

-- Total kills per team
CREATE FUNCTION fn_TotalKillsPerGame(@PK INT)
RETURNS INT
AS
BEGIN
DECLARE @RET INT = (SELECT SUM(TotalKills)
    FROM PLAYER_CHAMPION PC
    WHERE PC.GameID = fn_TotalKillsPerGame.@PK)
RETURN @RET
END

ALTER TABLE GAME
ADD TotalKills AS (dbo.fn_TotalKillsPerGame(GameID))


-- Stored Procedure:
-- AUDIENCE
CREATE PROCEDURE uspNewAudience
@FName varchar(20),
@LName varchar(20),
@Gender varchar(20)
AS
    BEGIN TRANSACTION T
    INSERT INTO AUDIENCE(Fname, Lname, Gender)
    VALUES (@FName, @LName, @Gender)
    COMMIT TRANSACTION T

-- TICKET
CREATE PROCEDURE uspNewTicket
@SeatNumber INT,
@Price DECIMAL(3,2),
@TrnName varchar(20),
@StageName varchar(50),
@FName varchar(20),
@LName varchar(20),
@Gender varchar(20)
AS
    DECLARE @AudienceID INT, @TrnStageID INT, @TrnID INT, @StageID INT

    SET @AudienceID = (
        SELECT AudienceID
        FROM AUDIENCE
        WHERE Fname = @FName
        AND Lname = @LName
        AND Gender = @Gender
    )

	SET @TrnID = (SELECT TrnID FROM TOURNAMENT WHERE TrnName = @TrnName)
	SET @StageID = (SELECT StageID FROM STAGE WHERE StageName = @StageName)

    SET @TrnStageID = (
        SELECT TrnStageID
        FROM TOURNAMENT_STAGE
        WHERE TrnID = @TrnID
		AND StageID = @StageID
    )

    BEGIN TRANSACTION T
    INSERT INTO TICKET(AudienceID, TrnStageID, SeatNumber, Price)
    VALUES (@AudienceID, @TrnStageID, @SeatNumber, @Price)
    COMMIT TRANSACTION T

-- STAT
CREATE PROCEDURE uspNewStat
@StatName varchar(20),
@StatDesc varchar(500),
@StatWeight INT
AS

    BEGIN TRANSACTION T
    INSERT INTO STAT(StatName, StatDesc, StatWeight)
    VALUES (@StatName, @StatDesc, @StatWeight)
    COMMIT TRANSACTION T

-- GAME
CREATE PROCEDURE uspNewGame
@TrnName varchar(50),
@StageName varchar(50),
@WinningTeam varchar(50),
@LosingTeam varchar(50),
@WinningSide varchar(20),
@SerialNumber INT,
@Begin TIME,
@End TIME
AS
    DECLARE @TrnStageID INT, @WinningTeamID INT, @LosingTeamID INT, @TrnID INT, @StageID INT

    SET @TrnID = (SELECT TrnID FROM TOURNAMENT WHERE TrnName = @TrnName)
	SET @StageID = (SELECT StageID FROM STAGE WHERE StageName = @StageName)

    SET @TrnStageID = (
        SELECT TrnStageID
        FROM TOURNAMENT_STAGE
        WHERE TrnID = @TrnID
	    AND StageID = @StageID
    )

    SET @WinningTeamID = (
        SELECT TeamID
        FROM TEAM
        WHERE TeamName = @WinningTeam
    )

    SET @LosingTeamID = (
        SELECT TeamID
        FROM TEAM
        WHERE TeamName = @LosingTeam
    )

    BEGIN TRANSACTION T
    INSERT INTO GAME(TrnStageID, WinningTeamID, LosingTeamID, SerialNumber, BeginTime, EndTime, WinningSide)
    VALUES (@TrnStageID, @WinningTeamID, @LosingTeamID, @SerialNumber, @Begin, @End, @WinningSide)
    COMMIT TRANSACTION


-- View queries:
-- Which type of staff is required the most in all of the tournaments?
CREATE VIEW MostStaff AS
SELECT TOP 1 WITH TIES ST.StaffTypeName, COUNT(S.StaffID) As NumStaff
FROM STAFF_TYPE ST
    JOIN STAFF S ON ST.StaffTypeID = S.StaffTypeID
    JOIN STAGE_STAFF SS ON S.StaffID = SS.StageStaffID
    JOIN TOURNAMENT_STAGE TS ON SS.TrnStageID = TS.TrnStageID
    JOIN TOURNAMENT T ON TS.TrnID = T.TrnID
GROUP BY ST.StaffTypeName, NumStaff
ORDER BY NumStaff DESC

-- Which role is being played the most in the winning team of the tournament SQL G?
CREATE VIEW MostPlayedRoleSQLG AS
SELECT TOP 1 WITH TIES P.Role, COUNT(P.PlayerID) As NumPlayer
FROM PLAYER P
    JOIN PLAYER_TEAM PT ON P.PlayerID = PT.PlayerID
    JOIN TEAM T ON PT.TeamID = T.TeamID
    JOIN GAME G ON T.TeamID = G.WinningTeamID
    JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
    JOIN TOURNAMENT TR ON TS.TrnID = TR.TrnID
WHERE TrnName = 'SQL G'
GROUP BY P.Role
ORDER BY NumPlayer DESC