package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daopack.Dao1;
import dtopack.dto1;
import dtopack.taskdto;
@WebServlet("/addtask")
public class AddTask extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	String tasktitle=req.getParameter("tasktitle");
	String taskdescription=req.getParameter("taskdescription");
	String taskpriority=req.getParameter("taskpriority");
	String taskduedate=req.getParameter("taskduedate");

	dto1 dto=(dto1)req.getSession().getAttribute("dto1");
	int userid =dto.getid();
	
	Dao1 dao=new Dao1();
	try {
		taskdto task=new taskdto(dao.getTaskId(), tasktitle, taskdescription, taskpriority ,taskduedate,"pending", userid);
		int res=dao.createTask(task);
		if(res>0)
		{
			dto1 d=(dto1) req.getSession().getAttribute("dto1");
			req.setAttribute("tasks", dao.getAllTaskById(d.getid()));
			req.getRequestDispatcher("home.jsp").include(req, resp);
		}
		else
		{resp.getWriter().println("failled");}
	} catch (Throwable e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}
