package kr.spring.entity;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import lombok.Data;

@Data
public class CustomUser extends User{
	// 우리가 만든 회원정보 -> Member를 
	// Spring Context Holder에 저장하기 위해서는
	// User형태로 변환하여서 넣어줘야한다
	// 그걸 해주는 클래스가 바로 CustomUser 클래스
	
	private TbMember tbMember;
	
	public CustomUser(TbMember tbMember) {
		super(
		        // null 체크 추가
		        (tbMember != null) ? tbMember.getUsername() : "",
		        (tbMember != null) ? tbMember.getPassword() : "",
		        // null 체크 및 "ROLE_" 추가
		        AuthorityUtils.createAuthorityList((tbMember != null && tbMember.getRole() != null) ? "ROLE_" + tbMember.getRole().toString() : "")
		    );
		this.tbMember = tbMember;
	}

}
