--Insert data for Account table
INSERT INTO Account (id, name, email, password_hash, created_at) VALUES
  ('acc1', 'Alice Johnson', 'alice.johnson@example.com', 'hash1', '2025-03-20 09:00:00'),
  ('acc2', 'Bob Smith', 'bob.smith@example.com', 'hash2', '2025-03-20 09:05:00'),
  ('acc3', 'Carol Davis', 'carol.davis@example.com', 'hash3', '2025-03-20 09:10:00'),
  ('acc4', 'David Wilson', 'david.wilson@example.com', 'hash4', '2025-03-20 09:15:00'),
  ('acc5', 'Eva Brown', 'eva.brown@example.com', 'hash5', '2025-03-20 09:20:00'),
  ('acc6', 'Frank Moore', 'frank.moore@example.com', 'hash6', '2025-03-20 09:25:00'),
  ('acc7', 'Grace Taylor', 'grace.taylor@example.com', 'hash7', '2025-03-20 09:30:00'),
  ('acc8', 'Henry Anderson', 'henry.anderson@example.com', 'hash8', '2025-03-20 09:35:00'),
  ('acc9', 'Ivy Thomas', 'ivy.thomas@example.com', 'hash9', '2025-03-20 09:40:00'),
  ('acc10', 'Jack Lee', 'jack.lee@example.com', 'hash10', '2025-03-20 09:45:00');

--Insert data for ProfessionalAccount table
INSERT INTO ProfessionalAccount (id, account_id, business_role, tax_id, industry, registration_date, business_website, status) VALUES
  ('pacc1', 'acc1', 'Owner', 'TAX001', 'Restaurant', '2025-03-21 10:00:00', 'https://alice-restaurant.com', 'Active'),
  ('pacc2', 'acc2', 'Manager', 'TAX002', 'Cafe', '2025-03-21 10:05:00', 'https://bob-cafe.com', 'Active'),
  ('pacc3', 'acc3', 'Staff', 'TAX003', 'Catering', '2025-03-21 10:10:00', 'https://carol-catering.com', 'Pending Approval'),
  ('pacc4', 'acc4', 'Owner', 'TAX004', 'Food Truck', '2025-03-21 10:15:00', 'https://david-foodtruck.com', 'Suspended'),
  ('pacc5', 'acc5', 'Manager', 'TAX005', 'Other', '2025-03-21 10:20:00', 'https://eva-other.com', 'Active'),
  ('pacc6', 'acc6', 'Staff', 'TAX006', 'Restaurant', '2025-03-21 10:25:00', 'https://frank-restaurant.com', 'Active'),
  ('pacc7', 'acc7', 'Owner', 'TAX007', 'Cafe', '2025-03-21 10:30:00', 'https://grace-cafe.com', 'Pending Approval'),
  ('pacc8', 'acc8', 'Manager', 'TAX008', 'Catering', '2025-03-21 10:35:00', 'https://henry-catering.com', 'Active'),
  ('pacc9', 'acc9', 'Staff', 'TAX009', 'Food Truck', '2025-03-21 10:40:00', 'https://ivy-foodtruck.com', 'Active'),
  ('pacc10', 'acc10', 'Owner', 'TAX010', 'Other', '2025-03-21 10:45:00', 'https://jack-other.com', 'Suspended');

--Insert data for Session table
INSERT INTO Session (id, account_id, session_token, ip_address, user_agent, created_at, expires_at) VALUES
  ('sess1', 'acc1', 'token1', '192.168.1.101', 'Mozilla/5.0', '2025-03-22 08:00:00', '2025-03-22 10:00:00'),
  ('sess2', 'acc2', 'token2', '192.168.1.102', 'Mozilla/5.0', '2025-03-22 08:05:00', '2025-03-22 10:05:00'),
  ('sess3', 'acc3', 'token3', '192.168.1.103', 'Mozilla/5.0', '2025-03-22 08:10:00', '2025-03-22 10:10:00'),
  ('sess4', 'acc4', 'token4', '192.168.1.104', 'Mozilla/5.0', '2025-03-22 08:15:00', '2025-03-22 10:15:00'),
  ('sess5', 'acc5', 'token5', '192.168.1.105', 'Mozilla/5.0', '2025-03-22 08:20:00', '2025-03-22 10:20:00'),
  ('sess6', 'acc6', 'token6', '192.168.1.106', 'Mozilla/5.0', '2025-03-22 08:25:00', '2025-03-22 10:25:00'),
  ('sess7', 'acc7', 'token7', '192.168.1.107', 'Mozilla/5.0', '2025-03-22 08:30:00', '2025-03-22 10:30:00'),
  ('sess8', 'acc8', 'token8', '192.168.1.108', 'Mozilla/5.0', '2025-03-22 08:35:00', '2025-03-22 10:35:00'),
  ('sess9', 'acc9', 'token9', '192.168.1.109', 'Mozilla/5.0', '2025-03-22 08:40:00', '2025-03-22 10:40:00'),
  ('sess10', 'acc10', 'token10', '192.168.1.110', 'Mozilla/5.0', '2025-03-22 08:45:00', '2025-03-22 10:45:00');

