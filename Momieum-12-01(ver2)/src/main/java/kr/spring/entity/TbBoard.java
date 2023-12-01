package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name = "tb_board")
public class TbBoard {
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tb_board_SEQ")
    @SequenceGenerator(
    		name = "tb_board_SEQ", 
    		sequenceName = "tb_board_SEQ", 
    		initialValue=1, 
    		allocationSize = 1)
    @Column(name = "bd_idx")
	private Long bdIdx;
	
//	글 제목
	@Column(name = "bd_title", nullable = false) 
	private String bdTitle;
	
//	글 내용
	@Column(name = "bd_content", length = 2000, nullable = false)
	private String bdContent;
	
//	글 첨부파일
	@Column(name = "bd_file", nullable = true, columnDefinition = "int default 0")
	private String bdFile;
	
//	글 작성일자
	@Column(name = "created_at", insertable = false, updatable = false, columnDefinition = "TIMESTAMP DEFAULT CURRENT_TIMESTAMP")
	private Date createdAt;
	
	@Column(name = "username", insertable = false, updatable = false)
	private String username;
	 
//	글 조회수 
	@Column(name = "bd_views", insertable = false, updatable = false, columnDefinition = "int default 0")
	private Long bdViews;
		
//	글 좋아요수
	@Column(name = "bd_likes", insertable = false, updatable = false, columnDefinition = "int default 0")
	private Long bdLikes;
	
}
