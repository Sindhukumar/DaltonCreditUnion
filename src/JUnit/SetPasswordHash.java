package JUnit;

import java.util.List;

import org.junit.Test;

import Utilities.HashPassword;
import customtools.ManageUser;
import model.Dcuuser;

public class SetPasswordHash {

	@Test
	public void test_passwordHash() {
		List<Dcuuser> users = ManageUser.getUserList();
		for(Dcuuser user:users){
			System.out.print(user.getEmail());
			user.setPasswordhash(HashPassword.Hash(user.getEmail(), "password"));
			System.out.println("   "+user.getPasswordhash());
			System.out.println();
			ManageUser.update(user);
		}
		
	}

}
