package com.web.store.dao;

import java.util.List;


import com.web.store.model.MemberShipBean;

public interface MemberShipDao {

	List<MemberShipBean> getAllItems();
	
	List<MemberShipBean> getItems(int id, String account, String username, String password, int age, int tel, int cellphone, String email);
}
