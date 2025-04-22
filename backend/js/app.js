// Tab switching
document.querySelectorAll('.tab').forEach(tab => {
    tab.addEventListener('click', function() {
        document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
        document.querySelectorAll('.form').forEach(f => f.classList.remove('active'));
        this.classList.add('active');
        document.getElementById(this.dataset.tab + '-form').classList.add('active');
    });
});

// Login form submission
document.getElementById('login-form').addEventListener('submit', function(event) {
    event.preventDefault();
    const email = document.getElementById('login-email').value;
    const password = document.getElementById('login-password').value;
    console.log('Login Email:', email);
    console.log('Login Password:', password);
    // Add backend logic here later
});

// Sign Up form submission
document.getElementById('signup-form').addEventListener('submit', function(event) {
    event.preventDefault();
    const email = document.getElementById('signup-email').value;
    const password = document.getElementById('signup-password').value;
    const confirmPassword = document.getElementById('signup-confirm-password').value;

    if (password !== confirmPassword) {
        console.log('Error: Passwords do not match');
        return;
    }

    console.log('Sign Up Email:', email);
    console.log('Sign Up Password:', password);
    // Add backend logic here later
});