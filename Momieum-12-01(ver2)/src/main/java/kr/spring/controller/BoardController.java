package kr.spring.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.entity.TbBoard;
import kr.spring.service.TbBoardService;

@Controller
public class BoardController {
		
////		
////		//실질적인 일은 boardService에서 한다
		@Autowired
		private TbBoardService tbBoardService;
////		
////		
////		//list라고 요청이 들어 왔을때 
////		@RequestMapping("/list")
////		public String list(Model model)  {    //게시글 전체 조회           	
////			List<Board> list = boardService.getList();	
////			model.addAttribute("list", list);
////			return "board/list";		
////		}
////		
////		//게시글 등록
////		//list.jsp에서 action="${cpath}/register"에서 왔음
////		@PostMapping("/register")
////		public String register(Board vo) {
////			boardService.register(vo); //이기술을 boardService.register에게 시킨다 ->BoardServiceImpl로 간다
////			return "redirect:/list";
////		}
////		
////		
////		@GetMapping("/get")  //list.jsp에서 ajax를 통해서 get으로 비동기방식으로 요청하는 메소드
////		public @ResponseBody Board get(@RequestParam("idx") Long idx) {   //일반Controller에서 비동기방식으로 응답해야하는 메소드가 있다면 @ResponseBody 어노테이션 붙여줘야한다
////			Board vo =  boardService.get(idx);
////			return vo;
////		}
//	
//	//실질적인 일은 boardService에서 한다
//			@Autowired
//			private TbBoardService tbBoardService;
//			
//			
//			
			//게시글 전체 조회  
			//list라고 요청이 들어 왔을때 
//			@RequestMapping("/{cpath}/community.do")
//			public String list(Model model)  {    //게시글 전체 조회           	
//				List<TbBoard> list = tbBoardService.getBoardList();	//List<Board>: List형태에 Board가 들어있는 boardService에게 getList()를 요청한다
//				model.addAttribute("list", list);
//				System.out.println("게시판목록보기 기능수행");
//				return "board/list";
//				
//			}
//			
//			
//			//게시글 전체 조회2  
//			@RequestMapping("/listwrite")
//			public String listwrite(Model model)  {    //게시글 전체 조회           	
//				List<TbBoard> list = tbBoardService.getBoardList();	//List<Board>: List형태에 Board가 들어있는 boardService에게 getList()를 요청한다
//				model.addAttribute("list", list);
//				return "board/listwrite";
//				
//			}
//
//			
//			//게시글 등록
//			//list.jsp에서 action="${cpath}/register"에서 왔음
//			@PostMapping("/register")
//			public String register(TbBoard vo) {
//				tbBoardService.register(vo); //이기술을 boardService.register에게 시킨다 ->BoardServiceImpl로 간다
//				
//				System.out.println("게시글 등록 기능수행");
//				return "redirect:/list";
//			}
//				
//			
//					
//			@GetMapping("/listcontent/{idx}")  // 경로에서 idx 값을 받기 위해 {idx} 사용
//			public String get(@PathVariable("idx") Long idx, Model model) {
//			    
//				//tbBoardService.count(idx);
//				
//				TbBoard vo =  tbBoardService.get(idx);
//			    
//					    
//			    model.addAttribute("vo", vo);
//			    System.out.println("게시글 상세보기 기능수행");
//			    return "board/listcontent";
//			}
//			
//					
//					
//					
//			@GetMapping("/remove/{idx}") //삭제기능
//			public String remove(@PathVariable("idx") Long idx) {
//				tbBoardService.delete(idx);
//				System.out.println("게시글 삭제기능수행");
//				return "redirect:/list"; //삭제가 완료되면 리다이렉트해서 list로 돌아가세요
//			}
//			
//					
//					
//			//게시글 수정하는 화면으로 이동하는 기능
//			@RequestMapping("/listupdateform/{idx}")						
//			public String boardUpdateForm(@PathVariable("idx") Long idx, Model model) { 					
//				TbBoard vo =  tbBoardService.get(idx);				
//				model.addAttribute("vo", vo); 
//				System.out.println("게시글 수정화면이동 기능수행");
//				return "board/listupdateform"; // boardUpdateForm 최종적으로 이동할 화면	
//			}
//					
//					
//					
//					
//					
//			//수정기능
//			@PostMapping("/modify")
//			public String modify(TbBoard vo) {  //수정할 idx title content를 Board vo로 받아온다 
//				tbBoardService.update(vo); // boardService에게 수정을 요청하고 수정해야하는 정보 vo를 넘긴다
//				
//				System.out.println("게시글 수정하기");
//				return "redirect:/list";
//			}
//					
//					
//					
//					
//			
//			//글쓰기 아동
//			@GetMapping("/listform")
//			public String listwrite() {
//				System.out.println("글쓰기페이지 이동");
//			    return "board/listform";
//			}
////		

	
}
