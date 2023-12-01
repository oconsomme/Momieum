package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;


import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
@Table(name= "tb_Member")
public class TbMember implements Serializable{

    @Id
    @Column(name = "username", nullable = false)
    private String username;

    @Column(name = "password")
    private String password;

    @Column(name = "mem_type", nullable = false)
    private String memType;

    @Column(name = "mem_email", nullable = false, columnDefinition = "VARCHAR2(50) DEFAULT 'N'")
    private String memEmail;

    @Column(name = "mem_name", nullable = false, columnDefinition = "VARCHAR2(50) DEFAULT 'N'")
    private String memName;
    
    @Column(name = "mem_birthdate", nullable = false, columnDefinition = "DATE DEFAULT SYSDATE")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date memBirthdate;

    @Column(name = "mem_phone", nullable = false, columnDefinition = "VARCHAR2(20) DEFAULT 'N'")
    private String memPhone;

    @Column(name = "mem_addr", nullable = false, columnDefinition = "VARCHAR2(1000) DEFAULT 'N'")
    private String memAddr;

    @Column(name = "mem_reference", nullable = false, columnDefinition = "VARCHAR2(1000) DEFAULT 'N'")
    private String memReference;

    @Column(name = "mem_profile_img", nullable = false, columnDefinition = "VARCHAR2(1000) DEFAULT 'N'")
    private String memProfileImg;

    @Column(name = "joined_at", nullable = false, columnDefinition = "DATE DEFAULT SYSDATE")
    private Date joinedAt;

    @Column(name = "mem_role", nullable = false, columnDefinition = "VARCHAR2(20) DEFAULT 'N'")
    private String memRole;

    @Column(name = "mem_status", nullable = false, columnDefinition = "CHAR(1) DEFAULT 'N'")
    private String memStatus;

    @Column(name = "mem_login", nullable = false, columnDefinition = "VARCHAR2(20) DEFAULT 'N'")
    private String memLogin;
    
    @Enumerated(EnumType.STRING) // @Enumerated -> 열거형 (권한이 여러개이기 때문에)
	private Role role; // 권한정보
}
