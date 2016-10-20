

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import customtools.ManageAccount;
import customtools.ManageTransaction;
import model.Dcutransaction;
import model.Dcuuser;


/**
 * Servlet implementation class Transaction
 */
@WebServlet("/Transaction")
public class Transaction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transaction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		long accountid = Long.parseLong(request.getParameter("accountid"));
		long amount = Long.parseLong(request.getParameter("amount"));
		Date transactiondate =new Date();
//		transactiondate = request.getParameter(datepicker);
		
		long transactiontype = Long.parseLong(request.getParameter("check"));
		
		System.out.println(transactiondate);
				
		Dcutransaction transaction = new Dcutransaction();
		
		transaction.setAmount(amount);
		transaction.setDcuaccount(ManageAccount.getAccount(accountid));
		transaction.setType(transactiontype);
		transaction.setTransactiondate(transactiondate);
		
		ManageTransaction.add(transaction); //adding into the table
		
		long balance = ((ManageTransaction.getDepositWithdrawal(0, accountid)) - (ManageTransaction.getDepositWithdrawal(1, accountid)));
		
		
		session.setAttribute("balance", balance);
		
		
		
	}

}
