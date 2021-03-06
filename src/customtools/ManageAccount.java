package customtools;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;


import customtools.DBUtil;
import model.Dcuaccount;




public class ManageAccount {
	
	public static void add(Dcuaccount account) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.persist(account);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
		} finally {
			em.close();
		}
	}
	
	 public static void update(Dcuaccount account) {
		 EntityManager em = DBUtil.getEmFactory().createEntityManager();
		 EntityTransaction trans = em.getTransaction();
		 try {
		 trans.begin();
		 em.merge(account);
		 trans.commit();
		 } catch (Exception e) {
		 System.out.println(e);
		 trans.rollback();
		 } finally {
		 em.close();
		 }
		 }
	 
	 public static Dcuaccount getAccount(float accountid) {
		 EntityManager em = DBUtil.getEmFactory().createEntityManager();
	       String qString = "SELECT s FROM Dcuaccount s where s.accountid= :accountid";
	  
	       TypedQuery<Dcuaccount> query = em.createQuery(qString,Dcuaccount.class);
           query.setParameter("accountid", accountid);
           Dcuaccount account =null;
	        try{
	            
	           account = query.getSingleResult();

	        }catch (Exception e){
	            e.printStackTrace();
	        }
	        finally{
	                em.close();
	            }
	        
	        return account;
	    }
	 public static List<Dcuaccount> getAllAccount(float userid) {
		 EntityManager em = DBUtil.getEmFactory().createEntityManager();
	       String qString = "SELECT s FROM Dcuaccount s where s.dcuuser.userid= :userid";
	  
	       TypedQuery<Dcuaccount> query = em.createQuery(qString,Dcuaccount.class);
           query.setParameter("userid", userid);
           List <Dcuaccount> account =null;
	        try{
	            
	           account = query.getResultList();

	        }catch (Exception e){
	            e.printStackTrace();
	        }
	        finally{
	                em.close();
	            }
	        
	        return account;
	    }
}