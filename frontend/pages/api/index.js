const express = require('express')
const mysql = require('mysql')

const app = express()
const port = 1234

app.use(express.json())

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'projecteta'
})

connection.connect(err => {
  if (err) {
    console.error('Error connecting to MySQL:', err.message)
    return
  }
  console.log('Connected to MySQL database.')
})

//GET API endpoint for retrieving the store data
app.get('/api/getStoreData', (req, res) => {
  connection.query('SELECT * FROM Professional', (err, rows, fields) => {
    if (err) return res.status(500).json({ error: err.message })
    res.json({ stores: rows })
  })
})

//GET API endpoint for retrieving products for a store
app.get('/api/getProducts', (req, res) => {
  //Pass storeID through URL query ?
  const storeID = req.query.storeID
  if (!storeID) {
    return res.status(400).json({ error: 'storeID query parameter is required' })
  }
  connection.query(
    'SELECT * FROM Products WHERE professional_id = ?',
    [storeID],
    (err, rows, fields) => {
      if (err) return res.status(500).json({ error: err.message })
      res.json({ products: rows })
    }
  )
})

//GET API endpoint for retrieving orders for Personal users
app.get('/api/getOrders', (req, res) => {
  //Pass userID through URL query ?
  const userID = req.query.userId
  if (!userID) {
    return res.status(400).json({ error: 'userID query parameter is required' })
  }
  const sql = 'SELECT * FROM Orders WHERE user_id = ? ORDER BY order_date DESC'
  connection.query(sql, [userID], (err, rows, fields) => {
    if (err) return res.status(500).json({ error: err.message })
    res.json({ orders: rows })
  })
})

//GET API endpoint for retrieving orders for Professional users (store orders)
app.get('/api/storeorders', (req, res) => {
  //Pass storeID through URL query ?
  const storeId = req.query.storeId
  if (!storeId) {
    return res.status(400).json({ error: 'storeId query parameter is required' })
  }
  const sql = 'SELECT * FROM Orders WHERE store_id = ? ORDER BY order_date DESC'
  connection.query(sql, [storeId], (err, rows, fields) => {
    if (err) return res.status(500).json({ error: err.message })
    res.json({ orders: rows })
  })
})

//PUT API endpoint for updating the status of an order
app.put('/api/updateOrderStatus', (req, res) => {
  //Extract orderId and newStatus from the request body
  const { orderId, newStatus } = req.body
  if (!orderId || !newStatus) {
    return res.status(400).json({ error: 'Both orderId and newStatus are required' })
  }
  const validStatus = ['pending', 'completed', 'cancelled']
  if (!validStatus.includes(newStatus)) {
    return res
      .status(400)
      .json({ error: `newStatus must be one of ${validStatus.join(', ')}` })
  }
  const sql = 'UPDATE Orders SET stat = ? WHERE id = ?'
  connection.query(sql, [newStatus, orderId], (err, result) => {
    if (err) return res.status(500).json({ error: err.message })
    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Order not found' })
    }
    res.json({ message: 'Order status updated successfully' })
  })
})

//Start the server
app.listen(port, () => console.log(`Server running on http://localhost:${port}`))
