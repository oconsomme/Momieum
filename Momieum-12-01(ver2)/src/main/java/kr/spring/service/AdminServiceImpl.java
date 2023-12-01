package kr.spring.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import kr.spring.entity.TbBoardAdmin;
import kr.spring.entity.TbConsult;
import kr.spring.entity.TbMember;
import kr.spring.entity.TbTest;
import kr.spring.repository.TbBoardAdminRepository;
import kr.spring.repository.TbConsultRepository;
import kr.spring.repository.TbMemberRepository;
import kr.spring.repository.TbTestRepository;


@Service
public class AdminServiceImpl implements AdminService{

// 관리자 대시보드 -----
	
	@Autowired
	private TbMemberRepository tbMemberRepository;
	
	@Autowired
	private TbTestRepository tbTestRepository;
	
	@Autowired
	private TbConsultRepository tbConsultRepository;
	
	/* 상단 4개 */
	// 총 검사수
	@Override
	public int getTotalTestCount() {
		int totalTest = (int) tbTestRepository.count();
		System.out.println("totalTest : "+ totalTest);
		return totalTest;
	}
	
	// 총 회원수
	@Override
	public int getTotalUserCount() {
		int totalUser = (int) tbMemberRepository.count();
		System.out.println("totalUser : "+ totalUser);
		return totalUser;
	}
	
	// 총 상담신청건수
	@Override
	public int getTotalConsultCount() {
		int totalConsult = (int) tbConsultRepository.count();
		System.out.println("totalConsult : "+ totalConsult);
		return totalConsult;
	}
	
	/* 하단 4개 */
	@Override
	public List<Integer> getTestTypeCount() {
		int totalDraw = (int) tbTestRepository.countByTestType("DRAW");
		int totalUpload= (int) tbTestRepository.countByTestType("UPLOAD");
		int totalPreset= (int) tbTestRepository.countByTestType("PRESET");
		List<Integer> testType = new ArrayList<>();
		testType.add(totalDraw);
		testType.add(totalUpload);
		testType.add(totalPreset);
		
		return testType;
	}
	
	@Override
	public List<Integer> getObjectTypeCount() {
		int totalHouse = (int) tbTestRepository.countByObjectType("HOUSE");
		int totalTree = (int) tbTestRepository.countByObjectType("TREE");
		int totalPerson = (int) tbTestRepository.countByObjectType("PERSON");
		int totalHTP = (int) tbTestRepository.countByObjectType("HTP");
		List<Integer> objectType = new ArrayList<>();
		objectType.add(totalHouse);
		objectType.add(totalTree);
		objectType.add(totalPerson);
		objectType.add(totalHTP);
		
		return objectType;
	}
	

	@Override
	public List<Integer> getReferTypeCount() {
		int totalBlog = (int) tbMemberRepository.countByMemReference("블로그");
		int totalCafe = (int) tbMemberRepository.countByMemReference("카페");
		int totalAcq = (int) tbMemberRepository.countByMemReference("지인추천");
		int totalSearch = (int) tbMemberRepository.countByMemReference("인터넷검색");
		int totalAds = (int) tbMemberRepository.countByMemReference("광고");
		List<Integer> referType = new ArrayList<>();
		referType.add(totalBlog);
		referType.add(totalCafe);
		referType.add(totalAcq);
		referType.add(totalSearch);
		referType.add(totalAds);
		
		return referType;
	}
	
