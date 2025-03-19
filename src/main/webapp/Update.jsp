<!DOCTYPE html>
<%@page import="dto.User"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update User</title>
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
      width: 400px;
    }

    form {
      display: flex;
      flex-direction: column;
      gap: 15px;
    }

    input {
      padding: 10px;
      font-size: 14px;
      border: 1px solid #ced4da;
      border-radius: 6px;
      width: 100%;
      box-sizing: border-box;
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

    .input-group {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
    }

    .input-group input {
      margin-top: 5px;
    }
  </style>
</head>
<body>
 <% User user = (User)request.getAttribute("user"); %>
  <div class="frame">
    <h1>Update User Information</h1>
   
    <form action="update" method="post">
      <input type="hidden" value="<%= user.getId() %>" name="id">

      <div class="input-group">
        <span>Name:</span>
        <input type="text" name="name" placeholder="Enter name" value="<%= user.getName() %>" readonly>
      </div>

      <div class="input-group">
        <span>Age:</span>
        <input type="text" name="age" placeholder="Enter age" value="<%= user.getAge() %>">
      </div>

      <div class="input-group">
        <span>Address:</span>
        <input type="text" name="address" placeholder="Enter address" value="<%= user.getAddress() %>">
      </div>

      <div class="input-group">
        <span>Email:</span>
        <input type="email" name="email" placeholder="Enter email" value="<%= user.getEmail() %>">
      </div>

      <div class="input-group">
        <span>Phone:</span>
        <input type="text" name="phone" placeholder="Enter phone" value="<%= user.getPhone() %>" readonly>
      </div>

      <div class="input-group">
        <span>Password:</span>
        <input type="text" name="password" placeholder="Enter password" value="<%= user.getPassword() %>">
      </div>

      <button type="submit">Update</button>
    </form>
  </div>
</body>
</html>
