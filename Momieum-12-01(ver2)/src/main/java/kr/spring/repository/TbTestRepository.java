package kr.spring.repository;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import kr.spring.entity.TbTest;

@Repository
public interface TbTestRepository extends JpaRepository<TbTest, Long>{

	public List<TbTest> findByUsername(String username);

	public int countByTestType(String testType);
	
	public int countByObjectType(String objectType);
	
	public int countByRating(Double rating);
	
	@Query(value = "SELECT * FROM (SELECT t.* FROM tb_test t WHERE t.username = :username ORDER BY t.test_idx DESC) WHERE ROWNUM <= 1", nativeQuery = true)
	public Optional<TbTest> findLatestByUsername(@Param("username")String username);
	
	@Query(value = "SELECT * FROM TB_TEST ORDER BY TEST_IDX DESC FETCH FIRST ROW ONLY", nativeQuery = true)
    Optional<TbTest> findLatestTestRecord();

	@Modifying
	@Query(value = "UPDATE TB_TEST SET RATING = :rating WHERE TEST_IDX = (SELECT MAX(TEST_IDX) FROM TB_TEST WHERE USERNAME = :username)", nativeQuery = true)
	public void updateRatingForLatestTest(@Param("rating") Double rating, @Param("username") String username);

	@Query(value = "SELECT AVG(RATING)*20 FROM TB_TEST WHERE USERNAME = :username", nativeQuery = true)
	public double avgRating(String username);
	
}
