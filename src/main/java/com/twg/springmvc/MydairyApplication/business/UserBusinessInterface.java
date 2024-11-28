package com.twg.springmvc.MydairyApplication.business;

import java.util.List;

import com.twg.springmvc.MydairyApplication.entities.User;

public interface UserBusinessInterface {
	
	public void save(User user);
	public void update(User user);
	public void delete(User user);
	public User findbyId(int id);
	public List<User> findAll();
	public User findbyUserName(String username);

}
