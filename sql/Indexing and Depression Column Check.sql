SELECT * FROM [Student Depression Dataset]

-- Adding Index column

ALTER TABLE [dbo].[Student Depression Dataset]
ADD Index_Column int identity (1,1) 

-- Update depression column
ALTER TABLE [dbo].[Student Depression Dataset]
ALTER COLUMN Depression varchar(max)

UPDATE [dbo].[Student Depression Dataset]
SET Depression = 'No' where Depression = '0'

UPDATE [dbo].[Student Depression Dataset]
SET Depression = 'Yes' where Depression = '1'

SELECT Depression, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Depression 

