package customtools;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import Utilities.HashPassword;
import customtools.DBUtil;
import model.Dcuuser;

public class ManageUser {

	public static Dcuuser getUser(long userID) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		Dcuuser user = em.find(Dcuuser.class, userID);
		return user;
	}

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

	public static void update(Dcuuser user) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.merge(user);
			trans.commit();
		} catch (Exception e) {
			System.out.println(e);
			trans.rollback();
		} finally {
			em.close();
		}
	}

	public static void delete(Dcuuser user) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			em.remove(em.merge(user));
			trans.commit();
		} catch (Exception e) {
			System.out.println(e);
			trans.rollback();
		} finally {
			em.close();
		}
	}

	public static Dcuuser getUserByEmail(String email) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "Select u from Harrisonuser u " + "where u.email = :email";
		TypedQuery<Dcuuser> q = em.createQuery(qString, Dcuuser.class);
		q.setParameter("email", email);
		Dcuuser user = null;
		try {
			user = q.getSingleResult();
		} catch (NoResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return user;

	}

	public static List<Dcuuser> getUserList() {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		String qString = "Select u from Harrisonuser u";
		TypedQuery<Dcuuser> q = em.createQuery(qString, Dcuuser.class);
		List<Dcuuser> userList = null;
		try {
			userList = q.getResultList();
		} catch (NoResultException e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return userList;

	}

	public static Dcuuser isValidUser(String email, String password) {
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		password = HashPassword.Hash(email, password);
		String qString = "Select b from Harrisonuser b " + "where b.email = :email and b.password = :pass";
		TypedQuery<Dcuuser> q = em.createQuery(qString, Dcuuser.class);
		Dcuuser user = null;
		q.setParameter("email", email);
		System.out.println("email" + email);
		q.setParameter("pass", password);
		System.out.println("password " + password);
		try {
			user = q.getSingleResult();
			System.out.println("valid user");
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			em.close();
		}
		return user;

	}

}
