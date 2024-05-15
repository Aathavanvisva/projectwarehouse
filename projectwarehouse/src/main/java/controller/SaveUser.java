package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import daopack.Dao1;
import dtopack.dto1;

@WebServlet("/SaveUser")
@MultipartConfig(maxFileSize = 30*1024*1024)
public class SaveUser extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long contact = Long.parseLong(req.getParameter("contact"));
		String password = req.getParameter("password");
		Part imagePart = req.getPart("image");
		byte[] imagebytes = imagePart.getInputStream().readAllBytes();
		
		Dao1 dao = new Dao1();
		dto1 dto;
		try {
			 dto = new dto1(dao.getUserId(),name, email, contact,password,imagebytes);
			int res=dao.saveUser(dto);
			if (res>0)
			{
				resp.sendRedirect("login.jsp");
			}
			else {resp.sendRedirect("signup.jsp");}
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
