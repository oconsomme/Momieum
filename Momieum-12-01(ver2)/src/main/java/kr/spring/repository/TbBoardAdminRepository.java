package kr.spring.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import kr.spring.entity.TbBoardAdmin;

@Repository
public interface TbBoardAdminRepository extends JpaRepository<TbBoardAdmin, Long>{ 
// 관리자 게시물 관리 매퍼임 

	
}
