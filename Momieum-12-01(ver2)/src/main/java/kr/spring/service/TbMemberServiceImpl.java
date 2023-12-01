package kr.spring.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.spring.entity.Role;
import kr.spring.entity.TbMember;
import kr.spring.repository.TbMemberRepository;


@Service
public class TbMemberServiceImpl implements TbMemberService{

	@Autowired
	private TbMemberRepository tbMemberRepository;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public void join(@DateTimeFormat(pattern = "yyyy-MM-dd")TbMember vo) {
		String encPw = vo.getPassword();
		

		String email = vo.getMemEmail();
		String name = vo.getMemName();
		String phone = vo.getMemPhone();
		String addr = vo.getMemAddr();
		String refer = vo.getMemReference();
		
		//java.util.Date birthdate = vo.getMemBirthdate();
		//vo.setMemBirthdate(birthdate);
		// vo.getMemBirthdate()가 java.util.Date라고 가정합니다.
		// vo.getMemBirthdate()가 java.sql.Date라고 가정합니다.
		//java.util.Date memBirthdate = vo.getMemBirthdate();
		//vo.setMemBirthdate((java.sql.Date)memBirthdate);
		

//		String dateString = vo.getMemBirthdate(); // vo.getMemBirthdate()가 String을 반환한다고 가정
//
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//		Date birthdate;
//
//		try {
//		    birthdate = dateFormat.parse(dateString);
//		} catch (ParseException e) {
//		    e.printStackTrace(); // 날짜 형식이 올바르지 않을 경우 예외 처리
//		    birthdate = null; // 또는 적절한 기본값 설정
//		}
		
		
		vo.setMemProfileImg("default.jpg");
		
		/* 고정값?(부모) */
		vo.setMemType("P");
		
		/* 입력값 */
		/* 아이디, 비밀번호 */
		vo.setPassword(passwordEncoder.encode(encPw));
		vo.setMemEmail(email);
		vo.setMemName(name);
		vo.setMemPhone(phone);
		vo.setMemAddr(addr);
		vo.setMemReference(refer);
		
		/* 고정값 */
		vo.setJoinedAt(new java.util.Date());
		vo.setMemRole("USER");
		vo.setMemStatus("1");
		vo.setMemLogin("local");
		vo.setRole(Role.MEMBER);
		
		
		tbMemberRepository.save(vo);
	}
	

}











