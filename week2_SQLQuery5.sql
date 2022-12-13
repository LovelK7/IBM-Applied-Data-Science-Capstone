--SELECT * INTO [IBM_capstone].[dbo].[spacex] FROM [DSTraining].[dbo].[spacex]
USE [IBM_capstone]
GO

--Task 1
--SELECT DISTINCT([Launch_Site]) FROM [spacex]

--Task 2
--SELECT TOP(5) [Launch_Site] FROM [spacex] WHERE [Launch_Site] LIKE 'CCA%'

--Task 3
--SELECT SUM(CAST([PAYLOAD_MASS__KG_] AS INT)) AS Total_payload_mass FROM [spacex] WHERE [Customer] LIKE 'NASA (CRS)'
--Result: 45596

--Task 4
--SELECT AVG(CAST([PAYLOAD_MASS__KG_] AS INT)) AS Average_payload_mass FROM [spacex] WHERE [Booster_Version] LIKE 'F9 v1.1%'
--Result: 2534

--Task 5
--SELECT MIN([Date]) FROM [dbo].[spacex] WHERE ([Landing _Outcome] LIKE 'Success (ground pad)') AND (RIGHT([Date],4)='2015')
--Result: 22-12-2015

--Task 6
--SELECT [Booster_Version] FROM [dbo].[spacex] WHERE ([Landing _Outcome] LIKE 'Success (drone ship)') AND ([PAYLOAD_MASS__KG_]>4000) AND ([PAYLOAD_MASS__KG_]<6000)

--Task 7
--SELECT COUNT([Mission_Outcome]) AS Total_success FROM [dbo].[spacex] WHERE [Mission_Outcome] LIKE 'Success%'
--SELECT COUNT([Mission_Outcome]) AS Total_failures FROM [dbo].[spacex] WHERE [Mission_Outcome] LIKE 'Failure%'
--Result1: 100
--Result2: 1

--Task 8
--SELECT [Booster_Version],[PAYLOAD_MASS__KG_] FROM [dbo].[spacex] ORDER BY [PAYLOAD_MASS__KG_] DESC

--Task 9
--SELECT [Landing _Outcome],[Booster_Version],[Launch_Site] FROM [dbo].[spacex] WHERE ([Landing _Outcome] LIKE 'Failure (drone ship)') AND (RIGHT([Date],4)='2015')
--2 results

--Task 10
SELECT [Landing _Outcome], COUNT([Landing _Outcome]) AS Landing_Outcome_Num FROM [dbo].[spacex] WHERE (RIGHT([Date],4)>2010) AND (RIGHT([Date],4)<2016) GROUP BY [Landing _Outcome] ORDER BY Landing_Outcome_Num DESC


