package kr.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.entity.TbCenter;
import kr.spring.repository.CenterRepository;

@Service
public class CenterServiceImpl implements CenterService{
	
	@Autowired
	private CenterRepository centerRepository;
	
	@Override
	public List<TbCenter> getList() {
		List<TbCenter> list = centerRepository.findAll();
		return list;
	}
	
}
