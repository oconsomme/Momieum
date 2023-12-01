package kr.spring.service;

import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import kr.spring.entity.TbConsult;

public interface TbConsultingService {
	
	public void insertForm(@DateTimeFormat(pattern = "yyyy-MM-dd")TbConsult vo);

	public List<TbConsult> getListByUsername(String username);

}
