package com.web.store.dao.impl;

import java.lang.reflect.Array;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ItemDao;
import com.web.store.model.ItemBean;

@Repository
public class ItemDaoImpl implements ItemDao{
	SessionFactory factory;
	
	@Autowired
	public ItemDaoImpl(SessionFactory factory) {
		this.factory = factory;
	}
	
	@Override
	public List<ItemBean> getAllItems(){
		Session session = factory.getCurrentSession();
		String hql = "FROM ItemBean";
		List<ItemBean> list = session.createQuery(hql, ItemBean.class).getResultList();
		return list;
	}

//	@Override 
//	public List<ItemBean> getItems(String keyword) {
//		Session session = factory.getCurrentSession();
//		String hql = "FROM ItemBean i WHERE i.name LIKE :keyword" ;
//		
//		List<ItemBean> items = session.createQuery(hql,ItemBean.class).setParameter("keyword", "%" + keyword + "%").getResultList();
//		return items;
//	}
//	
	public List<ItemBean> getItems(String keyword, String sort, String order) {
		Session session =factory.getCurrentSession();  
//		System.out.println(keyword);
//		if(keyword.matches(".*\\s+.*")) {
//			System.out.println("yes");
//			Array strArray = keyword.split("\\s");
//		}
		String hql = "FROM ItemBean WHERE name LIKE :keyword ORDER BY " + sort + " " + order;
		List<ItemBean> items = session.createQuery(hql,ItemBean.class).setParameter("keyword", "%" + keyword + "%").getResultList();
		
		  return items;
		}
}
