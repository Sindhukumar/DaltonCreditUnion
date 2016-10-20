package customtools;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import model.Dcuuser;

public class ManageAccount {
	public static void add(Dcuuser user) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.persist(user);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
		} finally {
			em.close();
		}
	}
}
