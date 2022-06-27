SELECT * FROM olympic_report.`olympic athletes`;

-- Age greater than 60

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
where age >= 60
group by `Athlete`
order by `Athlete`;

-- Age less than equal to 15 

select athlete,age as underage,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
where age <=15 
group by `Athlete`
order by `Athlete`;

-- Age less than equal to 20

select athlete,age as teen,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
where age <=20 
group by `Athlete`
order by `Athlete`;

-- Age equal to 30

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
where age = 30 
group by `Athlete`
order by `Athlete`;

-- Age less than 30

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
 where age <30
group by `Athlete`
order by `Athlete`;

-- Age greater than equal to 40

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
where age  >=40
group by `Athlete`
order by `Athlete`;

-- Age equal to 0

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`
from olympic_report.`olympic athletes`
where age  =0
group by `Athlete`
order by `Athlete`;

-- The max total medals group by country

select o.*,
max(`Total Medals`) over () as max_medals
from  olympic_report.`olympic athletes` o
group by `Country`;

-- The max total medals group by age and partition by athlete

select o.*,
max(`Total Medals`) over (PARTITION BY `Athlete`) as max_medals
from  olympic_report.`olympic athletes` o
having (age);

-- The row_number of olympic_report

 select ROW_NUMBER () over () as rn_number,
 athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
 from olympic_report.`olympic athletes`;
 
 -- The row_number of olympic_report order by country

select ROW_NUMBER () over (ORDER BY Country) as rn_num,
 athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
 from olympic_report.`olympic athletes`
 ORDER BY Country;
 
-- The row_number of olympic_report order by age

select ROW_NUMBER () over (ORDER BY age) as rn_num,
 athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
 from olympic_report.`olympic athletes`
 ORDER BY age;
 
 -- The row_number of olympic_report to find the duplicate from the dataset , partition by all columns and order by country
 
 select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,ROW_NUMBER () over
 (partition by athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals` order by country) as dup_col
 from olympic_report.`olympic athletes`;

-- sub_quaries on the dataset finding the total model % from gold medals

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes` WHERE `Total Medals`%( select max(`Gold Medals`) as gold from olympic_report.`olympic athletes`);

-- sub_quaries on the dataset finding the total model % from silver medals

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes` WHERE `Total Medals`%( select max(`Silver Medals`) as gold from olympic_report.`olympic athletes`);

-- sub_quaries on the dataset finding the total model % from silver medals

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes` WHERE `Total Medals`%( select max(`Bronze Medals`) as gold from olympic_report.`olympic athletes`);

-- olympic report from 2004

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2004;

-- olympic report from 2008

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2008;

-- olympic report from 2012

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2012;

-- olympic report from 2000

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2000;

-- olympic report from 2010

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2010;

-- olympic report from 2006

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2006;

-- olympic report from 2002

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE year = 2002;

-- olympic report for swimming

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Swimming'
order by country;

-- olympic report for Gymnastics

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Gymnastics'
order by country;

-- olympic report for Speed Skating

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Speed Skating'
order by country;

-- olympic report for Cross Country Skiing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Cross Country Skiing'
order by country;

-- olympic report for Short-Track Speed Skating

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Short-Track Speed Skating'
order by country;

-- olympic report for Diving

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Diving'
order by country;


-- olympic report for Cycling

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Cycling'
order by country;

-- olympic report for Biathlon

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Biathlon'
order by country;

-- olympic report for Alpine Skiing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Alpine Skiing'
order by country;

-- olympic report for Ski Jumping

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Ski Jumping'
order by country;

-- olympic report for Nordic Combined

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Nordic Combined'
order by country;

-- olympic report for Athletics

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Athletics'
order by country;

-- olympic report for Table Tennis

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Table Tennis'
order by country;

-- olympic report for Tennis

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Tennis'
order by country;


-- olympic report for Synchronized Swimming

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Synchronized Swimming'
order by country;

-- olympic report for Shooting

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Shooting'
order by country;

-- olympic report for Rowing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Rowing'
order by country;

-- olympic report for Fencing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Fencing'
order by country;

-- olympic report for Equestrian

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Equestrian'
order by country;

-- olympic report for Canoeing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Canoeing'
order by country;

-- olympic report for Bobsleigh

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Bobsleigh'
order by country;

-- olympic report for Badminton

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Badminton'
order by country;

-- olympic report for Baseball

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Baseball'
order by country;

-- olympic report for Basketball

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Basketball'
order by country;

-- olympic report for Beach Volleyball

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Beach Volleyball'
order by country;

-- olympic report for Beach Volleyball

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Beach Volleyball'
order by country;

-- olympic report for Boxing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Boxing'
order by country;

-- olympic report for Curling

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Curling'
order by country;

-- olympic report for Figure Skating

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Figure Skating'
order by country;

-- olympic report for Football 

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Football'
order by country;

-- olympic report for Freestyle Skiing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Freestyle Skiing'
order by country;

-- olympic report for Handball 

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Handball'
order by country;

-- olympic report for Hockey

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Hockey'
order by country;

-- olympic report for Ice Hockey

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Ice Hockey'
order by country;

-- olympic report for Judo

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Judo'
order by country;

-- olympic report for Luge

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Luge'
order by country;

-- olympic report for Modern Pentathlon

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Modern Pentathlon'
order by country;

-- olympic report for Rhythmic Gymnastics

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Rhythmic Gymnastics'
order by country;

-- olympic report for Sailing

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Sailing'
order by country;

-- olympic report for Skeleton

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Skeleton'
order by country; 

-- olympic report for Snowboarding

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Snowboarding'
order by country; 

-- olympic report for Softball

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Softball'
order by country; 

-- olympic report for Taekwondo

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Taekwondo'
order by country; 

-- olympic report for Trampoline

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Trampoline'
order by country; 

-- olympic report for Triathlon

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Triathlon'
order by country; 

-- olympic report for Volleyball

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Volleyball'
order by country; 

-- olympic report for Waterpolo

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Waterpolo'
order by country;

-- olympic report for Weightlifting

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Weightlifting'
order by country;

-- olympic report for Wrestling

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`
from olympic_report.`olympic athletes`
WHERE sport ='Wrestling' 
order by country;

select athlete,age,country,year,sport,`Gold Medals`,`Silver Medals`,`Bronze Medals`,`Total Medals`,
rank () over (order by sport asc)as sport_rank
from olympic_report.`olympic athletes`;

