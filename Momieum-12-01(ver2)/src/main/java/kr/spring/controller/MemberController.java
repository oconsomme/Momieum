package kr.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.entity.TbCenter;
import kr.spring.entity.TbChildren;
import kr.spring.entity.TbConsult;
import kr.spring.entity.TbMember;
import kr.spring.entity.TbTest;
import kr.spring.service.TbChildrenService;
import kr.spring.service.TbConsultingService;
import kr.spring.service.TbMemberService;
import kr.spring.service.TbTestService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private TbMemberService tbMemberService;
	
	@Autowired
	private TbTestService tbTestService;
	
	@Autowired
	private TbChildrenService tbChildrenService;
	
	@Autowired
	private TbConsultingService tbConsultingService;
	
	@RequestMapping("/userstep")
	public String userstep() {
		System.out.println("회원가입 개인정보 동의 이동 성공");
		return "member/userstep";
	}
	
	
	@PostMapping("/join")
	public String join(TbMember vo) {
		
		tbMemberService.join(vo);
		return "redirect:/";
	}
	
	@GetMapping("/login")
	public String login(TbMember vo) {
		System.out.println("로그인 성공");
		return "member/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	
	@PostMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index2.do";
    }
	
	

//	마이페이지 이동
	
	
//	@RequestMapping("/mypage")
//	public String mypage() {
//		System.out.println("마이페이지 이동 성공");
//		return "member/mypage";
//	}
	
	
	
//	@RequestMapping("/insertChild")
//	public String insertChild(TbChildren vo) {
//		tbChildrenService.insertChild(vo);
//		return "redirect:/member/mypage";
//	}

	
	@PostMapping("/insertChild")
	public String insertChild(TbChildren vo, @RequestParam("username") String username) {
	    vo.setUsername(username); // TbChildren 객체에 username 설정
	    tbChildrenService.insertChild(vo);
	    return "redirect:/member/mypage?username=" + username; // 마이페이지로 리다이렉트하면서 username 전달
	}

	
//	게시글 목록 조회
	
	
//	@RequestMapping("/findByUsername")
//	public String tbTestList(String username) {
//
//		List<TbTest> tbTestList = tbTestService.getList();
//		model.addAttribute("tbTestList", tbTestList);
//		
//		for(TbTest vo : tbTestList) {
//			System.out.println(vo.toString());
//		}
//				return "admin/tbTestList";
//	}
	
	/*
	 * @RequestMapping("/map.do")
	public String map(Model model) {
		System.out.println("센터조회 페이지 이동");
		List<TbCenter> list = centerService.getList();
		model.addAttribute("list", list);
		return "map";
		//return "map";
	}
	*/
	
	@RequestMapping("/mypage")
	public String mypage(Model model, @RequestParam("username")String username) {
		System.out.println("마이페이지 결과리스트 출력");
		List<TbTest> resultList = tbTestService.getListByUsername(username);
		model.addAttribute("resultList", resultList);
		
		List<TbConsult> consultList = tbConsultingService.getListByUsername(username);
		model.addAttribute("consultList", consultList);
		
		for(TbConsult vo : consultList) {
			System.out.println(vo.toString());
		}
		
		return "/member/mypage";
	}
	

	
//	심리테스트결과 페이지 이동
	@RequestMapping("/testResult.do")
	public String testResult() {
		System.out.println("심리테스트결과 페이지 이동");
		return "member/testResult";
	}	
	
	
	
}
