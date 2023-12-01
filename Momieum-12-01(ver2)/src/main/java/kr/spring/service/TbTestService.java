package kr.spring.service;

import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestParam;

import kr.spring.entity.TbTest;

public interface TbTestService {

	public void insertPreset(@DateTimeFormat(pattern = "yyyy-MM-dd")TbTest vo);


	public List<TbTest> getList();
	
	public List<TbTest> getListByUsername(String username);


	public TbTest resultDetail(Long testIdx);
	
	public TbTest uploadResult(String username);
	
	public TbTest fetchLatestTest();
	
	void saveRating(String username, Double rating);
}
