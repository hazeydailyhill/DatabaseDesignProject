prompt Haley Hill
prompt CS 325 - Fall 2022
prompt Last modified: 12/07/2022

spool HotelContents-Results.txt

prompt ===== employee table =====
col empl_id format a10
col job_title format a15
col salary format $9999.99
select *
	from employee;

prompt ===== room table =====
col room_id format a8
col room_price format $999.99
select *
	from room;

prompt ===== guest table =====
col guest_id format a8
col guest_card_info format 999999999999999999999
select *
	from guest;

prompt ===== reservation table =====
col res_id format a7
col res_checkin heading 'CHECK-IN|DATE' format a15
col res_checkout heading 'CHECK-OUT|DATE' format a15
select *
	from reservation;

prompt ===== bill table =====
col bill_id format a7
col bill_total format $9999.99
col bill_payment format a12
select *
	from bill;

prompt ===== phone table =====
select *
	from phone;

prompt ===== menu table =====
col food_id format a8
col food_price format $99.99
select *
	from menu;

prompt ===== food_order table =====
col order_id format a8
select *
	from food_order;

prompt ===== guest_food_order table =====
select *
	from guest_food_order;

spool off
