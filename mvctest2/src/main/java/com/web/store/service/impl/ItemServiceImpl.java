package com.web.store.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.store.dao.ItemDao;
import com.web.store.model.ItemBean;
import com.web.store.service.ItemService;

@Service
public class ItemServiceImpl implements ItemService {

	ItemDao itemDao;
	
	@Autowired
	public ItemServiceImpl(ItemDao itemDao) {
		this.itemDao = itemDao;
	}
	
//	@Transactional
//	@Override
//	public List<ItemBean> getItems(String keyword) {
//		
//		return itemDao.getItems(keyword);
//	}
	@Transactional
	@Override
	public List<ItemBean> getAllItems() {
		return itemDao.getAllItems();
	}
	@Transactional
	@Override
	public List<ItemBean>getItems(String keyword, String sort, String order){
		return itemDao.getItems(keyword, sort, order);
	}
	
}
