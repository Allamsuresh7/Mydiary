package com.twg.springmvc.MydairyApplication.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.twg.springmvc.MydairyApplication.dao.UserDaoInterface;
import com.twg.springmvc.MydairyApplication.entities.User;
@Service
public class UserBusinessInterfaceImpl implements UserBusinessInterface {
	@Autowired

	private UserDaoInterface userDaoInterface;
	public UserDaoInterface getUserInterface() {
		return userDaoInterface;
	}

	public void setUserInterface(UserDaoInterface userDaoInterface) {
		this.userDaoInterface = userDaoInterface;
	}

	@Override
	public void save(User user) {
		// TODO Auto-generated method stub
		userDaoInterface.save(user);
		
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDaoInterface.update(user);
		
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		userDaoInterface.delete(user);
		
	}

	@Override
	public User findbyId(int id) {
		// TODO Auto-generated method stub
		return userDaoInterface.findbyId(id);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userDaoInterface.findAll();
	}

	@Override
	public User findbyUserName(String username) {
		// TODO Auto-generated method stub
		return userDaoInterface.findbyUserName(username);
	}

}
