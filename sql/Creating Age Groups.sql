-- Creating age groups
alter table [dbo].[Student Depression Dataset]
add [Age Groups] varchar(max)

Update [dbo].[Student Depression Dataset]
set [Age Groups] = 
case when age between 18 and 24 then 'A1'
when age between 25 and 30 then 'A2'
else 'A3'
end;

select [Age Groups], count(*) [Count] from [dbo].[Student Depression Dataset] group by [Age Groups];

-- Age groups will be used to filter in tableau dashboard

