-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Christopher Allen
-- Create date: 2-19-2024
-- Description:	Pulls Data from the tables Branch, Department and Fake User for the new developer test. Works based on what status is passed
-- =============================================
CREATE PROCEDURE CollectTheTestData
	@Status int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF @Status = 1
		BEGIN
			SELECT * 
			FROM Branch
		END

	ELSE IF @Status = 2
		BEGIN 
			SELECT * 
			FROM Department
		END

	ELSE IF @Status = 3
		BEGIN 
			SELECT * 
			FROM FakeUser
		END

END
GO
