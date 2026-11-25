DECLARE @SearchStr NVARCHAR(100) = 'Lisboa'
DECLARE @TableName NVARCHAR(256), @ColumnName NVARCHAR(256), @SQL NVARCHAR(MAX)

DECLARE TableCursor CURSOR FOR
SELECT TABLE_SCHEMA + '.' + TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE DATA_TYPE IN ('varchar', 'nvarchar', 'text', 'char', 'nchar')

OPEN TableCursor
FETCH NEXT FROM TableCursor INTO @TableName, @ColumnName

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @SQL = 'IF EXISTS (SELECT 1 FROM ' + @TableName + ' WHERE CAST([' + @ColumnName + '] AS NVARCHAR(MAX)) LIKE ''%' + @SearchStr + '%'') PRINT ''' + @TableName + '.' + @ColumnName + ''''
    BEGIN TRY
        EXEC sp_executesql @SQL
    END TRY
    BEGIN CATCH
        -- Ignora colunas que possam dar erro de conversão
    END CATCH
    FETCH NEXT FROM TableCursor INTO @TableName, @ColumnName
END

CLOSE TableCursor
DEALLOCATE TableCursor
