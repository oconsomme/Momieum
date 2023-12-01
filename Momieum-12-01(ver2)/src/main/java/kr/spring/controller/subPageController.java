package kr.spring.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.spring.entity.TbTest;
import kr.spring.service.PresetService;
import kr.spring.service.TbChildrenService;
import kr.spring.service.TbTestService;

@Controller
public class subPageController {
	
	@Autowired
	private PresetService presetService;
	
	@Autowired
	private TbTestService tbTestService;

	//	서브페이지 이동
	@RequestMapping("/introService")
	public String introService() {
		return "subPage/introService";
	}
	
	@RequestMapping("/promptdraw_choose.do")
	public String promptdraw_choose() {
		return "test/promptdraw_choose";
	}
	
	@RequestMapping("/promptdraw_tree.do")
	public String promptdraw_tree() {
		return "test/promptdraw_tree";
	}
	
	@RequestMapping("/promptdraw_house.do")
	public String promptdraw_house() {
		return "test/promptdraw_house";
	}
	
	@RequestMapping("/promptdraw_person.do")
	public String promptdraw_person() {
		return "test/promptdraw_person";
	}
	
	@RequestMapping("/promptdraw.do")
	public String promptdraw() {
		return "test/promptdraw";
	}
	
	@RequestMapping("/fileUploadstart.do")
	public String fileUploadstart() {
		return "test/fileUploadstart";
	}
	
	@RequestMapping("/endtest.do")
	public String endtest() {
		return "test/endtest";
	}
	
	@RequestMapping("/preset_choose.do")
	public String preset_choose() {
		return "test/preset_choose";
	}
	
	@RequestMapping("/preset_house.do")
	public String preset_house() {
		return "test/preset_house";
	}
	
	@RequestMapping("/preset_tree.do")
	public String preset_tree() {
		return "test/preset_tree";
	}
	
	@RequestMapping("/preset_person.do")
	public String preset_person() {
		return "test/preset_person";
	}
	
	@RequestMapping("/testresult.do")
	public String testresult() {
		return "test/testresult";
	}
	
	@RequestMapping("/testresult2.do")
	public String testresult2(Model model, @RequestParam("username")String username) {
		TbTest result = tbTestService.uploadResult(username);
		model.addAttribute("result", result);
		return "test/testresult2";
	}
	
	@RequestMapping("/getUploadResult")
	   public String getUploadResult(Model model, @RequestParam("username") String username) {
	       // 기존 getUploadResult 메서드의 로직
	       TbTest result = tbTestService.uploadResult(username);
	       model.addAttribute("result", result);

	       // displayLatestTestResult 메서드의 로직을 여기에 추가
	       if (result != null && result.getTestImg() != null) {
	           Blob testImg = result.getTestImg();
	           String base64Image = "";
	           try {
	               byte[] imgBytes = testImg.getBytes(1, (int) testImg.length());
	               base64Image = Base64.getEncoder().encodeToString(imgBytes);
	           } catch (SQLException e) {
	               // 로깅 또는 오류 처리
	           }
	           model.addAttribute("imageData", base64Image);
	       }

	       return "test/testresult2";
	   }
	
	
	@RequestMapping("/testresultdetail")
	public String testresultdetail(Model model, @RequestParam Long testIdx) {
		TbTest tbTest = tbTestService.resultDetail(testIdx);
		model.addAttribute("tbTest", tbTest);
		return "test/testresultdetail";
	}
	
	@PostMapping("/getPresetContent")
	public @ResponseBody String getPresetContent(@RequestBody List<Integer> selectedValues) {
		try {
	        String result = presetService.getPresetContent(selectedValues);
	        return result;
	    } catch (Exception e) {
	        e.printStackTrace(); // 또는 로깅 등을 통해 예외 정보를 확인
	        return "Error occurred during processing 'getContentKeyword'";
	    }
    }
	
	@PostMapping("/getPresetKeyword")
	public @ResponseBody String getPresetKeyword(@RequestBody List<Integer> selectedValues) {
		try {
			String keyword = presetService.getPresetKeyword(selectedValues);
			return keyword;
		} catch (Exception e){
			e.printStackTrace();
			return "Error occured during processing 'getPresetKeyword'";
		}
	}
	
	@PostMapping("/insertPreset")
	public String insertPreset(@DateTimeFormat(pattern = "yyyy-MM-dd")TbTest vo) {
		tbTestService.insertPreset(vo);
		return "redirect:/htp.do";
	}
	
	@PostMapping("/saveRating")
    public String saveRating(@RequestParam String username, @RequestParam Double rating) {
        tbTestService.saveRating(username, rating);
        return "test/testresult2"; 
    }
	
	
}







