--Созданим индекс для таблицы автомобилей по полю brand. 
--Чтобы можно было быстрее искать информацию про автомобили разных марок.

CREATE INDEX idx_automobile_brand
ON cs.automobile (brand);


--Для таблицы autopart ,place и client нет целесообразных индексов.-

--Созданим индекс для таблицы client_discount по полю discount_amount. 
--Чтобы можно было быстрее искать информацию про клиентов с разными скидками.

CREATE INDEX idx_client_discount_amount
ON cs.client_discount(discount_amount);

--Созданим индекс для таблицы employee по полю position. 
--Чтобы можно было быстрее искать информацию про сотрудников на разных должностях.

CREATE INDEX idx_employee_position
ON cs.employee (employee_position);

--Созданим индекс для таблицы project по полю status. 
CREATE INDEX idx_project_status
ON cs.project (status);

--Созданим индекс для таблицы supplier по полю discount.
CREATE INDEX idx_supplier_discount_amount
ON cs.supplier (discount);