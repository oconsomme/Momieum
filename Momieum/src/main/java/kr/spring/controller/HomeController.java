package kr.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	//	메인페이지 이동
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
//	소개페이지 이동
	@RequestMapping("/subPage1.do")
	public String subPage1() {
		System.out.println("주요서비스 페이지 이동");
		return "subPage/subPage1";
	}
	
	
	
	
// 심리상담테스트 페이지 이동
	@RequestMapping("/prompt.do")
	public String prompt() {
		System.out.println("직접그리기 페이지 이동");
		return "test/prompt";
	}
	
	@RequestMapping("/fileUpload.do")
	public String fileUpload() {
		System.out.println("파일업로드 페이지 이동");
		return "test/fileUpload";
	}
	@RequestMapping("/preset.do")
	public String preset() {
		System.out.println("프리셋 페이지 이동");
		return "test/preset";
	}	
	
//	상담신청 페이지 이동
	@RequestMapping("/apply.do")
	public String apply() {
		System.out.println("상담신청 페이지 이동");
		return "apply";
	}	
	
//	센터조회 페이지 이동
	@RequestMapping("/map.do")
	public String map() {
		System.out.println("센터조회 페이지 이동");
		return "map";
	}	


//		관리자 페이지 이동
		@RequestMapping("/adminPage.do")
		public String adminPage() {
			System.out.println("관리자 페이지 이동");
			return "admin/adminPage";
		}			
		
		
//		관리자대시보드 페이지 이동
		@RequestMapping("/dashBoard.do")
		public String dashBoard() {
			System.out.println("관리자대시보드 페이지 이동");
			return "admin/dashBoard";
		}			
		
		
//		관리자회원관리 페이지 이동
		@RequestMapping("/memberList.do")
		public String memberList() {
			System.out.println("관리자회원관리 페이지 이동");
			return "admin/memberList";
		}
		
		
//		테스트 페이지 이동
		@RequestMapping("/test.do")
		public String test() {
			System.out.println("테스트 페이지 이동");
			return "test";
		}		
		
		
}
