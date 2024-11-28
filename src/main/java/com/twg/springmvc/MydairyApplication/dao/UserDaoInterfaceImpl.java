package com.twg.springmvc.MydairyApplication.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.twg.springmvc.MydairyApplication.entities.User;

@Component
public class UserDaoInterfaceImpl implements UserDaoInterface {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernatetemplate() {
		return hibernateTemplate;
	}

	public void setHibernatetemplate(HibernateTemplate hibernatetemplate) {
		this.hibernateTemplate = hibernatetemplate;
	}

	@Override
	@Transactional(readOnly=false)
	public void save(User user) {
		// TODO Auto-generated method stub
		
		hibernateTemplate.save(user);
		
	}

	@Override
	@Transactional(readOnly=false)
	public void update(User user) {
		// TODO Auto-generated method stub
		hibernateTemplate.update(user);
		
	}

	@Override
	@Transactional(readOnly=false)
	public void delete(User user) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(user);
		
	}

	@Override
	public User findbyId(int id) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(User.class , id);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return hibernateTemplate.loadAll(User.class);
	}

	@Override
	public User findbyUserName(String username) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria=DetachedCriteria.forClass(User.class);
		criteria.add(Restrictions.eq("username", username));
		User user=null;
		
		try {
			user=(User)hibernateTemplate.findByCriteria(criteria).get(0);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}

}
