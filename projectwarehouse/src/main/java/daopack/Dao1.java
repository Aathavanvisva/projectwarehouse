package daopack;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import com.mysql.cj.xdevapi.Result;

import dtopack.dto1;
import dtopack.taskdto;


public class Dao1 {
	public static Connection getConnection() throws Throwable {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/warehouse ?user=root&password=root");
		return cn;}
	public static int saveUser(dto1 dto) throws Throwable 
	{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into user value(?,?,?,?,?,?)");
		ps.setInt(1, dto.getid());
		ps.setString(2, dto.getname());
		ps.setString(3, dto.getemail());
		ps.setLong(4, dto.getcontact());
		ps.setString(5, dto.getpassword());
		
		Blob imgblob=new SerialBlob(dto.getimage());
		ps.setBlob(6, imgblob);
		int res=ps.executeUpdate();
		return res;
		
	}
	public dto1 findByEmail(String email) throws Throwable {
	Connection cn=getConnection();
	PreparedStatement ps=cn.prepareStatement("select * from user where useremail=?");
	ps.setString(1, email);
	ResultSet rs=ps.executeQuery();
	if(rs.next())
	{
		dto1 dto= new dto1();
		dto.setid(rs.getInt(1));
		dto.setname(rs.getString(2));
		dto.setemail(rs.getString(3));
		dto.setcontact(rs.getLong(4));
		dto.setpassword(rs.getString(5));
		Blob imageBlob=rs.getBlob(6);
		byte[]image=imageBlob.getBytes(1, (int)imageBlob.length());
		dto.setimage(image);
		return dto;
	}
	else {
		return null;
	}
	
	}
	
public int createTask(taskdto task) throws Throwable
{
	Connection cn=getConnection();
	PreparedStatement ps =cn.prepareStatement("insert into task value (?,?,?,?,?,?,?)");
	ps.setInt(1, task.getTaskid());
	ps.setString(2, task.getTaskdescription());
	ps.setString(3, task.getTaskpriority());
	ps.setString(4, task.getTaskduedate());
	ps.setString(5, task.getTaskstatus());
	ps.setString(6, task.getTasktitle());
	ps.setInt(7, task.getUserid());
	int res=ps.executeUpdate();
	return res;
}
public List<taskdto> getAllTaskById(int userid) throws Throwable
{
	Connection cn=Dao1.getConnection();
	PreparedStatement ps=cn.prepareStatement("select * from task where userid=?");
	ps.setInt(1, userid);
	ResultSet rs=ps.executeQuery();
	List<taskdto> tasks=new ArrayList<>();
	while(rs.next())
	{
		taskdto task=new taskdto(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
		tasks.add(task);
	}
	
	return tasks;
}

}
