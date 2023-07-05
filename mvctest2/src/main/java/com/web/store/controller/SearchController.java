package com.web.store.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.web.store.model.ItemBean;
import com.web.store.service.ItemService;

@Controller
public class SearchController {
	ItemService itemService;
	
	@Autowired
	public SearchController(ItemService itemService) {
		this.itemService = itemService;
	}
	
//	@GetMapping("/search")
//	public String list(Model model, @RequestParam("keyword") String keyword) {
////		System.out.println(keyword);
//		if(keyword != null) {
//			List<ItemBean> list = itemService.getItems(keyword);
//			int tatol = list.size();
//			model.addAttribute("sum",tatol);
//			model.addAttribute("items",list);	
//		}
//		
//		return "search";
//	}
	
	@GetMapping("/search")
	public String list(Model model, 
	                   @RequestParam("keyword") String keyword, 
	                   @RequestParam(value = "sort", defaultValue = "price") String sort, 
	                   @RequestParam(value = "order", defaultValue = "asc") String order) {
	  if(keyword != null) {
	    List<ItemBean> list = itemService.getItems(keyword, sort, order);
	    int total = list.size();
	    	    	    
	    model.addAttribute("sum", total);
	    model.addAttribute("items", list);
	    model.addAttribute("sort", sort);
	    model.addAttribute("order", order);
	  }
	  return "search";
	}

	
	@GetMapping("/all")
	public String all(Model model) {
		List<ItemBean> allitem = itemService.getAllItems();
		
		model.addAttribute("all",allitem);
		
		return "all";
	}
}