--Insert data for AccountVerification table
INSERT INTO AccountVerification (id, account_id, method, status, verified_at) VALUES
  ('av1', 'acc1', 'Email', 'Verified', '2025-03-23 09:00:00'),
  ('av2', 'acc2', 'Phone', 'Pending', '2025-03-23 09:05:00'),
  ('av3', 'acc3', 'Email', 'Unverified', '2025-03-23 09:10:00'),
  ('av4', 'acc4', 'Email', 'Verified', '2025-03-23 09:15:00'),
  ('av5', 'acc5', 'Phone', 'Verified', '2025-03-23 09:20:00'),
  ('av6', 'acc6', 'Email', 'Pending', '2025-03-23 09:25:00'),
  ('av7', 'acc7', 'Phone', 'Unverified', '2025-03-23 09:30:00'),
  ('av8', 'acc8', 'Email', 'Verified', '2025-03-23 09:35:00'),
  ('av9', 'acc9', 'Phone', 'Pending', '2025-03-23 09:40:00'),
  ('av10', 'acc10', 'Email', 'Verified', '2025-03-23 09:45:00');

--Insert data for AccountAuthenticity table
INSERT INTO AccountAuthenticity (id, account_id, type, status, verified_at) VALUES
  ('aa1', 'acc1', 'Business', 'Approved', '2025-03-24 10:00:00'),
  ('aa2', 'acc2', 'Influencer', 'Pending', '2025-03-24 10:05:00'),
  ('aa3', 'acc3', 'Public Figure', 'Rejected', '2025-03-24 10:10:00'),
  ('aa4', 'acc4', 'Business', 'Approved', '2025-03-24 10:15:00'),
  ('aa5', 'acc5', 'Other', 'Pending', '2025-03-24 10:20:00'),
  ('aa6', 'acc6', 'Influencer', 'Approved', '2025-03-24 10:25:00'),
  ('aa7', 'acc7', 'Public Figure', 'Rejected', '2025-03-24 10:30:00'),
  ('aa8', 'acc8', 'Business', 'Approved', '2025-03-24 10:35:00'),
  ('aa9', 'acc9', 'Other', 'Pending', '2025-03-24 10:40:00'),
  ('aa10', 'acc10', 'Influencer', 'Approved', '2025-03-24 10:45:00');

--Insert data for Establishment table
INSERT INTO Establishment (id, business_name, location, contact_number, created_at) VALUES
  ('est1', 'Alice Diner', '123 Main St', '555-0101', '2025-03-25 11:00:00'),
  ('est2', 'Bob Cafe', '234 Oak Ave', '555-0102', '2025-03-25 11:05:00'),
  ('est3', 'Carol Catering', '345 Pine Rd', '555-0103', '2025-03-25 11:10:00'),
  ('est4', 'David Food Truck', '456 Maple Ln', '555-0104', '2025-03-25 11:15:00'),
  ('est5', 'Eva Eatery', '567 Elm St', '555-0105', '2025-03-25 11:20:00'),
  ('est6', 'Frank Bistro', '678 Cedar Blvd', '555-0106', '2025-03-25 11:25:00'),
  ('est7', 'Grace Grill', '789 Walnut Dr', '555-0107', '2025-03-25 11:30:00'),
  ('est8', 'Henry House', '890 Birch Ct', '555-0108', '2025-03-25 11:35:00'),
  ('est9', 'Ivy Inn', '901 Cherry Cir', '555-0109', '2025-03-25 11:40:00'),
  ('est10', 'Jack Joint', '1010 Spruce Ter', '555-0110', '2025-03-25 11:45:00');

-- Insert data for EstablishmentProfessional table
INSERT INTO EstablishmentProfessional (id, professional_account_id, establishment_id, role) VALUES
  ('ep1', 'pacc1', 'est1', 'Owner'),
  ('ep2', 'pacc2', 'est2', 'Manager'),
  ('ep3', 'pacc3', 'est3', 'Staff'),
  ('ep4', 'pacc4', 'est4', 'Owner'),
  ('ep5', 'pacc5', 'est5', 'Manager'),
  ('ep6', 'pacc6', 'est6', 'Staff'),
  ('ep7', 'pacc7', 'est7', 'Owner'),
  ('ep8', 'pacc8', 'est8', 'Manager'),
  ('ep9', 'pacc9', 'est9', 'Staff'),
  ('ep10', 'pacc10', 'est10', 'Owner');

