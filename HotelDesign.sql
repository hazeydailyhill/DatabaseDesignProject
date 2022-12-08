prompt Haley Hill
prompt CS 325 - Fall 2022
prompt Revised Design
prompt Last Modified: 12/04/2022

prompt =====
prompt table for employee information.

drop table employee cascade constraints;

create table employee
(empl_id char(5),
empl_lname varchar2(15) not null,
empl_fname varchar2(15),
job_title varchar2(25),
salary number(6, 2),
primary key (empl_id));

prompt =====
prompt table for hotel room information.
prompt empl_id used to show which employees are assigned to a room.

drop table room cascade constraints;

create table room
(room_id char(5),
room_type varchar2(10) not null,
room_price number(5,2),
empl_id char(5),
primary key(room_id),
foreign key (empl_id) references employee);

prompt =====
prompt table for guest information.

drop table guest cascade constraints;

create table guest
(guest_id char(5),
guest_lname varchar2(15) not null,
guest_fname varchar2(15),
guest_card_info number(16) not null,
primary key (guest_id));

prompt =====
prompt table for room reservations.
prompt room_id referenced to know which room,
prompt guest_id referenced to know which guest has reserved the room.

drop table reservation cascade constraints;

create table reservation
(res_id char(4),
res_checkin date,
res_checkout date,
room_id char(5),
guest_id char(5),
primary key(res_id),
foreign key (room_id) references room,
foreign key (guest_id) references guest);

prompt =====
prompt table for how much a guest owes and whether they have paid.
prompt bill_payment is either 'yes' or 'no'.

drop table bill cascade constraints;

create table bill
(bill_id char(4),
bill_total number(6, 2),
bill_payment varchar2(3),
guest_id char(5),
res_id char(4),
primary key (bill_id),
foreign key (guest_id) references guest,
foreign key(res_id) references reservation);

prompt =====
prompt table for guest phone numbers, referenced in the guest table.

drop table phone cascade constraints;

create table phone
(guest_id char(5),
guest_phone number(10),
primary key (guest_id, guest_phone),
foreign key (guest_id) references guest);

prompt =====
prompt table of all of the meals made at the hotel.

drop table menu cascade constraints;

create table menu
(food_id char(4),
food_name varchar2(15),
food_price number(5,2),
primary key(food_id));

prompt =====
prompt table for specific meals ordered.

drop table food_order cascade constraints;

create table food_order
(order_id char(4),
bill_id char(4),
food_id char(4),
primary key (order_id),
foreign key (bill_id) references bill,
foreign key (food_id) references menu);

prompt =====
prompt table for a specific guest food order.

drop table guest_food_order cascade constraints;

create table guest_food_order
(guest_id char(5),
order_id char(4),
primary key (guest_id, order_id),
foreign key (guest_id) references guest,
foreign key (order_id) references food_order);

prompt -- end of HotelDesign.sql
