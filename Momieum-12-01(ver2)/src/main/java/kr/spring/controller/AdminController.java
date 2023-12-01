package kr.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.spring.entity.TbBoardAdmin;
import kr.spring.entity.TbConsult;
import kr.spring.entity.TbMember;
import kr.spring.entity.TbTest;
import kr.spring.service.AdminService;
import kr.spring.service.TbMemberService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/adminMain.do")
	public String adminMain() {
		System.out.println("관리자 메인페이지 이동");
		return "admin/adminMain";
	}		
	
// 관리자 대시보드 -----
	/*
	@RequestMapping("/dashBoard.do")
	public String dashBoard() {
		System.out.println("관리자 대시보드 이동");
		return "admin/dashBoard";
	}
	*/

	@RequestMapping("/dashBoard.do")
	public String totalUserCount(HttpServletRequest request) {
		int totalUser = adminService.getTotalUserCount();
		request.setAttribute("totalUser", totalUser);
		
		int totalTest = adminService.getTotalTestCount();
		request.setAttribute("totalTest", totalTest);
		
		int totalConsult = adminService.getTotalConsultCount();
		request.setAttribute("totalConsult", totalConsult);
		
		List<Integer> testType = adminService.getTestTypeCount();
		request.setAttribute("draw", testType.get(0));
		request.setAttribute("upload", testType.get(1));
		request.setAttribute("preset", testType.get(2));
		
		List<Integer> objectType = adminService.getObjectTypeCount();
		request.setAttribute("house", objectType.get(0));
		request.setAttribute("tree", objectType.get(1));
		request.setAttribute("person", objectType.get(2));
		request.setAttribute("htp", objectType.get(3));
		
		List<Integer> referType = adminService.getReferTypeCount();
		request.setAttribute("blog", referType.get(0));
		request.setAttribute("cafe", referType.get(1));
		request.setAttribute("acq", referType.get(2));
		request.setAttribute("search", referType.get(3));
		request.setAttribute("ads", referType.get(4));
		
		List<Integer> ratingList = adminService.getRatingCount();
		request.setAttribute("zero", ratingList.get(0));
		request.setAttribute("zeroPointFive", ratingList.get(1));
		request.setAttribute("one", referType.get(2));
		request.setAttribute("onePointFive", ratingList.get(3));
		request.setAttribute("two", ratingList.get(4));
		request.setAttribute("twoPointFive", ratingList.get(5));
		request.setAttribute("three", ratingList.get(6));
		request.setAttribute("threePointFive", ratingList.get(7));
		request.setAttribute("four", ratingList.get(8));
		request.setAttribute("fourPointFive", ratingList.get(9));
		request.setAttribute("five", ratingList.get(10));

		return "admin/dashBoard";
	}
	
	/* 심리검사결과 게시판 */
	/*@RequestMapping("/mypage")
	public String mypage(Model model, @RequestParam("username")String username) {
		System.out.println("마이페이지 결과리스트 출력");
		List<TbTest> resultList = tbTestService.getListByUsername(username);
		model.addAttribute("resultList", resultList);
		return "/member/mypage";
	}*/
	
	/* 목록 조회 */
	@RequestMapping("/tbBoardAdminList")
	public String tbBoardAdminList(Model model) {
		System.out.println("tbBoardAdminList Controller 성공");

		List<TbTest> tbTestResultList = adminService.getResultList();
		model.addAttribute("tbTestResultList", tbTestResultList);
		
		for(TbTest vo : tbTestResultList) {
			System.out.println(vo.toString());
		}
				return "admin/tbBoardAdminList";
	}
	
	/* idx와 일치하는 뷰페이지 */
	@GetMapping("/tbBoardAdminView")
	public String tbBoardAdminView(@RequestParam("testIdx") Long testIdx, Model model) {
		System.out.println("tbBoardAdminView Controller 성공");
		
		TbTest tbTest = adminService.getResult(testIdx);
		model.addAttribute("tbTest", tbTest);
		
		System.out.println(tbTest.toString());
		return "admin/tbBoardAdminView";
	}
	
	@GetMapping("/admin/get")
	public @ResponseBody TbBoardAdmin get(@RequestParam("testIdx") Long testIdx) {
		System.out.println("get Controller 성공");
		TbBoardAdmin vo = adminService.get(testIdx);
		System.out.println(vo.toString());
		return vo;
	}
	
	// 게시글 삭제
	@GetMapping("/remove")
	public String remove(@RequestParam("testIdx") Long testIdx) {
		System.out.println("remove Controller 성공");
		adminService.deleteResult(testIdx);
		return "redirect:/admin/tbBoardAdminList";
	}
	


// 관리자 게시물 관리 -----
	// 게시글 목록 조회
