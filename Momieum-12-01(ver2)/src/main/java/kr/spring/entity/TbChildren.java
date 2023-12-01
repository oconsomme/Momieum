package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name= "tb_Children")
public class TbChildren {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "child_idx", nullable = false)
    private int childIdx;
	
	private String childName;
	
	private String childGender;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date childBirthdate;
	
	private String username;
	
}
