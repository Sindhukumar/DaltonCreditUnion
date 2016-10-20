package customtools;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import model.Dcutransaction;

public class ManageTransaction {

	public static void add(Dcutransaction transaction) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.persist(transaction);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw(e);
		} finally {
			em.close();
		}
	}

	
    public static List<Dcutransaction >getTransaction (Integer accountid){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "select t from Dcutransaction  t where t.dcuaccount.accountid =:accountid";
     
       List<Dcutransaction > Transaction = null;
        try{
            TypedQuery<Dcutransaction > query = em.createQuery(qString,Dcutransaction .class);
            query.setParameter("accountid", accountid);
            Transaction = (List<Dcutransaction>) query.getResultList();
        }catch (Exception e){
            e.printStackTrace();
        }
        finally{
                em.close();
            }
        return Transaction;
    }
	
	
	
	public static long getDeposit(Integer type,Integer accountid)
	{

		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "SELECT count(t.transactionid) FROM Dcutransaction t where t.type = :type AND  t.dcuaccount.accountid = :accountid";

		long numberDeposit = 0l;
		try{
			TypedQuery<Long> query = em.createQuery(qString, Long.class);
			query.setParameter("type", type);
			numberDeposit = query.getSingleResult();

		}catch (Exception e){
			e.printStackTrace();
		}
		finally{
			em.close();
		}
		return numberDeposit;
	}
	
	public static long getWithdrawal(Integer type,Integer accountid)
	{

		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "SELECT count(t.transactionid) FROM Dcutransaction t where t.type = :type AND  t.dcuaccount.accountid = :accountid";

		long numberWithdrawal = 0l;
		try{
			TypedQuery<Long> query = em.createQuery(qString, Long.class);
			query.setParameter("type", type);
			numberWithdrawal = query.getSingleResult();

		}catch (Exception e){
			e.printStackTrace();
		}
		finally{
			em.close();
		}
		return numberWithdrawal;
	}
}
