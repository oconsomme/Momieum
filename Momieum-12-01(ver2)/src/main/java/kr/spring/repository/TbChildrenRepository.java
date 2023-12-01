package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.spring.entity.TbChildren;

public interface TbChildrenRepository extends JpaRepository<TbChildren, String>{
	
}
