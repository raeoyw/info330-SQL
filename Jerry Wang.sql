-- Create a new database 
CREATE DATABASE Info330AProj_Gaming;
GO

USE Info330AProj_Gaming
GO

-- build tables 
CREATE TABLE PLAYER (
	PlayerID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	PlayerFname varchar(20) NOT NULL,
	PlayerLname varchar(20) NOT NULL,
	Gender varchar(10) NOT NULL,
	BirthDate date NOT NULL,
	InGameName varchar(20) NOT NULL,
	Elo varchar(10)
);

CREATE TABLE PLAYER_TEAM (
	PlayerTeamID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	PlayerID INT NOT NULL,
	TeamID INT NOT NULL,
	BeginDate date,
    EndDate date,
	FOREIGN KEY (PlayerID) REFERENCES PLAYER (PlayerID),
	FOREIGN KEY (TeamID) REFERENCES TEAM (TeamID)
);

CREATE TABLE PLAYER_CHAMPION (
	PlayerChampID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	PlayerID INT NOT NULL,
    ChampID INT NOT NULL,
	GameID INT NOT NULL
	FOREIGN KEY (PlayerID) REFERENCES PLAYER (PlayerID),
	FOREIGN KEY (ChampID) REFERENCES CHAMPION (ChampID),
	FOREIGN KEY (GameID) REFERENCES GAME (GameID)
);

CREATE TABLE PLAYER_STAT (
	PlayerStatID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	PlayerChampID INT NOT NULL,
	StatID INT NOT NULL,
	[Time] time NOT NULL
	FOREIGN KEY (PlayerChampID) REFERENCES PLAYER_CHAMPION (PlayerChampID),
	FOREIGN KEY (StatID) REFERENCES STAT (StatID)
);

CREATE TABLE CHAMPION (
	ChampID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	ChampName varchar(20)
);

INSERT INTO CHAMPION
VALUES ('Aatrox'), ('Ahri'), ('Akali'), ('Alistar'), ('Amumu')
GO

ALTER TABLE PLAYER
ADD [Role] CHAR(3) NOT NULL;
GO

-- create a back-up database
BACKUP DATABASE Info330AProj_Gaming
TO DISK = 'C:\SQL\Proj_Gaming.BAK';
GO

-- differential backup
BACKUP DATABASE Info330AProj_Gaming
TO DISK = 'C:\SQL\Proj_Gaming.BAK' WITH DIFFERENTIAL;
GO

-- Business rule 1: One ticket per person per stage
CREATE FUNCTION fn_OneTicketPerPersonPerStage()
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF EXISTS (SELECT AudienceID, TrnStageID
FROM TICKET T
GROUP BY AudienceID, TrnStageID
HAVING COUNT(TicketID) > 1
)
BEGIN
SET @RET = 1
END
RETURN @RET
END
GO

ALTER TABLE TICKET
ADD CONSTRAINT ck_noRepeatedtickets
CHECK (dbo.fn_OneTicketPerPersonPerStage() = 0)
GO

-- Business rule 2: A team must have at least five members (League of Legends rule)
CREATE FUNCTION fn_FiveMembersPerTeam()
RETURNS INT
AS
BEGIN
DECLARE @RET INT = 0
IF EXISTS (SELECT TeamID 
FROM PLAYER_TEAM PT
GROUP BY TeamID
HAVING COUNT(PlayerID) < 5
)
BEGIN
SET @RET = 1
END
RETURN @RET
END
GO

ALTER TABLE PLAYER_TEAM	
ADD CONSTRAINT ck_noTeamLessThan5Members
CHECK (dbo.fn_FiveMembersPerTeam() = 0)
GO

-- No repeated team name
ALTER TABLE TEAM
ADD CONSTRAINT UniqueTeam UNIQUE (TeamName);
GO

-- Computed column: Total kills, deaths, and assists of a player in one game 
CREATE FUNCTION fn_CalcKillsPerPlayerPerGame(@PK INT)
RETURNS INT
AS
BEGIN
DECLARE @RET INT =
(SELECT COUNT(PS.StatID)
	FROM PLAYER_STAT PS
	JOIN PLAYER_CHAMPION PC ON PS.PlayerChampID = PC.PlayerChampID
	JOIN STAT S ON PS.StatID = S.StatID
	WHERE PC.PlayerChampID = @PK
	AND S.StatName = 'Kill')
RETURN @RET
END
GO