--Insert data for Product table
INSERT INTO Product (id, establishment_id, name, description, price, category, custom_options, created_at) VALUES
  ('prod1', 'est1', 'Burger', 'Juicy beef burger', 8.99, 'Food', '{"options": ["cheese", "bacon"]}', '2025-03-26 12:00:00'),
  ('prod2', 'est2', 'Espresso', 'Strong espresso', 2.99, 'Beverage', '{"size": ["single", "double"]}', '2025-03-26 12:05:00'),
  ('prod3', 'est3', 'Sandwich', 'Ham sandwich', 5.49, 'Food', '{"bread": ["white", "wheat"]}', '2025-03-26 12:10:00'),
  ('prod4', 'est4', 'Taco', 'Spicy taco', 3.99, 'Food', '{"spice": ["mild", "hot"]}', '2025-03-26 12:15:00'),
  ('prod5', 'est5', 'Salad', 'Fresh garden salad', 4.99, 'Food', '{"dressing": ["ranch", "vinaigrette"]}', '2025-03-26 12:20:00'),
  ('prod6', 'est6', 'Pasta', 'Italian pasta dish', 7.99, 'Food', '{"pasta": ["spaghetti", "penne"]}', '2025-03-26 12:25:00'),
  ('prod7', 'est7', 'Steak', 'Grilled steak', 14.99, 'Food', '{"doneness": ["rare", "medium", "well-done"]}', '2025-03-26 12:30:00'),
  ('prod8', 'est8', 'Soup', 'Chicken soup', 3.49, 'Food', '{"flavor": ["chicken", "vegetable"]}', '2025-03-26 12:35:00'),
  ('prod9', 'est9', 'Pizza', 'Cheese pizza', 9.99, 'Food', '{"toppings": ["pepperoni", "mushrooms"]}', '2025-03-26 12:40:00'),
  ('prod10', 'est10', 'Ice Cream', 'Vanilla ice cream', 2.99, 'Dessert', '{"toppings": ["sprinkles", "chocolate"]}', '2025-03-26 12:45:00');

--Insert data for "Order" table
INSERT INTO "Order" (id, account_id, establishment_id, total_price, status, created_at) VALUES
  ('ord1', 'acc1', 'est1', 17.98, 'Completed', '2025-03-27 13:00:00'),
  ('ord2', 'acc2', 'est2', 2.99, 'Pending', '2025-03-27 13:05:00'),
  ('ord3', 'acc3', 'est3', 10.98, 'Processing', '2025-03-27 13:10:00'),
  ('ord4', 'acc4', 'est4', 7.98, 'Completed', '2025-03-27 13:15:00'),
  ('ord5', 'acc5', 'est5', 4.99, 'Cancelled', '2025-03-27 13:20:00'),
  ('ord6', 'acc6', 'est6', 12.99, 'Processing', '2025-03-27 13:25:00'),
  ('ord7', 'acc7', 'est7', 9.99, 'Pending', '2025-03-27 13:30:00'),
  ('ord8', 'acc8', 'est8', 8.99, 'Completed', '2025-03-27 13:35:00'),
  ('ord9', 'acc9', 'est9', 11.99, 'Processing', '2025-03-27 13:40:00'),
  ('ord10', 'acc10', 'est10', 2.99, 'Cancelled', '2025-03-27 13:45:00');

--Insert data for OrderItem table
INSERT INTO OrderItem (id, order_id, product_id, quantity, price_at_time) VALUES
  ('oi1', 'ord1', 'prod1', 2, 8.99),
  ('oi2', 'ord2', 'prod2', 1, 2.99),
  ('oi3', 'ord3', 'prod3', 2, 5.49),
  ('oi4', 'ord4', 'prod4', 2, 3.99),
  ('oi5', 'ord5', 'prod5', 1, 4.99),
  ('oi6', 'ord6', 'prod6', 1, 7.99),
  ('oi7', 'ord7', 'prod7', 1, 14.99),
  ('oi8', 'ord8', 'prod8', 1, 3.49),
  ('oi9', 'ord9', 'prod9', 1, 9.99),
  ('oi10', 'ord10', 'prod10', 1, 2.99);

--Insert data for Review table
INSERT INTO Review (id, account_id, reviewable_id, reviewable_type, rating_category, rating, comment, created_at) VALUES
  ('rev1', 'acc1', 'est1', 'Establishment', 'Service', 5, 'Excellent service!', '2025-03-28 14:00:00'),
  ('rev2', 'acc2', 'prod2', 'Product', 'Quality', 4, 'Great quality espresso.', '2025-03-28 14:05:00'),
  ('rev3', 'acc3', 'est3', 'Establishment', 'Experience', 4, 'Nice ambiance.', '2025-03-28 14:10:00'),
  ('rev4', 'acc4', 'prod4', 'Product', 'Price', 3, 'Taco was a bit expensive.', '2025-03-28 14:15:00'),
  ('rev5', 'acc5', 'est5', 'Establishment', 'Service', 5, 'Outstanding dining experience.', '2025-03-28 14:20:00'),
  ('rev6', 'acc6', 'prod6', 'Product', 'Quality', 4, 'Pasta was delicious.', '2025-03-28 14:25:00'),
  ('rev7', 'acc7', 'est7', 'Establishment', 'Experience', 5, 'Really enjoyed my visit.', '2025-03-28 14:30:00'),
  ('rev8', 'acc8', 'prod8', 'Product', 'Service', 3, 'Soup could use more flavor.', '2025-03-28 14:35:00'),
  ('rev9', 'acc9', 'est9', 'Establishment', 'Price', 4, 'Good value for money.', '2025-03-28 14:40:00'),
  ('rev10', 'acc10', 'prod10', 'Product', 'Quality', 5, 'Ice cream was excellent!', '2025-03-28 14:45:00');
