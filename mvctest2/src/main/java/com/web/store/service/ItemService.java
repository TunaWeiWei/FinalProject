package com.web.store.service;

import java.util.List;

import com.web.store.model.ItemBean;

public interface ItemService {
//	List<ItemBean> getItems(String keyword);
	
	List<ItemBean> getAllItems();
	
	List<ItemBean> getItems(String keyword, String sort, String order);
}
