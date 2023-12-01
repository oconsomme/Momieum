package kr.spring.service;

import java.util.List;import kr.spring.entity.TbBoardAdmin;
import kr.spring.entity.TbConsult;
import kr.spring.entity.TbMember;
import kr.spring.entity.TbTest;

public interface AdminService {

// 관리자 대시보드 -----
	/* 상단 4개 */
	
	// 총 검사수
	public int getTotalTestCount();
	
	// 총 회원수
	public int getTotalUserCount();
	
	// 총 상담신청건수
	public int getTotalConsultCount();
	
	/* 하단 그래프 */
	public List<Integer> getTestTypeCount();
	
	public List<Integer> getObjectTypeCount();
	
	public List<Integer> getReferTypeCount();
	
	public List<Integer> getRatingCount();
	
	
	/* 심리검사결과 게시판 */
	public List<TbTest> getResultList();
	
	public TbTest getResult(Long testIdx);
	
	public void deleteResult(Long testIdx);

// 관리자 게시물 관리 -----
	// 게시글 목록 조회 
	public List<TbBoardAdmin> getList();
	
	// 게시글 등록
	public void register(TbBoardAdmin vo);

	// 게시글 뷰페이지
	// 게시글 idx와 일치하는 하나의 게시글 정보
	public TbBoardAdmin get(Long bdIdx);
	
	// 게시글 삭제
	public void delete(Long bdIdx);

	// 게시글 수정
	public void update(TbBoardAdmin vo);


// 관리자 회원목록관리 -----
	
	public List<TbMember> getMemberList();
	
	public Double getRatingPercent(String username);
	
// 관리자 상담신청관리 ----
	
	public List<TbConsult> getConsultList();
	
}


