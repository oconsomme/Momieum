package kr.spring.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import kr.spring.entity.TbCenter;

@Repository
public interface CenterRepository extends JpaRepository<TbCenter, Long>{

	
}
