prompt Haley Hill
prompt CS 325 - Fall 2022
prompt Last Modified: 12/07/2022
prompt

delete from employee;
delete from room;
delete from guest;
delete from reservation;
delete from bill;
delete from phone;
delete from menu;
delete from food_order;
delete from guest_food_order;

prompt =====
prompt populating employee table

insert into employee
values('123ab', 'Jenkins', 'Nigel', 'Accountant', 3000.00);

insert into employee
values('456ab', 'Ford', 'James', 'Clerk', 800.00);

insert into employee
values('789ab', 'Chua', 'Sancho', 'Housekeeping', 1250.00);

insert into employee
values('123cd', 'Bobberson', 'Sandy', 'Accountant', 3100.00);

insert into employee
values('456cd', 'Smith', 'Jules', 'Maintenance', 1600.00);

insert into employee
values('789cd', 'Ridgewood', 'Sam', 'Kitchen Staff', 1500.00);

insert into employee
values('123ef', 'Richards', 'Alex', 'Housekeeping', 1250.00);

insert into employee
values('456ef', 'Miller', 'Caleb', 'Housekeeping', 1300.00);

insert into employee
values('789ef', 'Taylor', 'Mira', 'Kitchen Staff', 1500.00);

insert into employee
values('123gh', 'Owens', 'Jacquelyn', 'Clerk', 800.00);

insert into employee
values('456gh', 'Ford', 'Lucas', 'Housekeeping', 1300.00);

insert into employee
values('789gh', 'Jacobs', 'Jacob', 'Housekeeping', 1250.00);

insert into employee
values('123ij', 'Cooper', 'Simon', 'Housekeeping', 1250.00);

prompt =====
prompt populating room table

insert into room
values('yz000', '1bedroom', 75.00, '789gh');

insert into room
values('yz111', '1bedroom', 75.00, '456gh');

insert into room
values('yz222', '2bedroom', 100.00, '456gh');

insert into room
values('yz333', '1bedroom', 75.00, '456ef');

insert into room
values('yz444', '2bedroom', 100.00, '789gh');

insert into room
values('yz555', '2bedroom', 100.00, '789ab');

insert into room
values('wx000', '1bedroom', 75.00, '123ij');

insert into room
values('wx111', '2bedroom', 100.00, '456ef');

insert into room
values('wx222', '1bedroom', 75.00, '123ij');

insert into room
values('wx333', '2bedroom', 100.00, '789ab');

insert into room
values('wx444', '1bedroom', 75.00, '123ij');


prompt =====
prompt populating guest table

insert into guest
values('78902', 'Evans', 'Jasmine', 1001253478926372);

insert into guest
values('40915', 'Ortiz', 'Gabe', 7896043278192650);

insert into guest
values('18657', 'Mitchell', 'Rose', 1820384567102967);

insert into guest
values('26371', 'Butler', 'Alef', 6354901528945321);

insert into guest
values('68423', 'Sheldon', 'Eric', 7583647801263845);

insert into guest
values('77392', 'Waters', 'Finn', 7245637891029375);

insert into guest
values('25673', 'Sanchez', 'Anya', 1624357890354617);

insert into guest
values('11526', 'Powell', 'Izzy', 1617892018273640);

insert into guest
values('56742', 'Holt', 'Harry', 3625364795027356);

insert into guest
values('10471', 'Goodwin', 'Harriet', 6728930384673920);


prompt =====
prompt populating reservation

insert into reservation
values('1230', '03-Dec-2022', '10-Dec-2022', 'yz000', '10471');

insert into reservation
values('2349', '28-Nov-2022', '05-Dec-2022', 'wx111', '56742');

insert into reservation
values('3458', '06-Dec-2022', '13-Dec-2022', 'wx222', '11526');

insert into reservation
values('4567', '12-Dec-2022', '20-Dec-2022', 'yz333', '25673');

insert into reservation
values('5671', '05-Dec-2022', '09-Dec-2022', 'yz444', '77392');

insert into reservation
values('8901', '05-Dec-2022', '12-Dec-2022', 'yz222', '68423');

insert into reservation
values('2459', '09-Dec-2022', '19-Dec-2022', 'yz111', '26371');

insert into reservation
values('5327', '04-Dec-2022', '11-Dec-2022', 'wx333', '18657');

insert into reservation
values('7891', '02-Dec-2022', '12-Dec-2022', 'yz555', '40915');

insert into reservation
values('1820', '07-Dec-2022', '14-Dec-2022', 'wx444', '78902');


prompt =====
prompt populating bill table

insert into bill
values('0011', 547.00, 'no', '78902', '1820');

insert into bill
values('0022', 800.00, 'no', '40915', '7891');

insert into bill
values('0033', 0.00, 'yes', '18657', '5327');

insert into bill
values('0044', 0.00, 'yes', '26371', '2459');

insert into bill
values('0055', 430.00, 'no', '68423', '8901');

insert into bill
values('0066', 338.00, 'no', '77392', '5671');

insert into bill
values('0077', 429.00, 'no', '25673', '4567');

insert into bill
values('0088', 300.00, 'no', '11526', '3458');

insert into bill
values('0099', 389.00, 'no', '56742', '2349');

insert into bill
values('1010', 562.00, 'no', '10471', '1230');


prompt =====
prompt populating phone table

insert into phone
values('78902', 8880004444);

insert into phone
values('40915', 8881113333);

insert into phone
values('18657', 8882220000);

insert into phone
values('26371', 8885559999);

insert into phone
values('68423', 8882227777);

insert into phone
values('77392', 7770003333);

insert into phone
values('25673', 7770002222);

insert into phone
values('11526', 7770004444);

insert into phone
values('56742', 7770005555);

insert into phone
values('10471', 7770006666);


prompt =====
prompt populating menu table

insert into menu
values('0000', 'Lasagna', 15.00);

insert into menu
values('0001', 'Sushi', 20.00);

insert into menu
values('0011', 'Tacos', 12.00);

insert into menu
values('0111', 'Spaghetti', 10.00);

insert into menu
values('1111', 'Burger', 18.00);

insert into menu
values('0101', 'Pancakes', 10.00);

insert into menu
values('0100', 'Lobster', 40.00);

insert into menu
values('1000', 'Curry', 18.00);

insert into menu
values('1010', 'Steak', 30.00);

insert into menu
values('1100', 'Pizza', 15.00);


prompt =====
prompt populating food_order

insert into food_order
values('1111', '0022', '0100');

insert into food_order
values('2222', '0022', '1010');

insert into food_order
values('3333', '0011', '1111');

insert into food_order
values('4444', '0099', '1100');

insert into food_order
values('5555', '0088', '0000');

insert into food_order
values('6666', '0033', '0001');

insert into food_order
values('7777', '0044', '0011');

insert into food_order
values('8888', '0055', '0111');

insert into food_order
values('9999', '0066', '1100');

insert into food_order
values('9090', '0066', '0101');


prompt =====
prompt populating guest_food_order table

insert into guest_food_order
values('40915', '1111');

insert into guest_food_order
values('40915', '2222');

insert into guest_food_order
values('78902', '3333');

insert into guest_food_order
values('56742', '4444');

insert into guest_food_order
values('11526', '5555');

insert into guest_food_order
values('18657', '6666');

insert into guest_food_order
values('26371', '7777');

insert into guest_food_order
values('68423', '8888');

insert into guest_food_order
values('77392', '9999');

insert into guest_food_order
values('77392', '9090');

prompt -- end of HotelPopulate.sql
