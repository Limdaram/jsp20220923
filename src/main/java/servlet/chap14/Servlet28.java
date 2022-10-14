package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet28
 */
@WebServlet("/Servlet28")
public class Servlet28 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet28() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/chap14/view11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerName = request.getParameter("name");
		String contactName = request.getParameter("cname");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String conutry = request.getParameter("country");
		
		// 2. 가공
		
		// 3. business logic (insert into)
		String sql = "INSERT INTO Customers "
				+ "(CustomerName, ContactName, Address, City, Country) "
				+ "VALUES (?, ?, ?, ?, ?)";
		
		ServletContext application = request.getServletContext();
		
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				) {
				PreparedStatement pstmt = con.prepareStatement(sql);
				pstmt.setString(1, customerName);
				pstmt.setString(2, contactName);
				pstmt.setString(3, address);
				pstmt.setString(4, city);
				pstmt.setString(5, conutry);
				
				int cnt = pstmt.executeUpdate();
				
				// 4. 결과 확인 (or add attribute)
				
				// 5. forward / redirect
				if (cnt == 1) {
					String path = request.getContextPath() + "/Servlet23";
					response.sendRedirect(path);
			
				}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
