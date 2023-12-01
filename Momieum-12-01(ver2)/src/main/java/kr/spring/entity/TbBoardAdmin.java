package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name = "tb_board_admin")
public class TbBoardAdmin {
// 관리자 심리검사결과 게시판
	
//	글 번호
	@Id  // pk의미 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "bd_idx")
	private Long bdIdx;
	
//	글 제목
	@Column(name = "bd_title", nullable = false) 
	private String bdTitle;
	
//	글 내용
	@Column(name = "bd_content", length = 2000, nullable = false)
	private String bdContent;
	
//	글 첨부파일
//	@Column(name = "bd_file", nullable = true, columnDefinition = "int default 0")
//	private String bdFile;
	
	
//	글 작성일자
	@Column(name = "created_at", insertable = false, updatable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	private Date createdAt;

	
//	글 작성자 는 tb_Member테이블의 username의 FK임
//	@ManyToOne // 다대일(N:1) 관계 설정
    @Column(name = "mem_id", insertable = false, updatable = false)
	private String memId;
	 
 
//	글 조회수 
	@Column(name = "bd_views", insertable = false, updatable = false, columnDefinition = "int default 0")
	private Long bdViews;
	
//	글 좋아요수
	@Column(name = "bd_likes", insertable = false, updatable = false, columnDefinition = "int default 0")
	private Long bdLikes;
	

	
	
	
}
