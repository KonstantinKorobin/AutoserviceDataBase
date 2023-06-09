INSERT INTO cs.employee  (id, firstname, surname, employee_position, experience, place_id) VALUES
(11, 'Alex', 'Popov','Intern Mechanic', 2, 3)
;

INSERT INTO cs.employee  (id, firstname, surname, employee_position, experience, place_id) VALUES
(12, 'Arseni', 'Vasiliev','Intern Mechanic', 1, 4)
;

INSERT INTO cs.client(id, firstname, surname, phone_number) VALUES
(11, 'Ivan', 'Novikov','+79144733659')
;

INSERT INTO cs.autopart(id, autopart_nm, cost, autopart_cnt, supplier_id) VALUES
(11, 'Wiper Blue', 4500, 15, 3),
(12, 'Wiper Grey', 4000, 20, 3)
;

--read
select *
from cs.employee
where experience > 12;

select brand, model, mileage, automobile_age
from cs.automobile
where automobile_age > 2018;

select *
from cs.client_discount
where discount_amount > 5;


--update 
update cs.autopart 
set cost = 5600
where id = 1;

update cs.client
set phone_number = '+79257466243'
where id = 8;

update cs.automobile 
set model = 'G class'
where id = 2;

--delete 
delete 
from cs.employee 
where id = 2;
