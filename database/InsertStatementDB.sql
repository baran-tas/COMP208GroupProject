INSERT INTO Users (id, username, email, passw, account_type) VALUES
(1, 'store1', 'email1@store.com', 'password1', 'professional'),
(2, 'store2', 'email2@store.com', 'password2', 'professional'),
(3, 'store3', 'email3@store.com', 'password3', 'professional'),
(4, 'store4', 'email4@store.com', 'password4', 'professional'),
(5, 'store5', 'email5@store.com', 'password5', 'professional'),
(6, 'store6', 'email6@store.com', 'password6', 'professional'),
(7, 'store7', 'email7@store.com', 'password7', 'professional'),
(8, 'store8', 'email8@store.com', 'password8', 'professional'),
(9, 'store9', 'email9@store.com', 'password9', 'professional'),
(10, 'store10', 'email10@store.com', 'password10', 'professional'),
(11, 'user1', 'user1@example.com', 'pass1', 'personal'),
(12, 'user2', 'user2@example.com', 'pass2', 'personal'),
(13, 'user3', 'user3@example.com', 'pass3', 'personal'),
(14, 'user4', 'user4@example.com', 'pass4', 'personal'),
(15, 'user5', 'user5@example.com', 'pass5', 'personal');

INSERT INTO Professional (id, tax_id, store_name, store_description, phone, address, establishment_type, establishment_website) VALUES
(1, 'taxid1', 'Coffee Shop', 'Cozy cafe serving coffee and pastries', '02011588811', '231 Coffee Shop Avenue', 'Cafe', 'https://coffeeshop.co.uk'),
(2, 'taxid2', 'Burger Place', 'Modern fast food burger joint', '02049498172', '546 Buger Place', 'Fast Food', 'https://burgerplace.co.uk'),
(3, 'taxid3', 'Pizza Palace', 'Hot, fast, and tasty pizza', '02038392914', '723 Pizza Lane', 'Restaurant', 'https://pizzapalace.co.uk'),
(4, 'taxid4', 'Taco Town', 'Street style tacos', '02093504003', '429 Taco City', 'Food Truck', 'https://tacotown.co.uk'),
(5, 'taxid5', 'Sandwich Shop', 'Quick and tasty sandwiches', '02052432881', '582 Sandwich Corner', 'Cafe', 'https://sandwichshop.co.uk'),
(6, 'taxid6', 'Chinese Food Place', 'Fresh traditional Chinese food', '02040797165', '312 China Town', 'Restaurant', 'https://chinesefoodplace.co.uk'),
(7, 'taxid7', 'Pasta Place', 'Great, fresh pasta', '02077849621', '289 Pasta Road', 'Restaurant', 'https://pastaplace.co.uk'),
(8, 'taxid8', 'Doughnut Shop', 'Doughnuts, doughnuts, and doughnuts', '02067370931', '689 Fried Goods Lane', 'Fast Food', 'https://doughnutshop.co.uk'),
(9, 'taxid9', 'Salad Bar', 'Healthy salads and vegan food', '02023816087', '143 Vegan Food Street', 'Cafe', 'https://saladbar.co.uk'),
(10, 'taxid10', 'Texan BBQ', 'Smoked Texan meat and BBQ', '02034829695', '594 Texas Lane', 'Fast Food', 'https://texanbbq.co.uk');

