<%@ page import="dto.User" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>User List</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
      padding: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
      background-color: white;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }
    th, td {
      border: 1px solid #ddd;
      text-align: center;
      padding: 10px;
    }
    th {
      background-color: #6c63ff;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    button {
      background-color: #6c63ff;
      color: white;
      border: none;
      padding: 5px 10px;
      font-size: 14px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    button:hover {
      background-color: #5348d7;
    }
    a {
      text-decoration: none;
    }
  </style>
</head>
<body>
  <h1>User List</h1>
  <%
    List<User> list = (List<User>) request.getAttribute("u");
    if (list != null && !list.isEmpty()) {
  %>
  <table>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Age</th>
      <th>Address</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Password</th>
      <th>Delete</th>
      <th>Update</th>
    </tr>
    <% for (User user : list) { %>
    <tr>
      <td><%= user.getId() %></td>
      <td><%= user.getName() %></td>
      <td><%= user.getAge() %></td>
      <td><%= user.getAddress() %></td>
      <td><%= user.getPhone() %></td>
      <td><%= user.getEmail() %></td>
      <td><%= user.getPassword() %></td>
      <td>
        <a href="delete?id=<%= user.getId() %>">
          <button>DELETE</button>
        </a>
      </td>
      <td>
        <a href="idforUpdate?id=<%= user.getId() %>">
          <button>UPDATE</button>
        </a>
      </td>
    </tr>
    <% } %>
  </table>
  <% } else { %>
  <p>No users found.</p>
  <% } %>
</body>
</html>