//	@RequestMapping("/tbBoardAdminList")
//	public String tbBoardAdminList(Model model) {
//		System.out.println("tbBoardAdminList Controller 성공");
//
//		List<TbBoardAdmin> tbBoardAdminList = adminService.getList();
//		model.addAttribute("tbBoardAdminList", tbBoardAdminList);
//		
//		for(TbBoardAdmin vo : tbBoardAdminList) {
//			System.out.println(vo.toString());
//		}
//				return "admin/tbBoardAdminList";
//	}	

	//글쓰기 이동
	@GetMapping("/tbBoardAdminWrite")
	public String tbBoardAdminWrite() {
		return "admin/tbBoardAdminWrite";
	}

	// 게시글 등록
	@PostMapping("/register")
	public String register(TbBoardAdmin vo) {
		System.out.println("register Controller 성공");
		
		adminService.register(vo);
		System.out.println(vo);
		System.out.println(vo.toString());
		return "redirect:/admin/tbBoardAdminList";
	}

	// 게시글 뷰페이지
	// 게시글 idx와 일치하는 하나의 게시글 뷰페이지 보기
//	@GetMapping("/tbBoardAdminView")
//	public String tbBoardAdminView(@RequestParam("bdIdx") Long bdIdx, Model model) {
//		System.out.println("tbBoardAdminView Controller 성공");
//		
//		TbBoardAdmin tbBoardAdmin = adminService.get(bdIdx);
//		model.addAttribute("tbBoardAdmin", tbBoardAdmin);
//		
//		System.out.println(tbBoardAdmin.toString());
//		return "admin/tbBoardAdminView";
//	}
//	
//	@GetMapping("/admin/get")
//	public @ResponseBody TbBoardAdmin get(@RequestParam("bdIdx") Long bdIdx) {
//		System.out.println("get Controller 성공");
//		TbBoardAdmin vo = adminService.get(bdIdx);
//		System.out.println(vo.toString());
//		return vo;
//	}

	
//	// 게시글 삭제
//	@GetMapping("/remove")
//	public String remove(@RequestParam("bdIdx") Long bdIdx) {
//		System.out.println("remove Controller 성공");
//		adminService.delete(bdIdx);
//		return "redirect:/admin/tbBoardAdminList";
//	}

	// 게시글 수정 페이지 이동
	@RequestMapping("/tbBoardAdminViewWrite")
	public String tbBoardAdminViewWrite(@RequestParam("bdIdx") Long bdIdx, Model model) {
		TbBoardAdmin tbBoardAdmin = adminService.get(bdIdx);
		model.addAttribute("tbBoardAdmin", tbBoardAdmin);
		return "admin/tbBoardAdminViewWrite";
	}	
	
	// 게시글 수정 완료
	@PostMapping("/modify")
	public String modify(TbBoardAdmin vo) {
		System.out.println("modify Controller 성공");
		adminService.update(vo);
		System.out.println(vo.toString());
		return "redirect:/admin/tbBoardAdminList";
	}


	

//	@RequestMapping("/tbBoardAdminView.do")
//	public String tbBoardAdminView() {
//		System.out.println("관리자 게시판 뷰 이동");
//		return "admin/tbBoardAdminView";
//	}	




	
// 관리자 회원목록관리 -----
	// 회원목록
	@RequestMapping("/boardMemberList")
	public String boardMemberList(Model model) {
		List<TbMember> tbMemberList = adminService.getMemberList();
		//int ratingPercent = adminService.get
				
		model.addAttribute("tbMemberList", tbMemberList);
		
//		for(TbMember vo : tbMemberList) {
//			System.out.println(vo.toString());
////			Double ratingPercent = adminService.getRatingPercent(vo.getUsername());
////			System.out.println(ratingPercent);
//		}
		return "admin/boardMemberList";
	}
	
	@RequestMapping("/boardMemberWrite")
	public String boardMemberWrite() {
		System.out.println("관리자 회원 작성페이지 이동");
		return "admin/boardMemberWrite";
	}
	@RequestMapping("/boardMemberView")
	public String boardMemberView() {
		System.out.println("관리자 회원 뷰 이동");
		return "admin/boardMemberView";
	}	
	
	
// 관리자 상담신청관리 ----
	@RequestMapping("/applyAdmin")
	public String applyAdmin(Model model) {
		System.out.println("관리자 상담신청 이동");
		List<TbConsult> tbConsultListAll = adminService.getConsultList();
		model.addAttribute("tbConsultListAll", tbConsultListAll);
//		for(TbConsult vo : tbConsultListAll) {
//			System.out.println(vo.toString());
//		}
		return "admin/applyAdmin";
	}


}
