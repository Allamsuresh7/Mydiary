package com.twg.springmvc.MydairyApplication.business;

import java.util.List;

import com.twg.springmvc.MydairyApplication.entities.Entry;

public interface EntryBusinessInterface {
	public void save(Entry entry);
	public void update(Entry entry);
	public void delete(Entry entry);
	public Entry findbyId(int id);
	public List<Entry> findAll();
	public List<Entry> findByUserid(int id);

}
