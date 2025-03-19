package dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.User;

public class UserDao {
  
	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("arjun");
	EntityManager  entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();
	
	public User SavePerson(User user)
	{   
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();	
		return user;
	}
	public User fetchByPerson(String password) {
		Query query =entityManager.createQuery("select s from User s where password=?1");
	    query.setParameter(1,password);
	    User dbuser =(User) query.getSingleResult();	
		return dbuser;
	}
	
	public List<User> fetchAll(){
		Query query =entityManager.createQuery("select s from User s");
		List<User> list = query.getResultList();
		return list;
	}
	public boolean fetchByid(int userid) {//for remove
		User user =entityManager.find(User.class,userid);
		entityTransaction.begin();
		entityManager.remove(user);
		entityTransaction.commit();
		return true;	
	}
	
	public User fetcid(int userid) {
		User user =entityManager.find(User.class,userid);
		return user;
	}
	
	public boolean update(User user) {
		entityTransaction.begin();
		entityManager.merge(user);
		entityTransaction.commit();
		return true;
	}
	 
}
