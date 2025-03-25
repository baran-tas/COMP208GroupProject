# Personal and Professional Pages Overview

This document is a specification for the main pages and related features.
The application is designed to serve two types of users: Personal (customers) and Professional (food businesses).

---

## Frontend: React

### Key Components

- **Personal User Interface:**
  - **Main Page:** 
    - Displays tiles of available stores.
    - Each tile has a name, location, and logo.
  - **Store & Product Page:**
    - **Store part of the page:** Some kind of banner, name, and location across the screen.
    - **Product part of the page:** Tiles of products, with their name, image, and price.
  - **Basket Page:**
    - If there are items in the basket, presented in the format of image, name, and price.
    - Otherwise, nothing.
    - Checkout button on the right hand side with the Subtotal of the order above it.
    - Then simply insert the order to the Orders table.
  - **Order Viewing Page:**
    - Allows customers to review their past and current orders, including OrderID, Total, and Status.


- **Professional User Interface:**
  - **Order Management:**
    - **List of Orders:** Displays all incoming orders for that store.
    - **Order Actions:** Options to accept or reject orders.
    - **Order Status Updates:** Ability to change the order status.

### Additional Considerations

- **State Management & Routing:**
  - I honestly don't really know much about this, I remember Adam saying something about Redux for state management.

- **User Experience (Ideally?):**
  - Responsive design to support a range of devices.
  - Real-time feedback (e.g., notifications for order updates, error messages for invalid actions).

---

## Backend: Express JS

### Core API Endpoints & Functionality

- **Store & Product Data:**
  - Make an appropriate GET API endpoint for retrieving the store data. 
  - Make an appropriate GET API endpoint for retrieving the product data in the store.

- **Personal Account Endpoints:**
  - **Basket and Order Management:**
    - Make an appropriate POST API endpoint for adding items to shopping basket.
    - Make an appropriate GET API endpoint for retrieving the current basket data.
    - Make an appropriate POST API endpoint for placing an order for the items in the basket.
    - Make an appropriate GET API endpoint for retrieving the order history.

- **Professional Account Endpoints:**
  - Make an appropriate GET API endpoint for retrieving the orders made to the store.
  - Make an appropriate POST API endpoint for rejecting orders made to the store.
  - Make an appropriate GET API endpoint for changing the status of the orders made to the store.


### Tokens/Sessions

- Secure API endpoints using tokens or sessions to differentiate between personal and professional users, kind of relies on the login stuff being completed.

### Database Integration

- Already have a SQL schema, edit it as you wish for your purposes, make data to put in to help you with development.

---

Please ask for clarification if needed, or add functionality as you two would like to.
