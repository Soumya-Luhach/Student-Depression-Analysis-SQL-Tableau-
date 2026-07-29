select * from INFORMATION_SCHEMA.COLUMNS where table_name like 'Student Depression Dataset';

SELECT Academic_Pressure, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Academic_Pressure 

SELECT Study_Satisfaction, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Study_Satisfaction

SELECT Sleep_Duration, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Sleep_Duration

SELECT Dietary_Habits, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Dietary_Habits

SELECT Have_you_ever_had_suicidal_thoughts, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Have_you_ever_had_suicidal_thoughts

SELECT Study_Hours, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Study_Hours 

SELECT Financial_Stress, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Financial_Stress

SELECT Family_History_of_Mental_Illness, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Family_History_of_Mental_Illness

SELECT Depression, Count(*) [Count] FROM [dbo].[Student Depression Dataset] group by Depression 

-- No Null values found