package kr.spring.service;

import java.util.List;

import kr.spring.entity.TbBoard;

public interface TbBoardService {
	
	
	//여러게시물 형태로 받아와야하므로 리턴타입이 List이다
	//게시글 하나로 묶는게 Board
//	public List<Board> getList(); //게시글 전체조회 
//
//	//게시글 등록하고 돌려줄것이 없으므로 void
//    //register(Board vo) : 매게변수가 Board형태로 있어야한다
//	public void register(Board vo); //게시글 등록
//
//	public Board get(Long idx);
	
	//인터페이스를 	사용해서 구현하는 클래스는 ServiceImpl 이다 
	
	
	/*********************************/
	/* community */
	public List<TbBoard> getBoardList();
	
	//게시글 등록하고 돌려줄것이 없으므로 void
    //register(Board vo) : 매게변수가 Board형태로 있어야한다
	public void register(TbBoard vo); //게시글 등록

	public TbBoard get(Long idx);

	public void delete(Long idx);

	public void update(TbBoard vo);

	//public void count(Long idx);
	
}








