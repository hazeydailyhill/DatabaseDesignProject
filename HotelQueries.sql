prompt Haley Hill
prompt CS 325 - Fall 2022
prompt Last Modified: 12/09/2022
prompt
prompt =================================
spool HotelQueryResults.txt

prompt ==== query 1 ====
prompt query for selecting all guests in either a 1bedroom or 2bedroom
prompt (room_type entered by user).
prompt
select guest_lname, room_type
    from guest, room
    where guest_id = (select guest_id
                        from reservation
                        where reservation.room_id = room.room_id
                        and room_type = '&room_type');

prompt ==== query 2 ====
prompt query for projecting names and salaries of highest paid kitchen staff.
prompt
col salary format $9999.99
select empl_lname, salary
  from employee
  where job_title = 'Kitchen Staff'
  and salary = (select max(salary)
                  from employee
                  where job_title = 'Kitchen Staff');

prompt ==== query 3 ====
prompt query for projecting the average salary for each department.
prompt
col avg(salary) format $9999.99
select job_title, avg(salary)
  from employee
  group by job_title;

prompt ==== query 4 ====
prompt query for projecting the dates each 2bedroom will be available on.
prompt
col room_id format a8
col room_price format $999.99
select room.room_id, room_type, room_price, res_checkout as "AVAILABLE ON"
  from room, reservation
  where room.room_id = reservation.room_id
  and room_type = '2bedroom';

prompt ==== query 5 ====
prompt query for projecting the bill of a given guest (guest_id input from user).
prompt
col bill_total format $9999.99
col bill_payment format a12
select guest.guest_id, bill_total, bill_payment
  from guest, bill
  where guest.guest_id = bill.guest_id
  and guest.guest_id = '&guest_id';

prompt ==== query 6 ====
prompt query for projecting the foods on the menu that are under $20.00.
prompt
col food_price format $99.99
select food_name, food_price
  from menu
  where food_price < 20.00;

prompt ==== query 7 ====
col food_id format a7
prompt query for projecting guest names and food_id from their orders.
prompt
select guest_fname, guest_lname, food_id
  from guest_food_order
  join guest on guest.guest_id = guest_food_order.guest_id
  join food_order on food_order.order_id = guest_food_order.order_id;

prompt ==== query 8 ====
prompt query for projecting only the names of guests who have
prompt ordered food at least once.
select guest_fname, guest_lname
  from guest
  where exists(select 'a'
      			     from guest_food_order
      			     where guest_food_order.guest_id = guest.guest_id);

spool off
-- end of HotelQueries.sql
