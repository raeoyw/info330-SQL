/*

Database Project 4: Final Database Code

*/

-- 1. Stored Procedures:


USE Info330AProj_Gaming
GO


-- NEW TOURNAMENT STAGE
CREATE PROC uspNewTrnStage
@TrnName varchar(50),
@StageName varchar(50),
@Date Date,
@BegTime Time,
@EndTime Time
AS
	DECLARE @T_ID INT, @S_ID INT -- TnrID and StageID
	SET @T_ID = (SELECT TrnID FROM TOURNAMENT WHERE TrnName = @TrnName)
	SET @S_ID = (SELECT StageID FROM STAGE WHERE StageName = @StageName)

BEGIN TRAN T1
	INSERT INTO TOURNAMENT_STAGE(TrnID, StageID, [Date], BeginTime, EndTime)
	VALUES(@T_ID, @S_ID, @Date, @BegTime, @EndTime)
COMMIT TRAN T1

GO



-- NEW STAGE STAFF
CREATE PROC uspNewStageStaff
@StaffF varchar(20),
@StaffL varchar(20),
@StaffB Date,
@TrnName varchar(50),
@StageName varchar(50),
@ShiftStart Time,
@ShiftEnd Time,
@Break Time
AS
	DECLARE @T_ID INT, @S_ID INT, @TS_ID INT, @St_ID INT
	SET @T_ID = (SELECT TrnID FROM TOURNAMENT WHERE TrnName = @TrnName)
	SET @S_ID = (SELECT StageID FROM STAGE WHERE StageName = @StageName)
	SET @TS_ID = (SELECT TrnStageID FROM TOURNAMENT_STAGE
				WHERE TrnID = @T_ID AND StageID = @S_ID)
	SET @St_ID = (SELECT StaffID FROM STAFF
				WHERE StaffFname = @StaffF
					AND StaffLname = @StaffL
					AND BirthDate = @StaffB)

BEGIN TRAN T1
	INSERT INTO STAGE_STAFF(TrnStageID, StaffID, ShiftStartTime, ShiftEndTime, BreakDuration)
	VALUES(@TS_ID, @St_ID, @ShiftStart, @ShiftEnd, @Break)
COMMIT TRAN T1


EXEC dbo.uspNewTrnStage @TrnName = 'Husky Cup', @StageName = 'Groups', @Date = 'January 1, 2014',
						@BegTime = '10:00:00', @EndTime = '22:00:00'
EXEC dbo.uspNewTrnStage @TrnName = 'Husky Cup', @StageName = 'Quarter-Finals', @Date = 'January 8, 2014',
						@BegTime = '12:00:00', @EndTime = '22:00:00'
EXEC dbo.uspNewTrnStage @TrnName = 'Husky Cup', @StageName = 'Semi-Finals', @Date = 'January 15, 2014',
						@BegTime = '12:00:00', @EndTime = '18:00:00'
EXEC dbo.uspNewTrnStage @TrnName = 'Husky Cup', @StageName = 'Finals', @Date = 'January 29, 2014',
						@BegTime = '12:00:00', @EndTime = '16:00:00'


EXEC dbo.uspNewStageStaff @StaffF = 'Bob', @StaffL = 'Smith', @StaffB = 'December 14, 1995', @TrnName = 'Husky Cup',
							@StageName = 'Groups', @ShiftStart = '12:00:00', @ShiftEnd = '16:00:00',
							@Break = '00:30:00'
EXEC dbo.uspNewStageStaff @StaffF = 'Rick', @StaffL = 'McGuire', @StaffB = 'May 9, 1991', @TrnName = 'Husky Cup',
							@StageName = 'Groups', @ShiftStart = '16:00:00', @ShiftEnd = '20:00:00',
							@Break = '00:30:00'
EXEC dbo.uspNewStageStaff @StaffF = 'Maria', @StaffL = 'Motigo', @StaffB = 'June 1, 1999', @TrnName = 'Husky Cup',
							@StageName = 'Groups', @ShiftStart = '16:00:00', @ShiftEnd = '22:00:00',
							@Break = '00:30:00'


EXEC dbo.uspNewStageStaff @StaffF = 'Paul', @StaffL = 'Rubio', @StaffB = 'April 14, 2000', @TrnName = 'Husky Cup',
							@StageName = 'Quarter-Finals', @ShiftStart = '12:00:00', @ShiftEnd = '18:00:00',
							@Break = '00:45:00'
EXEC dbo.uspNewStageStaff @StaffF = 'Emily', @StaffL = 'Terry', @StaffB = 'February 28, 1998', @TrnName = 'Husky Cup',
							@StageName = 'Quarter-Finals', @ShiftStart = '12:00:00', @ShiftEnd = '15:00:00',
							@Break = '00:45:00'


EXEC dbo.uspNewStageStaff @StaffF = 'Martina', @StaffL = 'Velli', @StaffB = 'November 30, 1995', @TrnName = 'Husky Cup',
							@StageName = 'Semi-Finals', @ShiftStart = '15:00:00', @ShiftEnd = '18:00:00',
							@Break = '00:45:00'
EXEC dbo.uspNewStageStaff @StaffF = 'Joshua', @StaffL = 'Croft', @StaffB = 'December 25, 2001', @TrnName = 'Husky Cup',
							@StageName = 'Semi-Finals', @ShiftStart = '12:00:00', @ShiftEnd = '18:00:00',
							@Break = '00:45:00'


