DROP DATABASE IF EXISTS soccer_db;
CREATE DATABASE soccer_db;
\c soccer_db;


CREATE TABLE Teams(
	Id int IDENTITY NOT NULL,
	TeamName nvarchar(15) NOT NULL,
	CountryCode char(2) NULL,
 CONSTRAINT PK_Teams PRIMARY KEY (Id))
GO


CREATE TABLE TeamMatches(
	Id int IDENTITY NOT NULL,
	HomeTeamId int NOT NULL,
	AwayTeamId int NOT NULL,
	HomeGoals int NULL,
	AwayGoals int NULL,
	MatchDate datetime NULL,
 CONSTRAINT PK_TeamMatches PRIMARY KEY (Id))
GO
INSERT INTO TeamMatches(
  HomeTeamId, AwayTeamId, HomeGoals, AwayGoals, MatchDate) 
VALUES
(1, 5, 1, 2, '22-Mar-2015 16:00')
(4, 3, 1, 2, '02-May-2022 16:00')

INSERT INTO Teams(TeamName, CountryCode)

 VALUES
 ('Leicester City', 'GB'),
 ('Manchester United', 'GB'),
 ('Manchester City', 'GB'),
 ('Newcastle United', 'GB'),
 ('Chelsea', 'GB'),
 ('Arsenal', 'GB'), ('Liverpool', 'GB'),
GO
