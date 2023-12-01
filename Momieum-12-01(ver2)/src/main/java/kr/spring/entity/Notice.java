package kr.spring.entity;

import java.lang.reflect.Member;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter 
@Setter 
@NoArgsConstructor
@AllArgsConstructor


@ToString
@Entity

@Table(name = "tb_notice")
public class Notice {
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tb_notice_SEQ")
    @SequenceGenerator(
    		name = "tb_notice_SEQ", 
    		sequenceName = "tb_notice_SEQ", 
    		initialValue=1, 
    		allocationSize = 1)
    private Long noticeIdx;

    @Column(name = "notice_title", length = 1000, nullable = false)
    private String noticeTitle;

    @Column(name = "notice_content", nullable = false)
    @Lob
    private String noticeContent;

    @Column(name = "notice_file", length = 1000)
    private String noticeFile;

    @Column(name = "created_at", columnDefinition = "DATE DEFAULT SYSDATE", insertable = false, updatable = false)
    private Date createdAt;

    @Column(name = "username", length = 30, updatable = false)
    private String username;

    @Column(name = "notice_views", columnDefinition = "NUMBER DEFAULT 0", insertable = false, updatable = false)
    private Long views;

 

	
    
 
	
}