ALTER TABLE PLAYER_CHAMPION
ADD TotalKills AS (dbo.fn_CalcKillsPerPlayerPerGame(PlayerChampID))
GO

CREATE FUNCTION fn_CalcDeathsPerPlayerPerGame(@PK INT)
RETURNS INT
AS
BEGIN
DECLARE @RET INT =
(SELECT COUNT(PS.StatID)
	FROM PLAYER_STAT PS
	JOIN PLAYER_CHAMPION PC ON PS.PlayerChampID = PC.PlayerChampID
	JOIN STAT S ON PS.StatID = S.StatID
	WHERE PC.PlayerChampID = @PK
	AND S.StatName = 'Death')
RETURN @RET
END
GO

ALTER TABLE PLAYER_CHAMPION
ADD TotalDeaths AS (dbo.fn_CalcDeathsPerPlayerPerGame(PlayerChampID))
GO

CREATE FUNCTION fn_CalcAssistPerPlayerPerGame(@PK INT)
RETURNS INT
AS
BEGIN
DECLARE @RET INT =
(SELECT COUNT(PS.StatID)
	FROM PLAYER_STAT PS
	JOIN PLAYER_CHAMPION PC ON PS.PlayerChampID = PC.PlayerChampID
	JOIN STAT S ON PS.StatID = S.StatID
	WHERE PC.PlayerChampID = @PK
	AND S.StatName = 'Assist')
RETURN @RET
END
GO

ALTER TABLE PLAYER_CHAMPION
ADD TotalAssists AS (dbo.fn_CalcAssistPerPlayerPerGame(PlayerChampID))
GO

CREATE FUNCTION fn_CalcScorePerPlayerGame(@PK INT)
RETURNS INT
AS
BEGIN
DECLARE @RET INT =
((SELECT PC.TotalKills FROM PLAYER_CHAMPION PC WHERE PC.PlayerChampID = @PK) * (SELECT StatWeight FROM STAT WHERE StatName = 'kill')
+ (SELECT PC.TotalAssists FROM PLAYER_CHAMPION PC WHERE PC.PlayerChampID = @PK) * (SELECT StatWeight FROM STAT WHERE StatName = 'assist')
+ (SELECT PC.TotalDeaths FROM PLAYER_CHAMPION PC WHERE PC.PlayerChampID = @PK)* (SELECT StatWeight FROM STAT WHERE StatName = 'death'))
RETURN @RET
END
GO

ALTER TABLE PLAYER_CHAMPION
ADD Score AS (dbo.fn_CalcScorePerPlayerGame(PlayerChampID))
GO


-- Stored procedures for insertions.
CREATE PROCEDURE INSERT_PLAYER
@PlayerFname varchar(20),
@PlayerLname varchar(20),
@Gender varchar(10),
@BirthDate date,
@InGameName varchar(20),
@Role CHAR(3),
@Elo varchar(10)
AS

BEGIN TRAN P1
INSERT INTO PLAYER(PlayerFname, PlayerLname, Gender, BirthDate, InGameName, [Role], Elo)
VALUES(@PlayerFname, @PlayerLname, @Gender, @BirthDate, @InGameName, @Role, @Elo)
COMMIT TRAN P1
GO

CREATE PROCEDURE INSERT_PLAYER_CHAMPION
@PlayerFname varchar(20),
@PlayerLname varchar(20),
@BirthDate date,
@ChampName varchar(20),
@TrnName varchar(20),
@StageName varchar(20),
@SerialNum INT

AS
DECLARE @PlayerID INT, @ChampID INT, @GameID INT
SET @PlayerID = (SELECT PlayerID 
FROM PLAYER P
WHERE P.PlayerFname = @PlayerFname
AND P.PlayerLname = @PlayerLname
AND P.BirthDate = @BirthDate)
SET @ChampID = (SELECT ChampID FROM CHAMPION WHERE ChampName = @ChampName)
SET @GameID = (SELECT GameID
FROM GAME G
JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
JOIN TOURNAMENT T ON TS.TrnID = T.TrnID
JOIN STAGE S ON TS.StageID = S.StageID
WHERE T.TrnName = @TrnName
AND S.StageName = @StageName
AND G.SerialNumber = @SerialNum)

BEGIN TRAN P1
INSERT INTO PLAYER_CHAMPION(PlayerID, ChampID, GameID)
VALUES(@PlayerID, @ChampID, @GameID)
COMMIT TRAN P1
GO

