--Table to manage users
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, --Automatic ids
    username TEXT NOT NULL UNIQUE, --Username based on some criterion
    --Could take name and last name
    email TEXT NOT NULL UNIQUE, --Takes email, could also add a field for phone number
    password TEXT NOT NULL, --Hash the password then store it
    account_type TEXT CHECK(account_type IN ('personal', 'professional')) NOT NULL, --Determines the account type
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --Saves the timestamp at which the account was created, why not?
);
