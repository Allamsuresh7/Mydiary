package com.twg.springmvc.MydairyApplication.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.twg.springmvc.MydairyApplication.dao.EntryDaoInterface;
import com.twg.springmvc.MydairyApplication.entities.Entry;

@Component

public class EntryBusinessInterfaceImpl implements EntryBusinessInterface{
	@Autowired
	
	private EntryDaoInterface entryDaoInterface;

	@Override
	public void save(Entry entry) {
		// TODO Auto-generated method stub
		entryDaoInterface.save(entry);
		
	}

	@Override
	public void update(Entry entry) {
		// TODO Auto-generated method stub
		entryDaoInterface.update(entry);
		
	}

	@Override
	public void delete(Entry entry) {
		// TODO Auto-generated method stub
		entryDaoInterface.delete(entry);
		
	}

	@Override
	public Entry findbyId(int id) {
		// TODO Auto-generated method stub
		return entryDaoInterface.findbyId(id);
	}

	@Override
	public List<Entry> findAll() {
		// TODO Auto-generated method stub
		return entryDaoInterface.findAll();
	}

	@Override
	public List<Entry> findByUserid(int id) {
		// TODO Auto-generated method stub
		return entryDaoInterface.findByUserid(id);
	}

}
