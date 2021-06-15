package com.nagarro.hrmanagerapp.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.nagarro.hrmanagerapp.SQLConnector.HibernateConnectorImpl;
import com.nagarro.hrmanagerapp.model.User;

@Component
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private User user;

	public boolean validateUser(String userName, String passWord) {
		// Session session = sessionFactory.getCurrentSession();
		// Transaction transaction = session.beginTransaction();
		try {
			// Session session = sessionFactory.getCurrentSession();
			Session session = new HibernateConnectorImpl().hibernateConnection();
			Transaction transaction = session.beginTransaction();

			String matchingSql = "From User where username=:userName";
			user = (User) session.createQuery(matchingSql).setParameter("userName", userName).uniqueResult();
			if (user.getPassword().equals(passWord)) {
				return true;
			}
			// transaction.commit();
			transaction.commit();
			session.close();

		} catch (Exception e) {
			e.printStackTrace();
			// transaction.rollback();
		}
//		} finally {
//			session.close();
//		}
		return false;
	}

}
