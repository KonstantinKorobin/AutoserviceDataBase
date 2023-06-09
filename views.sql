--9 пункт
-- 1)
--Сокрытие полей с технической информацией из таблицы autopart для
--отображения пользовательской информации о автозапчастях.
--В данном представлении удаляются поля autopart_cnt и supplier_id, которое содержит
--техническую информацию о количестве товара на складе и идентификатор
--поставщика, которые не представляют ценности для пользователей.
--Отсортируем по цене.

create view cs.autopart_info_view as
select
	id,
	autopart_nm,
	cost
from
	cs.autopart
order by
	cost asc;

select
	*
from
	cs.autopart_info_view;
--2) 
--Получение сводной таблицы представляющей информацию о количестве реализованных от конкретного поставщика запчастей.
--Отсортированных по убыванию.

create view cs.sales_by_supplier as
select
	s.id,
	s.supplier_nm ,
	COUNT(p.id) as sales
from
	cs.project p
join cs.autopart a
on
	p.autopart_id = a.id
join cs.supplier s 
on
	a.supplier_id = s.id
group by
	s.id
order by
	sales desc;

select
	*
from
	cs.sales_by_supplier;
--3)
--Получение сводной таблицы, содержащей информацию о частых клиентах, а
--именно о количестве их заказов. Отсортируем по результирующей колонке в
--убывающем порядке.

create view cs.projects_by_client as
select
	c.id,
	c.firstname,
	c.surname,
	count(p.id) as counter
from
	cs.project p
join cs.automobile a 
on
	p.automobile_id = a.id
join cs.client c 
on
	a.client_id = c.id
group by
	c.id
order by
	counter desc;
--4)
--Сокрытие поля с персональными данными клиентов из таблицы client для
--отображения информации о клиентах. Скрываем номер телефона.

create view cs.client_masked_phone_number as
select
	id,
	firstname,
	surname,
	CONCAT(SUBSTR(phone_number,
	1,
	4),
	REPEAT('*',
	CHAR_LENGTH(phone_number) - 4)) as masked_phone
from
	cs.client;
--5)
--Получение сводной таблицы, содержащей информацию о средней стоимости запчасти от одного поставщика.
--Отсортируем по результирующей колонке в убывающем порядке.

create view cs.average_cost_by_supplier as
select
	supplier.id,
	supplier_nm,
	avg(cost) as average_cost
from
	cs.autopart
join cs.supplier
on
	cs.autopart.supplier_id = cs.supplier.id
group by
	supplier.id
order by
	average_cost asc;
--6)
--Получение сводной таблицы представляющей информацию о количестве реализованных в конкретной локации запчастей.
--Отсортированных по убыванию.
create view cs.sales_by_place as
select
	p2.id,
	p2.address,
	COUNT(p.id) as sales
from
	cs.project p
right join cs.place p2 
on
	p.place_id = p2.id
group by
	p2.id
order by
	sales desc;
