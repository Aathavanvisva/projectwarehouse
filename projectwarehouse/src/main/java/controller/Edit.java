package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daopack.Dao1;
import dtopack.taskdto;
@WebServlet("/edit")
public class Edit extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	Dao1 dao=new Dao1();
	try {
		taskdto task=dao.findTaskById(id);
		req.setAttribute("task", task);
		req.getRequestDispatcher("edittask.jsp").include(req, resp);
	} catch (Throwable e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
