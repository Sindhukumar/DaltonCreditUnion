

import java.io.IOException;
import java.util.Date;
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
		int type; //checking = 1; savings = 0
		String savings = request.getParameter("accountType");
	    if ("Savings".equals(savings)) {
	    	type = 0;
	    }
	    else{
	    	type = 1;
	    }
		int status = 1; //close = 0; open = 1
		
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null){
			System.out.println("User is logged in");
			Dcuuser dcuuser = (Dcuuser) session.getAttribute("user");
			Dcuaccount account = new Dcuaccount();
			account.setAccountdate(accountdate);
			account.setStatus(status);
			account.setType(type);
			account.setDcuuser(dcuuser);
			ManageAccount.add(account);
			
			List <Dcuaccount> accounts = ManageAccount.getAllAccount(dcuuser.getUserid());
			session.setAttribute("accounts", accounts);
			
			nextUrl = "/AccountHome.jsp";
		}
		else{
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String passwordhash = HashPassword.Hash(email,password);
			String phone = request.getParameter("phone");
			
			if(ManageUser.getUserByEmail(email) == null){
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
				
				List <Dcuaccount> accounts = ManageAccount.getAllAccount(dcuuser.getUserid());
				session.setAttribute("accounts", accounts);
				nextUrl = "/AccountHome.jsp";
				
			}
			else{
				nextUrl = "/Login.jsp";
			}
		}
		response.sendRedirect(request.getContextPath() + nextUrl);
	}

}
