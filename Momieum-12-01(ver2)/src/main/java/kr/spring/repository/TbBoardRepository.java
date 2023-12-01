package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kr.spring.entity.TbBoard;
import kr.spring.entity.TbBoardAdmin;

@Repository
public interface TbBoardRepository extends JpaRepository<TbBoard, Long>{

}
