package com.twg.springmvc.MydairyApplication.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.twg.springmvc.MydairyApplication.entities.Entry;

@Component
public class EntryDaoInterfaceImpl implements EntryDaoInterface {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    @Transactional(readOnly = false)
    public void save(Entry entry) {
        hibernateTemplate.save(entry);
    }

    @Override
    @Transactional(readOnly = false)
    public void update(Entry entry) {
        hibernateTemplate.update(entry);
    }

    @Override
    @Transactional(readOnly = false)
    public void delete(Entry entry) {
        hibernateTemplate.delete(entry);
    }

    @Override
    public Entry findbyId(int id) {
        return hibernateTemplate.get(Entry.class, id);
    }

    @Override
    public List<Entry> findAll() {
        return hibernateTemplate.loadAll(Entry.class);
    }

	@Override
	public List<Entry> findByUserid(int id) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria=DetachedCriteria.forClass(Entry.class);
		criteria.add(Restrictions.eq("userid", id));
	List<Entry> entries=(List<Entry>)	hibernateTemplate.findByCriteria(criteria);
		return entries;
	}
}