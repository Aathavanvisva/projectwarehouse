package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daopack.Dao1;
import dtopack.dto1;
import dtopack.taskdto;
@WebServlet("/delete")
public class Delete extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int tid=Integer.parseInt(req.getParameter("id"));
		Dao1 dao=new Dao1();
		try {
			
			dto1 dto=(dto1)req.getSession().getAttribute("dto1");
			if(dto!=null)
			{
			taskdto taskdb=dao.findTaskById(dto.getid());
			if(taskdb.getUserid()==dto.getid())
			{
				int res=dao.deletetask(tid);
				if(res>0)
				{
			req.setAttribute("tasks", dao.getAllTaskById(dto.getid()));
			req.getRequestDispatcher("home.jsp").include(req, resp);
				}
				else {}
			}
			else
			{
				resp.sendRedirect("logout");
			}
			
			}
			else
			{
				resp.sendRedirect("login.jsp");
			}
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
