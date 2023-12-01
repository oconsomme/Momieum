package kr.spring.service;

import org.springframework.format.annotation.DateTimeFormat;

import kr.spring.entity.TbChildren;

public interface TbChildrenService {

	void insertChild(@DateTimeFormat(pattern = "yyyy-MM-dd")TbChildren vo);

}
