package kr.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.entity.TbBoard;
import kr.spring.entity.TbCenter;
import kr.spring.entity.TbConsult;
import kr.spring.service.CenterService;
import kr.spring.service.TbBoardService;
import kr.spring.service.TbConsultingService;

@Controller
public class HomeController {
	
	@Autowired
	private CenterService centerService;
	
	@Autowired
	private TbBoardService tbBoardService;
	
	@Autowired
	private TbConsultingService tbConsultingService;

	//	메인페이지 이동
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
//	메인페이지 이동
	@RequestMapping("/index2.do")
	public String index2() {
		return "index2";
	}
	
	
//	소개페이지 이동
	@RequestMapping("/introService.do")
	public String introService() {
		System.out.println("주요서비스 페이지 이동");
		return "subPage/introService";
	}
	
	@RequestMapping("/charService.do")
	public String charService() {
		System.out.println("서비스특징 페이지 이동");
		return "subPage/charService";
	}
	
	@RequestMapping("/howtouseService.do")
	public String howtouseService() {
		System.out.println("사용방법 페이지 이동");
		return "subPage/howtouseService";
	}
	
	
	
	
// 심리상담테스트 페이지 이동
	@RequestMapping("/htp.do")
	public String htp() {
		System.out.println("심리검사 택 페이지 이동");
		return "test/htp";
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
	@RequestMapping("/apply")
	public String apply() {
		return "apply";
	}	
	
	@RequestMapping("/applyForm")
	public String applyForm(TbConsult vo) {
		tbConsultingService.insertForm(vo);
		return "apply";
	}
	
	//	센터조회 페이지 이동
	@RequestMapping("/map")
	public String map(Model model) {
		System.out.println("센터조회 페이지 이동");
		List<TbCenter> list = centerService.getList();
		model.addAttribute("list", list);
		return "map";
		//return "map";
	}	

	    //커뮤니티 이동
		@RequestMapping("/faq")
		public String list() {
			return "board/faq";
		}
		
		//공지사항 이동
		@RequestMapping("/community")
		public String community(Model model) {
			System.out.println("커뮤니티 이동");
			
			List<TbBoard> tbBoardList = tbBoardService.getBoardList();
			for(TbBoard vo : tbBoardList) {
			System.out.println(vo.toString());
			}
			model.addAttribute("tbBoardList", tbBoardList);
			return "board/community";
		}
		
		@RequestMapping("/communityWrite")
		public String communityWrite() {
			return "board/communityWrite";
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
		
		
		
		
}