INSERT INTO Personal (id, first_name, last_name, phone) VALUES
(1, 'John', 'Doe', '1234567890'),
(2, 'Jane', 'Doe', '2345678901'),
(3, 'Michael', 'Doe', '3456789012'),
(4, 'Bob', 'Doe', '4567890123'),
(5, 'Alice', 'Doe', '5678901234');

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(1, 'Espresso', 'Strong and bold espresso', 2.99, 'https://coffeeshop.co.uk/espresso.png', 1),
(1, 'Cappuccino', 'Creamy cappuccino with froth', 3.99, 'https://coffeeshop.co.uk/cappuccino.png', 1),
(1, 'Latte', 'Smooth latte with steamed milk', 4.49, 'https://coffeeshop.co.uk/latte.png', 1),
(1, 'Americano', 'Espresso with hot water', 2.49, 'https://coffeeshop.co.uk/americano.png', 1),
(1, 'Mocha', 'Hot chocolate and coffee', 4.99, 'https://coffeeshop.co.uk/mocha.png', 1),
(1, 'Iced Coffee', 'Chilled and refreshing iced coffee', 3.49, 'https://coffeeshop.co.uk/icedcoffee.png', 1),
(1, 'Frappuccino', 'Blended iced coffee drink', 4.99, 'https://coffeeshop.co.uk/frappuccino.png', 1),
(1, 'Tea', 'Regular black tea', 2.49, 'https://coffeeshop.co.uk/tea.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(2, 'Classic Burger', 'Beef burger with lettuce, tomato, and cheese', 5.99, 'https://burgerplace.co.uk/classicburger.png', 1),
(2, 'Cheeseburger', 'Burger with a slice of cheese', 6.49, 'https://burgerplace.co.uk/cheeseburger.png', 1),
(2, 'Bacon Burger', 'Burger topped with crispy bacon', 6.99, 'https://burgerplace.co.uk/baconburger.png', 1),
(2, 'Veggie Burger', 'Plant based burger', 5.49, 'https://burgerplace.co.uk/veggieburger.png', 1),
(2, 'Double Burger', 'Double patty burger', 7.99, 'https://burgerplace.co.uk/doubleburger.png', 1),
(2, 'Chicken Burger', 'Burger with grilled chicken', 6.49, 'https://burgerplace.co.uk/chickenburger.png', 1),
(2, 'Spicy Burger', 'Spicy burger', 6.99, 'https://burgerplace.co.uk/spicyburger.png', 1),
(2, 'Slider', 'Slider burger', 3.99, 'https://burgerplace.co.uk/slider.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(3, 'Margherita Pizza', 'Classic pizza with tomato, mozzarella, and basil', 7.99, 'https://pizzapalace.co.uk/margheritapizza.png', 1),
(3, 'Pepperoni Pizza', 'Pizza topped with pepperoni slices', 8.99, 'https://pizzapalace.co.uk/pepperonipizza.png', 1),
(3, 'Hawaiian Pizza', 'Pizza with ham and pineapple', 8.49, 'https://pizzapalace.co.uk/hawaiianpizza.png', 1),
(3, 'Veggie Pizza', 'Pizza loaded with fresh vegetables', 7.99, 'https://pizzapalace.co.uk/veggiepizza.png', 1),
(3, 'BBQ Chicken Pizza', 'Pizza with BBQ chicken and red onions', 9.49, 'https://pizzapalace.co.uk/bbqchickenpizza.png', 1),
(3, 'Meat Feast Pizza', 'Pizza loaded with various meats', 9.99, 'https://pizzapalace.co.uk/meatfeastpizza.png', 1),
(3, 'Supreme Pizza', 'Pizza with a variety of toppings', 9.49, 'https://pizzapalace.co.uk/supremepizza.png', 1),
(3, 'Cheese Pizza', 'Simple pizza with extra cheese', 7.49, 'https://pizzapalace.co.uk/cheesepizza.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(4, 'Chicken Taco', 'Taco filled with grilled chicken', 2.99, 'https://tacotown.co.uk/chickentaco.png', 1),
(4, 'Beef Taco', 'Taco filled with seasoned beef', 2.99, 'https://tacotown.co.uk/beeftaco.png', 1),
(4, 'Fish Taco', 'Taco filled with grilled fish', 3.49, 'https://tacotown.co.uk/fishtaco.png', 1),
(4, 'Pork Taco', 'Taco with tender pork filling', 3.49, 'https://tacotown.co.uk/porktaco.png', 1),
(4, 'Veggie Taco', 'Taco with a mix of vegetables', 2.99, 'https://tacotown.co.uk/veggietaco.png', 1),
(4, 'Shrimp Taco', 'Taco filled with grilled shrimp', 3.99, 'https://tacotown.co.uk/shrimptaco.png', 1),
(4, 'Breakfast Taco', 'Taco with eggs and bacon', 3.99, 'https://tacotown.co.uk/breakfasttaco.png', 1),
(4, 'Taco Salad', 'Salad version of the taco', 4.49, 'https://tacotown.co.uk/tacosalad.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(5, 'Ham Sandwich', 'Sandwich with ham, cheese, and lettuce', 4.99, 'https://sandwichshop.co.uk/hamsandwich.png', 1),
(5, 'Turkey Sandwich', 'Sandwich with turkey, avocado, and tomato', 5.49, 'https://sandwichshop.co.uk/turkeysandwich.png', 1),
(5, 'Veggie Sandwich', 'Sandwich with assorted vegetables', 4.99, 'https://sandwichshop.co.uk/veggiesandwich.png', 1),
(5, 'Club Sandwich', 'Triple-decker sandwich with multiple fillings', 6.99, 'https://sandwichshop.co.uk/clubsandwich.png', 1),
(5, 'Grilled Cheese', 'Classic grilled cheese sandwich', 3.99, 'https://sandwichshop.co.uk/grilledcheese.png', 1),
(5, 'BLT Sandwich', 'Bacon, lettuce, and tomato sandwich', 5.49, 'https://sandwichshop.co.uk/bltsandwich.png', 1),
(5, 'Roast Beef Sandwich', 'Sandwich with roast beef and horseradish sauce', 6.49, 'https://sandwichshop.co.uk/roastbeefsandwich.png', 1),
(5, 'Chicken Salad Sandwich', 'Sandwich with chicken salad filling', 5.99, 'https://sandwichshop.co.uk/chickensaladsandwich.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(6, 'Kung Pao Chicken', 'Spicy stir-fried chicken with peanuts', 7.99, 'https://chinesefoodplace.co.uk/kungpaochicken.png', 1),
(6, 'Sweet and Sour Pork', 'Pork with a tangy sweet and sour sauce', 8.49, 'https://chinesefoodplace.co.uk/sweetandsourpork.png', 1),
(6, 'Fried Rice', 'Stir-fried rice with vegetables and egg', 6.99, 'https://chinesefoodplace.co.uk/friedrice.png', 1),
(6, 'Lo Mein', 'Noodles stir-fried with vegetables and meat', 7.49, 'https://chinesefoodplace.co.uk/lomein.png', 1),
(6, 'Spring Rolls', 'Crispy rolls filled with vegetables', 4.99, 'https://chinesefoodplace.co.uk/springrolls.png', 1),
(6, 'Tofu', 'Literally just tofu', 7.99, 'https://chinesefoodplace.co.uk/tofu.png', 1),
(6, 'Chow Mein', 'Stir-fried noodles with vegetables and meat', 7.49, 'https://chinesefoodplace.co.uk/chowmein.png', 1),
(6, 'Dumplings', 'Steamed or fried dumplings filled with meat and vegetables', 5.99, 'https://chinesefoodplace.co.uk/dumplings.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(7, 'Spaghetti Bolognese', 'Classic spaghetti with meat sauce', 8.99, 'https://pastaplace.co.uk/spaghettibolognese.png', 1),
(7, 'Fettuccine Alfredo', 'Pasta in a creamy alfredo sauce', 9.49, 'https://pastaplace.co.uk/fettuccinealfredo.png', 1),
(7, 'Penne Arrabiata', 'Penne pasta in a spicy tomato sauce', 8.49, 'https://pastaplace.co.uk/pennearrabiata.png', 1),
(7, 'Lasagna', 'Layered pasta with meat and cheese', 10.99, 'https://pastaplace.co.uk/lasagna.png', 1),
(7, 'Ravioli', 'Pasta pockets filled with cheese or meat', 9.99, 'https://pastaplace.co.uk/ravioli.png', 1),
(7, 'Carbonara', 'Pasta in a creamy egg and pancetta sauce', 9.49, 'https://pastaplace.co.uk/carbonara.png', 1),
(7, 'Pasta Primavera', 'Pasta with fresh seasonal vegetables', 8.99, 'https://pastaplace.co.uk/pastaprimavera.png', 1),
(7, 'Gnocchi', 'Potato dumplings served with pesto', 8.49, 'https://pastaplace.co.uk/gnocchi.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(8, 'Glazed Doughnut', 'Classic glazed doughnut', 1.99, 'https://doughnutshop.co.uk/glazeddoughnut.png', 1),
(8, 'Chocolate Doughnut', 'Doughnut with chocolate icing', 2.49, 'https://doughnutshop.co.uk/chocolatedoughnut.png', 1),
(8, 'Jam Doughnut', 'Doughnut filled with fruit jam', 2.49, 'https://doughnutshop.co.uk/jamdoughnut.png', 1),
(8, 'Powdered Doughnut', 'Doughnut dusted with powdered sugar', 1.99, 'https://doughnutshop.co.uk/powdereddoughnut.png', 1),
(8, 'Cinnamon Twist', 'Doughnut with a cinnamon sugar coating', 2.49, 'https://doughnutshop.co.uk/cinnamontwist.png', 1),
(8, 'Sugar Doughnut', 'Simple doughnut sprinkled with sugar', 1.99, 'https://doughnutshop.co.uk/sugardoughnut.png', 1),
(8, 'Boston Cream', 'Doughnut filled with cream and topped with chocolate', 2.99, 'https://doughnutshop.co.uk/bostoncream.png', 1),
(8, 'Maple Doughnut', 'Doughnut with maple icing', 2.49, 'https://doughnutshop.co.uk/mapledoughnut.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(9, 'Caesar Salad', 'Classic Caesar salad with croutons and parmesan', 5.99, 'https://saladbar.co.uk/caesarsalad.png', 1),
(9, 'Greek Salad', 'Salad with feta cheese, olives, and vegetables', 5.49, 'https://saladbar.co.uk/greeksalad.png', 1),
(9, 'Garden Salad', 'Fresh mixed greens with assorted vegetables', 4.99, 'https://saladbar.co.uk/gardensalad.png', 1),
(9, 'Cobb Salad', 'Salad with chicken, bacon, avocado, and egg', 6.99, 'https://saladbar.co.uk/cobbsalad.png', 1),
(9, 'Fruit Salad', 'Mixed seasonal fruits', 4.99, 'https://saladbar.co.uk/fruitsalad.png', 1),
(9, 'Pasta Salad', 'Cold pasta salad with vegetables', 5.49, 'https://saladbar.co.uk/pastasalad.png', 1),
(9, 'Quinoa Salad', 'Healthy salad with quinoa and veggies', 5.99, 'https://saladbar.co.uk/quinoasalad.png', 1),
(9, 'Spinach Salad', 'Fresh spinach salad with a light dressing', 4.99, 'https://saladbar.co.uk/spinachsalad.png', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(10, 'Smoked Brisket', 'Tender smoked brisket with rich flavor', 10.99, 'https://texanbbq.co.uk/smokedbrisket.png', 1),
(10, 'BBQ Ribs', 'Juicy BBQ ribs with smoky sauce', 11.99, 'https://texanbbq.co.uk/bbqribs.png', 1),
(10, 'Pulled Pork Sandwich', 'Sandwich with pulled pork and BBQ sauce', 8.99, 'https://texanbbq.co.uk/pulledporksandwich.png', 1),
(10, 'BBQ Chicken', 'Grilled chicken with BBQ sauce', 9.99, 'https://texanbbq.co.uk/bbqchicken.png', 1),
(10, 'Sausage Plate', 'Assorted BBQ sausages', 9.49, 'https://texanbbq.co.uk/sausageplate.png', 1),
(10, 'Burnt Ends', 'Crispy, flavorful burnt ends', 10.49, 'https://texanbbq.co.uk/burntends.png', 1),
(10, 'BBQ Beans', 'Hearty BBQ beans', 5.99, 'https://texanbbq.co.uk/bbqbeans.png', 1),
(10, 'Coleslaw', 'Classic coleslaw with tangy dressing', 4.99, 'https://texanbbq.co.uk/coleslaw.png', 1);

INSERT INTO Orders (user_id, store_id, order_date, total, status) VALUES
(1, 3, '2024-01-01 10:00:00', 24.99, 'pending'),
(2, 4, '2024-01-02 11:15:00', 42.50, 'completed'),
(3, 5, '2024-01-13 12:30:00', 19.95, 'cancelled'),
(4, 1, '2024-01-04 09:45:00', 58.00, 'completed'),
(5, 2, '2024-01-25 08:30:00', 35.75, 'pending'),
(1, 10, '2025-01-06 14:00:00', 99.99, 'completed'),
(2, 9, '2025-01-17 15:30:00', 12.50, 'pending'),
(3, 8, '2025-01-08 16:45:00', 47.25, 'cancelled'),
(4, 7, '2025-01-09 17:00:00', 66.66, 'completed'),
(5, 6, '2024-01-10 18:15:00', 55.55, 'pending'),
(1, 4, '2024-01-11 10:30:00', 23.45, 'completed'),
(2, 3, '2024-01-12 11:45:00', 89.90, 'pending'),
(3, 2, '2025-01-13 12:00:00', 150.00, 'completed'),
(4, 8, '2025-01-14 13:15:00', 75.00, 'pending'),
(5, 10, '2025-01-15 14:30:00', 120.30, 'completed'),
(1, 9, '2025-01-16 15:45:00', 65.25, 'cancelled'),
(2, 7, '2025-01-17 16:00:00', 34.99, 'completed'),
(3, 6, '2025-01-18 17:15:00', 80.00, 'pending'),
(4, 5, '2024-01-19 18:30:00', 45.00, 'completed'),
(5, 1, '2025-01-20 19:45:00', 59.99, 'pending');
