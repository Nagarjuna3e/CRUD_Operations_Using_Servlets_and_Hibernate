package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;

@WebServlet("/SignUp")
public class SaveUser extends HttpServlet {
 
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String Name =req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String address=req.getParameter("address");
		String email =req.getParameter("email");
		Long phone = Long.parseLong(req.getParameter("phone"));
		String Password = req.getParameter("password");
     
		User user = new User();
		user.setName(Name);
		user.setAge(age);
		user.setAddress(address);
		user.setEmail(email);
		user.setPhone(phone);
		user.setPassword(Password);
		
		UserDao dao = new  UserDao();
	    User dbUser= dao.SavePerson(user);	
	    
	    if(dbUser!=null)
	    {
	    	req.setAttribute("key", "SignUped Successfully............ ");
	    	RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
	    	dispatcher.forward(req, resp);
	    }
	}
}
