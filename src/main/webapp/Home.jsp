<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login and Sign Up</title>
  <style>
    body {
      font-family: 'Roboto', Arial, sans-serif;
      background-color: #f8f9fa;
      color: #343a40;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
    }

    h1 {
      font-size: 24px;
      font-weight: 500;
      color: #495057;
      margin-bottom: 30px;
      text-align: center;
    }

    .frame {
      background: #ffffff;
      border: 1px solid #dee2e6;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      padding: 30px;
      text-align: center;
      width: 300px;
    }

    .button-container {
      display: flex;
      gap: 15px;
      margin-top: 20px;
      justify-content: center;
    }

    a {
      text-decoration: none;
    }

    button {
      padding: 12px 24px;
      font-size: 16px;
      font-weight: 500;
      color: #ffffff;
      background-color: #007bff;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
      background-color: #0056b3;
      transform: translateY(-2px);
    }

    button:active {
      background-color: #004085;
      transform: translateY(0);
    }
  </style>
</head>
<body>
  <div class="frame">
    <% String msg = (String) request.getAttribute("key"); 
       if (msg != null) { %>
      <h1><%= msg %></h1>
    <% } %>

    <div class="button-container">
      <a href="Login.jsp"><button>Login</button></a>
      <a href="SignUp.jsp"><button>Sign Up</button></a>
    </div>
  </div>
</body>
</html>
