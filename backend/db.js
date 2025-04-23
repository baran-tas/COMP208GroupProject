const Database = require('better-sqlite3');
const path = require('path');

// Construct the absolute path to the database file relative to this script's location
// Assumes db.js is in backend/ and the database is in database/
const dbPath = path.resolve(__dirname, '../../database/ProjectDB.sqlite'); // Adjust the path if needed

let db;

try {
  // Initialize the database connection
  // verbose: console.log can be useful for debugging SQL statements
  db = new Database(dbPath, { verbose: console.log });
  console.log('Database connected successfully using better-sqlite3!');

  // Enable WAL mode for better concurrency
  db.pragma('journal_mode = WAL');

} catch (err) {
  console.error('Error connecting to SQLite database:', err);
  // Exit the process if the database connection fails, as the app likely can't run
  process.exit(1);
}

// Close the database connection gracefully on exit
process.on('exit', () => db.close());
process.on('SIGHUP', () => process.exit(128 + 1));
process.on('SIGINT', () => process.exit(128 + 2));
process.on('SIGTERM', () => process.exit(128 + 15));

// Export the database connection instance
module.exports = db;