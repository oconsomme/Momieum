package kr.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import kr.spring.entity.TbChildren;
import kr.spring.repository.TbChildrenRepository;

@Service
public class TbChildrenServiceImpl implements TbChildrenService{
	
	@Autowired
	private TbChildrenRepository tbChildrenRepository;
	
	@Override
	public void insertChild(@DateTimeFormat(pattern = "yyyy-MM-dd")TbChildren vo) {
		
		String name = vo.getChildName();
		//String birthdate = vo.getChild_birthdate();
		//String birthdate = "1996-02-24";
		String gender = vo.getChildGender();
		String username = vo.getUsername();
		vo.setChildName(name);
		//vo.setChild_birthdate(java.sql.Date.valueOf(birthdate));
		//gender 수정 필요
		vo.setChildGender(gender);
		vo.setUsername(username);
		
		tbChildrenRepository.save(vo);
	}
	
	
}
