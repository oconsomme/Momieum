package kr.spring.entity;


import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name = "tb_test")
public class TbTest implements Serializable{


	// 검사 번호 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="test_idx", nullable = false)
	private Long testIdx;
	
	// 검사 결과
	@Column(name="test_result", nullable = false)
	private String testResult;
	
	// 검사 일시
	@Column(name="tested_at", nullable = false)
	private Date testedAt;
	
	// 검사 유형
	@Column(name="test_type", nullable = false)
	private String testType;
	
	// 회원 아이디
	@Column(name="username", nullable = false)
	private String username;
	
	// 검사 이미지 
	@Column(name="test_img", nullable = true)
	@Lob
	private Blob testImg;

	
	// 피검사자
	private String childName;
	
	// 객체유형
	private String objectType;
	
	
	@Column(name="rating", nullable = true)
	private Double rating;
	    
	   public Double getRating() {
	       return rating;
	   }

	   public void setRating(Double rating2) {
	       this.rating = rating2;
	   }
	 
	
}
