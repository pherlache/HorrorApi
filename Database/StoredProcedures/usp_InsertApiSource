CREATE PROC [HorrorApi].[usp_InsertApiSource]
	@Name VARCHAR(250),
	@Description VARCHAR(250),
	@Url NVARCHAR(4000)
AS
BEGIN
	SET XACT_ABORT ON; --Ensures transaction is fully aborted if a run-time error is ecnountered, no need to manage inconsistent data
	SET NOCOUNT ON; --Prevents "X rows affected" message from being sent back

	BEGIN TRY

		INSERT INTO [HorrorApi].[ApiSources] (Name, Description, Url, DateCreated)
		VALUES (@Name, @Description, @Url, GETDATE())
		
	END TRY

	BEGIN CATCH
		
		DECLARE @ErrorSeverity INT,
				@ErrorState INT,
				@ErrorNumber INT,
				@ErrorLine INT,
				@ErrorProcedure NVARCHAR(128),
				@ErrorMessage NVARCHAR(4000);

		SELECT
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE(),
			@ErrorNumber = ERROR_NUMBER(),
			@ErrorLine = ERROR_LINE(),
			@ErrorProcedure = ERROR_PROCEDURE(),
			@ErrorMessage = ERROR_MESSAGE();

		PRINT 'Error Severity: ' + CAST(@ErrorSeverity AS VARCHAR(10));
		PRINT 'Error State: ' + CAST(@ErrorState AS VARCHAR(10));
		PRINT 'Error Number: ' + CAST(@ErrorNumber AS VARCHAR(10));
		PRINT 'Error Line Number: ' + CAST(@ErrorLine AS VARCHAR(10));
		PRINT 'Error Procedure: ' + @ErrorProcedure;
		PRINT 'Error Message: ' + @ErrorMessage;

		THROW;

	END CATCH
	
END
GO