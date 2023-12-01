package kr.spring.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name = "tb_center")
public class TbCenter {
	
	@Id
	private Long center_idx;
	
	private String center_name;
	
	private String center_addr;
	
	private String center_tel;
	
	private Long lat;
	
	private Long lng;
	
}
