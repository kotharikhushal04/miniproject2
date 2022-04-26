package mini;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection c =DriverManager.getConnection ("jdbc:mysql://localhost/demo1","root","root");
			Statement st = c.createStatement();

			
			String ss = request.getParameter("email");
			String ss1 = request.getParameter("pass");
			
			response.setContentType("text/html");
			PrintWriter o = response.getWriter();
			
			
			ResultSet rs = st.executeQuery("Select * from collreg WHERE email='"+ss+"' and password='"+ss1+"' ");
			if(rs.next()){
				
				int q1 = rs.getInt("id");
				HttpSession session = request.getSession();
				session.setAttribute("key", q1);
				o.print("<input type='hidden' value='q1' name='getid'>");
				response.sendRedirect("home1.jsp");	
			}
			
			else{
				response.sendRedirect("home.jsp");	
					}
				
			
			st.close();
			c.close();
		}
		catch(Exception e){}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
