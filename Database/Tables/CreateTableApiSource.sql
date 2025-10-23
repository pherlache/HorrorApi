--Script generated from SSMS
/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE HorrorApi.ApiSources
	(
	Id int NOT NULL IDENTITY (1, 1),
	Name varchar(250) NULL,
	Description varchar(250) NULL,
	Url nvarchar(4000) NULL,
	DateCreated datetime NULL,
	DateModified datetime NULL
	)  ON [PRIMARY]
GO
ALTER TABLE HorrorApi.ApiSources ADD CONSTRAINT
	PK_ApiSources PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE HorrorApi.ApiSources SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
