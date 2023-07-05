package com.web.store.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping({"/FrontPage","/"})
	public String homePage(Model model,HttpSession session) {
		session.setAttribute("alert", null);  //此為清掉會員中心提示視窗的判斷數值以防後續連回會員中心頁面會反覆彈出提醒		
		return "FrontPage";
	}
	
	@GetMapping("/sortShose")
	public String sort(Model model,HttpSession session) {
		session.setAttribute("alert", null);  //此為清掉會員中心提示視窗的判斷數值以防後續連回會員中心頁面會反覆彈出提醒
		return "sortShose";
	}
	
}
