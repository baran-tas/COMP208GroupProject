import express from 'express';
import sqlite3 from 'sqlite3';


const app = express();
const port = 1234;
const sqlite = sqlite3.verbose();




//Connects to the database
const db = new sqlite.Database('./PagesDB.sqlite', err => {
  if (err) return console.error(err.message);
  console.log('Connected to SQLite database.');
})




//GET API endpoint for retrieving the store data
app.get('/api/getStoreData', (req, res) => {
  db.all('SELECT * FROM Professional', (err, rows) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json({ stores: rows });
  })
})

//GET API endpoint for retreiving Products for stores
app.get('/api/getProducts', (req, res) => {
  //Pass storeID through URL with ?
  const storeID = req.query.storeID;
  if (!storeID) {
    return res.status(400).json({ error: 'storeID query parameter is required' });
  }
  db.all('SELECT * FROM Products WHERE professional_id = ?', [storeID], (err, rows) => {
    if (err) return res.status(500).json({ error: err.message });
    res.json({ products: rows });
  })
})




//GET API endpoint for retreiving the current basket
app.get('/api/getBasket', (req, res) => {
  //Pass userID through URL with ?
  const userID = req.query.userId;
  if (!userID) {
    return res.status(400).json({ error: 'userID query parameter is required' });
  }

  //Query the basket for the given user
  db.all('SELECT * FROM Basket WHERE user_id = ?', [userID], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    //Respond with the basket data
    res.json({ basket: rows });
  })
})




//GET API endpoint for retreiving orders for Personal users
app.get('/api/getOrders', (req, res) => {
  //Pass userID through URL with ?
  const userID = req.query.userId;
  if (!userID) {
    return res.status(400).json({ error: 'userID query parameter is required' });
  }

  //Query orders for the given user in descending
  const sql = 'SELECT * FROM Orders WHERE user_id = ? ORDER BY order_date DESC';
  db.all(sql, [userID], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json({ orders: rows });
  })
})




//GET API endpoint for retreiving orders for Professional users
app.get('/api/storeorders', (req, res) => {
  //Pass storeID through URL with ?
  const storeId = req.query.storeId;
  if (!storeId) {
    return res.status(400).json({ error: 'storeId query parameter is required' });
  }
  
  //SQL query to retrieve orders for the given store, ordered by order_date in descending order
  const sql = 'SELECT * FROM Orders WHERE store_id = ? ORDER BY order_date DESC';
  
  db.all(sql, [storeId], (err, rows) => {
    if (err) {
      return res.status(500).json({ error: err.message });
    }
    res.json({ orders: rows });
  })
})




//Start the server
app.listen(port, () => console.log(`Server running on http://localhost:${port}`));
