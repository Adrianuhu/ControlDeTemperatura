drop database if exists temperaturas_Duron;

create database temperaturas_Duron charset utf8mb4 collate utf8mb4_general_ci;

use temperaturas_Duron;

create table temperaturas
(
	tiempo datetime,
    temperatura decimal(4,2),
	constraint pk_tiempo primary key(tiempo)
);

insert into temperaturas values
('2020-01-01 10:10:10','30.9'),
('2020-01-01 10:10:11','30.4'),
('2020-01-01 10:10:12','30.5'),
('2020-01-01 10:10:13','30.6'),
('2020-01-01 10:10:14','30.2'),
('2020-01-01 10:10:15','32.2'),
('2020-01-01 10:10:16','35.9'),
('2020-01-01 10:10:17','34'),
('2020-01-01 10:10:18','34'),
('2020-05-23 10:10:18','34'),
('2020-05-23 10:30:18','38'),
('2020-01-23 12:23:18','40');

-- HOY
select tiempo, avg(temperatura) from temperaturas_duron.temperaturas where day(tiempo) like day(current_date()) group by hour(tiempo);

select tiempo, avg(temperatura) 'temperatura' from temperaturas_duron.temperaturas group by year(tiempo);

SELECT *
  FROM temperaturas_duron.temperaturas;





