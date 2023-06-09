INSERT INTO cs.supplier(id, supplier_nm, discount, delivery_time, phone_number) VALUES
(1, 'Autoparts LLC', 5, 10,'+79257677288'),
(2, 'Prime Auto', 10, 30, '+79257728912'),
(3, 'Auto Service', 5, 45, '+79251238912'),
(4, 'EuroAuto', 15, 14, '+79258808912'),
(5, 'Xmobile', 10, 21, '+79254428931'),
(6, 'Auto Trust LLC', 5, 7, '+79252214916'),
(7, 'AutoFormula', 5, 60, '+79217498972'),
(8, 'Euro Motors', 10, 24, '+79261128338'),
(9, 'USA Motors Trade', 15, 60, '+79223789127'),
(10, 'Autoparts Overseas', 5, 7, '+79256812124')
;


INSERT INTO cs.autopart(id, autopart_nm, cost, autopart_cnt, supplier_id) VALUES
(1, 'Wiper Black', 4000, 30, 3),
(2, 'Jeep fuel tank', 15000, 12, 1),
(3, 'Kia headlight', 12000, 5, 4),
(4, 'Windscreen', 19500, 6, 2),
(5, 'Indicator', 6000, 23, 5),
(6, 'Door lock', 11200, 17, 8),
(7, 'Rear Window', 26400, 4, 7),
(8, 'Brakelight', 4000, 35, 9),
(9, 'Horn', 9900, 14, 10),
(10, 'Tire', 14900, 9, 6)
;

INSERT INTO cs.client(id, firstname, surname, phone_number) VALUES
(1, 'Mark', 'Sokolov','+79256733654'),
(2, 'Alexey', 'Bagirov','+79246773645'),
(3, 'Ivan', 'Ivanov','+79856334674'),
(4, 'Dmitriy', 'Lebedev','+79252735677'),
(5, 'Slava', 'Orlov','+79296734650'),
(6, 'Konstantin', 'Medvedev','+71256633687'),
(7, 'Vladislav', 'Petrov','+79252003666'),
(8, 'Vladimir', 'Solodov','+79251133450'),
(9, 'Igor', 'Sidorov','+79256123994'),
(10, 'Oleg', 'Sergeev','+79212733666')
;

INSERT INTO cs.automobile (id, brand , model ,automobile_age, mileage, client_id) VALUES
(1, 'BMW', 'M series',2018, 12112, 2),
(2, 'Mercedes', 'A class',2013, 34558, 1),
(3, 'KIA', 'Sportage',2020, 84122, 10),
(4, 'KIA', 'RIO', 2016, 56344, 9),
(5, 'Mercedes', 'E class',2017, 64345, 3),
(6, 'BMW', 'X5',2019, 43122, 4),
(7, 'Scoda', 'Rapid',2014,  35228, 7),
(8, 'Lada', 'Granta', 2021, 12378, 8),
(9, 'Toyota', 'Camry', 2018, 125888, 5),
(10, 'Toyota', 'RAV4',2010, 145556,6)
;


INSERT INTO cs.client_discount (id, client_id, discount_amount, activation_dt, ending_dt) VALUES
(1, 10, 5,'2022-12-05 10:07:22', '2023-06-05 12:27:22'),
(2, 9, 8,'2022-10-25 11:34:22', '2023-05-05 14:27:12'),
(3, 8, 10,'2022-08-08 12:54:42', '2023-07-05 10:27:46'),
(4, 7, 8,'2022-07-15 14:38:11', '2023-08-05 10:12:44'),
(5, 6, 5,'2022-11-23 20:31:26', '2023-10-05 10:09:11'),
(6, 5, 5,'2022-09-23 19:31:42', '2023-12-05 10:17:13'),
(7, 3, 10,'2022-06-23 18:31:11', '2023-05-05 10:04:25'),
(8, 4, 5,'2022-08-16 11:31:11', '2023-04-05 10:06:52'),
(9, 1, 10,'2022-09-25 16:38:11', '2023-03-05 10:07:12'),
(10, 2, 6,'2022-10-04 12:27:22', '2023-05-05 10:56:43')
;

INSERT INTO cs.place (id, address ,place_area ,rent) VALUES
(1, 'Malyy Cherkasskiy Pereulok, 10, Moscow, Russia 122929', 76, 55000),
(2, 'Klimentovskiy Pereulok, 81, Moscow, Russia 139125', 55, 41000),
(3, 'Malaya Bronnaya St, 40, Moscow, Russia 179564', 128, 158000),
(4, 'New Arbat Ave, 11, Moscow, Russia 140358', 44, 61000),
(5, 'Ovchinnikovskaya Naberezhnaya, 17 стр1, Moscow, Russia 177450', 221, 281000),
(6, 'Ulitsa Ostozhenka, 57, Moscow, Russia 192144', 91, 105000),
(7, 'Chistyy Pereulok, 65, Moscow, Russia 136833', 86, 115000),
(8, 'Gagarinskiy Pereulok, 1, Moscow, Russia 125508', 61, 51000),
(9, 'Taganskaya Ulitsa, 46, Moscow, Russia 169950', 66, 58000),
(10, 'Sarinskiy Proyezd, 20, Moscow, Russia 185711', 45, 51000)
;

INSERT INTO cs.employee  (id, firstname, surname, employee_position, experience, place_id) VALUES
(1, 'Sergei', 'Alexandrov','Mechanic', 18, 10),
(2, 'Aleksandr', 'Borin','Mechanic', 12, 7),
(3, 'Stepan', 'Rodin','Senior mechanic', 41, 8),
(4, 'Daniel', 'Davydov','Superviser', 27, 5),
(5, 'Ivan', 'Belinsky','Manager', 19, 9),
(6, 'Petr', 'Lukin','Mechanic', 24, 6),
(7, 'Alexey', 'Tarasenko','Mechanic', 18, 2),
(8, 'Anton', 'Ermolov','Manager', 12, 4),
(9, 'Victoria', 'Ivanova','Senior mechanic', 32, 3),
(10, 'Maxim', 'Petrov','Mechanic', 10, 1)
;

INSERT INTO cs.project  (id, autopart_id, place_id, automobile_id, status, date) VALUES
(1, 2, 5, 8,'Prepayment', '2022-12-05'),
(2, 5, 1, 1,'Done', '2022-11-09'),
(3, 8, 2, 6,'Reserved', '2023-01-12'),
(4, 7, 4, 2,'Done', '2022-10-05'),
(5, 10, 8, 4,'Done', '2022-11-15'),
(6, 1, 10, 6,'Done', '2022-09-11'),
(7, 3, 9, 10,'Reserved', '2023-02-09'),
(8, 6, 4, 9,'Prepayment', '2023-01-28'),
(9, 4, 2, 1,'Done', '2022-12-01'),
(10, 5, 3, 5,'Prepayment', '2023-04-12')
;
