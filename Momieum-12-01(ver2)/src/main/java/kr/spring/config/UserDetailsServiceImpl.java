package kr.spring.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.spring.entity.CustomUser;
import kr.spring.entity.TbMember;
import kr.spring.repository.TbMemberRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private TbMemberRepository tbMemberRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		TbMember tbMember = tbMemberRepository.findById(username).get();
		
		if(tbMember == null) {
			throw new UsernameNotFoundException(username + "없음");
		}
		
		return new CustomUser(tbMember);
		
	}

}







