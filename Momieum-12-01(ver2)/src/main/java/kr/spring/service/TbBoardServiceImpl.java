package kr.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.entity.TbBoard;

import kr.spring.repository.TbBoardRepository;

//인터페이스를 	사용해서 구현하는 클래스 : ServiceImpl
//인터페이스를 구현해야 하니깐 클래스이다


//어노테이션 : Service입니다 
//BoardService에는 추상메소드만 있으므로 구현해줘야 한다 
//implements BoardService: BoardService를 가져다가 사용하겠습니다 
@Service
public class TbBoardServiceImpl implements TbBoardService{
	
	//서비스에서 매퍼하고 연결하는것을 데이터베이스 관련일은 BoardRepository를 통해서 한다 
	//매퍼인터페이스와 같다 
//	@Autowired
//	private BoardRepository boardRepository;
//	
//	
//	//findAll() 알아서 list코드를 돌려준다
//	@Override
//	public List<Board> getList() {
//		List<Board> list = boardRepository.findAll();
//		return list;
//	}
//	
//	
//	//BoardController register()에서 요청받았다 
//	@Override
//	public void register(Board vo) {
//		boardRepository.save(vo);	//save는 JPA가 만든것 Hibernate가 알아서 insert해준다
//	}
//
//	//상세보기
//	@Override
//	public Board get(Long idx) {
//		Optional<Board> vo = boardRepository.findById(idx); //Optional은 board를 한번더 감싼형태로 보면된다
//		return vo.get(); //vo.get은 Optional안에 있는 값을 꺼내준다
//	}

	/*********************************/
	/* community */
	@Autowired
	private TbBoardRepository tbBoardRepository;

	@Override
	public List<TbBoard> getBoardList() {
		List<TbBoard> boardList = tbBoardRepository.findAll();
		return boardList;
	}	
		
		//BoardController register()에서 요청받았다 
		@Override
		public void register(TbBoard vo) {
			tbBoardRepository.save(vo);	//save는 JPA가 만든것 Hibernate가 알아서 insert해준다
		}

		//상세보기
		@Override
		public TbBoard get(Long idx) {
			Optional<TbBoard> vo = tbBoardRepository.findById(idx); //Optional은 board를 한번더 감싼형태로 보면된다
			return vo.get(); //vo.get은 Optional안에 있는 값을 꺼내준다
		}


		@Override
		public void delete(Long idx) {
			tbBoardRepository.deleteById(idx);
			
		}


		@Override
		public void update(TbBoard vo) {
			 //save라는 JPA메소드는 새로운 PK값 또는 없는 값이 들어온다면 insert기능을 
			 //기존에 존재하는 PK값이 들어온다면 update기능을 수행한다 
			tbBoardRepository.save(vo);	
		}


//		@Override
//	    public void count(Long idx) {
//	        Optional<TbBoard> optionalBoard = tbBoardRepository.findById(idx);
//
//	        optionalBoard.ifPresent(tbBoard -> {
//	            // 기존 조회수를 1 증가시킨다
//	        	tbBoard.setCount(tbBoard.getCount() + 1);
//	            // 수정된 정보를 저장한다
//	            tbBoardRepository.save(tbBoard);
//	        });
//		}
		

}
