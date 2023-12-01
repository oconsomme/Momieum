package kr.spring.service;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;

import org.hibernate.engine.jdbc.BlobProxy;
import org.hibernate.engine.jdbc.LobCreator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.spring.entity.TbBoardAdmin;
import kr.spring.entity.TbTest;
import kr.spring.repository.TbTestRepository;

@Service
public class TbTestServiceImpl implements TbTestService{
	
	@Autowired
	private TbTestRepository tbTestRepository;

	@Override
	public void insertPreset(@DateTimeFormat(pattern = "yyyy-MM-dd")TbTest vo) {
		String username = vo.getUsername();
		String testResult = vo.getTestResult();
		String objectType = vo.getObjectType();
		Blob imageData = vo.getTestImg();
		Double rating = vo.getRating();
		
		vo.setUsername(username);
		vo.setTestResult(testResult);
		vo.setTestType("PRESET");
		vo.setTestedAt(new java.util.Date());
		// 객체
		vo.setObjectType(objectType);
		// 별점
		vo.setRating(rating);
		// 추가 수정 필요 //
		vo.setChildName("김채영");
		vo.setTestImg(imageData);
		
		Date currentDate = new Date();

	        // 날짜 포맷을 설정
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	        // 포맷에 따라 날짜를 문자열로 변환
	        String formattedDate = sdf.format(currentDate);
		
		
		tbTestRepository.save(vo);
	}
	



	@Override
	public List<TbTest> getList() {
		// List<TbBoardAdmin> tbBoardAdminList = tbBoardAdminRepository.findAll(); 
		List<TbTest> tbTestResultList = tbTestRepository.findAll();
		return tbTestResultList;
	}
	
	@Override
	public List<TbTest> getListByUsername(String username) {
		List<TbTest> tbTestResultList2 = tbTestRepository.findByUsername(username);
		return tbTestResultList2;
    }

	@Override
	public TbTest resultDetail(Long testIdx) {
		// 
		
		 Optional<TbTest> vo = tbTestRepository.findById(testIdx);
	    if (vo.isPresent()) {
	        TbTest tbTest = vo.get();
	        
	        return tbTest;
	    } else {

	    	return null;
	    }
	}

	
	@Override
	public TbTest uploadResult(String username) {
		Optional<TbTest> vo = tbTestRepository.findLatestByUsername(username);
		TbTest result = vo.get();
		return result;
	}
	
	@Override
    public TbTest fetchLatestTest() {
        Optional<TbTest> result = tbTestRepository.findLatestTestRecord();
        if(result.isPresent()) {
            return result.get();
        } else {
            return null;
        }
    }
	
	@Transactional
    @Override
    public void saveRating(String username, Double rating) {
        tbTestRepository.updateRatingForLatestTest(rating, username);
    }


	
	// 게시글 목록 조회

	
}
