package com.twg.springmvc.MydairyApplication.dao;

import java.util.List;

import com.twg.springmvc.MydairyApplication.entities.Entry;

public interface EntryDaoInterface {

	public void save(Entry entry);
	public void update(Entry entry);
	public void delete(Entry entry);
	public Entry findbyId(int id);
	public List<Entry> findAll();
	public List<Entry> findByUserid(int id);

}
