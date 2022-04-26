package mini;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regdata
 */
@WebServlet("/regdata")
public class regdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String b = request.getParameter("stdn");
		String b1 = request.getParameter("erno");
		String b2 = request.getParameter("bat");
		String b3 = request.getParameter("brh");
		String b4 = request.getParameter("sem");
		String b5 = request.getParameter("email");
		String b6 = request.getParameter("pass");
		
		try{Class.forName("com.mysql.jdbc.Driver");
		Connection c =DriverManager.getConnection ("jdbc:mysql://localhost/demo1","root","root");
		Statement st = c.createStatement();
		String ss = "insert into collreg(student_name,enrollment_no,batch,branch,semester,email,password)  values('"+b+"','"+b1+"' ,'"+b2+"','"+b3+"','"+b4+"','"+b5+"' ,'"+b6+"')" ;
		//String ss1 = "insert into student1(firstName,lastName,price) values('"+a"','"+a1"','"+a2"')";
		st.executeUpdate(ss);		
		response.sendRedirect("home.jsp");
		st.close();
		c.close();}
		catch(Exception e){
			
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
