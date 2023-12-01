package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name= "tb_consult")
public class TbConsult {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "consult_idx", nullable = false)
    private int consultIdx;
	
	private String consultName;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "consult_date", columnDefinition = "DATE FORMAT 'YYYY-MM-DD'")
	private Date consultDate;
	
	private String consultContent;
	
	private String username;
}
