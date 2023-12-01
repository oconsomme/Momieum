package kr.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.spring.entity.TbConsult;

public interface TbConsultRepository extends JpaRepository<TbConsult, Long>{

	public List<TbConsult> findByUsername(String username);

}
