package kr.spring.service;


import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import kr.spring.entity.TbMember;
import kr.spring.entity.TbTest;

public interface TbMemberService {
	
	public void join(@DateTimeFormat(pattern = "yyyy-MM-dd")TbMember vo);
	
}







