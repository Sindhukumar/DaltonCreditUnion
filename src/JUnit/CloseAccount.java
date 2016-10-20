package JUnit;

import static org.junit.Assert.*;

import javax.servlet.http.HttpSession;

import org.junit.Test;

import customtools.ManageAccount;
import model.Dcuaccount;

public class CloseAccount {

	@Test
	public void test() {
		long accountid=21;
		
		long accountstatus=0;
		
		Dcuaccount account = ManageAccount.getAccount(accountid);
		
			account.setAccountid(accountid);
			account.setStatus(accountstatus);
			ManageAccount.update(account);
			System.out.println("Account updated");
	}

}
