package JUnit;
import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;

import customtools.ManageAccount;
import customtools.ManageTransaction;
import model.Dcuaccount;
import model.Dcutransaction;

public class AddTransactionTest {

	@Test
	public void test() {

		Dcuaccount account =	ManageAccount.getAccount(31);
		long balance = ((ManageTransaction.getDepositWithdrawal(0, 31)) - (ManageTransaction.getDepositWithdrawal(1, 31)));
		System.out.println("**********Befor transaction the balance is*********" +balance);
		

		
		Dcutransaction transaction = new Dcutransaction();
		Date transactiondate =new Date();
		
		transaction.setDcuaccount(account);
		transaction.setAmount(10000);
		transaction.setTransactiondate(transactiondate);
		transaction.setType(1);
		
		
		ManageTransaction.add(transaction);
		
		long balancenew = ((ManageTransaction.getDepositWithdrawal(0, 31)) - (ManageTransaction.getDepositWithdrawal(1, 31)));
		System.out.println("**********Current balance is*********" +balancenew);
		
		
	}

}
