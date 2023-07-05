package com.web.store.dao;

import java.util.List;

import com.web.store.model.ItemBean;

public interface ItemDao {
	List<ItemBean> getAllItems();
	
//	List<ItemBean> getItems(String keyword);
	
	List<ItemBean> getItems(String keyword, String sort, String order);
}
