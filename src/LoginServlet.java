
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customtools.ManageUser;
import model.Dcuuser;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// TODO Auto-generated method stub
		doGet(request, response);
		String useremail = request.getParameter("useremail");
		String userpassword = request.getParameter("userpassword");

		String nextURL = "/error.jsp";

		Dcuuser user = ManageUser.isValidUser(useremail, userpassword);
		HttpSession session = request.getSession();
		if (user != null) {
			session.setAttribute("user", user);
			float userid = user.getUserid();
			
			nextURL = "/AccountHome.jsp";
		}

		else {
			nextURL = "/LoginPage.jsp";
		}
		response.sendRedirect(request.getContextPath() + nextURL);

	}

}
