package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;
@WebServlet("/update")
public class Update extends HttpServlet{
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    int Id = Integer.parseInt(req.getParameter("id"));
	    String Name =req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String address=req.getParameter("address");
		String email =req.getParameter("email");
		Long phone = Long.parseLong(req.getParameter("phone"));
		String Password = req.getParameter("password");
  
		User user = new User();
		user.setId(Id);		
		user.setName(Name);
		user.setAge(age);
		user.setAddress(address);
		user.setEmail(email);
		user.setPhone(phone);
		user.setPassword(Password);
	    UserDao userDao = new UserDao();
	    boolean result = userDao.update(user);
	    if (result) {
			List<User> list = userDao.fetchAll();
			req.setAttribute("u", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("Display.jsp");
			dispatcher.forward(req, resp);
		}

}
}
