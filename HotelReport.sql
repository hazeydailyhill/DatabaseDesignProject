prompt Haley Hill
prompt CS 325 - Fall 2022
prompt Last modified: 12/23/2022

spool HotelReport-Results.txt
prompt ==========================================
prompt Query for projecting the dates each two-bedroom suite will be available,
prompt along with its room ID, price, and room type (two-bedroom!).
col room_id format a8
col room_price format $999.99
col "AVAILABLE ON" format a15
prompt

select room.room_id, room_type, room_price, res_checkout as "AVAILABLE ON"
  from room, reservation
  where room.room_id = reservation.room_id
  and room_type = '2bedroom';

prompt ==========================================
prompt Query for projecting the bill of a given guest
prompt (guest_id input from user).
prompt
col bill_total format $9999.99
col bill_payment format a12
col "GUEST_NAME" format a15
select guest.guest_id, guest_fname || ' ' || guest_lname "GUEST_NAME",
bill_total, bill_payment
  from guest, bill
  where guest.guest_id = bill.guest_id
  and guest.guest_id = '&guest_id';

prompt ==========================================
prompt Query for projecting names and salaries of highest paid kitchen staff.
prompt
col salary format $9999.99
col "EMPLOYEE NAME" format a15
select empl_fname || ' ' || empl_lname "EMPLOYEE NAME", salary
  from employee
  where job_title = 'Kitchen Staff'
  and salary = (select max(salary)
                  from employee
                  where job_title = 'Kitchen Staff');

spool off
