package kr.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.entity.Member;
import kr.spring.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@PostMapping("/join")
	public String join(Member vo) {
		memberService.join(vo);
		return "redirect:/";
	}
	
	@GetMapping("/login")
	public String login(Member vo) {
		return "member/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	
	
// 회원정보수정 페이지 이동
	@RequestMapping("/mypage")
	public String mypage() {
		System.out.println("마이페이지 회원정보 수정 페이지 이동");
		return "member/mypage";
	}	
	

	
	
}
