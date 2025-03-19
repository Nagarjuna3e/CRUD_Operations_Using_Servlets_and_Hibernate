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
@WebServlet("/Login")
public class Login extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  String frontendemail = req.getParameter("email");
		  String frontendpassword = req.getParameter("password");
		  
	     UserDao  userDao = new UserDao();
	     User dbuser=userDao.fetchByPerson(frontendpassword);
	     if(dbuser!=null)
	     {     
	    	 if(dbuser.getEmail().equals(frontendemail)) {
	    		 List<User> list = userDao.fetchAll();
	    		 req.setAttribute("u",list);
	    		 RequestDispatcher requestDispatcher = req.getRequestDispatcher("Display.jsp");
	    		 requestDispatcher.forward(req, resp);
	    	 } 
	     else {
	    	 req.setAttribute("key","enter valid credntials...................... ");
	    	 RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");
	    	 requestDispatcher.forward(req, resp);
	     }
	     }
	}

}
