package com.itn.springwebapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itn.springwebapp.model.Doctor;


@Repository
@Transactional
public class DoctorDaoImpl implements DoctorDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void insert(Doctor d) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(d);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public List<Doctor> selectAll() {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query<Doctor> query = session.createQuery("from Doctor d");
		List<Doctor> dl = query.getResultList();
		session.getTransaction().commit();
		session.close();
		return dl;
	}

	@Override
	public Doctor selectById(int id) {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query<Doctor> query = session.createQuery("from Doctor d where id=:did");
		query.setParameter("did", id);
		Doctor doc = query.uniqueResult();
		session.getTransaction().commit();
		session.close();
		return doc;
	}

	@Override
	public List<Doctor> selectByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Doctor d) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(d);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public void delete(Doctor d) {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.delete(d);
		session.getTransaction().commit();
		session.close();
	}

}
