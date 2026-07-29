select gender, count(*) from [dbo].[Student Depression Dataset] group by gender;

UPDATE [dbo].[Student Depression Dataset]
SET Gender = 'F' where Gender = 'Female';

UPDATE [dbo].[Student Depression Dataset]
SET Gender = 'M' where Gender = 'Male';

SELECT * FROM [dbo].[Student Depression Dataset] where Gender is null;
-- No null records found for gender column