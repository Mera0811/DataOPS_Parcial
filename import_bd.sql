use kaggle
go
-- crear la estructura de nuestra tabla

if not exists (select*from sys.tables where object_id=object_id(N'dbo.starbucks') and type= 'u')
create table dbo.starbucks (
beverage_category varchar(50),
beverage varchar(100),
beverage_prep varchar(50),
calories decimal(6,3),
total_fat_g varchar(10),
trans_fat_g decimal (6,3),
saturated_fat_g decimal (6,3),
sodium_mg decimal (6,3),
total_carbohydrates_g decimal (6,3),
cholesterol_mg decimal (6,3),
dietary_fibre_g decimal (6,3),
sugars_g decimal (6,3),
protein_g decimal (6,3),
vitamin_a_pct varchar(10),
vitamin_c_pct varchar(10),
calcium_pct varchar(10),
iron_pct varchar(10),
caffeine_mg varchar(10)

)
go

--si ya existe la tabla dbo.starbucks, entonces limpiar tabla
truncate table dbo.starbucks;
go


-- import data desde archivo

bulk insert dbo. starbucks
from 'C:\Users\migue\OneDrive\Documentos\trabajo_parcial\dataset\starbucks.csv'
with
(	
	firstrow = 2, -- empieza en la segunda fila ya que la primera es la cabecera
	fieldterminator = ',', -- indicamos separador de columnas
	rowterminator = '0x0a' -- hace referencia a un salto de línea
)


go