CREATE PROCEDURE INSERT_PLAYER_TEAM
@PlayerFname varchar(20),
@PlayerLname varchar(20),
@BirthDate date,
@TeamName varchar(20),
@BDate date,
@EDate date
AS
DECLARE @PlayerID INT, @TeamID INT
SET @PlayerID = (SELECT PlayerID 
FROM PLAYER P 
WHERE P.PlayerFname = @PlayerFname
AND P.PlayerLname = @PlayerLname
AND P.BirthDate = @BirthDate)
SET @TeamID = (SELECT TeamID 
FROM TEAM T
WHERE T.TeamName = @TeamName)

BEGIN TRAN P1
INSERT INTO PLAYER_TEAM(PlayerID, TeamID, BeginDate, EndDate)
VALUES(@PlayerID, @TeamID, @BDate, @EDate)
COMMIT TRAN P1
GO

CREATE PROCEDURE INSERT_PLAYER_STAT
@PlayerFname varchar(20),
@PlayerLname varchar(20),
@BirthDate date,
@ChampName varchar(20),
@TrnName varchar(20),
@StageName varchar(20),
@SerialNum INT,
@StatName varchar(20)

AS
DECLARE @PlayerChampID INT, @StatID INT
SET @PlayerChampID = (SELECT PlayerChampID 
FROM PLAYER_CHAMPION PC
JOIN PLAYER P ON PC.PlayerID = P.PlayerID
JOIN CHAMPION C ON PC.ChampID = C.ChampID
JOIN GAME G ON PC.GameID = G.GameID
JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
JOIN TOURNAMENT T ON TS.TrnID = T.TrnID
JOIN STAGE S ON TS.StageID = S.StageID
WHERE P.PlayerFname = @PlayerFname
AND P.PlayerLname = @PlayerLname
AND P.BirthDate = @BirthDate
AND C.ChampName = @ChampName
AND T.TrnName = @TrnName
AND S.StageName = @StageName
AND G.SerialNumber = @SerialNum)
SET @StatID = (SELECT StatID FROM STAT WHERE StatName = @StatName)

BEGIN TRAN P1
INSERT INTO PLAYER_STAT(PlayerChampID, StatID)
VALUES(@PlayerChampID, @StatID)
COMMIT TRAN P1
GO

-- Views

-- In which game the player named 'Uzi' scored the most kills and his team claimed victory?
CREATE VIEW UziMostKillWinningGame AS
SELECT TOP 1 T.TrnName, ST.StageName, G.SerialNumber, PC.TotalKills, subq1.GameID
FROM PLAYER_CHAMPION PC
JOIN GAME G ON PC.GameID = G.GameID
JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
JOIN TOURNAMENT T ON TS.TrnID = T.TrnID
JOIN STAGE ST ON TS.StageID = ST.StageID
JOIN PLAYER_STAT PS ON PC.PlayerChampID = PS.PlayerChampID
JOIN STAT S ON PS.StatID = S.StatID
JOIN PLAYER P ON PC.PlayerID = P.PlayerID

JOIN (SELECT GameID
FROM GAME G
JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
JOIN TEAM T ON G.WinningTeamID = T.TeamID
JOIN PLAYER_TEAM PT ON T.TeamID = PT.TeamID
JOIN PLAYER P ON PT.PlayerID = P.PlayerID
WHERE P.InGameName = 'Uzi'
AND TS.[Date] BETWEEN PT.BeginDate AND PT.EndDate) AS subq1 ON G.GameID = subq1.GameID

WHERE P.InGameName = 'Uzi'
ORDER BY PC.TotalKills DESC
GO


-- Which mid players had a total performance score more than 20 on the group stage of Husky Cup?
CREATE VIEW Above20MidLanerHuskyCupGroup AS
SELECT P.PlayerID, P.PlayerFname, P.PlayerLname, P.InGameName, SUM(PC.Score) AS GroupStagePerformanceScore
FROM PLAYER_CHAMPION PC
JOIN GAME G ON PC.GameID = G.GameID
JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
JOIN TOURNAMENT T ON TS.TrnID = T.TrnID
JOIN STAGE ST ON TS.StageID = ST.StageID
JOIN PLAYER P ON PC.PlayerID = P.PlayerID
WHERE T.TrnName = 'Husky Cup'
AND ST.StageName = 'Group Stage'
AND P.[Role] = 'MID'
GROUP BY P.PlayerID, P.PlayerFname, P.PlayerLname, P.InGameName
HAVING SUM(PC.Score) > 20
GO