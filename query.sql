-- 6 пункт

--Запчасти которых осталось меньше 10
select
	autopart_nm,
	autopart_cnt
from
	cs.autopart
where
	autopart_cnt < 10
order by
	autopart_cnt asc;

--Средний пробег автомобилей марки Мерседес
select
	brand,
	avg(mileage) as average_mileage
from
	cs.automobile
group by
	brand
having
	brand = 'Mercedes';

-- Таблица сотрудников с указанием среднего опыта работы в их локации.
select
	address,
	firstname,
	surname,
	experience,
	avg(experience) over (partition by address) as average_experience
from
	cs.place
join cs.employee on
	cs.place.id = cs.employee.place_id;

--Таблица Автозапчастей с указанием поставщика и ранга запчасти по стоимости(у конкретного поставщика).
select
	supplier_nm ,
	autopart_nm,
	cost,
	rank() over (partition by supplier_nm
order by
	cost) as rank
from
	cs.autopart
join cs.supplier on
	cs.supplier.id = cs.autopart.supplier_id;

--Таблица локаций меньших 90 метров, отсортированных по стоимости аренды 1 квадратного метра.
select
	address,
	place_area ,
	rent,
	cast(rent / place_area as integer) as rent_sm
from
	cs.place
where
	place_area < 90
order by
	rent_sm;


--Таблица локаций отсортированных по количеству проектов выполненных в них
select
	address,
	count(project.id) as cnt,
	rank() over (
	order by count(project.id) desc)
from
	cs.project
right join cs.place on
	cs.project.place_id = cs.place.id
group by
	address
;
