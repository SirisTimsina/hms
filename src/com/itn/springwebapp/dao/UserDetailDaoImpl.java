package com.itn.springwebapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itn.springwebapp.model.UserDetail;
import com.itn.springwebapp.model.UserRole;

@Repository
@Transactional
public class UserDetailDaoImpl implements UserDetailDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void saveUser(UserDetail ud) {

		UserRole ur = new UserRole();
		ur.setRole("ROLE_"+ud.getAuthority());

		// UserDetail and UserRole are linked in a bidirectional relation as follows
		ur.setUserDetail(ud);
		ud.setUserRole(ur);

		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(ud);
		tx.commit();
		session.close();

	}

	@Override
	public List<UserDetail> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDetail selectById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDetail selectByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(UserDetail ud) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(UserDetail ud) {
		// TODO Auto-generated method stub

	}

}
