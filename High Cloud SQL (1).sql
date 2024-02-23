use new_excelr_batch_03;
select * from `airlines sql`;

select count(`# Transported Passengers`), `Carrier Name` from `airlines sql` group by  `Carrier Name` 
order by count(`# Transported Passengers`) desc;

select count(`From - To City`), `Carrier Name` from `airlines sql` group by `Carrier Name`
order by count(`# Transported Passengers`) desc;

select case when Distance <= 500 then 'Close' when Distance
 >500 and Distance<=3000 then 'Medium' when Distance > 3000 and Distance<=6000 then 'Far' 
else 'Very Far' end as Category, count(`# Transported Passengers`) as `Total Passengers` 
from `airlines sql` group by Category order by  count(`# Transported Passengers`);

select Year, count(`# Transported Passengers`) as Passengers from `airlines sql` group by Year order by Year asc;

select sum(`# Available Seats`) as `Available Seats` from `airlines sql`;
select sum(`# Departures Performed`) as Departures from `airlines sql`;
select sum(`# Transported Freight`) as Freights from `airlines sql`;
select sum(`# Transported Mail`) as Mail from `airlines sql`;
select sum(`# Transported Freight`) as Freights from `airlines sql`;
select sum(`# Transported Passengers`) as Passengers from `airlines sql`;

