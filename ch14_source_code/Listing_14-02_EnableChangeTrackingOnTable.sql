USE Menu;
GO

ALTER TABLE dbo.Recipe
ENABLE CHANGE_TRACKING
WITH (TRACK_COLUMNS_UPDATED = ON);