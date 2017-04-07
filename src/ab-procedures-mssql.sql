CREATE PROCEDURE create_contact
(
    @name   NVARCHAR(30),
    @phone  NVARCHAR(20)
) AS
BEGIN TRY
    BEGIN TRANSACTION
        INSERT INTO v_contact VALUES (@name, @phone);
    COMMIT TRANSACTION
END TRY
BEGIN CATCH
    DECLARE @ErrorMessage   NVARCHAR(4000);
    DECLARE @ErrorSeverity  INT;
    DECLARE @ErrorState     INT;

    SET @ErrorMessage = 'Ooops!';
    SET @ErrorSeverity = (SELECT ERROR_SEVERITY());
    SET @ErrorState = (SELECT ERROR_STATE());

    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);

    ROLLBACK TRANSACTION
END CATCH;
GO
