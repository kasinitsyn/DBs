CREATE PROCEDURE factory_add_detail
@detail_code		varchar(50),
@detail_color		varchar(50),
@detail_material	varchar(50)
AS
BEGIN 
	INSERT INTO [������]([��� ������], [����], [��������]) 
		VALUES(@detail_code, @detail_color, @detail_material)

	SELECT * FROM [������]
END;
GO