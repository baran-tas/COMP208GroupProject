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
(1, 'Espresso', 'Strong and bold espresso', 2.99, 'https://images.unsplash.com/photo-1508088405209-fbd63b6a4f50?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Cappuccino', 'Creamy cappuccino with froth', 3.99, 'https://images.unsplash.com/photo-1502165971801-35b35e7bbf9b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Latte', 'Smooth latte with steamed milk', 4.49, 'https://images.unsplash.com/photo-1541167760496-1628856ab772?q=80&w=1937&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Americano', 'Espresso with hot water', 2.49, 'https://images.unsplash.com/photo-1504194472231-5a5294eddc43?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Mocha', 'Hot chocolate and coffee', 4.99, 'https://images.unsplash.com/photo-1632845407875-10b4d85e6bf8?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Iced Coffee', 'Chilled and refreshing iced coffee', 3.49, 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Frappuccino', 'Blended iced coffee drink', 4.99, 'https://images.unsplash.com/photo-1608593432708-96e0343b996c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(1, 'Tea', 'Regular black tea', 2.49, 'https://images.unsplash.com/photo-1564890369478-c89ca6d9cde9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(2, 'Classic Burger', 'Beef burger with lettuce, tomato, and cheese', 5.99, 'https://images.unsplash.com/photo-1641485032545-1e56020b3860?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Cheeseburger', 'Burger with a slice of cheese', 6.49, 'https://images.unsplash.com/photo-1605789538467-f715d58e03f9?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Bacon Burger', 'Burger topped with crispy bacon', 6.99, 'https://images.unsplash.com/photo-1598182198871-d3f4ab4fd181?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Veggie Burger', 'Plant based burger', 5.49, 'https://images.unsplash.com/photo-1520072959219-c595dc870360?q=80&w=1980&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Double Burger', 'Double patty burger', 7.99, 'https://images.unsplash.com/photo-1639020715373-8641d5adfdc6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Chicken Burger', 'Burger with grilled chicken', 6.49, 'https://images.unsplash.com/photo-1544120379-4428412e6568?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Spicy Burger', 'Spicy burger', 6.99, 'https://images.unsplash.com/photo-1603508102983-99b101395d1a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(2, 'Slider', 'Slider burger', 3.99, 'https://images.unsplash.com/photo-1728776448564-761583fc8bfb?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(3, 'Margherita Pizza', 'Classic pizza with tomato, and mozzarella', 7.99, 'https://images.unsplash.com/photo-1723861113025-ea972fe48e98?q=80&w=2015&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'Pepperoni Pizza', 'Pizza topped with pepperoni slices', 8.99, 'https://images.unsplash.com/photo-1564128442383-9201fcc740eb?q=80&w=2131&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'Hawaiian Pizza', 'Pizza with ham and pineapple', 8.49, 'https://images.unsplash.com/photo-1649632984092-d60b0eb505fc?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'Veggie Pizza', 'Pizza loaded with fresh vegetables', 7.99, 'https://images.unsplash.com/photo-1617470702892-e01504297e84?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'BBQ Chicken Pizza', 'Pizza with BBQ chicken and red onions', 9.49, 'https://images.unsplash.com/photo-1662022613083-2b76200e460c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'Meat Feast Pizza', 'Pizza loaded with various meats', 9.99, 'https://images.unsplash.com/photo-1669717879542-65eb286d1b23?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'Supreme Pizza', 'Pizza with a variety of toppings', 9.49, 'https://images.unsplash.com/photo-1645530654927-a198eff22252?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(3, 'Cheese Pizza', 'Simple pizza with extra cheese', 7.49, 'https://images.unsplash.com/photo-1620374645498-af6bd681a0bd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(4, 'Chicken Taco', 'Taco filled with chicken', 2.99, 'https://images.unsplash.com/photo-1707528903720-56f7ef6c000d?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(4, 'Beef Taco', 'Taco filled with seasoned beef', 2.99, 'https://images.unsplash.com/photo-1687881063470-a78e6ea2590e?q=80&w=1952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DD', 1),
(4, 'Fish Taco', 'Taco filled with grilled fish', 3.49, 'https://images.unsplash.com/photo-1512838243191-e81e8f66f1fd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(4, 'Pork Taco', 'Taco with tender pork filling', 3.49, 'https://images.unsplash.com/photo-1613591798153-ca9f03f810bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(4, 'Veggie Taco', 'Taco filled with veggies', 3.99, 'https://images.unsplash.com/photo-1578338243320-b9fefa086ef8?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(4, 'Shrimp Taco', 'Taco filled with grilled shrimp', 3.99, 'https://images.unsplash.com/photo-1611250188496-e966043a0629?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(4, 'Breakfast Taco', 'Taco with eggs and bacon', 3.99, 'https://images.unsplash.com/photo-1722239314148-75aec672c797?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(4, 'Taco Salad', 'Salad version of the taco', 4.49, 'https://images.unsplash.com/photo-1700625915031-d2c7d472ea7b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(5, 'Ham Sandwich', 'Sandwich with ham, cheese, and lettuce', 4.99, 'https://images.unsplash.com/photo-1481070414801-51fd732d7184?q=80&w=1924&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'Turkey Sandwich', 'Sandwich with turkey, avocado, and tomato', 5.49, 'https://images.unsplash.com/photo-1628191010210-a59de33e5941?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'Veggie Sandwich', 'Sandwich with assorted vegetables', 4.99, 'https://images.unsplash.com/photo-1603903631918-a6a92fb6ac49?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'Club Sandwich', 'Triple-decker sandwich with multiple fillings', 6.99, 'https://images.unsplash.com/photo-1712746784291-e29d5d2694d4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'Grilled Cheese', 'Classic grilled cheese sandwich', 3.99, 'https://images.unsplash.com/photo-1528736235302-52922df5c122?q=80&w=2154&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'BLT Sandwich', 'Bacon, lettuce, and tomato sandwich', 5.49, 'https://images.unsplash.com/photo-1619096252214-ef06c45683e3?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'Roast Beef Sandwich', 'Sandwich with roast beef and horseradish sauce', 6.49, 'https://images.unsplash.com/photo-1702119614788-bae35a7be313?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(5, 'Chicken Salad Sandwich', 'Sandwich with chicken salad filling', 5.99, 'https://images.unsplash.com/photo-1553909489-cd47e0907980?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(6, 'Kung Pao Chicken', 'Spicy stir-fried chicken with peanuts', 7.99, 'https://images.unsplash.com/photo-1605704922285-e82455dba38b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Sweet and Sour Pork', 'Pork with a tangy sweet and sour sauce', 8.49, 'https://images.unsplash.com/photo-1624900043496-eefdb73dadf6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Fried Rice', 'Stir-fried rice with vegetables and egg', 6.99, 'https://images.unsplash.com/photo-1603133872878-684f208fb84b?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Lo Mein', 'Noodles stir-fried with vegetables and meat', 7.49, 'https://images.unsplash.com/photo-1712926742786-c77530757ee3?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Spring Rolls', 'Crispy rolls filled with vegetables', 4.99, 'https://images.unsplash.com/photo-1606525437679-037aca74a3e9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Tofu', 'Literally just tofu', 7.99, 'https://images.unsplash.com/photo-1596352670192-5a95e357df7b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Chow Mein', 'Stir-fried noodles with vegetables and meat', 7.49, 'https://images.unsplash.com/photo-1634864572865-1cf8ff8bd23d?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(6, 'Dumplings', 'Steamed or fried dumplings filled with meat and vegetables', 5.99, 'https://images.unsplash.com/photo-1541696432-82c6da8ce7bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(7, 'Spaghetti Bolognese', 'Classic spaghetti with meat sauce', 8.99, 'https://images.unsplash.com/photo-1622973536968-3ead9e780960?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3', 1),
(7, 'Fettuccine Alfredo', 'Pasta in a creamy alfredo sauce', 9.49, 'https://images.unsplash.com/photo-1645112411341-6c4fd023714a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(7, 'Penne Arrabiata', 'Penne pasta in a spicy tomato sauce', 8.49, 'https://images.unsplash.com/photo-1630409352591-abc3cb4635de?q=80&w=2146&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(7, 'Lasagna', 'Layered pasta with meat and cheese', 10.99, 'https://images.unsplash.com/photo-1709429790175-b02bb1b19207?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(7, 'Ravioli', 'Pasta pockets filled with cheese or meat', 9.99, 'https://images.unsplash.com/photo-1461009463816-4edea93afd6f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(7, 'Carbonara', 'Pasta in a creamy egg and pancetta sauce', 9.49, 'https://images.unsplash.com/photo-1588013273468-315fd88ea34c?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(7, 'Pasta Primavera', 'Pasta with fresh seasonal vegetables', 8.99, 'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(7, 'Gnocchi', 'Potato dumplings served with pesto', 8.49, 'https://images.unsplash.com/photo-1645087177483-f760329f470f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(8, 'Glazed Doughnut', 'Classic glazed doughnut', 1.99, 'https://images.unsplash.com/photo-1709384357781-ec0af82bcd43?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Chocolate Doughnut', 'Doughnut with chocolate icing', 2.49, 'https://images.unsplash.com/photo-1657318415919-3beff167f849?q=80&w=1958&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Jam Doughnut', 'Doughnut filled with fruit jam', 2.49, 'https://images.unsplash.com/photo-1600102148993-9a68461dbaf8?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Powdered Doughnut', 'Doughnut dusted with powdered sugar', 1.99, 'https://images.unsplash.com/photo-1640211087336-bbbce130e69b?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Cinnamon Twist', 'Doughnut with a cinnamon sugar coating', 2.49, 'https://images.unsplash.com/photo-1714374332544-539514b84f58?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Sugar Doughnut', 'Simple doughnut sprinkled with sugar', 1.99, 'https://images.unsplash.com/photo-1582461182977-0e61ebb79c87?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Boston Cream', 'Doughnut filled with cream and topped with chocolate', 2.99, 'https://images.unsplash.com/photo-1621164078472-1d59a47f63dd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(8, 'Maple Doughnut', 'Doughnut with maple icing', 2.49, 'https://images.unsplash.com/photo-1726514726168-a625fe7a5b65?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(9, 'Caesar Salad', 'Classic Caesar salad with croutons and parmesan', 5.99, 'https://images.unsplash.com/photo-1550304943-4f24f54ddde9?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Greek Salad', 'Salad with feta cheese, olives, and vegetables', 5.49, 'https://images.unsplash.com/photo-1599021419847-d8a7a6aba5b4?q=80&w=1958&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Garden Salad', 'Fresh mixed greens with assorted vegetables', 4.99, 'https://images.unsplash.com/photo-1605291535126-2d71fea483c1?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Cobb Salad', 'Salad with chicken, bacon, avocado, and egg', 6.99, 'https://images.unsplash.com/photo-1605291535557-4fc6bb3b4d00?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Fruit Salad', 'Mixed seasonal fruits', 4.99, 'https://images.unsplash.com/photo-1490474418585-ba9bad8fd0ea?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Pasta Salad', 'Cold pasta salad with vegetables', 5.49, 'https://images.unsplash.com/photo-1543161252-42609aa0e3d2?q=80&w=2034&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Quinoa Salad', 'Healthy salad with quinoa and veggies', 5.99, 'https://images.unsplash.com/photo-1615865417491-9941019fbc00?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(9, 'Spinach Salad', 'Fresh spinach salad with a light dressing', 4.99, 'https://images.unsplash.com/photo-1675718341696-552a278c0934?q=80&w=1980&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

INSERT INTO Products (professional_id, name, description, price, image_url, is_available) VALUES
(10, 'Smoked Brisket', 'Tender smoked brisket with rich flavor', 10.99, 'https://images.unsplash.com/photo-1606157715507-e106be6ab0b0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(10, 'BBQ Ribs', 'Juicy BBQ ribs with smoky sauce', 11.99, 'https://images.unsplash.com/photo-1611354574034-9655b5b72d59?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(10, 'Pulled Pork Sandwich', 'Sandwich with pulled pork and BBQ sauce', 8.99, 'https://images.unsplash.com/photo-1709581529998-11b7b2e17f55?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(10, 'BBQ Chicken', 'Grilled chicken with BBQ sauce', 9.99, 'https://images.unsplash.com/photo-1496074620649-6b1b02e5c1c8?q=80&w=1962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(10, 'Sausage Plate', 'Assorted BBQ sausages', 9.49, 'https://images.unsplash.com/photo-1551135020-39e4ca508d9b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(10, 'Burnt Ends', 'Crispy, flavorful burnt ends', 10.49, 'https://images.unsplash.com/photo-1669906824315-a2740f96a35f?q=80&w=2058&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D
', 1),
(10, 'BBQ Beans', 'Hearty BBQ beans', 5.99, 'https://images.unsplash.com/photo-1560024818-2c6d122cfbe2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1),
(10, 'Coleslaw', 'Classic coleslaw with tangy dressing', 4.99, 'https://images.unsplash.com/photo-1573403707491-38a4ea19edc1?q=80&w=1982&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 1);

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
