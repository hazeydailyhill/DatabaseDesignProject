# Scenario 
## The Humboldt Hotel
The Humboldt Hotel warmly welcomes guests to enjoy its luxury suites and community lounge, featuring a view overlooking the ocean. Thirty-five rooms are available for reservation, with fifteen as one-bedroom suites and twenty as two-bedroom suites. Reservations are made with a guest’s name, phone number, dates of travel, and card information to ensure payment. A one-bedroom costs $75 per night, while a two-bedroom costs $100 per night. Food from the menu varies in price, and the total bill is paid on the check-out date. The hotel employs front desk clerks, housekeeping, kitchen staff, servers, maintenance workers, and accountants. 

 ## Questions
- Is a one-bedroom/two-bedroom suite available? 
- When is the soonest checkout date/availability for a room?
- Is a specific date in the future available for a one-bedroom/two-bedroom reservation?
- What is offered on the menu for less than $20?
- What is customer X’s current bill?
  
## Business Rules
- An occupied suite can only be reserved for after the current guest’s check-out date.
- A guest must make at least one reservation.
- A guest can make reservations for themselves and for someone else. 
- An employee can clean many rooms but a room is cleaned by just one employee.
- Not all employees clean rooms– this depends on the job title.
- Many guests can place many orders for food off the menu. Guests do not have to place orders if they don’t want to, but only guests can order from the hotel.
- The costs of a guest’s reservation and food orders are added to their bill.
- A guest has one total bill they are responsible for by their check-out date.

# Code Explained
## Description
**HotelDesign.sql** creates tables for each entity class from 325HOTELMODEL.pdf. Those tables are employee, room, guest, reservation, bill, menu, and food order. Additionally, a multivalued attribute called guest_phone is eliminated through 1NF and put into a new table called phone. An M-to-N relationship between guest and food_order also creates an intersection table called guest_food_order. 

**HotelPopulate.sql** populates each of the tables described above.

**HotelContents.sql** contains queries for projecting all attributes from each of the populated tables. 

**HotelQueries.sql** and **HotelReport.sql** contain example queries using the populated tables to answer questions a user might have about the hotel.

## How to set up the database
- HotelDesign.sql should be run first to create all of the tables.
- HotelPopulate.sql is run second to populate those tables.
- HotelContents.sql can be run next to display the contents of those tables.
- HotelQueries.sql and HotelReport.sql can be run to show how the database might be used. 

