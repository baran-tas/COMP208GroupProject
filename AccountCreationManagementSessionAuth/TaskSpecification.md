# Account Creation, Management, and Auth Features Overview

This document is a specification for accounts and account related features.
There are two high level components to integration a React based frontend and an Express JS backend.

---

## Frontend: React

### Key Components

- **Signup/Create Account**
  - **Form Elements:** Fields for username, email, password, and account type.
  - **Client-Side Validation:** React hook form could be used for this.
  - **Error Handling:** Display clear error messages, e.g. Email in wrong format, username/password too long.

- **Login**
  - **Login Form:** Accepts email/username and password with an optional "Remember Me" feature.
  - **Error Handling:** Provide feedback for invalid credentials and locked accounts.
  - **Session Management:** Integrate with JWTs or similar mechanisms provided by the backend.

- **Account Management / Dashboard**
  - **Profile View & Edit:** A dashboard where users can view and update their personal information.
  - **Password Management:** Options to change or reset passwords.
  - **Additional Features:** Consider integrating a "Forgot Password" flow to assist users in resetting their password.

### Additional Considerations

- **State Management:** I suppose Express or React could be used to manage state, really depends
- **Routing:** Could use React Router for navigating between pages such as Signup, Login, and Profile.
- **Security:** Sanitise inputs to prevent SQL injections.
- **Responsive Design:** Maybe, make the design resposive for different screen sizes.

---

## Backend: Express JS

### Core API Endpoints

- **Account Creation**
  - **Endpoint:** Make an appropriate POST API endpoint for account creation.
  - **Functionality:**
    - Validate and sanitise.
    - Hash passwords before storing them.
    - Create a new user record in the database.
    - Optionally send an email verification link.
    - Respond with success or error messages.

- **Login**
  - **Endpoint:** Make an appropriate POST API endpoint for login.
  - **Functionality:**
    - Validate user credentials against stored records.
    - Generate and return token for session management.
    - Handle errors for invalid credentials.

- **Account Management**
  - **Endpoints:**
    - Make an appropriate GET API endpoint to retreive account information.
    - Make an appropriate PUT API endpoint to retreive account information update user account information.
  - **Functionality:**
    - Validate input data before updating records.
    - Optionally track changes through audit logs, for the sake of talking about it in the docs, and ideally use authentication middleware.


### Database Integration

- **Database Options:** Already have a SQL schema, edit it as you wish for your purposes, make data to put in to help you with development.

### Additional Enhancements

- **Forgot Password Functionality:**
  - **Endpoints:** 
    - Make an appropriate GET API endpoint to initiate the password reset process.
    - Make an appropriate POST API endpoint to update the password using a valid token.
- **Social Authentication:** Optionally, integrate OAuth providers (Google, Facebook, ...) for social login.
- **Logging & Monitoring:** Could setup something like audit logs, and performance trackers, but this may be a bit much for now.

---

Please ask for clarification if needed, or add functionality as you two would like to.