	@Override
	public List<Integer> getRatingCount() {
		int zero = (int) tbTestRepository.countByRating(0.0);
		int zeroPointFive = (int) tbTestRepository.countByRating(0.5);
		int one = (int) tbTestRepository.countByRating(1.0);
		int onePointFive = (int) tbTestRepository.countByRating(1.5);
		int two = (int) tbTestRepository.countByRating(2.0);
		int twoPointFive = (int) tbTestRepository.countByRating(2.5);
		int three = (int) tbTestRepository.countByRating(3.0);
		int threePointFive = (int) tbTestRepository.countByRating(3.5);
		int four = (int) tbTestRepository.countByRating(4.0);
		int fourPointFive = (int) tbTestRepository.countByRating(4.5);
		int five = (int) tbTestRepository.countByRating(5.0);
		
		List<Integer> ratingList = new ArrayList<>();
		ratingList.add(zero);
		ratingList.add(zeroPointFive);
		ratingList.add(one);
		ratingList.add(onePointFive);
		ratingList.add(two);
		ratingList.add(twoPointFive);
		ratingList.add(three);
		ratingList.add(threePointFive);
		ratingList.add(four);
		ratingList.add(fourPointFive);
		ratingList.add(five);
		
		System.out.println("ratingList : "+ratingList.get(9));
		
		if (ratingList.get(10) == null) {
			System.out.println("null");
		} else {
			System.out.println(ratingList.get(10));
		}
		
		return ratingList;
	}
	
	
	/* 심리검사결과 게시판 */
	@Override
	public List<TbTest> getResultList() {
		List<TbTest> tbTestResultList = tbTestRepository.findAll(Sort.by(Sort.Direction.DESC, "testedAt"));
		return tbTestResultList;
	}
	
	
	@Override
	public TbTest getResult(Long testIdx) {
	    Optional<TbTest> vo = tbTestRepository.findById(testIdx);
	    if (vo.isPresent()) {
	        TbTest tbTest = vo.get();
	        return tbTest;
	    }
	    return null;
	}

	@Override
	public void deleteResult(Long testIdx) {
		tbTestRepository.deleteById(testIdx);
	}
	
	
	
	

// 관리자 게시물 관리 -----
	// 관리자 보드 매퍼
	@Autowired
	private TbBoardAdminRepository tbBoardAdminRepository;

	// 게시글 목록 조회
	@Override
	public List<TbBoardAdmin> getList() {
		List<TbBoardAdmin> tbBoardAdminList = tbBoardAdminRepository.findAll(); 
		return tbBoardAdminList;
	}
	
	
	// 게시글 등록
	@Override
	public void register(TbBoardAdmin vo) {
		tbBoardAdminRepository.save(vo); 
		System.out.println("====AdminServiceImpl====  register : "+vo);
	}

	// 게시글 뷰페이지
	// 게시글 idx와 일치하는 하나의 게시글 뷰페이지 보기
	@Override
	public TbBoardAdmin get(Long bdIdx) {
	    Optional<TbBoardAdmin> vo = tbBoardAdminRepository.findById(bdIdx);
	    if (vo.isPresent()) {
	        TbBoardAdmin tbBoardAdmin = vo.get();
	        tbBoardAdmin.setBdViews(tbBoardAdmin.getBdViews() + 1); // Increment views
	        tbBoardAdminRepository.save(tbBoardAdmin); // Save updated views count
	        return tbBoardAdmin;
	    }
	    return null;
	}
	
	// 게시글 삭제
	@Override
	public void delete(Long bdIdx) {
		tbBoardAdminRepository.deleteById(bdIdx);
	}

	// 게시글 수정
	@Override
	public void update(TbBoardAdmin vo) {
		tbBoardAdminRepository.save(vo);
		//System.out.println("====AdminServiceImpl==== : "+vo);
	}


// 관리자 회원목록관리 -----
	@Override
	public List<TbMember> getMemberList() {
		List<TbMember> tbMemberList = tbMemberRepository.findAll(); 
		return tbMemberList;
	}

	@Override
	public Double getRatingPercent(String username) {
		Double ratingPercent = tbTestRepository.avgRating(username);
		return ratingPercent;
	}



	
	
	
// 관리자 상담신청관리 ----
	
	@Override
	public List<TbConsult> getConsultList(){
		List<TbConsult> tbConsultListAll = tbConsultRepository.findAll();
		return tbConsultListAll;
	}
	
}
