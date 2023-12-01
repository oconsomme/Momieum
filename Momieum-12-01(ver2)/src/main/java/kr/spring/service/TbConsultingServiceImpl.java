package kr.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import kr.spring.entity.TbConsult;
import kr.spring.repository.TbConsultRepository;

@Service
public class TbConsultingServiceImpl implements TbConsultingService{

	@Autowired
	private TbConsultRepository tbConsultRepository;
	
	@Override
	public void insertForm(@DateTimeFormat(pattern = "yyyy-MM-dd")TbConsult vo) {
		String name = vo.getConsultName();
		String username = vo.getUsername();
		String content = vo.getConsultContent();
		
		vo.setConsultName(name);
		vo.setUsername(username);
		vo.setConsultContent(content);
		
		tbConsultRepository.save(vo);
	}

	@Override
	public List<TbConsult> getListByUsername(String username) {
		List<TbConsult> tbConsultList = tbConsultRepository.findByUsername(username);
		return tbConsultList;
	}
	

}
