

import java.io.IOException;
import java.util.Date;

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
 * Servlet implementation class AddAccount
 */
@WebServlet("/AddAccount")
public class AddAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date accountdate = new Date();
		String nextUrl;
		int type = Integer.parseInt(request.getParameter("username")); //checking = 1; savings = 0
		int status = Integer.parseInt(request.getParameter("username")); //close = 0, open = 1
		int userId = Integer.parseInt(request.getParameter("username"));
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null){
			Dcuuser dcuuser = (Dcuuser) session.getAttribute("user");
			Dcuaccount account = new Dcuaccount();
			account.setAccountdate(accountdate);
			account.setStatus(status);
			account.setType(type);
			account.setDcuuser(dcuuser);
			ManageAccount.add(account);
			
			nextUrl = "/Home.jsp";
		}
		else{
			String email = request.getParameter("username");
			String name = request.getParameter("username");
			String password = request.getParameter("username");
			String passwordhash = HashPassword.Hash(email,password);
			String phone = request.getParameter("username");
			
			if(ManageUser.isValidUser(email, passwordhash) == null){
				Dcuuser dcuuser = new Dcuuser();
				dcuuser.setEmail(email);
				dcuuser.setName(name);
				dcuuser.setPasswordhash(passwordhash);
				dcuuser.setPhone(phone);
				ManageUser.add(dcuuser);
				session.setAttribute("user", dcuuser);
				
				Dcuaccount account = new Dcuaccount();
				account.setAccountdate(accountdate);
				account.setStatus(status);
				account.setType(type);
				account.setDcuuser(dcuuser);
				ManageAccount.add(account);
				
				nextUrl = "/Home.jsp";
			}
			else{
				nextUrl = "/Login.jsp";
			}
		}
		response.sendRedirect(request.getContextPath() + nextUrl);
	}

}
