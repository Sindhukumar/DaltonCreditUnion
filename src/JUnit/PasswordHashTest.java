package JUnit;

import static org.junit.Assert.*;

import org.junit.Test;

import Utilities.HashPassword;

public class PasswordHashTest {

	@Test
	public void test_passwordHash() {
		String hash = HashPassword.Hash("dummy@gmail.com","password");
		System.out.println(hash);
		assertTrue(hash == "feea72dc67a25559cc6044e845f298f6758b1007c7f28a4827d0efedb2902458") ;
	}

}
