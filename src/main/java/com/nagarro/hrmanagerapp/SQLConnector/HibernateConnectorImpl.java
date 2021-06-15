package com.nagarro.hrmanagerapp.SQLConnector;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.nagarro.hrmanagerapp.model.User;

public class HibernateConnectorImpl {
	public Session hibernateConnection() {
		SessionFactory factory = new Configuration().configure().addAnnotatedClass(User.class).buildSessionFactory();
		Session session = factory.openSession();
		return session;
	}
}
