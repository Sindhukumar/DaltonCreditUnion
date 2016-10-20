

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customtools.ManageAccount;
import model.Dcuaccount;
import model.Dcuuser;

/**
 * Servlet implementation class AccountServlet
 */
@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountServlet() {
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
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		 Dcuuser user = (Dcuuser) session.getAttribute("user");
		 float userid = user.getUserid();
		 
		if(action.equalsIgnoreCase("Close")){
			String id = request.getParameter("Accountid");
			long accountid =Long.parseLong(id);
			Dcuaccount account =ManageAccount.getAccount(accountid);
			account.setStatus(0);
			ManageAccount.update(account);
			System.out.println("Account updated");
			
			
		}
		
		if(action.equalsIgnoreCase("Reopen")){
			String id = request.getParameter("Accountid");
			long accountid =Long.parseLong(id);
			Dcuaccount account =ManageAccount.getAccount(accountid);
			account.setStatus(1);
			ManageAccount.update(account);
			System.out.println("Account Reopened");
			System.out.println("account status " +account.getStatus());
			
	}
		String nextURL ="/AccountHome.jsp";
		List <Dcuaccount> accounts = ManageAccount.getAllAccount(userid);
		session.setAttribute("accounts", accounts);
		response.sendRedirect(request.getContextPath() + nextURL);
		
		
	}

}
