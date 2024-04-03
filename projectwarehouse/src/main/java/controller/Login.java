package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daopack.Dao1;
import dtopack.dto1;
@WebServlet("/Login")
public class Login extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		Dao1 dao =new Dao1();
		try {
		dto1 dto=dao.findByEmail(email);
		if(dto!=null)
		{
			//verify password
		if(dto.getpassword().equals(password))
			{
				//login success
				// create session and set data
			req.getSession().setAttribute("dto1", dto);
			req.getRequestDispatcher("home.jsp").include(req, resp);
			}
			
			else
			{
				//pasword wrong
				req.setAttribute("message", "password wrong");
				req.getRequestDispatcher("login.jsp").include(req, resp);
			}
			
		}
		else
		{
			//pasword wrong
			req.setAttribute("message", "email wrong");
			req.getRequestDispatcher("login.jsp").include(req, resp);
		}
	}
		catch (Throwable e) {
			e.printStackTrace();
		}
	}
}
