

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customtools.ManageTransaction;
import model.Dcuuser;

/**
 * Servlet implementation class TransactionMediator
 */
@WebServlet("/TransactionMediator")
public class TransactionMediator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionMediator() {
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
		Dcuuser user = (Dcuuser) session.getAttribute("user");
		
		long accountid = Long.parseLong(request.getParameter("accountid"));
		long balance = ((ManageTransaction.getDepositWithdrawal(0, accountid)) - (ManageTransaction.getDepositWithdrawal(1, accountid)));

		session.setAttribute("balance", balance);
		
		String nextURL= "/Transaction.jsp";
		getServletContext().getRequestDispatcher(nextURL).forward(request, response);
	}

}
