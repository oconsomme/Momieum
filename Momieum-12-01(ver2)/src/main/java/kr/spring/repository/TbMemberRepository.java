package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.spring.entity.TbMember;

public interface TbMemberRepository extends JpaRepository<TbMember, String>{
	
	public int countByMemReference(String memReference);
	
}
