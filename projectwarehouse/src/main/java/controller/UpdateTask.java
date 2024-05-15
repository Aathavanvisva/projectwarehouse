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
@WebServlet("/updatetask")
public class UpdateTask extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int taskid=Integer.parseInt(req.getParameter("taskid"));
		String tasktitle=req.getParameter("tasktitle");
		String taskdescription=req.getParameter("taskdescription");
		String taskpriority=req.getParameter("taskpriority");
		String taskduedate=req.getParameter("taskduedate");
		String taskstatus=req.getParameter("taskstatus");
		dto1 dto=(dto1)req.getSession().getAttribute("dto1");
		Dao1 dao=new Dao1();
		taskdto task=new taskdto(taskid, tasktitle, taskdescription, taskpriority, taskduedate, taskstatus,dto.getid());
		try {
			int res=dao.updateTask(task);
			if(res>0)
			{
				dto1 dt=(dto1) req.getSession().getAttribute("dto1");
				req.setAttribute("tasks",dao.getAllTaskById(dt.getid()));
				req.getRequestDispatcher("home.jsp").include(req, resp);
			}
			else
			{
				resp.getWriter().println("TASK NOT UPDATED");
			}
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