EXEC dbo.uspNewStageStaff @StaffF = 'Harrison', @StaffL = 'Yeh', @StaffB = 'Janurary 7, 1994', @TrnName = 'Husky Cup',
							@StageName = 'Finals', @ShiftStart = '12:00:00', @ShiftEnd = '16:00:00',
							@Break = '1:00:00'
EXEC dbo.uspNewStageStaff @StaffF = 'Amanda', @StaffL = 'Lewis', @StaffB = 'April 20, 1993', @TrnName = 'Husky Cup',
							@StageName = 'Finals', @ShiftStart = '12:00:00', @ShiftEnd = '16:00:00',
							@Break = '1:00:00'




-- 2. Business Rules
-- (a) Players participating in the tournament must be above age 16 at the time of play.
-- (b) Each game must have 10 Player_Champions (10 people to play a game)

-- 3. Business Rule Code

-- BUSINESS RULE: Player Age >= 16
CREATE FUNCTION fn_NoU16Players()
RETURNS INT
AS
BEGIN
	DECLARE @RET INT = 0
	IF EXISTS (
		SELECT * FROM PLAYER P
		WHERE P.Birthdate > DateAdd(Year, -16, GetDate()) -- player's bday is before 16 years ago today
	)
	SET @RET = 1
RETURN @RET
END


GO
ALTER TABLE PLAYER
ADD CONSTRAINT CK_NoPlayersUnder16yo
CHECK (dbo.fn_NoU16Players() = 0)


-- BUSINESS RULE: Each game must have 10 Player_Champions (10 people to play a game)
GO
CREATE FUNCTION fn_10PlayersPerGame()
RETURNS INT
AS
BEGIN
	DECLARE @RET INT = 0
	IF EXISTS (
		SELECT G.GameID, COUNT(*)
			FROM GAME G
				JOIN PLAYER_CHAMPION PC ON G.GameID = PC.GameID
			GROUP BY G.GameID
			HAVING COUNT(*) <> 10)
	SET @RET = 1
RETURN @RET
END

GO
ALTER TABLE GAME WITH NOCHECK
ADD CONSTRAINT CK_MustHave10PlayersForGameStart
CHECK (dbo.fn_10PlayersPerGame() = 0)



-- 4. Computed Columns


-- COMPUTED COLUMN: Stat Pts per Player
GO
CREATE FUNCTION fn_CalcPlayerStatPts(@PK INT)
RETURNS INT
AS
BEGIN
	DECLARE @RET INT = 
		(SELECT SUM(S.StatWeight)
			FROM STAT S
				JOIN PLAYER_STAT PS ON S.StatID = PS.StatID
				JOIN PLAYER_CHAMPION PC ON PS.PlayerChampID = PC.PlayerChampID
				JOIN PLAYER P ON PC.PlayerID = P.PlayerID
			WHERE P.PlayerID = @PK
		)
	RETURN @RET
END

GO
ALTER TABLE PLAYER
ADD TotalStatPts AS (dbo.fn_CalcPlayerStatPts(PlayerID))



-- COMPUTED COLUMN: Total hours worked per staff
GO
CREATE FUNCTION fn_CalcStaffTotalHours(@PK INT)
RETURNS INT
AS
BEGIN	
	DECLARE @RET INT = (SELECT SUM(DateDiff(hour, SS.ShiftStartTime, SS.ShiftEndTime))
						FROM STAFF_TYPE ST
							JOIN STAFF S ON ST.StaffTypeID = S.StaffTypeID
							JOIN STAGE_STAFF SS ON S.StaffID = SS.StaffID
						WHERE S.StaffID = @PK)
	RETURN @RET
END

ALTER TABLE STAFF
ADD TotalHrs AS (dbo.fn_CalcStaffTotalHours(StaffID))





-- COMPUTED COLUMN: Total amount earned per staff
GO
ALTER FUNCTION fn_CalcStaffTotalEarned(@PK INT)
RETURNS INT
AS BEGIN
	DECLARE @RET INT = (SELECT (S.TotalHrs * ST.HourlyWage)
						FROM STAFF_TYPE ST
							JOIN STAFF S ON ST.StaffTypeID = S.StaffTypeID
							JOIN STAGE_STAFF SS ON S.StaffID = SS.StaffID
						WHERE S.StaffID = @PK
						GROUP BY S.TotalHrs, ST.HourlyWage)
	RETURN @RET
END

ALTER TABLE STAFF
ADD TotalEarned AS (dbo.fn_CalcStaffTotalEarned(StaffID))



-- 5. Complex Queries

-- Which player accumulated more than 30 stat points in game 10?
SELECT P.PlayerID, P.PlayerFname, P.PlayerLname, SUM(S.StatWeight) AS StatPts
FROM STAT S
	JOIN PLAYER_STAT PS ON S.StatID = PS.StatID
	JOIN PLAYER_CHAMPION PC ON PS.PlayerChampID = PC.PlayerChampID
	JOIN PLAYER P ON PC.PlayerID = P.PlayerID
	JOIN GAME G ON PC.GameID = G.GameID
GROUP BY P.PlayerID, P.PlayerFname, P.PlayerLname
HAVING SUM(S.StatWeight) > 30
ORDER BY StatPts DESC


-- Which tournament had the highest audience turnout?
SELECT TOP 1 T.TrnName, COUNT(*) AS NumTix
FROM TOURNAMENT T
	JOIN TOURNAMENT_STAGE TS ON T.TrnID = TS.TrnID
	JOIN TICKET TI ON TS.TrnStageID = TI.TrnStageID
GROUP BY T.TrnName
ORDER BY NumTix DESC