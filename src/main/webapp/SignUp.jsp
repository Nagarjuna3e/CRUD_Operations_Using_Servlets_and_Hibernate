<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sign Up</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }
    .form-container {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
      width: 600px; /* Increased width */
      text-align: center;
    }
    .form-container h2 {
      margin-bottom: 20px;
      color: #444;
    }
    .form-container input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px;
      outline: none;
      transition: border-color 0.3s ease;
    }
    .form-container input:focus {
      border-color: #6c63ff;
    }
    .form-container button {
      background-color: #6c63ff;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }
    .form-container button:hover {
      background-color: #5348d7;
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  <div class="form-container">
    <h2>Sign Up</h2>
    <form action="SignUp">
      <input type="text" placeholder="Enter name" name="name" required>
      <input type="text" placeholder="Enter age" name="age" required>
      <input type="text" placeholder="Enter address" name="address" required>
      <input type="email" placeholder="Enter email" name="email" required>
      <input type="text" placeholder="Enter phone" name="phone" required>
      <input type="password" placeholder="Enter password" name="password" required>
      <button type="submit">Sign Up</button>
    </form>
  </div>
</body>
</html>
