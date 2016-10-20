
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Utilities.HashPassword;
import customtools.ManageAccount;
import customtools.ManageUser;
import model.Dcuaccount;
import model.Dcuuser;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgotPassword() {
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

		String useremail = request.getParameter("useremail");
		String userpassword = request.getParameter("userpassword");

		String nextURL = "/ForgotPassword.jsp";

		Dcuuser user = ManageUser.getUserByEmail(useremail);
		if (user != null) {
			user.setPasswordhash(HashPassword.Hash(user.getEmail(), userpassword));
			ManageUser.update(user);
			nextURL = "/LoginPage.jsp";
		}

		else {
			nextURL = "/ForgotPassword.jsp?error=notfound";
		}
		response.sendRedirect(request.getContextPath() + nextURL);

	}

}
