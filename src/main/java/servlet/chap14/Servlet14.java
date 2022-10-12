package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet14
 */
@WebServlet("/Servlet14")
public class Servlet14 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet14() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName FROM Customers WHERE CustomerID = 21";

		// class loading

		// connection 얻기
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String password = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, password);

				// statment 생성
				Statement stmt = con.createStatement();
				// 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);

		) {
			// 쿼리 결과 가공 (레코드 결과가 하나라서 if문 사용)
			while (rs.next()) {
				String CustomerID = rs.getString(1);
				String CustomerName = rs.getString(2);
				System.out.println(CustomerName);
				System.out.println(CustomerID);

				request.setAttribute("CustomerName", CustomerName);
				request.setAttribute("CustomerID", CustomerID);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		String path = "/WEB-INF/view/chap14/view02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
