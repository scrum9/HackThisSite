<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        .login-container {
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        input {
            display: block;
            margin: 10px 0;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
        }
        button {
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>
    <input type="text" id="username" placeholder="Username" required>
    <input type="password" id="password" placeholder="Password" required>
    <button onclick="login()">Login</button>
    <div id="message" style="margin-top: 10px;"></div>
</div>

<script>
    // Store example credentials (for demonstration only)
    const storedCredentials = {
        username: "user123",
        password: "pass123"
    };

    // Function to handle login
    function login() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        const message = document.getElementById('message');

        // Check credentials
        if (username === storedCredentials.username && password === storedCredentials.password) {
            message.style.color = "green";
            message.textContent = "Login successful!";
        } else {
            message.style.color = "red";
            message.textContent = "Invalid username or password.";
        }

        // Optionally store the credentials in local storage (for demonstration)
        localStorage.setItem('username', username);
        localStorage.setItem('password', password);
    }
</script>

</body>
</html>
