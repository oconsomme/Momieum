package kr.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class subPageController {
	

	//	서브페이지 이동
	@RequestMapping("/subPage1")
	public String subPage1() {
		return "subPage/subPage1";
	}
	
	
	
	
}







