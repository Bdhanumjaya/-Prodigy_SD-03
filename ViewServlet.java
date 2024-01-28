package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import dao.UserDao;

@WebServlet("/ViewServlet")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        out.println("<a href='index.html'>Back to page for Add Contact</a>");  
	        out.println("<h1>Contact List</h1>");  
	          
	        List<User> list=UserDao.selectAllUsers();  
	          
	        out.print("<table border='1' width='100%'");  
	        out.print("<tr><th>Id</th><th>Name</th><th>Number</th><th>Email</th><th>Edit</th><th>Delete</th></tr>");  
	        for(User e:list){  
	        	out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getNumber()+"</td><td>"+e.getEmail()+"</td><td><a href='edit?id="+e.getId()+"'>edit</a></td>  <td><a href='delete?id="+e.getId()+"'>delete</a></td></tr>");  
	        }  
	        out.print("</table>");  
	          
	        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
