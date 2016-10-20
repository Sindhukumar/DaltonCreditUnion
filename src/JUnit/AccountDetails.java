package JUnit;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import customtools.ManageAccount;
import model.Dcuaccount;

public class AccountDetails {

	@Test
	public void test() {
		float userid=2;
		
		List<Dcuaccount> ac =ManageAccount.getAllAccount(userid);
		
		for(Dcuaccount s : ac){
			System.out.println(""Account number : "+ s.getAccountid());
		}
		
	}

}
