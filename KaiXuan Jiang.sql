USE Info330AProj_Gaming

/*CREATE TABLES*/

CREATE TABLE MANAGER (
ManagerID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
ManagerName varchar(20) NOT NULL,
ManagerDesc varchar(500)
);

CREATE TABLE STAFF_TYPE (
StaffTypeID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
StaffTypeName varchar(20) NOT NULL,
StaffTypeDesc varchar(500),
HourlyWage smallmoney
);

CREATE TABLE STAFF (
StaffID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
StaffTypeID int FOREIGN KEY REFERENCES STAFF_TYPE(StaffTypeID),
StaffFname varchar(20) NOT NULL,
StaffLname varchar(20) NOT NULL,
BirthDate Date,
Gender varchar(10)
);

CREATE TABLE TOURNAMENT (
TrnID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
BeginDate Date,
EndDate Date,
TrnName varchar(20)
);



/*Write the function to enforce the business rule that no staff should be younger than 18 */

CREATE FUNCTION fn_NoStaffUnder18()
RETURNS INT
AS
BEGIN
	DECLARE @RET INT = 0
	IF EXISTS (SELECT *
	FROM STAFF S
	WHERE S.BirthDate > DateAdd(Year, -18, GetDate())
	)

	SET @RET = 1
	RETURN @RET
	END
	GO

	ALTER TABLE STAFF WITH NOCHECK
	ADD CONSTRAINT CK_MustBe18_Staff
	CHECK (dbo.fn_NoStaffUnder18() = 0)
	GO

/* A final stage game cannot have staff type besides senior employee */

CREATE FUNCTION fn_FinalStageNoUnexp()
RETURNS INT
AS
BEGIN
	DECLARE @RET INT = 0
	IF EXISTS (SELECT *
	FROM STAFF S
	JOIN STAFF_TYPE ST ON S.StaffTypeID = ST.StaffTypeID
	JOIN STAGE_STAFF SS ON S.StaffID = SS.StaffID
	JOIN TOURNAMENT_STAGE TS ON SS.TrnStageID = TS.TrnStageID
	JOIN STAGE STG ON TS.StageID = STG.StageID
	WHERE STG.StageName = 'Finals'
	AND ST.StaffTypeName != 'senior employee'
	)

	SET @RET = 1
	RETURN @RET
	END
	GO

	ALTER TABLE STAFF WITH NOCHECK
	ADD CONSTRAINT CK_MustBeSenior
	CHECK (dbo.fn_FinalStageNoUnexp() = 0)
	GO

/* Insert values into STAFF_TYPE */

INSERT INTO STAFF_TYPE
VALUES ('Volunteer',
		NULL,
		0),
		('Temporary worker',
		NULL,
		15),
		('First year employee',
		NULL,
		18),
		('Junior employee',
		NULL,
		22),
		('Senior employee',
		NULL,
		25)
GO


/* Stored procedures for insertions. */

CREATE PROCEDURE INSERT_STAFF
@StaffTypeName varchar(20),
@StaffFname varchar(20),
@StaffLname varchar(20),
@Gender varchar(10),
@BirthDate date
AS
DECLARE @ST_ID INT
SET @ST_ID = (SELECT StaffTypeID From STAFF_TYPE WHERE StaffTypeName = @StaffTypeName)
BEGIN TRAN P1
INSERT INTO STAFF(StaffTypeID, StaffFname, StaffLname, Gender, BirthDate)
VALUES(@ST_ID, @StaffFname, @StaffLname, @Gender, @BirthDate)
COMMIT TRAN P1
GO

CREATE PROCEDURE INSERT_MANAGER
@ManagerName varchar(20),
@ManagerDesc varchar(500)
AS 
BEGIN TRAN P1
INSERT INTO MANAGER(ManagerName, ManagerDesc)
VALUES(@ManagerName, @ManagerDesc)
COMMIT TRAN P1
GO

CREATE PROCEDURE INSERT_TOURNAMENT
@BeginDate date,
@EndDate date,
@TrnName varchar(20)
AS
BEGIN TRAN P1
INSERT INTO TOURNAMENT(BeginDate, EndDate, TrnName)
VALUES(@BeginDate, @EndDate, @TrnName)
COMMIT TRAN P1
GO



/* Total dollars wage consume on per staff per tournament stage*/

CREATE FUNCTION fn_CalcWage(@PK smallmoney)
RETURNS INT
AS
BEGIN
	DECLARE @RET smallmoney = 
	(SELECT ST.HourlyWage
	FROM STAFF S
	JOIN STAFF_TYPE ST ON S.StaffTypeID = ST.StaffTypeID
	JOIN STAGE_STAFF SS ON S.StaffID = SS.StageStaffID
	WHERE SS.StageStaffID = @PK)
	*(SELECT (datediff(minute, SS.shiftStartTime, shiftEndTime)/ 60.0)
	FROM STAFF S
	JOIN STAGE_STAFF SS ON S.StaffID = SS.StageStaffID
	WHERE SS.StageStaffID = @PK)

RETURN @RET
END 
GO

ALTER TABLE STAGE_STAFF
ADD CalcWage AS (dbo.fn_CalcWage(StageStaffID))
GO

/* Total number of staff per tournament stage */

CREATE FUNCTION fn_CalcNumStaff(@PK INT)
RETURNS INT
AS
BEGIN
	DECLARE @RET INT = 
	(SELECT COUNT(S.StaffID)
	FROM STAFF S
	JOIN STAGE_STAFF SS ON S.StaffID = SS.StageStaffID
	WHERE S.StaffID = @PK)

RETURN @RET
END 
GO

ALTER TABLE STAGE_STAFF
ADD NumStaff AS (dbo.fn_CalcNumStaff(StaffID))
GO


/* Which game in tournament name "Husky Cup" has more than 30 kills?*/

SELECT G.GameID
FROM TOURNAMENT T
JOIN TOURNAMENT_STAGE TS ON T.TrnID = TS.TrnID
JOIN GAME G ON TS.TrnStageID = G.TrnStageID
JOIN PLAYER_CHAMPION PC ON G.GameID = PC.GameID
JOIN PLAYER_STAT PS ON PC.PlayerChampID = PS.PlayerChampID
JOIN STAT ST ON PS.StatID = ST.StatID
WHERE T.TrnName = 'Husky Cup'
AND ST.StatName = 'kill'
GROUP BY G.GameID
HAVING COUNT(ST.StatID) > 30


/*Which champion most frequently appears in the tournament name ¡°Husky Cup¡±?*/
SELECT TOP 1 C.ChampID, ChampName
FROM CHAMPION C
JOIN PLAYER_CHAMPION PC ON C.ChampID = PC.ChampID
JOIN GAME G ON PC.GameID = G.GameID
JOIN TOURNAMENT_STAGE TS ON G.TrnStageID = TS.TrnStageID
JOIN TOURNAMENT T ON TS.TrnID = T.TrnID
WHERE T.TrnName = 'Husky Cup'
GROUP BY C.ChampID, ChampName
ORDER BY COUNT(C.ChampID)